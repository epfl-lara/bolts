; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538196 () Bool)

(assert start!538196)

(declare-fun setIsEmpty!29296 () Bool)

(declare-fun setRes!29296 () Bool)

(assert (=> setIsEmpty!29296 setRes!29296))

(declare-fun b!5103747 () Bool)

(declare-fun e!3183135 () Bool)

(declare-fun e!3183144 () Bool)

(assert (=> b!5103747 (= e!3183135 (not e!3183144))))

(declare-fun res!2172325 () Bool)

(assert (=> b!5103747 (=> res!2172325 e!3183144)))

(declare-fun e!3183139 () Bool)

(assert (=> b!5103747 (= res!2172325 e!3183139)))

(declare-fun res!2172324 () Bool)

(assert (=> b!5103747 (=> (not res!2172324) (not e!3183139))))

(declare-fun lt!2099779 () Bool)

(assert (=> b!5103747 (= res!2172324 (not lt!2099779))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28388 0))(
  ( (C!28389 (val!23846 Int)) )
))
(declare-datatypes ((Regex!14065 0))(
  ( (ElementMatch!14065 (c!876755 C!28388)) (Concat!22910 (regOne!28642 Regex!14065) (regTwo!28642 Regex!14065)) (EmptyExpr!14065) (Star!14065 (reg!14394 Regex!14065)) (EmptyLang!14065) (Union!14065 (regOne!28643 Regex!14065) (regTwo!28643 Regex!14065)) )
))
(declare-datatypes ((List!58981 0))(
  ( (Nil!58857) (Cons!58857 (h!65305 Regex!14065) (t!371982 List!58981)) )
))
(declare-datatypes ((Context!6898 0))(
  ( (Context!6899 (exprs!3949 List!58981)) )
))
(declare-fun z!4303 () (InoxSet Context!6898))

(declare-datatypes ((List!58982 0))(
  ( (Nil!58858) (Cons!58858 (h!65306 C!28388) (t!371983 List!58982)) )
))
(declare-datatypes ((tuple2!63516 0))(
  ( (tuple2!63517 (_1!35061 List!58982) (_2!35061 List!58982)) )
))
(declare-fun lt!2099771 () tuple2!63516)

(declare-fun matchZipper!737 ((InoxSet Context!6898) List!58982) Bool)

(assert (=> b!5103747 (= lt!2099779 (matchZipper!737 z!4303 (_1!35061 lt!2099771)))))

(declare-fun e!3183140 () Bool)

(assert (=> b!5103747 e!3183140))

(declare-fun res!2172332 () Bool)

(assert (=> b!5103747 (=> res!2172332 e!3183140)))

(declare-fun lt!2099778 () tuple2!63516)

(declare-fun isEmpty!31810 (List!58982) Bool)

(assert (=> b!5103747 (= res!2172332 (isEmpty!31810 (_1!35061 lt!2099778)))))

(declare-fun lt!2099783 () Int)

(declare-fun lt!2099784 () Int)

(declare-fun input!5654 () List!58982)

(declare-fun r!12920 () Regex!14065)

(declare-fun findLongestMatchInner!2078 (Regex!14065 List!58982 Int List!58982 List!58982 Int) tuple2!63516)

(assert (=> b!5103747 (= lt!2099778 (findLongestMatchInner!2078 r!12920 Nil!58858 lt!2099783 input!5654 input!5654 lt!2099784))))

(declare-datatypes ((Unit!149902 0))(
  ( (Unit!149903) )
))
(declare-fun lt!2099780 () Unit!149902)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2076 (Regex!14065 List!58982) Unit!149902)

(assert (=> b!5103747 (= lt!2099780 (longestMatchIsAcceptedByMatchOrIsEmpty!2076 r!12920 input!5654))))

(declare-fun e!3183141 () Bool)

(assert (=> b!5103747 e!3183141))

(declare-fun res!2172327 () Bool)

(assert (=> b!5103747 (=> res!2172327 e!3183141)))

(declare-fun lt!2099786 () tuple2!63516)

(assert (=> b!5103747 (= res!2172327 (isEmpty!31810 (_1!35061 lt!2099786)))))

(declare-fun findLongestMatchInnerZipper!139 ((InoxSet Context!6898) List!58982 Int List!58982 List!58982 Int) tuple2!63516)

(assert (=> b!5103747 (= lt!2099786 (findLongestMatchInnerZipper!139 z!4303 Nil!58858 lt!2099783 input!5654 input!5654 lt!2099784))))

(declare-fun size!39367 (List!58982) Int)

(assert (=> b!5103747 (= lt!2099784 (size!39367 input!5654))))

(assert (=> b!5103747 (= lt!2099783 (size!39367 Nil!58858))))

(declare-fun lt!2099785 () Unit!149902)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2077 ((InoxSet Context!6898) List!58982) Unit!149902)

(assert (=> b!5103747 (= lt!2099785 (longestMatchIsAcceptedByMatchOrIsEmpty!2077 z!4303 input!5654))))

(declare-fun lt!2099781 () tuple2!63516)

(declare-fun lt!2099775 () List!58982)

(declare-fun isPrefix!5466 (List!58982 List!58982) Bool)

(assert (=> b!5103747 (isPrefix!5466 (_1!35061 lt!2099781) lt!2099775)))

(declare-fun lt!2099788 () Unit!149902)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3524 (List!58982 List!58982) Unit!149902)

(assert (=> b!5103747 (= lt!2099788 (lemmaConcatTwoListThenFirstIsPrefix!3524 (_1!35061 lt!2099781) (_2!35061 lt!2099781)))))

(declare-fun lt!2099770 () List!58982)

(assert (=> b!5103747 (isPrefix!5466 (_1!35061 lt!2099771) lt!2099770)))

(declare-fun lt!2099787 () Unit!149902)

(assert (=> b!5103747 (= lt!2099787 (lemmaConcatTwoListThenFirstIsPrefix!3524 (_1!35061 lt!2099771) (_2!35061 lt!2099771)))))

(declare-fun b!5103748 () Bool)

(declare-fun e!3183145 () Bool)

(declare-fun tp!1423673 () Bool)

(declare-fun tp!1423676 () Bool)

(assert (=> b!5103748 (= e!3183145 (and tp!1423673 tp!1423676))))

(declare-fun b!5103749 () Bool)

(declare-fun matchR!6850 (Regex!14065 List!58982) Bool)

(assert (=> b!5103749 (= e!3183140 (matchR!6850 r!12920 (_1!35061 lt!2099778)))))

(declare-fun b!5103750 () Bool)

(declare-fun e!3183132 () Bool)

(declare-fun tp!1423678 () Bool)

(assert (=> b!5103750 (= e!3183132 tp!1423678)))

(declare-fun b!5103751 () Bool)

(declare-fun e!3183137 () Bool)

(assert (=> b!5103751 (= e!3183144 e!3183137)))

(declare-fun res!2172323 () Bool)

(assert (=> b!5103751 (=> res!2172323 e!3183137)))

(declare-fun e!3183143 () Bool)

(assert (=> b!5103751 (= res!2172323 e!3183143)))

(declare-fun res!2172322 () Bool)

(assert (=> b!5103751 (=> (not res!2172322) (not e!3183143))))

(declare-fun lt!2099782 () Bool)

(assert (=> b!5103751 (= res!2172322 (not lt!2099782))))

(assert (=> b!5103751 (= lt!2099782 (matchR!6850 r!12920 (_1!35061 lt!2099781)))))

(declare-fun b!5103752 () Bool)

(declare-fun e!3183142 () Bool)

(declare-fun e!3183134 () Bool)

(assert (=> b!5103752 (= e!3183142 e!3183134)))

(declare-fun res!2172326 () Bool)

(assert (=> b!5103752 (=> (not res!2172326) (not e!3183134))))

(assert (=> b!5103752 (= res!2172326 (= lt!2099770 input!5654))))

(declare-fun ++!12914 (List!58982 List!58982) List!58982)

(assert (=> b!5103752 (= lt!2099770 (++!12914 (_1!35061 lt!2099771) (_2!35061 lt!2099771)))))

(declare-fun findLongestMatch!1895 (Regex!14065 List!58982) tuple2!63516)

(assert (=> b!5103752 (= lt!2099781 (findLongestMatch!1895 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!89 ((InoxSet Context!6898) List!58982) tuple2!63516)

(assert (=> b!5103752 (= lt!2099771 (findLongestMatchZipper!89 z!4303 input!5654))))

(declare-fun b!5103753 () Bool)

(declare-fun tp!1423679 () Bool)

(assert (=> b!5103753 (= e!3183145 tp!1423679)))

(declare-fun b!5103754 () Bool)

(declare-fun tp_is_empty!37395 () Bool)

(assert (=> b!5103754 (= e!3183145 tp_is_empty!37395)))

(declare-fun b!5103755 () Bool)

(declare-fun e!3183138 () Bool)

(assert (=> b!5103755 (= e!3183137 e!3183138)))

(declare-fun res!2172320 () Bool)

(assert (=> b!5103755 (=> res!2172320 e!3183138)))

(declare-fun lt!2099772 () Int)

(declare-fun lt!2099776 () Int)

(assert (=> b!5103755 (= res!2172320 (or (> lt!2099772 lt!2099776) (<= lt!2099776 lt!2099772)))))

(assert (=> b!5103755 (= lt!2099776 (size!39367 (_1!35061 lt!2099771)))))

(assert (=> b!5103755 (= lt!2099772 (size!39367 (_1!35061 lt!2099781)))))

(assert (=> b!5103755 (= (matchR!6850 r!12920 (_1!35061 lt!2099771)) lt!2099779)))

(declare-datatypes ((List!58983 0))(
  ( (Nil!58859) (Cons!58859 (h!65307 Context!6898) (t!371984 List!58983)) )
))
(declare-fun lt!2099773 () List!58983)

(declare-fun lt!2099777 () Unit!149902)

(declare-fun theoremZipperRegexEquiv!229 ((InoxSet Context!6898) List!58983 Regex!14065 List!58982) Unit!149902)

(assert (=> b!5103755 (= lt!2099777 (theoremZipperRegexEquiv!229 z!4303 lt!2099773 r!12920 (_1!35061 lt!2099771)))))

(assert (=> b!5103755 (= lt!2099782 (matchZipper!737 z!4303 (_1!35061 lt!2099781)))))

(declare-fun lt!2099774 () Unit!149902)

(assert (=> b!5103755 (= lt!2099774 (theoremZipperRegexEquiv!229 z!4303 lt!2099773 r!12920 (_1!35061 lt!2099781)))))

(declare-fun b!5103756 () Bool)

(declare-fun e!3183136 () Bool)

(declare-fun tp!1423677 () Bool)

(assert (=> b!5103756 (= e!3183136 (and tp_is_empty!37395 tp!1423677))))

(declare-fun b!5103757 () Bool)

(assert (=> b!5103757 (= e!3183143 (not (isEmpty!31810 (_1!35061 lt!2099781))))))

(declare-fun tp!1423672 () Bool)

(declare-fun setElem!29296 () Context!6898)

(declare-fun setNonEmpty!29296 () Bool)

(declare-fun inv!78337 (Context!6898) Bool)

(assert (=> setNonEmpty!29296 (= setRes!29296 (and tp!1423672 (inv!78337 setElem!29296) e!3183132))))

(declare-fun setRest!29296 () (InoxSet Context!6898))

(assert (=> setNonEmpty!29296 (= z!4303 ((_ map or) (store ((as const (Array Context!6898 Bool)) false) setElem!29296 true) setRest!29296))))

(declare-fun res!2172330 () Bool)

(declare-fun e!3183133 () Bool)

(assert (=> start!538196 (=> (not res!2172330) (not e!3183133))))

(declare-fun validRegex!6192 (Regex!14065) Bool)

(assert (=> start!538196 (= res!2172330 (validRegex!6192 r!12920))))

(assert (=> start!538196 e!3183133))

(assert (=> start!538196 e!3183145))

(declare-fun condSetEmpty!29296 () Bool)

(assert (=> start!538196 (= condSetEmpty!29296 (= z!4303 ((as const (Array Context!6898 Bool)) false)))))

(assert (=> start!538196 setRes!29296))

(assert (=> start!538196 e!3183136))

(declare-fun b!5103758 () Bool)

(declare-fun res!2172329 () Bool)

(assert (=> b!5103758 (=> res!2172329 e!3183138)))

(assert (=> b!5103758 (= res!2172329 (not (isPrefix!5466 (_1!35061 lt!2099781) input!5654)))))

(declare-fun b!5103759 () Bool)

(assert (=> b!5103759 (= e!3183133 e!3183142)))

(declare-fun res!2172331 () Bool)

(assert (=> b!5103759 (=> (not res!2172331) (not e!3183142))))

(declare-fun unfocusZipper!407 (List!58983) Regex!14065)

(assert (=> b!5103759 (= res!2172331 (= (unfocusZipper!407 lt!2099773) r!12920))))

(declare-fun toList!8199 ((InoxSet Context!6898)) List!58983)

(assert (=> b!5103759 (= lt!2099773 (toList!8199 z!4303))))

(declare-fun b!5103760 () Bool)

(declare-fun res!2172321 () Bool)

(assert (=> b!5103760 (=> res!2172321 e!3183138)))

(assert (=> b!5103760 (= res!2172321 (not (isPrefix!5466 (_1!35061 lt!2099771) input!5654)))))

(declare-fun b!5103761 () Bool)

(assert (=> b!5103761 (= e!3183141 (matchZipper!737 z!4303 (_1!35061 lt!2099786)))))

(declare-fun b!5103762 () Bool)

(assert (=> b!5103762 (= e!3183134 e!3183135)))

(declare-fun res!2172328 () Bool)

(assert (=> b!5103762 (=> (not res!2172328) (not e!3183135))))

(assert (=> b!5103762 (= res!2172328 (= lt!2099775 input!5654))))

(assert (=> b!5103762 (= lt!2099775 (++!12914 (_1!35061 lt!2099781) (_2!35061 lt!2099781)))))

(declare-fun b!5103763 () Bool)

(assert (=> b!5103763 (= e!3183139 (not (isEmpty!31810 (_1!35061 lt!2099771))))))

(declare-fun b!5103764 () Bool)

(assert (=> b!5103764 (= e!3183138 (or (< lt!2099776 lt!2099772) (= (_1!35061 lt!2099778) (_1!35061 lt!2099781))))))

(declare-fun b!5103765 () Bool)

(declare-fun tp!1423675 () Bool)

(declare-fun tp!1423674 () Bool)

(assert (=> b!5103765 (= e!3183145 (and tp!1423675 tp!1423674))))

(assert (= (and start!538196 res!2172330) b!5103759))

(assert (= (and b!5103759 res!2172331) b!5103752))

(assert (= (and b!5103752 res!2172326) b!5103762))

(assert (= (and b!5103762 res!2172328) b!5103747))

(assert (= (and b!5103747 (not res!2172327)) b!5103761))

(assert (= (and b!5103747 (not res!2172332)) b!5103749))

(assert (= (and b!5103747 res!2172324) b!5103763))

(assert (= (and b!5103747 (not res!2172325)) b!5103751))

(assert (= (and b!5103751 res!2172322) b!5103757))

(assert (= (and b!5103751 (not res!2172323)) b!5103755))

(assert (= (and b!5103755 (not res!2172320)) b!5103758))

(assert (= (and b!5103758 (not res!2172329)) b!5103760))

(assert (= (and b!5103760 (not res!2172321)) b!5103764))

(get-info :version)

(assert (= (and start!538196 ((_ is ElementMatch!14065) r!12920)) b!5103754))

(assert (= (and start!538196 ((_ is Concat!22910) r!12920)) b!5103748))

(assert (= (and start!538196 ((_ is Star!14065) r!12920)) b!5103753))

(assert (= (and start!538196 ((_ is Union!14065) r!12920)) b!5103765))

(assert (= (and start!538196 condSetEmpty!29296) setIsEmpty!29296))

(assert (= (and start!538196 (not condSetEmpty!29296)) setNonEmpty!29296))

(assert (= setNonEmpty!29296 b!5103750))

(assert (= (and start!538196 ((_ is Cons!58858) input!5654)) b!5103756))

(declare-fun m!6161114 () Bool)

(assert (=> b!5103755 m!6161114))

(declare-fun m!6161116 () Bool)

(assert (=> b!5103755 m!6161116))

(declare-fun m!6161118 () Bool)

(assert (=> b!5103755 m!6161118))

(declare-fun m!6161120 () Bool)

(assert (=> b!5103755 m!6161120))

(declare-fun m!6161122 () Bool)

(assert (=> b!5103755 m!6161122))

(declare-fun m!6161124 () Bool)

(assert (=> b!5103755 m!6161124))

(declare-fun m!6161126 () Bool)

(assert (=> b!5103757 m!6161126))

(declare-fun m!6161128 () Bool)

(assert (=> b!5103761 m!6161128))

(declare-fun m!6161130 () Bool)

(assert (=> b!5103759 m!6161130))

(declare-fun m!6161132 () Bool)

(assert (=> b!5103759 m!6161132))

(declare-fun m!6161134 () Bool)

(assert (=> b!5103758 m!6161134))

(declare-fun m!6161136 () Bool)

(assert (=> b!5103760 m!6161136))

(declare-fun m!6161138 () Bool)

(assert (=> b!5103752 m!6161138))

(declare-fun m!6161140 () Bool)

(assert (=> b!5103752 m!6161140))

(declare-fun m!6161142 () Bool)

(assert (=> b!5103752 m!6161142))

(declare-fun m!6161144 () Bool)

(assert (=> b!5103749 m!6161144))

(declare-fun m!6161146 () Bool)

(assert (=> setNonEmpty!29296 m!6161146))

(declare-fun m!6161148 () Bool)

(assert (=> b!5103762 m!6161148))

(declare-fun m!6161150 () Bool)

(assert (=> b!5103763 m!6161150))

(declare-fun m!6161152 () Bool)

(assert (=> start!538196 m!6161152))

(declare-fun m!6161154 () Bool)

(assert (=> b!5103751 m!6161154))

(declare-fun m!6161156 () Bool)

(assert (=> b!5103747 m!6161156))

(declare-fun m!6161158 () Bool)

(assert (=> b!5103747 m!6161158))

(declare-fun m!6161160 () Bool)

(assert (=> b!5103747 m!6161160))

(declare-fun m!6161162 () Bool)

(assert (=> b!5103747 m!6161162))

(declare-fun m!6161164 () Bool)

(assert (=> b!5103747 m!6161164))

(declare-fun m!6161166 () Bool)

(assert (=> b!5103747 m!6161166))

(declare-fun m!6161168 () Bool)

(assert (=> b!5103747 m!6161168))

(declare-fun m!6161170 () Bool)

(assert (=> b!5103747 m!6161170))

(declare-fun m!6161172 () Bool)

(assert (=> b!5103747 m!6161172))

(declare-fun m!6161174 () Bool)

(assert (=> b!5103747 m!6161174))

(declare-fun m!6161176 () Bool)

(assert (=> b!5103747 m!6161176))

(declare-fun m!6161178 () Bool)

(assert (=> b!5103747 m!6161178))

(declare-fun m!6161180 () Bool)

(assert (=> b!5103747 m!6161180))

(check-sat (not b!5103748) (not b!5103751) (not b!5103757) (not b!5103760) (not setNonEmpty!29296) tp_is_empty!37395 (not b!5103765) (not start!538196) (not b!5103755) (not b!5103752) (not b!5103759) (not b!5103762) (not b!5103756) (not b!5103749) (not b!5103758) (not b!5103761) (not b!5103750) (not b!5103763) (not b!5103753) (not b!5103747))
(check-sat)
(get-model)

(declare-fun d!1650378 () Bool)

(assert (=> d!1650378 (= (matchR!6850 r!12920 (_1!35061 lt!2099771)) (matchZipper!737 z!4303 (_1!35061 lt!2099771)))))

(declare-fun lt!2099793 () Unit!149902)

(declare-fun choose!37395 ((InoxSet Context!6898) List!58983 Regex!14065 List!58982) Unit!149902)

(assert (=> d!1650378 (= lt!2099793 (choose!37395 z!4303 lt!2099773 r!12920 (_1!35061 lt!2099771)))))

(assert (=> d!1650378 (validRegex!6192 r!12920)))

(assert (=> d!1650378 (= (theoremZipperRegexEquiv!229 z!4303 lt!2099773 r!12920 (_1!35061 lt!2099771)) lt!2099793)))

(declare-fun bs!1191586 () Bool)

(assert (= bs!1191586 d!1650378))

(assert (=> bs!1191586 m!6161124))

(assert (=> bs!1191586 m!6161162))

(declare-fun m!6161182 () Bool)

(assert (=> bs!1191586 m!6161182))

(assert (=> bs!1191586 m!6161152))

(assert (=> b!5103755 d!1650378))

(declare-fun b!5103806 () Bool)

(declare-fun e!3183167 () Bool)

(declare-fun nullable!4723 (Regex!14065) Bool)

(assert (=> b!5103806 (= e!3183167 (nullable!4723 r!12920))))

(declare-fun b!5103807 () Bool)

(declare-fun derivativeStep!4003 (Regex!14065 C!28388) Regex!14065)

(declare-fun head!10839 (List!58982) C!28388)

(declare-fun tail!9994 (List!58982) List!58982)

(assert (=> b!5103807 (= e!3183167 (matchR!6850 (derivativeStep!4003 r!12920 (head!10839 (_1!35061 lt!2099771))) (tail!9994 (_1!35061 lt!2099771))))))

(declare-fun b!5103808 () Bool)

(declare-fun e!3183172 () Bool)

(declare-fun e!3183171 () Bool)

(assert (=> b!5103808 (= e!3183172 e!3183171)))

(declare-fun res!2172356 () Bool)

(assert (=> b!5103808 (=> (not res!2172356) (not e!3183171))))

(declare-fun lt!2099833 () Bool)

(assert (=> b!5103808 (= res!2172356 (not lt!2099833))))

(declare-fun b!5103809 () Bool)

(declare-fun e!3183166 () Bool)

(assert (=> b!5103809 (= e!3183166 (not (= (head!10839 (_1!35061 lt!2099771)) (c!876755 r!12920))))))

(declare-fun b!5103810 () Bool)

(declare-fun e!3183168 () Bool)

(declare-fun call!355612 () Bool)

(assert (=> b!5103810 (= e!3183168 (= lt!2099833 call!355612))))

(declare-fun d!1650382 () Bool)

(assert (=> d!1650382 e!3183168))

(declare-fun c!876765 () Bool)

(assert (=> d!1650382 (= c!876765 ((_ is EmptyExpr!14065) r!12920))))

(assert (=> d!1650382 (= lt!2099833 e!3183167)))

(declare-fun c!876767 () Bool)

(assert (=> d!1650382 (= c!876767 (isEmpty!31810 (_1!35061 lt!2099771)))))

(assert (=> d!1650382 (validRegex!6192 r!12920)))

(assert (=> d!1650382 (= (matchR!6850 r!12920 (_1!35061 lt!2099771)) lt!2099833)))

(declare-fun b!5103811 () Bool)

(declare-fun res!2172360 () Bool)

(assert (=> b!5103811 (=> res!2172360 e!3183166)))

(assert (=> b!5103811 (= res!2172360 (not (isEmpty!31810 (tail!9994 (_1!35061 lt!2099771)))))))

(declare-fun bm!355607 () Bool)

(assert (=> bm!355607 (= call!355612 (isEmpty!31810 (_1!35061 lt!2099771)))))

(declare-fun b!5103812 () Bool)

(declare-fun e!3183170 () Bool)

(assert (=> b!5103812 (= e!3183170 (= (head!10839 (_1!35061 lt!2099771)) (c!876755 r!12920)))))

(declare-fun b!5103813 () Bool)

(assert (=> b!5103813 (= e!3183171 e!3183166)))

(declare-fun res!2172355 () Bool)

(assert (=> b!5103813 (=> res!2172355 e!3183166)))

(assert (=> b!5103813 (= res!2172355 call!355612)))

(declare-fun b!5103814 () Bool)

(declare-fun e!3183169 () Bool)

(assert (=> b!5103814 (= e!3183169 (not lt!2099833))))

(declare-fun b!5103815 () Bool)

(declare-fun res!2172359 () Bool)

(assert (=> b!5103815 (=> (not res!2172359) (not e!3183170))))

(assert (=> b!5103815 (= res!2172359 (not call!355612))))

(declare-fun b!5103816 () Bool)

(declare-fun res!2172357 () Bool)

(assert (=> b!5103816 (=> (not res!2172357) (not e!3183170))))

(assert (=> b!5103816 (= res!2172357 (isEmpty!31810 (tail!9994 (_1!35061 lt!2099771))))))

(declare-fun b!5103817 () Bool)

(assert (=> b!5103817 (= e!3183168 e!3183169)))

(declare-fun c!876766 () Bool)

(assert (=> b!5103817 (= c!876766 ((_ is EmptyLang!14065) r!12920))))

(declare-fun b!5103818 () Bool)

(declare-fun res!2172362 () Bool)

(assert (=> b!5103818 (=> res!2172362 e!3183172)))

(assert (=> b!5103818 (= res!2172362 e!3183170)))

(declare-fun res!2172361 () Bool)

(assert (=> b!5103818 (=> (not res!2172361) (not e!3183170))))

(assert (=> b!5103818 (= res!2172361 lt!2099833)))

(declare-fun b!5103819 () Bool)

(declare-fun res!2172358 () Bool)

(assert (=> b!5103819 (=> res!2172358 e!3183172)))

(assert (=> b!5103819 (= res!2172358 (not ((_ is ElementMatch!14065) r!12920)))))

(assert (=> b!5103819 (= e!3183169 e!3183172)))

(assert (= (and d!1650382 c!876767) b!5103806))

(assert (= (and d!1650382 (not c!876767)) b!5103807))

(assert (= (and d!1650382 c!876765) b!5103810))

(assert (= (and d!1650382 (not c!876765)) b!5103817))

(assert (= (and b!5103817 c!876766) b!5103814))

(assert (= (and b!5103817 (not c!876766)) b!5103819))

(assert (= (and b!5103819 (not res!2172358)) b!5103818))

(assert (= (and b!5103818 res!2172361) b!5103815))

(assert (= (and b!5103815 res!2172359) b!5103816))

(assert (= (and b!5103816 res!2172357) b!5103812))

(assert (= (and b!5103818 (not res!2172362)) b!5103808))

(assert (= (and b!5103808 res!2172356) b!5103813))

(assert (= (and b!5103813 (not res!2172355)) b!5103811))

(assert (= (and b!5103811 (not res!2172360)) b!5103809))

(assert (= (or b!5103810 b!5103813 b!5103815) bm!355607))

(declare-fun m!6161220 () Bool)

(assert (=> b!5103806 m!6161220))

(declare-fun m!6161222 () Bool)

(assert (=> b!5103812 m!6161222))

(assert (=> d!1650382 m!6161150))

(assert (=> d!1650382 m!6161152))

(assert (=> b!5103809 m!6161222))

(assert (=> b!5103807 m!6161222))

(assert (=> b!5103807 m!6161222))

(declare-fun m!6161224 () Bool)

(assert (=> b!5103807 m!6161224))

(declare-fun m!6161226 () Bool)

(assert (=> b!5103807 m!6161226))

(assert (=> b!5103807 m!6161224))

(assert (=> b!5103807 m!6161226))

(declare-fun m!6161228 () Bool)

(assert (=> b!5103807 m!6161228))

(assert (=> bm!355607 m!6161150))

(assert (=> b!5103816 m!6161226))

(assert (=> b!5103816 m!6161226))

(declare-fun m!6161230 () Bool)

(assert (=> b!5103816 m!6161230))

(assert (=> b!5103811 m!6161226))

(assert (=> b!5103811 m!6161226))

(assert (=> b!5103811 m!6161230))

(assert (=> b!5103755 d!1650382))

(declare-fun d!1650390 () Bool)

(declare-fun lt!2099838 () Int)

(assert (=> d!1650390 (>= lt!2099838 0)))

(declare-fun e!3183189 () Int)

(assert (=> d!1650390 (= lt!2099838 e!3183189)))

(declare-fun c!876776 () Bool)

(assert (=> d!1650390 (= c!876776 ((_ is Nil!58858) (_1!35061 lt!2099781)))))

(assert (=> d!1650390 (= (size!39367 (_1!35061 lt!2099781)) lt!2099838)))

(declare-fun b!5103852 () Bool)

(assert (=> b!5103852 (= e!3183189 0)))

(declare-fun b!5103853 () Bool)

(assert (=> b!5103853 (= e!3183189 (+ 1 (size!39367 (t!371983 (_1!35061 lt!2099781)))))))

(assert (= (and d!1650390 c!876776) b!5103852))

(assert (= (and d!1650390 (not c!876776)) b!5103853))

(declare-fun m!6161232 () Bool)

(assert (=> b!5103853 m!6161232))

(assert (=> b!5103755 d!1650390))

(declare-fun d!1650392 () Bool)

(assert (=> d!1650392 (= (matchR!6850 r!12920 (_1!35061 lt!2099781)) (matchZipper!737 z!4303 (_1!35061 lt!2099781)))))

(declare-fun lt!2099839 () Unit!149902)

(assert (=> d!1650392 (= lt!2099839 (choose!37395 z!4303 lt!2099773 r!12920 (_1!35061 lt!2099781)))))

(assert (=> d!1650392 (validRegex!6192 r!12920)))

(assert (=> d!1650392 (= (theoremZipperRegexEquiv!229 z!4303 lt!2099773 r!12920 (_1!35061 lt!2099781)) lt!2099839)))

(declare-fun bs!1191589 () Bool)

(assert (= bs!1191589 d!1650392))

(assert (=> bs!1191589 m!6161154))

(assert (=> bs!1191589 m!6161122))

(declare-fun m!6161234 () Bool)

(assert (=> bs!1191589 m!6161234))

(assert (=> bs!1191589 m!6161152))

(assert (=> b!5103755 d!1650392))

(declare-fun d!1650394 () Bool)

(declare-fun c!876782 () Bool)

(assert (=> d!1650394 (= c!876782 (isEmpty!31810 (_1!35061 lt!2099781)))))

(declare-fun e!3183199 () Bool)

(assert (=> d!1650394 (= (matchZipper!737 z!4303 (_1!35061 lt!2099781)) e!3183199)))

(declare-fun b!5103872 () Bool)

(declare-fun nullableZipper!964 ((InoxSet Context!6898)) Bool)

(assert (=> b!5103872 (= e!3183199 (nullableZipper!964 z!4303))))

(declare-fun b!5103873 () Bool)

(declare-fun derivationStepZipper!752 ((InoxSet Context!6898) C!28388) (InoxSet Context!6898))

(assert (=> b!5103873 (= e!3183199 (matchZipper!737 (derivationStepZipper!752 z!4303 (head!10839 (_1!35061 lt!2099781))) (tail!9994 (_1!35061 lt!2099781))))))

(assert (= (and d!1650394 c!876782) b!5103872))

(assert (= (and d!1650394 (not c!876782)) b!5103873))

(assert (=> d!1650394 m!6161126))

(declare-fun m!6161248 () Bool)

(assert (=> b!5103872 m!6161248))

(declare-fun m!6161250 () Bool)

(assert (=> b!5103873 m!6161250))

(assert (=> b!5103873 m!6161250))

(declare-fun m!6161252 () Bool)

(assert (=> b!5103873 m!6161252))

(declare-fun m!6161254 () Bool)

(assert (=> b!5103873 m!6161254))

(assert (=> b!5103873 m!6161252))

(assert (=> b!5103873 m!6161254))

(declare-fun m!6161256 () Bool)

(assert (=> b!5103873 m!6161256))

(assert (=> b!5103755 d!1650394))

(declare-fun d!1650400 () Bool)

(declare-fun lt!2099841 () Int)

(assert (=> d!1650400 (>= lt!2099841 0)))

(declare-fun e!3183200 () Int)

(assert (=> d!1650400 (= lt!2099841 e!3183200)))

(declare-fun c!876783 () Bool)

(assert (=> d!1650400 (= c!876783 ((_ is Nil!58858) (_1!35061 lt!2099771)))))

(assert (=> d!1650400 (= (size!39367 (_1!35061 lt!2099771)) lt!2099841)))

(declare-fun b!5103874 () Bool)

(assert (=> b!5103874 (= e!3183200 0)))

(declare-fun b!5103875 () Bool)

(assert (=> b!5103875 (= e!3183200 (+ 1 (size!39367 (t!371983 (_1!35061 lt!2099771)))))))

(assert (= (and d!1650400 c!876783) b!5103874))

(assert (= (and d!1650400 (not c!876783)) b!5103875))

(declare-fun m!6161258 () Bool)

(assert (=> b!5103875 m!6161258))

(assert (=> b!5103755 d!1650400))

(declare-fun d!1650402 () Bool)

(declare-fun c!876784 () Bool)

(assert (=> d!1650402 (= c!876784 (isEmpty!31810 (_1!35061 lt!2099786)))))

(declare-fun e!3183201 () Bool)

(assert (=> d!1650402 (= (matchZipper!737 z!4303 (_1!35061 lt!2099786)) e!3183201)))

(declare-fun b!5103876 () Bool)

(assert (=> b!5103876 (= e!3183201 (nullableZipper!964 z!4303))))

(declare-fun b!5103877 () Bool)

(assert (=> b!5103877 (= e!3183201 (matchZipper!737 (derivationStepZipper!752 z!4303 (head!10839 (_1!35061 lt!2099786))) (tail!9994 (_1!35061 lt!2099786))))))

(assert (= (and d!1650402 c!876784) b!5103876))

(assert (= (and d!1650402 (not c!876784)) b!5103877))

(assert (=> d!1650402 m!6161160))

(assert (=> b!5103876 m!6161248))

(declare-fun m!6161260 () Bool)

(assert (=> b!5103877 m!6161260))

(assert (=> b!5103877 m!6161260))

(declare-fun m!6161262 () Bool)

(assert (=> b!5103877 m!6161262))

(declare-fun m!6161264 () Bool)

(assert (=> b!5103877 m!6161264))

(assert (=> b!5103877 m!6161262))

(assert (=> b!5103877 m!6161264))

(declare-fun m!6161266 () Bool)

(assert (=> b!5103877 m!6161266))

(assert (=> b!5103761 d!1650402))

(declare-fun b!5103886 () Bool)

(declare-fun e!3183206 () List!58982)

(assert (=> b!5103886 (= e!3183206 (_2!35061 lt!2099771))))

(declare-fun b!5103888 () Bool)

(declare-fun res!2172392 () Bool)

(declare-fun e!3183207 () Bool)

(assert (=> b!5103888 (=> (not res!2172392) (not e!3183207))))

(declare-fun lt!2099844 () List!58982)

(assert (=> b!5103888 (= res!2172392 (= (size!39367 lt!2099844) (+ (size!39367 (_1!35061 lt!2099771)) (size!39367 (_2!35061 lt!2099771)))))))

(declare-fun d!1650404 () Bool)

(assert (=> d!1650404 e!3183207))

(declare-fun res!2172391 () Bool)

(assert (=> d!1650404 (=> (not res!2172391) (not e!3183207))))

(declare-fun content!10473 (List!58982) (InoxSet C!28388))

(assert (=> d!1650404 (= res!2172391 (= (content!10473 lt!2099844) ((_ map or) (content!10473 (_1!35061 lt!2099771)) (content!10473 (_2!35061 lt!2099771)))))))

(assert (=> d!1650404 (= lt!2099844 e!3183206)))

(declare-fun c!876787 () Bool)

(assert (=> d!1650404 (= c!876787 ((_ is Nil!58858) (_1!35061 lt!2099771)))))

(assert (=> d!1650404 (= (++!12914 (_1!35061 lt!2099771) (_2!35061 lt!2099771)) lt!2099844)))

(declare-fun b!5103887 () Bool)

(assert (=> b!5103887 (= e!3183206 (Cons!58858 (h!65306 (_1!35061 lt!2099771)) (++!12914 (t!371983 (_1!35061 lt!2099771)) (_2!35061 lt!2099771))))))

(declare-fun b!5103889 () Bool)

(assert (=> b!5103889 (= e!3183207 (or (not (= (_2!35061 lt!2099771) Nil!58858)) (= lt!2099844 (_1!35061 lt!2099771))))))

(assert (= (and d!1650404 c!876787) b!5103886))

(assert (= (and d!1650404 (not c!876787)) b!5103887))

(assert (= (and d!1650404 res!2172391) b!5103888))

(assert (= (and b!5103888 res!2172392) b!5103889))

(declare-fun m!6161268 () Bool)

(assert (=> b!5103888 m!6161268))

(assert (=> b!5103888 m!6161114))

(declare-fun m!6161270 () Bool)

(assert (=> b!5103888 m!6161270))

(declare-fun m!6161272 () Bool)

(assert (=> d!1650404 m!6161272))

(declare-fun m!6161274 () Bool)

(assert (=> d!1650404 m!6161274))

(declare-fun m!6161276 () Bool)

(assert (=> d!1650404 m!6161276))

(declare-fun m!6161278 () Bool)

(assert (=> b!5103887 m!6161278))

(assert (=> b!5103752 d!1650404))

(declare-fun d!1650406 () Bool)

(declare-fun lt!2099861 () tuple2!63516)

(assert (=> d!1650406 (= (++!12914 (_1!35061 lt!2099861) (_2!35061 lt!2099861)) input!5654)))

(declare-fun sizeTr!433 (List!58982 Int) Int)

(assert (=> d!1650406 (= lt!2099861 (findLongestMatchInner!2078 r!12920 Nil!58858 0 input!5654 input!5654 (sizeTr!433 input!5654 0)))))

(declare-fun lt!2099865 () Unit!149902)

(declare-fun lt!2099864 () Unit!149902)

(assert (=> d!1650406 (= lt!2099865 lt!2099864)))

(declare-fun lt!2099862 () List!58982)

(declare-fun lt!2099866 () Int)

(assert (=> d!1650406 (= (sizeTr!433 lt!2099862 lt!2099866) (+ (size!39367 lt!2099862) lt!2099866))))

(declare-fun lemmaSizeTrEqualsSize!432 (List!58982 Int) Unit!149902)

(assert (=> d!1650406 (= lt!2099864 (lemmaSizeTrEqualsSize!432 lt!2099862 lt!2099866))))

(assert (=> d!1650406 (= lt!2099866 0)))

(assert (=> d!1650406 (= lt!2099862 Nil!58858)))

(declare-fun lt!2099868 () Unit!149902)

(declare-fun lt!2099867 () Unit!149902)

(assert (=> d!1650406 (= lt!2099868 lt!2099867)))

(declare-fun lt!2099863 () Int)

(assert (=> d!1650406 (= (sizeTr!433 input!5654 lt!2099863) (+ (size!39367 input!5654) lt!2099863))))

(assert (=> d!1650406 (= lt!2099867 (lemmaSizeTrEqualsSize!432 input!5654 lt!2099863))))

(assert (=> d!1650406 (= lt!2099863 0)))

(assert (=> d!1650406 (validRegex!6192 r!12920)))

(assert (=> d!1650406 (= (findLongestMatch!1895 r!12920 input!5654) lt!2099861)))

(declare-fun bs!1191590 () Bool)

(assert (= bs!1191590 d!1650406))

(declare-fun m!6161280 () Bool)

(assert (=> bs!1191590 m!6161280))

(declare-fun m!6161282 () Bool)

(assert (=> bs!1191590 m!6161282))

(assert (=> bs!1191590 m!6161152))

(declare-fun m!6161284 () Bool)

(assert (=> bs!1191590 m!6161284))

(declare-fun m!6161286 () Bool)

(assert (=> bs!1191590 m!6161286))

(declare-fun m!6161288 () Bool)

(assert (=> bs!1191590 m!6161288))

(declare-fun m!6161290 () Bool)

(assert (=> bs!1191590 m!6161290))

(declare-fun m!6161292 () Bool)

(assert (=> bs!1191590 m!6161292))

(assert (=> bs!1191590 m!6161282))

(declare-fun m!6161294 () Bool)

(assert (=> bs!1191590 m!6161294))

(assert (=> bs!1191590 m!6161174))

(assert (=> b!5103752 d!1650406))

(declare-fun d!1650408 () Bool)

(declare-fun lt!2099877 () tuple2!63516)

(assert (=> d!1650408 (= (++!12914 (_1!35061 lt!2099877) (_2!35061 lt!2099877)) input!5654)))

(assert (=> d!1650408 (= lt!2099877 (findLongestMatchInnerZipper!139 z!4303 Nil!58858 0 input!5654 input!5654 (sizeTr!433 input!5654 0)))))

(declare-fun lt!2099878 () Unit!149902)

(declare-fun lt!2099880 () Unit!149902)

(assert (=> d!1650408 (= lt!2099878 lt!2099880)))

(declare-fun lt!2099879 () Int)

(assert (=> d!1650408 (= (sizeTr!433 input!5654 lt!2099879) (+ (size!39367 input!5654) lt!2099879))))

(assert (=> d!1650408 (= lt!2099880 (lemmaSizeTrEqualsSize!432 input!5654 lt!2099879))))

(assert (=> d!1650408 (= lt!2099879 0)))

(assert (=> d!1650408 (= (findLongestMatchZipper!89 z!4303 input!5654) lt!2099877)))

(declare-fun bs!1191591 () Bool)

(assert (= bs!1191591 d!1650408))

(assert (=> bs!1191591 m!6161282))

(declare-fun m!6161296 () Bool)

(assert (=> bs!1191591 m!6161296))

(declare-fun m!6161298 () Bool)

(assert (=> bs!1191591 m!6161298))

(declare-fun m!6161300 () Bool)

(assert (=> bs!1191591 m!6161300))

(declare-fun m!6161302 () Bool)

(assert (=> bs!1191591 m!6161302))

(assert (=> bs!1191591 m!6161282))

(assert (=> bs!1191591 m!6161174))

(assert (=> b!5103752 d!1650408))

(declare-fun b!5103890 () Bool)

(declare-fun e!3183208 () List!58982)

(assert (=> b!5103890 (= e!3183208 (_2!35061 lt!2099781))))

(declare-fun b!5103892 () Bool)

(declare-fun res!2172394 () Bool)

(declare-fun e!3183209 () Bool)

(assert (=> b!5103892 (=> (not res!2172394) (not e!3183209))))

(declare-fun lt!2099881 () List!58982)

(assert (=> b!5103892 (= res!2172394 (= (size!39367 lt!2099881) (+ (size!39367 (_1!35061 lt!2099781)) (size!39367 (_2!35061 lt!2099781)))))))

(declare-fun d!1650410 () Bool)

(assert (=> d!1650410 e!3183209))

(declare-fun res!2172393 () Bool)

(assert (=> d!1650410 (=> (not res!2172393) (not e!3183209))))

(assert (=> d!1650410 (= res!2172393 (= (content!10473 lt!2099881) ((_ map or) (content!10473 (_1!35061 lt!2099781)) (content!10473 (_2!35061 lt!2099781)))))))

(assert (=> d!1650410 (= lt!2099881 e!3183208)))

(declare-fun c!876788 () Bool)

(assert (=> d!1650410 (= c!876788 ((_ is Nil!58858) (_1!35061 lt!2099781)))))

(assert (=> d!1650410 (= (++!12914 (_1!35061 lt!2099781) (_2!35061 lt!2099781)) lt!2099881)))

(declare-fun b!5103891 () Bool)

(assert (=> b!5103891 (= e!3183208 (Cons!58858 (h!65306 (_1!35061 lt!2099781)) (++!12914 (t!371983 (_1!35061 lt!2099781)) (_2!35061 lt!2099781))))))

(declare-fun b!5103893 () Bool)

(assert (=> b!5103893 (= e!3183209 (or (not (= (_2!35061 lt!2099781) Nil!58858)) (= lt!2099881 (_1!35061 lt!2099781))))))

(assert (= (and d!1650410 c!876788) b!5103890))

(assert (= (and d!1650410 (not c!876788)) b!5103891))

(assert (= (and d!1650410 res!2172393) b!5103892))

(assert (= (and b!5103892 res!2172394) b!5103893))

(declare-fun m!6161304 () Bool)

(assert (=> b!5103892 m!6161304))

(assert (=> b!5103892 m!6161120))

(declare-fun m!6161306 () Bool)

(assert (=> b!5103892 m!6161306))

(declare-fun m!6161308 () Bool)

(assert (=> d!1650410 m!6161308))

(declare-fun m!6161310 () Bool)

(assert (=> d!1650410 m!6161310))

(declare-fun m!6161312 () Bool)

(assert (=> d!1650410 m!6161312))

(declare-fun m!6161314 () Bool)

(assert (=> b!5103891 m!6161314))

(assert (=> b!5103762 d!1650410))

(declare-fun d!1650412 () Bool)

(assert (=> d!1650412 (= (isEmpty!31810 (_1!35061 lt!2099771)) ((_ is Nil!58858) (_1!35061 lt!2099771)))))

(assert (=> b!5103763 d!1650412))

(declare-fun b!5103894 () Bool)

(declare-fun e!3183211 () Bool)

(assert (=> b!5103894 (= e!3183211 (nullable!4723 r!12920))))

(declare-fun b!5103895 () Bool)

(assert (=> b!5103895 (= e!3183211 (matchR!6850 (derivativeStep!4003 r!12920 (head!10839 (_1!35061 lt!2099778))) (tail!9994 (_1!35061 lt!2099778))))))

(declare-fun b!5103896 () Bool)

(declare-fun e!3183216 () Bool)

(declare-fun e!3183215 () Bool)

(assert (=> b!5103896 (= e!3183216 e!3183215)))

(declare-fun res!2172396 () Bool)

(assert (=> b!5103896 (=> (not res!2172396) (not e!3183215))))

(declare-fun lt!2099882 () Bool)

(assert (=> b!5103896 (= res!2172396 (not lt!2099882))))

(declare-fun b!5103897 () Bool)

(declare-fun e!3183210 () Bool)

(assert (=> b!5103897 (= e!3183210 (not (= (head!10839 (_1!35061 lt!2099778)) (c!876755 r!12920))))))

(declare-fun b!5103898 () Bool)

(declare-fun e!3183212 () Bool)

(declare-fun call!355616 () Bool)

(assert (=> b!5103898 (= e!3183212 (= lt!2099882 call!355616))))

(declare-fun d!1650414 () Bool)

(assert (=> d!1650414 e!3183212))

(declare-fun c!876789 () Bool)

(assert (=> d!1650414 (= c!876789 ((_ is EmptyExpr!14065) r!12920))))

(assert (=> d!1650414 (= lt!2099882 e!3183211)))

(declare-fun c!876791 () Bool)

(assert (=> d!1650414 (= c!876791 (isEmpty!31810 (_1!35061 lt!2099778)))))

(assert (=> d!1650414 (validRegex!6192 r!12920)))

(assert (=> d!1650414 (= (matchR!6850 r!12920 (_1!35061 lt!2099778)) lt!2099882)))

(declare-fun b!5103899 () Bool)

(declare-fun res!2172400 () Bool)

(assert (=> b!5103899 (=> res!2172400 e!3183210)))

(assert (=> b!5103899 (= res!2172400 (not (isEmpty!31810 (tail!9994 (_1!35061 lt!2099778)))))))

(declare-fun bm!355611 () Bool)

(assert (=> bm!355611 (= call!355616 (isEmpty!31810 (_1!35061 lt!2099778)))))

(declare-fun b!5103900 () Bool)

(declare-fun e!3183214 () Bool)

(assert (=> b!5103900 (= e!3183214 (= (head!10839 (_1!35061 lt!2099778)) (c!876755 r!12920)))))

(declare-fun b!5103901 () Bool)

(assert (=> b!5103901 (= e!3183215 e!3183210)))

(declare-fun res!2172395 () Bool)

(assert (=> b!5103901 (=> res!2172395 e!3183210)))

(assert (=> b!5103901 (= res!2172395 call!355616)))

(declare-fun b!5103902 () Bool)

(declare-fun e!3183213 () Bool)

(assert (=> b!5103902 (= e!3183213 (not lt!2099882))))

(declare-fun b!5103903 () Bool)

(declare-fun res!2172399 () Bool)

(assert (=> b!5103903 (=> (not res!2172399) (not e!3183214))))

(assert (=> b!5103903 (= res!2172399 (not call!355616))))

(declare-fun b!5103904 () Bool)

(declare-fun res!2172397 () Bool)

(assert (=> b!5103904 (=> (not res!2172397) (not e!3183214))))

(assert (=> b!5103904 (= res!2172397 (isEmpty!31810 (tail!9994 (_1!35061 lt!2099778))))))

(declare-fun b!5103905 () Bool)

(assert (=> b!5103905 (= e!3183212 e!3183213)))

(declare-fun c!876790 () Bool)

(assert (=> b!5103905 (= c!876790 ((_ is EmptyLang!14065) r!12920))))

(declare-fun b!5103906 () Bool)

(declare-fun res!2172402 () Bool)

(assert (=> b!5103906 (=> res!2172402 e!3183216)))

(assert (=> b!5103906 (= res!2172402 e!3183214)))

(declare-fun res!2172401 () Bool)

(assert (=> b!5103906 (=> (not res!2172401) (not e!3183214))))

(assert (=> b!5103906 (= res!2172401 lt!2099882)))

(declare-fun b!5103907 () Bool)

(declare-fun res!2172398 () Bool)

(assert (=> b!5103907 (=> res!2172398 e!3183216)))

(assert (=> b!5103907 (= res!2172398 (not ((_ is ElementMatch!14065) r!12920)))))

(assert (=> b!5103907 (= e!3183213 e!3183216)))

(assert (= (and d!1650414 c!876791) b!5103894))

(assert (= (and d!1650414 (not c!876791)) b!5103895))

(assert (= (and d!1650414 c!876789) b!5103898))

(assert (= (and d!1650414 (not c!876789)) b!5103905))

(assert (= (and b!5103905 c!876790) b!5103902))

(assert (= (and b!5103905 (not c!876790)) b!5103907))

(assert (= (and b!5103907 (not res!2172398)) b!5103906))

(assert (= (and b!5103906 res!2172401) b!5103903))

(assert (= (and b!5103903 res!2172399) b!5103904))

(assert (= (and b!5103904 res!2172397) b!5103900))

(assert (= (and b!5103906 (not res!2172402)) b!5103896))

(assert (= (and b!5103896 res!2172396) b!5103901))

(assert (= (and b!5103901 (not res!2172395)) b!5103899))

(assert (= (and b!5103899 (not res!2172400)) b!5103897))

(assert (= (or b!5103898 b!5103901 b!5103903) bm!355611))

(assert (=> b!5103894 m!6161220))

(declare-fun m!6161316 () Bool)

(assert (=> b!5103900 m!6161316))

(assert (=> d!1650414 m!6161168))

(assert (=> d!1650414 m!6161152))

(assert (=> b!5103897 m!6161316))

(assert (=> b!5103895 m!6161316))

(assert (=> b!5103895 m!6161316))

(declare-fun m!6161318 () Bool)

(assert (=> b!5103895 m!6161318))

(declare-fun m!6161320 () Bool)

(assert (=> b!5103895 m!6161320))

(assert (=> b!5103895 m!6161318))

(assert (=> b!5103895 m!6161320))

(declare-fun m!6161322 () Bool)

(assert (=> b!5103895 m!6161322))

(assert (=> bm!355611 m!6161168))

(assert (=> b!5103904 m!6161320))

(assert (=> b!5103904 m!6161320))

(declare-fun m!6161324 () Bool)

(assert (=> b!5103904 m!6161324))

(assert (=> b!5103899 m!6161320))

(assert (=> b!5103899 m!6161320))

(assert (=> b!5103899 m!6161324))

(assert (=> b!5103749 d!1650414))

(declare-fun d!1650416 () Bool)

(declare-fun lt!2099885 () Regex!14065)

(assert (=> d!1650416 (validRegex!6192 lt!2099885)))

(declare-fun generalisedUnion!608 (List!58981) Regex!14065)

(declare-fun unfocusZipperList!121 (List!58983) List!58981)

(assert (=> d!1650416 (= lt!2099885 (generalisedUnion!608 (unfocusZipperList!121 lt!2099773)))))

(assert (=> d!1650416 (= (unfocusZipper!407 lt!2099773) lt!2099885)))

(declare-fun bs!1191592 () Bool)

(assert (= bs!1191592 d!1650416))

(declare-fun m!6161326 () Bool)

(assert (=> bs!1191592 m!6161326))

(declare-fun m!6161328 () Bool)

(assert (=> bs!1191592 m!6161328))

(assert (=> bs!1191592 m!6161328))

(declare-fun m!6161330 () Bool)

(assert (=> bs!1191592 m!6161330))

(assert (=> b!5103759 d!1650416))

(declare-fun d!1650418 () Bool)

(declare-fun e!3183219 () Bool)

(assert (=> d!1650418 e!3183219))

(declare-fun res!2172405 () Bool)

(assert (=> d!1650418 (=> (not res!2172405) (not e!3183219))))

(declare-fun lt!2099888 () List!58983)

(declare-fun noDuplicate!1067 (List!58983) Bool)

(assert (=> d!1650418 (= res!2172405 (noDuplicate!1067 lt!2099888))))

(declare-fun choose!37398 ((InoxSet Context!6898)) List!58983)

(assert (=> d!1650418 (= lt!2099888 (choose!37398 z!4303))))

(assert (=> d!1650418 (= (toList!8199 z!4303) lt!2099888)))

(declare-fun b!5103910 () Bool)

(declare-fun content!10474 (List!58983) (InoxSet Context!6898))

(assert (=> b!5103910 (= e!3183219 (= (content!10474 lt!2099888) z!4303))))

(assert (= (and d!1650418 res!2172405) b!5103910))

(declare-fun m!6161332 () Bool)

(assert (=> d!1650418 m!6161332))

(declare-fun m!6161334 () Bool)

(assert (=> d!1650418 m!6161334))

(declare-fun m!6161336 () Bool)

(assert (=> b!5103910 m!6161336))

(assert (=> b!5103759 d!1650418))

(declare-fun b!5103921 () Bool)

(declare-fun e!3183227 () Bool)

(assert (=> b!5103921 (= e!3183227 (isPrefix!5466 (tail!9994 (_1!35061 lt!2099771)) (tail!9994 input!5654)))))

(declare-fun b!5103922 () Bool)

(declare-fun e!3183228 () Bool)

(assert (=> b!5103922 (= e!3183228 (>= (size!39367 input!5654) (size!39367 (_1!35061 lt!2099771))))))

(declare-fun b!5103920 () Bool)

(declare-fun res!2172414 () Bool)

(assert (=> b!5103920 (=> (not res!2172414) (not e!3183227))))

(assert (=> b!5103920 (= res!2172414 (= (head!10839 (_1!35061 lt!2099771)) (head!10839 input!5654)))))

(declare-fun b!5103919 () Bool)

(declare-fun e!3183226 () Bool)

(assert (=> b!5103919 (= e!3183226 e!3183227)))

(declare-fun res!2172417 () Bool)

(assert (=> b!5103919 (=> (not res!2172417) (not e!3183227))))

(assert (=> b!5103919 (= res!2172417 (not ((_ is Nil!58858) input!5654)))))

(declare-fun d!1650420 () Bool)

(assert (=> d!1650420 e!3183228))

(declare-fun res!2172415 () Bool)

(assert (=> d!1650420 (=> res!2172415 e!3183228)))

(declare-fun lt!2099891 () Bool)

(assert (=> d!1650420 (= res!2172415 (not lt!2099891))))

(assert (=> d!1650420 (= lt!2099891 e!3183226)))

(declare-fun res!2172416 () Bool)

(assert (=> d!1650420 (=> res!2172416 e!3183226)))

(assert (=> d!1650420 (= res!2172416 ((_ is Nil!58858) (_1!35061 lt!2099771)))))

(assert (=> d!1650420 (= (isPrefix!5466 (_1!35061 lt!2099771) input!5654) lt!2099891)))

(assert (= (and d!1650420 (not res!2172416)) b!5103919))

(assert (= (and b!5103919 res!2172417) b!5103920))

(assert (= (and b!5103920 res!2172414) b!5103921))

(assert (= (and d!1650420 (not res!2172415)) b!5103922))

(assert (=> b!5103921 m!6161226))

(declare-fun m!6161338 () Bool)

(assert (=> b!5103921 m!6161338))

(assert (=> b!5103921 m!6161226))

(assert (=> b!5103921 m!6161338))

(declare-fun m!6161340 () Bool)

(assert (=> b!5103921 m!6161340))

(assert (=> b!5103922 m!6161174))

(assert (=> b!5103922 m!6161114))

(assert (=> b!5103920 m!6161222))

(declare-fun m!6161342 () Bool)

(assert (=> b!5103920 m!6161342))

(assert (=> b!5103760 d!1650420))

(declare-fun b!5103923 () Bool)

(declare-fun e!3183230 () Bool)

(assert (=> b!5103923 (= e!3183230 (nullable!4723 r!12920))))

(declare-fun b!5103924 () Bool)

(assert (=> b!5103924 (= e!3183230 (matchR!6850 (derivativeStep!4003 r!12920 (head!10839 (_1!35061 lt!2099781))) (tail!9994 (_1!35061 lt!2099781))))))

(declare-fun b!5103925 () Bool)

(declare-fun e!3183235 () Bool)

(declare-fun e!3183234 () Bool)

(assert (=> b!5103925 (= e!3183235 e!3183234)))

(declare-fun res!2172419 () Bool)

(assert (=> b!5103925 (=> (not res!2172419) (not e!3183234))))

(declare-fun lt!2099892 () Bool)

(assert (=> b!5103925 (= res!2172419 (not lt!2099892))))

(declare-fun b!5103926 () Bool)

(declare-fun e!3183229 () Bool)

(assert (=> b!5103926 (= e!3183229 (not (= (head!10839 (_1!35061 lt!2099781)) (c!876755 r!12920))))))

(declare-fun b!5103927 () Bool)

(declare-fun e!3183231 () Bool)

(declare-fun call!355617 () Bool)

(assert (=> b!5103927 (= e!3183231 (= lt!2099892 call!355617))))

(declare-fun d!1650422 () Bool)

(assert (=> d!1650422 e!3183231))

(declare-fun c!876792 () Bool)

(assert (=> d!1650422 (= c!876792 ((_ is EmptyExpr!14065) r!12920))))

(assert (=> d!1650422 (= lt!2099892 e!3183230)))

(declare-fun c!876794 () Bool)

(assert (=> d!1650422 (= c!876794 (isEmpty!31810 (_1!35061 lt!2099781)))))

(assert (=> d!1650422 (validRegex!6192 r!12920)))

(assert (=> d!1650422 (= (matchR!6850 r!12920 (_1!35061 lt!2099781)) lt!2099892)))

(declare-fun b!5103928 () Bool)

(declare-fun res!2172423 () Bool)

(assert (=> b!5103928 (=> res!2172423 e!3183229)))

(assert (=> b!5103928 (= res!2172423 (not (isEmpty!31810 (tail!9994 (_1!35061 lt!2099781)))))))

(declare-fun bm!355612 () Bool)

(assert (=> bm!355612 (= call!355617 (isEmpty!31810 (_1!35061 lt!2099781)))))

(declare-fun b!5103929 () Bool)

(declare-fun e!3183233 () Bool)

(assert (=> b!5103929 (= e!3183233 (= (head!10839 (_1!35061 lt!2099781)) (c!876755 r!12920)))))

(declare-fun b!5103930 () Bool)

(assert (=> b!5103930 (= e!3183234 e!3183229)))

(declare-fun res!2172418 () Bool)

(assert (=> b!5103930 (=> res!2172418 e!3183229)))

(assert (=> b!5103930 (= res!2172418 call!355617)))

(declare-fun b!5103931 () Bool)

(declare-fun e!3183232 () Bool)

(assert (=> b!5103931 (= e!3183232 (not lt!2099892))))

(declare-fun b!5103932 () Bool)

(declare-fun res!2172422 () Bool)

(assert (=> b!5103932 (=> (not res!2172422) (not e!3183233))))

(assert (=> b!5103932 (= res!2172422 (not call!355617))))

(declare-fun b!5103933 () Bool)

(declare-fun res!2172420 () Bool)

(assert (=> b!5103933 (=> (not res!2172420) (not e!3183233))))

(assert (=> b!5103933 (= res!2172420 (isEmpty!31810 (tail!9994 (_1!35061 lt!2099781))))))

(declare-fun b!5103934 () Bool)

(assert (=> b!5103934 (= e!3183231 e!3183232)))

(declare-fun c!876793 () Bool)

(assert (=> b!5103934 (= c!876793 ((_ is EmptyLang!14065) r!12920))))

(declare-fun b!5103935 () Bool)

(declare-fun res!2172425 () Bool)

(assert (=> b!5103935 (=> res!2172425 e!3183235)))

(assert (=> b!5103935 (= res!2172425 e!3183233)))

(declare-fun res!2172424 () Bool)

(assert (=> b!5103935 (=> (not res!2172424) (not e!3183233))))

(assert (=> b!5103935 (= res!2172424 lt!2099892)))

(declare-fun b!5103936 () Bool)

(declare-fun res!2172421 () Bool)

(assert (=> b!5103936 (=> res!2172421 e!3183235)))

(assert (=> b!5103936 (= res!2172421 (not ((_ is ElementMatch!14065) r!12920)))))

(assert (=> b!5103936 (= e!3183232 e!3183235)))

(assert (= (and d!1650422 c!876794) b!5103923))

(assert (= (and d!1650422 (not c!876794)) b!5103924))

(assert (= (and d!1650422 c!876792) b!5103927))

(assert (= (and d!1650422 (not c!876792)) b!5103934))

(assert (= (and b!5103934 c!876793) b!5103931))

(assert (= (and b!5103934 (not c!876793)) b!5103936))

(assert (= (and b!5103936 (not res!2172421)) b!5103935))

(assert (= (and b!5103935 res!2172424) b!5103932))

(assert (= (and b!5103932 res!2172422) b!5103933))

(assert (= (and b!5103933 res!2172420) b!5103929))

(assert (= (and b!5103935 (not res!2172425)) b!5103925))

(assert (= (and b!5103925 res!2172419) b!5103930))

(assert (= (and b!5103930 (not res!2172418)) b!5103928))

(assert (= (and b!5103928 (not res!2172423)) b!5103926))

(assert (= (or b!5103927 b!5103930 b!5103932) bm!355612))

(assert (=> b!5103923 m!6161220))

(assert (=> b!5103929 m!6161250))

(assert (=> d!1650422 m!6161126))

(assert (=> d!1650422 m!6161152))

(assert (=> b!5103926 m!6161250))

(assert (=> b!5103924 m!6161250))

(assert (=> b!5103924 m!6161250))

(declare-fun m!6161344 () Bool)

(assert (=> b!5103924 m!6161344))

(assert (=> b!5103924 m!6161254))

(assert (=> b!5103924 m!6161344))

(assert (=> b!5103924 m!6161254))

(declare-fun m!6161346 () Bool)

(assert (=> b!5103924 m!6161346))

(assert (=> bm!355612 m!6161126))

(assert (=> b!5103933 m!6161254))

(assert (=> b!5103933 m!6161254))

(declare-fun m!6161348 () Bool)

(assert (=> b!5103933 m!6161348))

(assert (=> b!5103928 m!6161254))

(assert (=> b!5103928 m!6161254))

(assert (=> b!5103928 m!6161348))

(assert (=> b!5103751 d!1650422))

(declare-fun b!5103955 () Bool)

(declare-fun res!2172437 () Bool)

(declare-fun e!3183252 () Bool)

(assert (=> b!5103955 (=> (not res!2172437) (not e!3183252))))

(declare-fun call!355625 () Bool)

(assert (=> b!5103955 (= res!2172437 call!355625)))

(declare-fun e!3183251 () Bool)

(assert (=> b!5103955 (= e!3183251 e!3183252)))

(declare-fun b!5103956 () Bool)

(declare-fun e!3183250 () Bool)

(declare-fun call!355626 () Bool)

(assert (=> b!5103956 (= e!3183250 call!355626)))

(declare-fun b!5103957 () Bool)

(declare-fun res!2172440 () Bool)

(declare-fun e!3183254 () Bool)

(assert (=> b!5103957 (=> res!2172440 e!3183254)))

(assert (=> b!5103957 (= res!2172440 (not ((_ is Concat!22910) r!12920)))))

(assert (=> b!5103957 (= e!3183251 e!3183254)))

(declare-fun bm!355619 () Bool)

(declare-fun c!876800 () Bool)

(assert (=> bm!355619 (= call!355625 (validRegex!6192 (ite c!876800 (regOne!28643 r!12920) (regTwo!28642 r!12920))))))

(declare-fun b!5103958 () Bool)

(declare-fun e!3183256 () Bool)

(assert (=> b!5103958 (= e!3183256 call!355625)))

(declare-fun b!5103959 () Bool)

(assert (=> b!5103959 (= e!3183254 e!3183256)))

(declare-fun res!2172439 () Bool)

(assert (=> b!5103959 (=> (not res!2172439) (not e!3183256))))

(declare-fun call!355624 () Bool)

(assert (=> b!5103959 (= res!2172439 call!355624)))

(declare-fun c!876799 () Bool)

(declare-fun bm!355620 () Bool)

(assert (=> bm!355620 (= call!355626 (validRegex!6192 (ite c!876799 (reg!14394 r!12920) (ite c!876800 (regTwo!28643 r!12920) (regOne!28642 r!12920)))))))

(declare-fun b!5103960 () Bool)

(declare-fun e!3183253 () Bool)

(declare-fun e!3183255 () Bool)

(assert (=> b!5103960 (= e!3183253 e!3183255)))

(assert (=> b!5103960 (= c!876799 ((_ is Star!14065) r!12920))))

(declare-fun b!5103961 () Bool)

(assert (=> b!5103961 (= e!3183252 call!355624)))

(declare-fun b!5103962 () Bool)

(assert (=> b!5103962 (= e!3183255 e!3183250)))

(declare-fun res!2172438 () Bool)

(assert (=> b!5103962 (= res!2172438 (not (nullable!4723 (reg!14394 r!12920))))))

(assert (=> b!5103962 (=> (not res!2172438) (not e!3183250))))

(declare-fun b!5103963 () Bool)

(assert (=> b!5103963 (= e!3183255 e!3183251)))

(assert (=> b!5103963 (= c!876800 ((_ is Union!14065) r!12920))))

(declare-fun bm!355621 () Bool)

(assert (=> bm!355621 (= call!355624 call!355626)))

(declare-fun d!1650424 () Bool)

(declare-fun res!2172436 () Bool)

(assert (=> d!1650424 (=> res!2172436 e!3183253)))

(assert (=> d!1650424 (= res!2172436 ((_ is ElementMatch!14065) r!12920))))

(assert (=> d!1650424 (= (validRegex!6192 r!12920) e!3183253)))

(assert (= (and d!1650424 (not res!2172436)) b!5103960))

(assert (= (and b!5103960 c!876799) b!5103962))

(assert (= (and b!5103960 (not c!876799)) b!5103963))

(assert (= (and b!5103962 res!2172438) b!5103956))

(assert (= (and b!5103963 c!876800) b!5103955))

(assert (= (and b!5103963 (not c!876800)) b!5103957))

(assert (= (and b!5103955 res!2172437) b!5103961))

(assert (= (and b!5103957 (not res!2172440)) b!5103959))

(assert (= (and b!5103959 res!2172439) b!5103958))

(assert (= (or b!5103961 b!5103959) bm!355621))

(assert (= (or b!5103955 b!5103958) bm!355619))

(assert (= (or b!5103956 bm!355621) bm!355620))

(declare-fun m!6161350 () Bool)

(assert (=> bm!355619 m!6161350))

(declare-fun m!6161352 () Bool)

(assert (=> bm!355620 m!6161352))

(declare-fun m!6161354 () Bool)

(assert (=> b!5103962 m!6161354))

(assert (=> start!538196 d!1650424))

(declare-fun d!1650426 () Bool)

(assert (=> d!1650426 (= (isEmpty!31810 (_1!35061 lt!2099781)) ((_ is Nil!58858) (_1!35061 lt!2099781)))))

(assert (=> b!5103757 d!1650426))

(declare-fun d!1650428 () Bool)

(declare-fun lt!2099893 () Int)

(assert (=> d!1650428 (>= lt!2099893 0)))

(declare-fun e!3183257 () Int)

(assert (=> d!1650428 (= lt!2099893 e!3183257)))

(declare-fun c!876801 () Bool)

(assert (=> d!1650428 (= c!876801 ((_ is Nil!58858) input!5654))))

(assert (=> d!1650428 (= (size!39367 input!5654) lt!2099893)))

(declare-fun b!5103964 () Bool)

(assert (=> b!5103964 (= e!3183257 0)))

(declare-fun b!5103965 () Bool)

(assert (=> b!5103965 (= e!3183257 (+ 1 (size!39367 (t!371983 input!5654))))))

(assert (= (and d!1650428 c!876801) b!5103964))

(assert (= (and d!1650428 (not c!876801)) b!5103965))

(declare-fun m!6161356 () Bool)

(assert (=> b!5103965 m!6161356))

(assert (=> b!5103747 d!1650428))

(declare-fun d!1650430 () Bool)

(assert (=> d!1650430 (isPrefix!5466 (_1!35061 lt!2099781) (++!12914 (_1!35061 lt!2099781) (_2!35061 lt!2099781)))))

(declare-fun lt!2099896 () Unit!149902)

(declare-fun choose!37400 (List!58982 List!58982) Unit!149902)

(assert (=> d!1650430 (= lt!2099896 (choose!37400 (_1!35061 lt!2099781) (_2!35061 lt!2099781)))))

(assert (=> d!1650430 (= (lemmaConcatTwoListThenFirstIsPrefix!3524 (_1!35061 lt!2099781) (_2!35061 lt!2099781)) lt!2099896)))

(declare-fun bs!1191593 () Bool)

(assert (= bs!1191593 d!1650430))

(assert (=> bs!1191593 m!6161148))

(assert (=> bs!1191593 m!6161148))

(declare-fun m!6161358 () Bool)

(assert (=> bs!1191593 m!6161358))

(declare-fun m!6161360 () Bool)

(assert (=> bs!1191593 m!6161360))

(assert (=> b!5103747 d!1650430))

(declare-fun b!5103968 () Bool)

(declare-fun e!3183259 () Bool)

(assert (=> b!5103968 (= e!3183259 (isPrefix!5466 (tail!9994 (_1!35061 lt!2099771)) (tail!9994 lt!2099770)))))

(declare-fun b!5103969 () Bool)

(declare-fun e!3183260 () Bool)

(assert (=> b!5103969 (= e!3183260 (>= (size!39367 lt!2099770) (size!39367 (_1!35061 lt!2099771))))))

(declare-fun b!5103967 () Bool)

(declare-fun res!2172441 () Bool)

(assert (=> b!5103967 (=> (not res!2172441) (not e!3183259))))

(assert (=> b!5103967 (= res!2172441 (= (head!10839 (_1!35061 lt!2099771)) (head!10839 lt!2099770)))))

(declare-fun b!5103966 () Bool)

(declare-fun e!3183258 () Bool)

(assert (=> b!5103966 (= e!3183258 e!3183259)))

(declare-fun res!2172444 () Bool)

(assert (=> b!5103966 (=> (not res!2172444) (not e!3183259))))

(assert (=> b!5103966 (= res!2172444 (not ((_ is Nil!58858) lt!2099770)))))

(declare-fun d!1650432 () Bool)

(assert (=> d!1650432 e!3183260))

(declare-fun res!2172442 () Bool)

(assert (=> d!1650432 (=> res!2172442 e!3183260)))

(declare-fun lt!2099897 () Bool)

(assert (=> d!1650432 (= res!2172442 (not lt!2099897))))

(assert (=> d!1650432 (= lt!2099897 e!3183258)))

(declare-fun res!2172443 () Bool)

(assert (=> d!1650432 (=> res!2172443 e!3183258)))

(assert (=> d!1650432 (= res!2172443 ((_ is Nil!58858) (_1!35061 lt!2099771)))))

(assert (=> d!1650432 (= (isPrefix!5466 (_1!35061 lt!2099771) lt!2099770) lt!2099897)))

(assert (= (and d!1650432 (not res!2172443)) b!5103966))

(assert (= (and b!5103966 res!2172444) b!5103967))

(assert (= (and b!5103967 res!2172441) b!5103968))

(assert (= (and d!1650432 (not res!2172442)) b!5103969))

(assert (=> b!5103968 m!6161226))

(declare-fun m!6161362 () Bool)

(assert (=> b!5103968 m!6161362))

(assert (=> b!5103968 m!6161226))

(assert (=> b!5103968 m!6161362))

(declare-fun m!6161364 () Bool)

(assert (=> b!5103968 m!6161364))

(declare-fun m!6161366 () Bool)

(assert (=> b!5103969 m!6161366))

(assert (=> b!5103969 m!6161114))

(assert (=> b!5103967 m!6161222))

(declare-fun m!6161368 () Bool)

(assert (=> b!5103967 m!6161368))

(assert (=> b!5103747 d!1650432))

(declare-fun b!5103972 () Bool)

(declare-fun e!3183262 () Bool)

(assert (=> b!5103972 (= e!3183262 (isPrefix!5466 (tail!9994 (_1!35061 lt!2099781)) (tail!9994 lt!2099775)))))

(declare-fun b!5103973 () Bool)

(declare-fun e!3183263 () Bool)

(assert (=> b!5103973 (= e!3183263 (>= (size!39367 lt!2099775) (size!39367 (_1!35061 lt!2099781))))))

(declare-fun b!5103971 () Bool)

(declare-fun res!2172445 () Bool)

(assert (=> b!5103971 (=> (not res!2172445) (not e!3183262))))

(assert (=> b!5103971 (= res!2172445 (= (head!10839 (_1!35061 lt!2099781)) (head!10839 lt!2099775)))))

(declare-fun b!5103970 () Bool)

(declare-fun e!3183261 () Bool)

(assert (=> b!5103970 (= e!3183261 e!3183262)))

(declare-fun res!2172448 () Bool)

(assert (=> b!5103970 (=> (not res!2172448) (not e!3183262))))

(assert (=> b!5103970 (= res!2172448 (not ((_ is Nil!58858) lt!2099775)))))

(declare-fun d!1650434 () Bool)

(assert (=> d!1650434 e!3183263))

(declare-fun res!2172446 () Bool)

(assert (=> d!1650434 (=> res!2172446 e!3183263)))

(declare-fun lt!2099898 () Bool)

(assert (=> d!1650434 (= res!2172446 (not lt!2099898))))

(assert (=> d!1650434 (= lt!2099898 e!3183261)))

(declare-fun res!2172447 () Bool)

(assert (=> d!1650434 (=> res!2172447 e!3183261)))

(assert (=> d!1650434 (= res!2172447 ((_ is Nil!58858) (_1!35061 lt!2099781)))))

(assert (=> d!1650434 (= (isPrefix!5466 (_1!35061 lt!2099781) lt!2099775) lt!2099898)))

(assert (= (and d!1650434 (not res!2172447)) b!5103970))

(assert (= (and b!5103970 res!2172448) b!5103971))

(assert (= (and b!5103971 res!2172445) b!5103972))

(assert (= (and d!1650434 (not res!2172446)) b!5103973))

(assert (=> b!5103972 m!6161254))

(declare-fun m!6161370 () Bool)

(assert (=> b!5103972 m!6161370))

(assert (=> b!5103972 m!6161254))

(assert (=> b!5103972 m!6161370))

(declare-fun m!6161372 () Bool)

(assert (=> b!5103972 m!6161372))

(declare-fun m!6161374 () Bool)

(assert (=> b!5103973 m!6161374))

(assert (=> b!5103973 m!6161120))

(assert (=> b!5103971 m!6161250))

(declare-fun m!6161376 () Bool)

(assert (=> b!5103971 m!6161376))

(assert (=> b!5103747 d!1650434))

(declare-fun d!1650436 () Bool)

(assert (=> d!1650436 (= (isEmpty!31810 (_1!35061 lt!2099786)) ((_ is Nil!58858) (_1!35061 lt!2099786)))))

(assert (=> b!5103747 d!1650436))

(declare-fun bm!355638 () Bool)

(declare-fun call!355644 () Regex!14065)

(declare-fun call!355648 () C!28388)

(assert (=> bm!355638 (= call!355644 (derivativeStep!4003 r!12920 call!355648))))

(declare-fun bm!355639 () Bool)

(declare-fun call!355647 () List!58982)

(assert (=> bm!355639 (= call!355647 (tail!9994 input!5654))))

(declare-fun b!5104002 () Bool)

(declare-fun e!3183284 () Unit!149902)

(declare-fun Unit!149910 () Unit!149902)

(assert (=> b!5104002 (= e!3183284 Unit!149910)))

(declare-fun b!5104003 () Bool)

(declare-fun e!3183282 () tuple2!63516)

(assert (=> b!5104003 (= e!3183282 (tuple2!63517 Nil!58858 Nil!58858))))

(declare-fun call!355649 () tuple2!63516)

(declare-fun bm!355640 () Bool)

(declare-fun lt!2099965 () List!58982)

(assert (=> bm!355640 (= call!355649 (findLongestMatchInner!2078 call!355644 lt!2099965 (+ lt!2099783 1) call!355647 input!5654 lt!2099784))))

(declare-fun b!5104004 () Bool)

(declare-fun e!3183281 () tuple2!63516)

(declare-fun e!3183285 () tuple2!63516)

(assert (=> b!5104004 (= e!3183281 e!3183285)))

(declare-fun c!876818 () Bool)

(assert (=> b!5104004 (= c!876818 (= lt!2099783 lt!2099784))))

(declare-fun b!5104005 () Bool)

(declare-fun c!876817 () Bool)

(declare-fun call!355650 () Bool)

(assert (=> b!5104005 (= c!876817 call!355650)))

(declare-fun lt!2099973 () Unit!149902)

(declare-fun lt!2099972 () Unit!149902)

(assert (=> b!5104005 (= lt!2099973 lt!2099972)))

(assert (=> b!5104005 (= input!5654 Nil!58858)))

(declare-fun call!355643 () Unit!149902)

(assert (=> b!5104005 (= lt!2099972 call!355643)))

(declare-fun lt!2099981 () Unit!149902)

(declare-fun lt!2099958 () Unit!149902)

(assert (=> b!5104005 (= lt!2099981 lt!2099958)))

(declare-fun call!355645 () Bool)

(assert (=> b!5104005 call!355645))

(declare-fun call!355646 () Unit!149902)

(assert (=> b!5104005 (= lt!2099958 call!355646)))

(assert (=> b!5104005 (= e!3183285 e!3183282)))

(declare-fun bm!355641 () Bool)

(assert (=> bm!355641 (= call!355645 (isPrefix!5466 input!5654 input!5654))))

(declare-fun bm!355642 () Bool)

(assert (=> bm!355642 (= call!355650 (nullable!4723 r!12920))))

(declare-fun bm!355643 () Bool)

(declare-fun lemmaIsPrefixRefl!3685 (List!58982 List!58982) Unit!149902)

(assert (=> bm!355643 (= call!355646 (lemmaIsPrefixRefl!3685 input!5654 input!5654))))

(declare-fun b!5104006 () Bool)

(declare-fun e!3183283 () tuple2!63516)

(assert (=> b!5104006 (= e!3183283 call!355649)))

(declare-fun b!5104007 () Bool)

(assert (=> b!5104007 (= e!3183281 (tuple2!63517 Nil!58858 input!5654))))

(declare-fun b!5104008 () Bool)

(declare-fun c!876815 () Bool)

(assert (=> b!5104008 (= c!876815 call!355650)))

(declare-fun lt!2099978 () Unit!149902)

(declare-fun lt!2099985 () Unit!149902)

(assert (=> b!5104008 (= lt!2099978 lt!2099985)))

(declare-fun lt!2099964 () C!28388)

(declare-fun lt!2099977 () List!58982)

(assert (=> b!5104008 (= (++!12914 (++!12914 Nil!58858 (Cons!58858 lt!2099964 Nil!58858)) lt!2099977) input!5654)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1524 (List!58982 C!28388 List!58982 List!58982) Unit!149902)

(assert (=> b!5104008 (= lt!2099985 (lemmaMoveElementToOtherListKeepsConcatEq!1524 Nil!58858 lt!2099964 lt!2099977 input!5654))))

(assert (=> b!5104008 (= lt!2099977 (tail!9994 input!5654))))

(assert (=> b!5104008 (= lt!2099964 (head!10839 input!5654))))

(declare-fun lt!2099982 () Unit!149902)

(declare-fun lt!2099960 () Unit!149902)

(assert (=> b!5104008 (= lt!2099982 lt!2099960)))

(declare-fun getSuffix!3168 (List!58982 List!58982) List!58982)

(assert (=> b!5104008 (isPrefix!5466 (++!12914 Nil!58858 (Cons!58858 (head!10839 (getSuffix!3168 input!5654 Nil!58858)) Nil!58858)) input!5654)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!913 (List!58982 List!58982) Unit!149902)

(assert (=> b!5104008 (= lt!2099960 (lemmaAddHeadSuffixToPrefixStillPrefix!913 Nil!58858 input!5654))))

(declare-fun lt!2099966 () Unit!149902)

(declare-fun lt!2099984 () Unit!149902)

(assert (=> b!5104008 (= lt!2099966 lt!2099984)))

(assert (=> b!5104008 (= lt!2099984 (lemmaAddHeadSuffixToPrefixStillPrefix!913 Nil!58858 input!5654))))

(assert (=> b!5104008 (= lt!2099965 (++!12914 Nil!58858 (Cons!58858 (head!10839 input!5654) Nil!58858)))))

(declare-fun lt!2099979 () Unit!149902)

(assert (=> b!5104008 (= lt!2099979 e!3183284)))

(declare-fun c!876816 () Bool)

(assert (=> b!5104008 (= c!876816 (= (size!39367 Nil!58858) (size!39367 input!5654)))))

(declare-fun lt!2099976 () Unit!149902)

(declare-fun lt!2099962 () Unit!149902)

(assert (=> b!5104008 (= lt!2099976 lt!2099962)))

(assert (=> b!5104008 (<= (size!39367 Nil!58858) (size!39367 input!5654))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!839 (List!58982 List!58982) Unit!149902)

(assert (=> b!5104008 (= lt!2099962 (lemmaIsPrefixThenSmallerEqSize!839 Nil!58858 input!5654))))

(assert (=> b!5104008 (= e!3183285 e!3183283)))

(declare-fun b!5104009 () Bool)

(declare-fun e!3183280 () tuple2!63516)

(assert (=> b!5104009 (= e!3183283 e!3183280)))

(declare-fun lt!2099963 () tuple2!63516)

(assert (=> b!5104009 (= lt!2099963 call!355649)))

(declare-fun c!876819 () Bool)

(assert (=> b!5104009 (= c!876819 (isEmpty!31810 (_1!35061 lt!2099963)))))

(declare-fun bm!355644 () Bool)

(assert (=> bm!355644 (= call!355648 (head!10839 input!5654))))

(declare-fun b!5104010 () Bool)

(assert (=> b!5104010 (= e!3183280 lt!2099963)))

(declare-fun bm!355645 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1307 (List!58982 List!58982 List!58982) Unit!149902)

(assert (=> bm!355645 (= call!355643 (lemmaIsPrefixSameLengthThenSameList!1307 input!5654 Nil!58858 input!5654))))

(declare-fun b!5104011 () Bool)

(declare-fun e!3183287 () Bool)

(declare-fun lt!2099968 () tuple2!63516)

(assert (=> b!5104011 (= e!3183287 (>= (size!39367 (_1!35061 lt!2099968)) (size!39367 Nil!58858)))))

(declare-fun b!5104012 () Bool)

(declare-fun Unit!149911 () Unit!149902)

(assert (=> b!5104012 (= e!3183284 Unit!149911)))

(declare-fun lt!2099970 () Unit!149902)

(assert (=> b!5104012 (= lt!2099970 call!355646)))

(assert (=> b!5104012 call!355645))

(declare-fun lt!2099983 () Unit!149902)

(assert (=> b!5104012 (= lt!2099983 lt!2099970)))

(declare-fun lt!2099959 () Unit!149902)

(assert (=> b!5104012 (= lt!2099959 call!355643)))

(assert (=> b!5104012 (= input!5654 Nil!58858)))

(declare-fun lt!2099971 () Unit!149902)

(assert (=> b!5104012 (= lt!2099971 lt!2099959)))

(assert (=> b!5104012 false))

(declare-fun b!5104013 () Bool)

(assert (=> b!5104013 (= e!3183280 (tuple2!63517 Nil!58858 input!5654))))

(declare-fun b!5104014 () Bool)

(declare-fun e!3183286 () Bool)

(assert (=> b!5104014 (= e!3183286 e!3183287)))

(declare-fun res!2172453 () Bool)

(assert (=> b!5104014 (=> res!2172453 e!3183287)))

(assert (=> b!5104014 (= res!2172453 (isEmpty!31810 (_1!35061 lt!2099968)))))

(declare-fun d!1650438 () Bool)

(assert (=> d!1650438 e!3183286))

(declare-fun res!2172454 () Bool)

(assert (=> d!1650438 (=> (not res!2172454) (not e!3183286))))

(assert (=> d!1650438 (= res!2172454 (= (++!12914 (_1!35061 lt!2099968) (_2!35061 lt!2099968)) input!5654))))

(assert (=> d!1650438 (= lt!2099968 e!3183281)))

(declare-fun c!876814 () Bool)

(declare-fun lostCause!1212 (Regex!14065) Bool)

(assert (=> d!1650438 (= c!876814 (lostCause!1212 r!12920))))

(declare-fun lt!2099961 () Unit!149902)

(declare-fun Unit!149912 () Unit!149902)

(assert (=> d!1650438 (= lt!2099961 Unit!149912)))

(assert (=> d!1650438 (= (getSuffix!3168 input!5654 Nil!58858) input!5654)))

(declare-fun lt!2099975 () Unit!149902)

(declare-fun lt!2099969 () Unit!149902)

(assert (=> d!1650438 (= lt!2099975 lt!2099969)))

(declare-fun lt!2099974 () List!58982)

(assert (=> d!1650438 (= input!5654 lt!2099974)))

(declare-fun lemmaSamePrefixThenSameSuffix!2584 (List!58982 List!58982 List!58982 List!58982 List!58982) Unit!149902)

(assert (=> d!1650438 (= lt!2099969 (lemmaSamePrefixThenSameSuffix!2584 Nil!58858 input!5654 Nil!58858 lt!2099974 input!5654))))

(assert (=> d!1650438 (= lt!2099974 (getSuffix!3168 input!5654 Nil!58858))))

(declare-fun lt!2099980 () Unit!149902)

(declare-fun lt!2099967 () Unit!149902)

(assert (=> d!1650438 (= lt!2099980 lt!2099967)))

(assert (=> d!1650438 (isPrefix!5466 Nil!58858 (++!12914 Nil!58858 input!5654))))

(assert (=> d!1650438 (= lt!2099967 (lemmaConcatTwoListThenFirstIsPrefix!3524 Nil!58858 input!5654))))

(assert (=> d!1650438 (validRegex!6192 r!12920)))

(assert (=> d!1650438 (= (findLongestMatchInner!2078 r!12920 Nil!58858 lt!2099783 input!5654 input!5654 lt!2099784) lt!2099968)))

(declare-fun b!5104015 () Bool)

(assert (=> b!5104015 (= e!3183282 (tuple2!63517 Nil!58858 input!5654))))

(assert (= (and d!1650438 c!876814) b!5104007))

(assert (= (and d!1650438 (not c!876814)) b!5104004))

(assert (= (and b!5104004 c!876818) b!5104005))

(assert (= (and b!5104004 (not c!876818)) b!5104008))

(assert (= (and b!5104005 c!876817) b!5104003))

(assert (= (and b!5104005 (not c!876817)) b!5104015))

(assert (= (and b!5104008 c!876816) b!5104012))

(assert (= (and b!5104008 (not c!876816)) b!5104002))

(assert (= (and b!5104008 c!876815) b!5104009))

(assert (= (and b!5104008 (not c!876815)) b!5104006))

(assert (= (and b!5104009 c!876819) b!5104013))

(assert (= (and b!5104009 (not c!876819)) b!5104010))

(assert (= (or b!5104009 b!5104006) bm!355644))

(assert (= (or b!5104009 b!5104006) bm!355639))

(assert (= (or b!5104009 b!5104006) bm!355638))

(assert (= (or b!5104009 b!5104006) bm!355640))

(assert (= (or b!5104005 b!5104012) bm!355645))

(assert (= (or b!5104005 b!5104008) bm!355642))

(assert (= (or b!5104005 b!5104012) bm!355641))

(assert (= (or b!5104005 b!5104012) bm!355643))

(assert (= (and d!1650438 res!2172454) b!5104014))

(assert (= (and b!5104014 (not res!2172453)) b!5104011))

(declare-fun m!6161386 () Bool)

(assert (=> bm!355638 m!6161386))

(declare-fun m!6161390 () Bool)

(assert (=> bm!355641 m!6161390))

(declare-fun m!6161396 () Bool)

(assert (=> b!5104008 m!6161396))

(declare-fun m!6161398 () Bool)

(assert (=> b!5104008 m!6161398))

(assert (=> b!5104008 m!6161174))

(assert (=> b!5104008 m!6161170))

(declare-fun m!6161400 () Bool)

(assert (=> b!5104008 m!6161400))

(declare-fun m!6161402 () Bool)

(assert (=> b!5104008 m!6161402))

(assert (=> b!5104008 m!6161342))

(declare-fun m!6161404 () Bool)

(assert (=> b!5104008 m!6161404))

(declare-fun m!6161406 () Bool)

(assert (=> b!5104008 m!6161406))

(assert (=> b!5104008 m!6161402))

(declare-fun m!6161408 () Bool)

(assert (=> b!5104008 m!6161408))

(declare-fun m!6161410 () Bool)

(assert (=> b!5104008 m!6161410))

(assert (=> b!5104008 m!6161400))

(declare-fun m!6161412 () Bool)

(assert (=> b!5104008 m!6161412))

(assert (=> b!5104008 m!6161338))

(declare-fun m!6161414 () Bool)

(assert (=> b!5104008 m!6161414))

(assert (=> b!5104008 m!6161396))

(declare-fun m!6161416 () Bool)

(assert (=> b!5104009 m!6161416))

(assert (=> bm!355644 m!6161342))

(declare-fun m!6161418 () Bool)

(assert (=> d!1650438 m!6161418))

(assert (=> d!1650438 m!6161402))

(declare-fun m!6161420 () Bool)

(assert (=> d!1650438 m!6161420))

(declare-fun m!6161422 () Bool)

(assert (=> d!1650438 m!6161422))

(declare-fun m!6161424 () Bool)

(assert (=> d!1650438 m!6161424))

(assert (=> d!1650438 m!6161420))

(assert (=> d!1650438 m!6161152))

(declare-fun m!6161426 () Bool)

(assert (=> d!1650438 m!6161426))

(declare-fun m!6161428 () Bool)

(assert (=> d!1650438 m!6161428))

(declare-fun m!6161430 () Bool)

(assert (=> bm!355643 m!6161430))

(declare-fun m!6161432 () Bool)

(assert (=> bm!355645 m!6161432))

(assert (=> bm!355639 m!6161338))

(declare-fun m!6161434 () Bool)

(assert (=> bm!355640 m!6161434))

(declare-fun m!6161436 () Bool)

(assert (=> b!5104014 m!6161436))

(assert (=> bm!355642 m!6161220))

(declare-fun m!6161438 () Bool)

(assert (=> b!5104011 m!6161438))

(assert (=> b!5104011 m!6161170))

(assert (=> b!5103747 d!1650438))

(declare-fun d!1650448 () Bool)

(assert (=> d!1650448 (= (isEmpty!31810 (_1!35061 lt!2099778)) ((_ is Nil!58858) (_1!35061 lt!2099778)))))

(assert (=> b!5103747 d!1650448))

(declare-fun d!1650450 () Bool)

(declare-fun c!876820 () Bool)

(assert (=> d!1650450 (= c!876820 (isEmpty!31810 (_1!35061 lt!2099771)))))

(declare-fun e!3183291 () Bool)

(assert (=> d!1650450 (= (matchZipper!737 z!4303 (_1!35061 lt!2099771)) e!3183291)))

(declare-fun b!5104019 () Bool)

(assert (=> b!5104019 (= e!3183291 (nullableZipper!964 z!4303))))

(declare-fun b!5104020 () Bool)

(assert (=> b!5104020 (= e!3183291 (matchZipper!737 (derivationStepZipper!752 z!4303 (head!10839 (_1!35061 lt!2099771))) (tail!9994 (_1!35061 lt!2099771))))))

(assert (= (and d!1650450 c!876820) b!5104019))

(assert (= (and d!1650450 (not c!876820)) b!5104020))

(assert (=> d!1650450 m!6161150))

(assert (=> b!5104019 m!6161248))

(assert (=> b!5104020 m!6161222))

(assert (=> b!5104020 m!6161222))

(declare-fun m!6161440 () Bool)

(assert (=> b!5104020 m!6161440))

(assert (=> b!5104020 m!6161226))

(assert (=> b!5104020 m!6161440))

(assert (=> b!5104020 m!6161226))

(declare-fun m!6161442 () Bool)

(assert (=> b!5104020 m!6161442))

(assert (=> b!5103747 d!1650450))

(declare-fun b!5104097 () Bool)

(declare-fun e!3183336 () Unit!149902)

(declare-fun Unit!149913 () Unit!149902)

(assert (=> b!5104097 (= e!3183336 Unit!149913)))

(declare-fun b!5104098 () Bool)

(declare-fun e!3183334 () tuple2!63516)

(declare-fun lt!2100109 () tuple2!63516)

(assert (=> b!5104098 (= e!3183334 lt!2100109)))

(declare-fun b!5104099 () Bool)

(declare-fun e!3183332 () Bool)

(declare-fun e!3183338 () Bool)

(assert (=> b!5104099 (= e!3183332 e!3183338)))

(declare-fun res!2172470 () Bool)

(assert (=> b!5104099 (=> res!2172470 e!3183338)))

(declare-fun lt!2100124 () tuple2!63516)

(assert (=> b!5104099 (= res!2172470 (isEmpty!31810 (_1!35061 lt!2100124)))))

(declare-fun bm!355663 () Bool)

(declare-fun call!355669 () (InoxSet Context!6898))

(declare-fun call!355674 () C!28388)

(assert (=> bm!355663 (= call!355669 (derivationStepZipper!752 z!4303 call!355674))))

(declare-fun b!5104100 () Bool)

(declare-fun Unit!149914 () Unit!149902)

(assert (=> b!5104100 (= e!3183336 Unit!149914)))

(declare-fun lt!2100116 () Unit!149902)

(declare-fun call!355672 () Unit!149902)

(assert (=> b!5104100 (= lt!2100116 call!355672)))

(declare-fun call!355671 () Bool)

(assert (=> b!5104100 call!355671))

(declare-fun lt!2100122 () Unit!149902)

(assert (=> b!5104100 (= lt!2100122 lt!2100116)))

(declare-fun lt!2100111 () Unit!149902)

(declare-fun call!355675 () Unit!149902)

(assert (=> b!5104100 (= lt!2100111 call!355675)))

(assert (=> b!5104100 (= input!5654 Nil!58858)))

(declare-fun lt!2100110 () Unit!149902)

(assert (=> b!5104100 (= lt!2100110 lt!2100111)))

(assert (=> b!5104100 false))

(declare-fun bm!355664 () Bool)

(assert (=> bm!355664 (= call!355671 (isPrefix!5466 input!5654 input!5654))))

(declare-fun b!5104101 () Bool)

(declare-fun e!3183333 () tuple2!63516)

(assert (=> b!5104101 (= e!3183333 (tuple2!63517 Nil!58858 Nil!58858))))

(declare-fun bm!355665 () Bool)

(assert (=> bm!355665 (= call!355674 (head!10839 input!5654))))

(declare-fun b!5104102 () Bool)

(assert (=> b!5104102 (= e!3183338 (>= (size!39367 (_1!35061 lt!2100124)) (size!39367 Nil!58858)))))

(declare-fun bm!355666 () Bool)

(declare-fun call!355668 () List!58982)

(assert (=> bm!355666 (= call!355668 (tail!9994 input!5654))))

(declare-fun bm!355667 () Bool)

(assert (=> bm!355667 (= call!355672 (lemmaIsPrefixRefl!3685 input!5654 input!5654))))

(declare-fun lt!2100097 () List!58982)

(declare-fun call!355673 () tuple2!63516)

(declare-fun bm!355668 () Bool)

(assert (=> bm!355668 (= call!355673 (findLongestMatchInnerZipper!139 call!355669 lt!2100097 (+ lt!2099783 1) call!355668 input!5654 lt!2099784))))

(declare-fun bm!355669 () Bool)

(declare-fun call!355670 () Bool)

(assert (=> bm!355669 (= call!355670 (nullableZipper!964 z!4303))))

(declare-fun b!5104103 () Bool)

(declare-fun e!3183337 () tuple2!63516)

(assert (=> b!5104103 (= e!3183337 call!355673)))

(declare-fun b!5104104 () Bool)

(declare-fun e!3183335 () tuple2!63516)

(assert (=> b!5104104 (= e!3183335 (tuple2!63517 Nil!58858 input!5654))))

(declare-fun b!5104105 () Bool)

(declare-fun c!876857 () Bool)

(assert (=> b!5104105 (= c!876857 call!355670)))

(declare-fun lt!2100103 () Unit!149902)

(declare-fun lt!2100113 () Unit!149902)

(assert (=> b!5104105 (= lt!2100103 lt!2100113)))

(assert (=> b!5104105 (= input!5654 Nil!58858)))

(assert (=> b!5104105 (= lt!2100113 call!355675)))

(declare-fun lt!2100117 () Unit!149902)

(declare-fun lt!2100106 () Unit!149902)

(assert (=> b!5104105 (= lt!2100117 lt!2100106)))

(assert (=> b!5104105 call!355671))

(assert (=> b!5104105 (= lt!2100106 call!355672)))

(declare-fun e!3183339 () tuple2!63516)

(assert (=> b!5104105 (= e!3183339 e!3183333)))

(declare-fun b!5104106 () Bool)

(assert (=> b!5104106 (= e!3183333 (tuple2!63517 Nil!58858 input!5654))))

(declare-fun bm!355670 () Bool)

(assert (=> bm!355670 (= call!355675 (lemmaIsPrefixSameLengthThenSameList!1307 input!5654 Nil!58858 input!5654))))

(declare-fun b!5104107 () Bool)

(assert (=> b!5104107 (= e!3183335 e!3183339)))

(declare-fun c!876854 () Bool)

(assert (=> b!5104107 (= c!876854 (= lt!2099783 lt!2099784))))

(declare-fun b!5104108 () Bool)

(assert (=> b!5104108 (= e!3183334 (tuple2!63517 Nil!58858 input!5654))))

(declare-fun b!5104109 () Bool)

(declare-fun c!876858 () Bool)

(assert (=> b!5104109 (= c!876858 call!355670)))

(declare-fun lt!2100101 () Unit!149902)

(declare-fun lt!2100105 () Unit!149902)

(assert (=> b!5104109 (= lt!2100101 lt!2100105)))

(declare-fun lt!2100123 () C!28388)

(declare-fun lt!2100118 () List!58982)

(assert (=> b!5104109 (= (++!12914 (++!12914 Nil!58858 (Cons!58858 lt!2100123 Nil!58858)) lt!2100118) input!5654)))

(assert (=> b!5104109 (= lt!2100105 (lemmaMoveElementToOtherListKeepsConcatEq!1524 Nil!58858 lt!2100123 lt!2100118 input!5654))))

(assert (=> b!5104109 (= lt!2100118 (tail!9994 input!5654))))

(assert (=> b!5104109 (= lt!2100123 (head!10839 input!5654))))

(declare-fun lt!2100119 () Unit!149902)

(declare-fun lt!2100120 () Unit!149902)

(assert (=> b!5104109 (= lt!2100119 lt!2100120)))

(assert (=> b!5104109 (isPrefix!5466 (++!12914 Nil!58858 (Cons!58858 (head!10839 (getSuffix!3168 input!5654 Nil!58858)) Nil!58858)) input!5654)))

(assert (=> b!5104109 (= lt!2100120 (lemmaAddHeadSuffixToPrefixStillPrefix!913 Nil!58858 input!5654))))

(assert (=> b!5104109 (= lt!2100097 (++!12914 Nil!58858 (Cons!58858 (head!10839 input!5654) Nil!58858)))))

(declare-fun lt!2100100 () Unit!149902)

(assert (=> b!5104109 (= lt!2100100 e!3183336)))

(declare-fun c!876856 () Bool)

(assert (=> b!5104109 (= c!876856 (= (size!39367 Nil!58858) (size!39367 input!5654)))))

(declare-fun lt!2100121 () Unit!149902)

(declare-fun lt!2100125 () Unit!149902)

(assert (=> b!5104109 (= lt!2100121 lt!2100125)))

(assert (=> b!5104109 (<= (size!39367 Nil!58858) (size!39367 input!5654))))

(assert (=> b!5104109 (= lt!2100125 (lemmaIsPrefixThenSmallerEqSize!839 Nil!58858 input!5654))))

(assert (=> b!5104109 (= e!3183339 e!3183337)))

(declare-fun b!5104110 () Bool)

(assert (=> b!5104110 (= e!3183337 e!3183334)))

(assert (=> b!5104110 (= lt!2100109 call!355673)))

(declare-fun c!876853 () Bool)

(assert (=> b!5104110 (= c!876853 (isEmpty!31810 (_1!35061 lt!2100109)))))

(declare-fun d!1650452 () Bool)

(assert (=> d!1650452 e!3183332))

(declare-fun res!2172471 () Bool)

(assert (=> d!1650452 (=> (not res!2172471) (not e!3183332))))

(assert (=> d!1650452 (= res!2172471 (= (++!12914 (_1!35061 lt!2100124) (_2!35061 lt!2100124)) input!5654))))

(assert (=> d!1650452 (= lt!2100124 e!3183335)))

(declare-fun c!876855 () Bool)

(declare-fun lostCauseZipper!979 ((InoxSet Context!6898)) Bool)

(assert (=> d!1650452 (= c!876855 (lostCauseZipper!979 z!4303))))

(declare-fun lt!2100102 () Unit!149902)

(declare-fun Unit!149915 () Unit!149902)

(assert (=> d!1650452 (= lt!2100102 Unit!149915)))

(assert (=> d!1650452 (= (getSuffix!3168 input!5654 Nil!58858) input!5654)))

(declare-fun lt!2100115 () Unit!149902)

(declare-fun lt!2100104 () Unit!149902)

(assert (=> d!1650452 (= lt!2100115 lt!2100104)))

(declare-fun lt!2100126 () List!58982)

(assert (=> d!1650452 (= input!5654 lt!2100126)))

(assert (=> d!1650452 (= lt!2100104 (lemmaSamePrefixThenSameSuffix!2584 Nil!58858 input!5654 Nil!58858 lt!2100126 input!5654))))

(assert (=> d!1650452 (= lt!2100126 (getSuffix!3168 input!5654 Nil!58858))))

(declare-fun lt!2100107 () Unit!149902)

(declare-fun lt!2100108 () Unit!149902)

(assert (=> d!1650452 (= lt!2100107 lt!2100108)))

(assert (=> d!1650452 (isPrefix!5466 Nil!58858 (++!12914 Nil!58858 input!5654))))

(assert (=> d!1650452 (= lt!2100108 (lemmaConcatTwoListThenFirstIsPrefix!3524 Nil!58858 input!5654))))

(assert (=> d!1650452 (= (++!12914 Nil!58858 input!5654) input!5654)))

(assert (=> d!1650452 (= (findLongestMatchInnerZipper!139 z!4303 Nil!58858 lt!2099783 input!5654 input!5654 lt!2099784) lt!2100124)))

(assert (= (and d!1650452 c!876855) b!5104104))

(assert (= (and d!1650452 (not c!876855)) b!5104107))

(assert (= (and b!5104107 c!876854) b!5104105))

(assert (= (and b!5104107 (not c!876854)) b!5104109))

(assert (= (and b!5104105 c!876857) b!5104101))

(assert (= (and b!5104105 (not c!876857)) b!5104106))

(assert (= (and b!5104109 c!876856) b!5104100))

(assert (= (and b!5104109 (not c!876856)) b!5104097))

(assert (= (and b!5104109 c!876858) b!5104110))

(assert (= (and b!5104109 (not c!876858)) b!5104103))

(assert (= (and b!5104110 c!876853) b!5104108))

(assert (= (and b!5104110 (not c!876853)) b!5104098))

(assert (= (or b!5104110 b!5104103) bm!355665))

(assert (= (or b!5104110 b!5104103) bm!355666))

(assert (= (or b!5104110 b!5104103) bm!355663))

(assert (= (or b!5104110 b!5104103) bm!355668))

(assert (= (or b!5104105 b!5104100) bm!355670))

(assert (= (or b!5104105 b!5104109) bm!355669))

(assert (= (or b!5104105 b!5104100) bm!355664))

(assert (= (or b!5104105 b!5104100) bm!355667))

(assert (= (and d!1650452 res!2172471) b!5104099))

(assert (= (and b!5104099 (not res!2172470)) b!5104102))

(assert (=> bm!355670 m!6161432))

(declare-fun m!6161482 () Bool)

(assert (=> bm!355663 m!6161482))

(declare-fun m!6161484 () Bool)

(assert (=> bm!355668 m!6161484))

(assert (=> bm!355664 m!6161390))

(assert (=> bm!355669 m!6161248))

(declare-fun m!6161486 () Bool)

(assert (=> b!5104102 m!6161486))

(assert (=> b!5104102 m!6161170))

(declare-fun m!6161488 () Bool)

(assert (=> d!1650452 m!6161488))

(declare-fun m!6161490 () Bool)

(assert (=> d!1650452 m!6161490))

(assert (=> d!1650452 m!6161420))

(assert (=> d!1650452 m!6161422))

(assert (=> d!1650452 m!6161402))

(assert (=> d!1650452 m!6161420))

(declare-fun m!6161492 () Bool)

(assert (=> d!1650452 m!6161492))

(assert (=> d!1650452 m!6161424))

(assert (=> bm!355667 m!6161430))

(assert (=> bm!355666 m!6161338))

(assert (=> bm!355665 m!6161342))

(declare-fun m!6161494 () Bool)

(assert (=> b!5104110 m!6161494))

(declare-fun m!6161496 () Bool)

(assert (=> b!5104099 m!6161496))

(assert (=> b!5104109 m!6161410))

(assert (=> b!5104109 m!6161402))

(assert (=> b!5104109 m!6161408))

(assert (=> b!5104109 m!6161400))

(assert (=> b!5104109 m!6161342))

(assert (=> b!5104109 m!6161414))

(declare-fun m!6161498 () Bool)

(assert (=> b!5104109 m!6161498))

(assert (=> b!5104109 m!6161174))

(assert (=> b!5104109 m!6161400))

(assert (=> b!5104109 m!6161412))

(assert (=> b!5104109 m!6161404))

(assert (=> b!5104109 m!6161170))

(declare-fun m!6161500 () Bool)

(assert (=> b!5104109 m!6161500))

(assert (=> b!5104109 m!6161338))

(assert (=> b!5104109 m!6161402))

(assert (=> b!5104109 m!6161500))

(declare-fun m!6161502 () Bool)

(assert (=> b!5104109 m!6161502))

(assert (=> b!5103747 d!1650452))

(declare-fun d!1650470 () Bool)

(assert (=> d!1650470 (isPrefix!5466 (_1!35061 lt!2099771) (++!12914 (_1!35061 lt!2099771) (_2!35061 lt!2099771)))))

(declare-fun lt!2100129 () Unit!149902)

(assert (=> d!1650470 (= lt!2100129 (choose!37400 (_1!35061 lt!2099771) (_2!35061 lt!2099771)))))

(assert (=> d!1650470 (= (lemmaConcatTwoListThenFirstIsPrefix!3524 (_1!35061 lt!2099771) (_2!35061 lt!2099771)) lt!2100129)))

(declare-fun bs!1191598 () Bool)

(assert (= bs!1191598 d!1650470))

(assert (=> bs!1191598 m!6161138))

(assert (=> bs!1191598 m!6161138))

(declare-fun m!6161504 () Bool)

(assert (=> bs!1191598 m!6161504))

(declare-fun m!6161506 () Bool)

(assert (=> bs!1191598 m!6161506))

(assert (=> b!5103747 d!1650470))

(declare-fun d!1650472 () Bool)

(declare-fun e!3183358 () Bool)

(assert (=> d!1650472 e!3183358))

(declare-fun res!2172480 () Bool)

(assert (=> d!1650472 (=> res!2172480 e!3183358)))

(assert (=> d!1650472 (= res!2172480 (isEmpty!31810 (_1!35061 (findLongestMatchInnerZipper!139 z!4303 Nil!58858 (size!39367 Nil!58858) input!5654 input!5654 (size!39367 input!5654)))))))

(declare-fun lt!2100158 () Unit!149902)

(declare-fun choose!37401 ((InoxSet Context!6898) List!58982) Unit!149902)

(assert (=> d!1650472 (= lt!2100158 (choose!37401 z!4303 input!5654))))

(assert (=> d!1650472 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2077 z!4303 input!5654) lt!2100158)))

(declare-fun b!5104139 () Bool)

(assert (=> b!5104139 (= e!3183358 (matchZipper!737 z!4303 (_1!35061 (findLongestMatchInnerZipper!139 z!4303 Nil!58858 (size!39367 Nil!58858) input!5654 input!5654 (size!39367 input!5654)))))))

(assert (= (and d!1650472 (not res!2172480)) b!5104139))

(assert (=> d!1650472 m!6161174))

(declare-fun m!6161508 () Bool)

(assert (=> d!1650472 m!6161508))

(assert (=> d!1650472 m!6161170))

(assert (=> d!1650472 m!6161174))

(declare-fun m!6161510 () Bool)

(assert (=> d!1650472 m!6161510))

(declare-fun m!6161512 () Bool)

(assert (=> d!1650472 m!6161512))

(assert (=> d!1650472 m!6161170))

(assert (=> b!5104139 m!6161170))

(assert (=> b!5104139 m!6161174))

(assert (=> b!5104139 m!6161170))

(assert (=> b!5104139 m!6161174))

(assert (=> b!5104139 m!6161510))

(declare-fun m!6161514 () Bool)

(assert (=> b!5104139 m!6161514))

(assert (=> b!5103747 d!1650472))

(declare-fun d!1650474 () Bool)

(declare-fun e!3183371 () Bool)

(assert (=> d!1650474 e!3183371))

(declare-fun res!2172495 () Bool)

(assert (=> d!1650474 (=> res!2172495 e!3183371)))

(assert (=> d!1650474 (= res!2172495 (isEmpty!31810 (_1!35061 (findLongestMatchInner!2078 r!12920 Nil!58858 (size!39367 Nil!58858) input!5654 input!5654 (size!39367 input!5654)))))))

(declare-fun lt!2100167 () Unit!149902)

(declare-fun choose!37402 (Regex!14065 List!58982) Unit!149902)

(assert (=> d!1650474 (= lt!2100167 (choose!37402 r!12920 input!5654))))

(assert (=> d!1650474 (validRegex!6192 r!12920)))

(assert (=> d!1650474 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2076 r!12920 input!5654) lt!2100167)))

(declare-fun b!5104156 () Bool)

(assert (=> b!5104156 (= e!3183371 (matchR!6850 r!12920 (_1!35061 (findLongestMatchInner!2078 r!12920 Nil!58858 (size!39367 Nil!58858) input!5654 input!5654 (size!39367 input!5654)))))))

(assert (= (and d!1650474 (not res!2172495)) b!5104156))

(assert (=> d!1650474 m!6161152))

(assert (=> d!1650474 m!6161170))

(assert (=> d!1650474 m!6161174))

(declare-fun m!6161584 () Bool)

(assert (=> d!1650474 m!6161584))

(declare-fun m!6161586 () Bool)

(assert (=> d!1650474 m!6161586))

(assert (=> d!1650474 m!6161174))

(declare-fun m!6161588 () Bool)

(assert (=> d!1650474 m!6161588))

(assert (=> d!1650474 m!6161170))

(assert (=> b!5104156 m!6161170))

(assert (=> b!5104156 m!6161174))

(assert (=> b!5104156 m!6161170))

(assert (=> b!5104156 m!6161174))

(assert (=> b!5104156 m!6161584))

(declare-fun m!6161590 () Bool)

(assert (=> b!5104156 m!6161590))

(assert (=> b!5103747 d!1650474))

(declare-fun d!1650488 () Bool)

(declare-fun lt!2100168 () Int)

(assert (=> d!1650488 (>= lt!2100168 0)))

(declare-fun e!3183372 () Int)

(assert (=> d!1650488 (= lt!2100168 e!3183372)))

(declare-fun c!876870 () Bool)

(assert (=> d!1650488 (= c!876870 ((_ is Nil!58858) Nil!58858))))

(assert (=> d!1650488 (= (size!39367 Nil!58858) lt!2100168)))

(declare-fun b!5104157 () Bool)

(assert (=> b!5104157 (= e!3183372 0)))

(declare-fun b!5104158 () Bool)

(assert (=> b!5104158 (= e!3183372 (+ 1 (size!39367 (t!371983 Nil!58858))))))

(assert (= (and d!1650488 c!876870) b!5104157))

(assert (= (and d!1650488 (not c!876870)) b!5104158))

(declare-fun m!6161592 () Bool)

(assert (=> b!5104158 m!6161592))

(assert (=> b!5103747 d!1650488))

(declare-fun d!1650490 () Bool)

(declare-fun lambda!249978 () Int)

(declare-fun forall!13494 (List!58981 Int) Bool)

(assert (=> d!1650490 (= (inv!78337 setElem!29296) (forall!13494 (exprs!3949 setElem!29296) lambda!249978))))

(declare-fun bs!1191601 () Bool)

(assert (= bs!1191601 d!1650490))

(declare-fun m!6161676 () Bool)

(assert (=> bs!1191601 m!6161676))

(assert (=> setNonEmpty!29296 d!1650490))

(declare-fun b!5104313 () Bool)

(declare-fun e!3183460 () Bool)

(assert (=> b!5104313 (= e!3183460 (isPrefix!5466 (tail!9994 (_1!35061 lt!2099781)) (tail!9994 input!5654)))))

(declare-fun b!5104314 () Bool)

(declare-fun e!3183461 () Bool)

(assert (=> b!5104314 (= e!3183461 (>= (size!39367 input!5654) (size!39367 (_1!35061 lt!2099781))))))

(declare-fun b!5104312 () Bool)

(declare-fun res!2172545 () Bool)

(assert (=> b!5104312 (=> (not res!2172545) (not e!3183460))))

(assert (=> b!5104312 (= res!2172545 (= (head!10839 (_1!35061 lt!2099781)) (head!10839 input!5654)))))

(declare-fun b!5104311 () Bool)

(declare-fun e!3183459 () Bool)

(assert (=> b!5104311 (= e!3183459 e!3183460)))

(declare-fun res!2172548 () Bool)

(assert (=> b!5104311 (=> (not res!2172548) (not e!3183460))))

(assert (=> b!5104311 (= res!2172548 (not ((_ is Nil!58858) input!5654)))))

(declare-fun d!1650512 () Bool)

(assert (=> d!1650512 e!3183461))

(declare-fun res!2172546 () Bool)

(assert (=> d!1650512 (=> res!2172546 e!3183461)))

(declare-fun lt!2100266 () Bool)

(assert (=> d!1650512 (= res!2172546 (not lt!2100266))))

(assert (=> d!1650512 (= lt!2100266 e!3183459)))

(declare-fun res!2172547 () Bool)

(assert (=> d!1650512 (=> res!2172547 e!3183459)))

(assert (=> d!1650512 (= res!2172547 ((_ is Nil!58858) (_1!35061 lt!2099781)))))

(assert (=> d!1650512 (= (isPrefix!5466 (_1!35061 lt!2099781) input!5654) lt!2100266)))

(assert (= (and d!1650512 (not res!2172547)) b!5104311))

(assert (= (and b!5104311 res!2172548) b!5104312))

(assert (= (and b!5104312 res!2172545) b!5104313))

(assert (= (and d!1650512 (not res!2172546)) b!5104314))

(assert (=> b!5104313 m!6161254))

(assert (=> b!5104313 m!6161338))

(assert (=> b!5104313 m!6161254))

(assert (=> b!5104313 m!6161338))

(declare-fun m!6161678 () Bool)

(assert (=> b!5104313 m!6161678))

(assert (=> b!5104314 m!6161174))

(assert (=> b!5104314 m!6161120))

(assert (=> b!5104312 m!6161250))

(assert (=> b!5104312 m!6161342))

(assert (=> b!5103758 d!1650512))

(declare-fun b!5104327 () Bool)

(declare-fun e!3183464 () Bool)

(declare-fun tp!1423742 () Bool)

(assert (=> b!5104327 (= e!3183464 tp!1423742)))

(declare-fun b!5104326 () Bool)

(declare-fun tp!1423743 () Bool)

(declare-fun tp!1423740 () Bool)

(assert (=> b!5104326 (= e!3183464 (and tp!1423743 tp!1423740))))

(assert (=> b!5103765 (= tp!1423675 e!3183464)))

(declare-fun b!5104328 () Bool)

(declare-fun tp!1423741 () Bool)

(declare-fun tp!1423744 () Bool)

(assert (=> b!5104328 (= e!3183464 (and tp!1423741 tp!1423744))))

(declare-fun b!5104325 () Bool)

(assert (=> b!5104325 (= e!3183464 tp_is_empty!37395)))

(assert (= (and b!5103765 ((_ is ElementMatch!14065) (regOne!28643 r!12920))) b!5104325))

(assert (= (and b!5103765 ((_ is Concat!22910) (regOne!28643 r!12920))) b!5104326))

(assert (= (and b!5103765 ((_ is Star!14065) (regOne!28643 r!12920))) b!5104327))

(assert (= (and b!5103765 ((_ is Union!14065) (regOne!28643 r!12920))) b!5104328))

(declare-fun b!5104331 () Bool)

(declare-fun e!3183465 () Bool)

(declare-fun tp!1423747 () Bool)

(assert (=> b!5104331 (= e!3183465 tp!1423747)))

(declare-fun b!5104330 () Bool)

(declare-fun tp!1423748 () Bool)

(declare-fun tp!1423745 () Bool)

(assert (=> b!5104330 (= e!3183465 (and tp!1423748 tp!1423745))))

(assert (=> b!5103765 (= tp!1423674 e!3183465)))

(declare-fun b!5104332 () Bool)

(declare-fun tp!1423746 () Bool)

(declare-fun tp!1423749 () Bool)

(assert (=> b!5104332 (= e!3183465 (and tp!1423746 tp!1423749))))

(declare-fun b!5104329 () Bool)

(assert (=> b!5104329 (= e!3183465 tp_is_empty!37395)))

(assert (= (and b!5103765 ((_ is ElementMatch!14065) (regTwo!28643 r!12920))) b!5104329))

(assert (= (and b!5103765 ((_ is Concat!22910) (regTwo!28643 r!12920))) b!5104330))

(assert (= (and b!5103765 ((_ is Star!14065) (regTwo!28643 r!12920))) b!5104331))

(assert (= (and b!5103765 ((_ is Union!14065) (regTwo!28643 r!12920))) b!5104332))

(declare-fun b!5104337 () Bool)

(declare-fun e!3183468 () Bool)

(declare-fun tp!1423754 () Bool)

(declare-fun tp!1423755 () Bool)

(assert (=> b!5104337 (= e!3183468 (and tp!1423754 tp!1423755))))

(assert (=> b!5103750 (= tp!1423678 e!3183468)))

(assert (= (and b!5103750 ((_ is Cons!58857) (exprs!3949 setElem!29296))) b!5104337))

(declare-fun b!5104342 () Bool)

(declare-fun e!3183471 () Bool)

(declare-fun tp!1423758 () Bool)

(assert (=> b!5104342 (= e!3183471 (and tp_is_empty!37395 tp!1423758))))

(assert (=> b!5103756 (= tp!1423677 e!3183471)))

(assert (= (and b!5103756 ((_ is Cons!58858) (t!371983 input!5654))) b!5104342))

(declare-fun condSetEmpty!29302 () Bool)

(assert (=> setNonEmpty!29296 (= condSetEmpty!29302 (= setRest!29296 ((as const (Array Context!6898 Bool)) false)))))

(declare-fun setRes!29302 () Bool)

(assert (=> setNonEmpty!29296 (= tp!1423672 setRes!29302)))

(declare-fun setIsEmpty!29302 () Bool)

(assert (=> setIsEmpty!29302 setRes!29302))

(declare-fun tp!1423763 () Bool)

(declare-fun e!3183474 () Bool)

(declare-fun setNonEmpty!29302 () Bool)

(declare-fun setElem!29302 () Context!6898)

(assert (=> setNonEmpty!29302 (= setRes!29302 (and tp!1423763 (inv!78337 setElem!29302) e!3183474))))

(declare-fun setRest!29302 () (InoxSet Context!6898))

(assert (=> setNonEmpty!29302 (= setRest!29296 ((_ map or) (store ((as const (Array Context!6898 Bool)) false) setElem!29302 true) setRest!29302))))

(declare-fun b!5104347 () Bool)

(declare-fun tp!1423764 () Bool)

(assert (=> b!5104347 (= e!3183474 tp!1423764)))

(assert (= (and setNonEmpty!29296 condSetEmpty!29302) setIsEmpty!29302))

(assert (= (and setNonEmpty!29296 (not condSetEmpty!29302)) setNonEmpty!29302))

(assert (= setNonEmpty!29302 b!5104347))

(declare-fun m!6161680 () Bool)

(assert (=> setNonEmpty!29302 m!6161680))

(declare-fun b!5104350 () Bool)

(declare-fun e!3183475 () Bool)

(declare-fun tp!1423767 () Bool)

(assert (=> b!5104350 (= e!3183475 tp!1423767)))

(declare-fun b!5104349 () Bool)

(declare-fun tp!1423768 () Bool)

(declare-fun tp!1423765 () Bool)

(assert (=> b!5104349 (= e!3183475 (and tp!1423768 tp!1423765))))

(assert (=> b!5103753 (= tp!1423679 e!3183475)))

(declare-fun b!5104351 () Bool)

(declare-fun tp!1423766 () Bool)

(declare-fun tp!1423769 () Bool)

(assert (=> b!5104351 (= e!3183475 (and tp!1423766 tp!1423769))))

(declare-fun b!5104348 () Bool)

(assert (=> b!5104348 (= e!3183475 tp_is_empty!37395)))

(assert (= (and b!5103753 ((_ is ElementMatch!14065) (reg!14394 r!12920))) b!5104348))

(assert (= (and b!5103753 ((_ is Concat!22910) (reg!14394 r!12920))) b!5104349))

(assert (= (and b!5103753 ((_ is Star!14065) (reg!14394 r!12920))) b!5104350))

(assert (= (and b!5103753 ((_ is Union!14065) (reg!14394 r!12920))) b!5104351))

(declare-fun b!5104354 () Bool)

(declare-fun e!3183476 () Bool)

(declare-fun tp!1423772 () Bool)

(assert (=> b!5104354 (= e!3183476 tp!1423772)))

(declare-fun b!5104353 () Bool)

(declare-fun tp!1423773 () Bool)

(declare-fun tp!1423770 () Bool)

(assert (=> b!5104353 (= e!3183476 (and tp!1423773 tp!1423770))))

(assert (=> b!5103748 (= tp!1423673 e!3183476)))

(declare-fun b!5104355 () Bool)

(declare-fun tp!1423771 () Bool)

(declare-fun tp!1423774 () Bool)

(assert (=> b!5104355 (= e!3183476 (and tp!1423771 tp!1423774))))

(declare-fun b!5104352 () Bool)

(assert (=> b!5104352 (= e!3183476 tp_is_empty!37395)))

(assert (= (and b!5103748 ((_ is ElementMatch!14065) (regOne!28642 r!12920))) b!5104352))

(assert (= (and b!5103748 ((_ is Concat!22910) (regOne!28642 r!12920))) b!5104353))

(assert (= (and b!5103748 ((_ is Star!14065) (regOne!28642 r!12920))) b!5104354))

(assert (= (and b!5103748 ((_ is Union!14065) (regOne!28642 r!12920))) b!5104355))

(declare-fun b!5104358 () Bool)

(declare-fun e!3183477 () Bool)

(declare-fun tp!1423777 () Bool)

(assert (=> b!5104358 (= e!3183477 tp!1423777)))

(declare-fun b!5104357 () Bool)

(declare-fun tp!1423778 () Bool)

(declare-fun tp!1423775 () Bool)

(assert (=> b!5104357 (= e!3183477 (and tp!1423778 tp!1423775))))

(assert (=> b!5103748 (= tp!1423676 e!3183477)))

(declare-fun b!5104359 () Bool)

(declare-fun tp!1423776 () Bool)

(declare-fun tp!1423779 () Bool)

(assert (=> b!5104359 (= e!3183477 (and tp!1423776 tp!1423779))))

(declare-fun b!5104356 () Bool)

(assert (=> b!5104356 (= e!3183477 tp_is_empty!37395)))

(assert (= (and b!5103748 ((_ is ElementMatch!14065) (regTwo!28642 r!12920))) b!5104356))

(assert (= (and b!5103748 ((_ is Concat!22910) (regTwo!28642 r!12920))) b!5104357))

(assert (= (and b!5103748 ((_ is Star!14065) (regTwo!28642 r!12920))) b!5104358))

(assert (= (and b!5103748 ((_ is Union!14065) (regTwo!28642 r!12920))) b!5104359))

(check-sat (not setNonEmpty!29302) (not bm!355641) (not b!5104351) (not b!5104009) (not d!1650416) (not b!5104347) (not bm!355642) (not b!5103910) (not d!1650402) (not b!5104313) (not b!5104342) (not b!5103811) (not b!5103887) (not b!5103816) (not b!5104332) (not b!5103933) (not bm!355669) (not d!1650430) (not b!5104354) (not d!1650382) (not b!5104020) (not b!5103807) (not b!5103809) (not b!5103894) (not d!1650378) (not b!5103920) (not b!5103895) (not b!5104139) (not b!5104355) (not bm!355643) (not b!5103904) (not d!1650472) (not b!5103973) (not b!5104359) (not bm!355612) (not bm!355640) (not bm!355664) (not b!5103923) (not b!5103872) (not b!5103929) (not d!1650408) (not bm!355644) (not b!5104349) (not d!1650452) (not b!5103891) (not b!5103967) (not b!5103962) (not bm!355611) (not b!5103873) (not b!5104008) (not bm!355666) (not b!5103900) (not b!5104350) tp_is_empty!37395 (not bm!355645) (not bm!355639) (not bm!355619) (not b!5104358) (not b!5104327) (not d!1650392) (not b!5104357) (not b!5104312) (not b!5103965) (not b!5103876) (not b!5104109) (not b!5104330) (not bm!355667) (not b!5104331) (not d!1650406) (not b!5103921) (not d!1650470) (not bm!355607) (not d!1650422) (not b!5104156) (not b!5103926) (not b!5104158) (not b!5103812) (not d!1650410) (not b!5104314) (not bm!355670) (not b!5104353) (not b!5104014) (not b!5104110) (not d!1650404) (not bm!355638) (not b!5103968) (not b!5104326) (not bm!355668) (not b!5103969) (not d!1650394) (not bm!355665) (not b!5103888) (not b!5104102) (not b!5104328) (not d!1650438) (not b!5103806) (not b!5103897) (not bm!355663) (not b!5103892) (not d!1650474) (not b!5103877) (not b!5104099) (not d!1650450) (not d!1650414) (not b!5103924) (not b!5103899) (not bm!355620) (not b!5103971) (not b!5103972) (not d!1650490) (not b!5104337) (not b!5104011) (not d!1650418) (not b!5103853) (not b!5103922) (not b!5104019) (not b!5103928) (not b!5103875))
(check-sat)
