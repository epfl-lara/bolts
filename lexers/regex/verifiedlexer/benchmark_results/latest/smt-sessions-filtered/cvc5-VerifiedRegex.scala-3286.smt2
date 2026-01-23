; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188762 () Bool)

(assert start!188762)

(declare-fun res!841644 () Bool)

(declare-fun e!1202812 () Bool)

(assert (=> start!188762 (=> (not res!841644) (not e!1202812))))

(declare-fun i!1815 () Int)

(assert (=> start!188762 (= res!841644 (>= i!1815 0))))

(assert (=> start!188762 e!1202812))

(assert (=> start!188762 true))

(declare-datatypes ((C!10438 0))(
  ( (C!10439 (val!6107 Int)) )
))
(declare-datatypes ((List!21057 0))(
  ( (Nil!20975) (Cons!20975 (h!26376 C!10438) (t!175056 List!21057)) )
))
(declare-datatypes ((IArray!13953 0))(
  ( (IArray!13954 (innerList!7034 List!21057)) )
))
(declare-datatypes ((Conc!6974 0))(
  ( (Node!6974 (left!16856 Conc!6974) (right!17186 Conc!6974) (csize!14178 Int) (cheight!7185 Int)) (Leaf!10261 (xs!9864 IArray!13953) (csize!14179 Int)) (Empty!6974) )
))
(declare-datatypes ((BalanceConc!13764 0))(
  ( (BalanceConc!13765 (c!308015 Conc!6974)) )
))
(declare-fun input!3724 () BalanceConc!13764)

(declare-fun e!1202810 () Bool)

(declare-fun inv!27950 (BalanceConc!13764) Bool)

(assert (=> start!188762 (and (inv!27950 input!3724) e!1202810)))

(declare-fun condSetEmpty!11683 () Bool)

(declare-datatypes ((Regex!5136 0))(
  ( (ElementMatch!5136 (c!308016 C!10438)) (Concat!8989 (regOne!10784 Regex!5136) (regTwo!10784 Regex!5136)) (EmptyExpr!5136) (Star!5136 (reg!5465 Regex!5136)) (EmptyLang!5136) (Union!5136 (regOne!10785 Regex!5136) (regTwo!10785 Regex!5136)) )
))
(declare-datatypes ((List!21058 0))(
  ( (Nil!20976) (Cons!20976 (h!26377 Regex!5136) (t!175057 List!21058)) )
))
(declare-datatypes ((Context!1980 0))(
  ( (Context!1981 (exprs!1490 List!21058)) )
))
(declare-fun z!580 () (Set Context!1980))

(assert (=> start!188762 (= condSetEmpty!11683 (= z!580 (as set.empty (Set Context!1980))))))

(declare-fun setRes!11683 () Bool)

(assert (=> start!188762 setRes!11683))

(declare-fun b!1885394 () Bool)

(declare-fun e!1202813 () Bool)

(declare-fun tp!537238 () Bool)

(assert (=> b!1885394 (= e!1202813 tp!537238)))

(declare-fun b!1885395 () Bool)

(declare-fun e!1202811 () Bool)

(assert (=> b!1885395 (= e!1202812 e!1202811)))

(declare-fun res!841643 () Bool)

(assert (=> b!1885395 (=> (not res!841643) (not e!1202811))))

(declare-fun lt!723346 () Int)

(assert (=> b!1885395 (= res!841643 (and (<= i!1815 lt!723346) (= i!1815 lt!723346)))))

(declare-fun size!16662 (BalanceConc!13764) Int)

(assert (=> b!1885395 (= lt!723346 (size!16662 input!3724))))

(declare-fun b!1885396 () Bool)

(declare-fun tp!537240 () Bool)

(declare-fun inv!27951 (Conc!6974) Bool)

(assert (=> b!1885396 (= e!1202810 (and (inv!27951 (c!308015 input!3724)) tp!537240))))

(declare-fun setIsEmpty!11683 () Bool)

(assert (=> setIsEmpty!11683 setRes!11683))

(declare-fun setElem!11683 () Context!1980)

(declare-fun setNonEmpty!11683 () Bool)

(declare-fun tp!537239 () Bool)

(declare-fun inv!27952 (Context!1980) Bool)

(assert (=> setNonEmpty!11683 (= setRes!11683 (and tp!537239 (inv!27952 setElem!11683) e!1202813))))

(declare-fun setRest!11683 () (Set Context!1980))

(assert (=> setNonEmpty!11683 (= z!580 (set.union (set.insert setElem!11683 (as set.empty (Set Context!1980))) setRest!11683))))

(declare-fun b!1885397 () Bool)

(declare-fun nullableZipper!45 ((Set Context!1980)) Bool)

(declare-fun matchZipperSequence!20 ((Set Context!1980) BalanceConc!13764 Int) Bool)

(assert (=> b!1885397 (= e!1202811 (not (= (nullableZipper!45 z!580) (matchZipperSequence!20 z!580 input!3724 i!1815))))))

(assert (= (and start!188762 res!841644) b!1885395))

(assert (= (and b!1885395 res!841643) b!1885397))

(assert (= start!188762 b!1885396))

(assert (= (and start!188762 condSetEmpty!11683) setIsEmpty!11683))

(assert (= (and start!188762 (not condSetEmpty!11683)) setNonEmpty!11683))

(assert (= setNonEmpty!11683 b!1885394))

(declare-fun m!2318389 () Bool)

(assert (=> start!188762 m!2318389))

(declare-fun m!2318391 () Bool)

(assert (=> b!1885396 m!2318391))

(declare-fun m!2318393 () Bool)

(assert (=> setNonEmpty!11683 m!2318393))

(declare-fun m!2318395 () Bool)

(assert (=> b!1885395 m!2318395))

(declare-fun m!2318397 () Bool)

(assert (=> b!1885397 m!2318397))

(declare-fun m!2318399 () Bool)

(assert (=> b!1885397 m!2318399))

(push 1)

(assert (not b!1885397))

(assert (not b!1885395))

(assert (not setNonEmpty!11683))

(assert (not start!188762))

(assert (not b!1885396))

(assert (not b!1885394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!577855 () Bool)

(declare-fun lambda!73859 () Int)

(declare-fun exists!681 ((Set Context!1980) Int) Bool)

(assert (=> d!577855 (= (nullableZipper!45 z!580) (exists!681 z!580 lambda!73859))))

(declare-fun bs!412919 () Bool)

(assert (= bs!412919 d!577855))

(declare-fun m!2318419 () Bool)

(assert (=> bs!412919 m!2318419))

(assert (=> b!1885397 d!577855))

(declare-fun d!577859 () Bool)

(declare-fun c!308025 () Bool)

(assert (=> d!577859 (= c!308025 (= i!1815 (size!16662 input!3724)))))

(declare-fun e!1202828 () Bool)

(assert (=> d!577859 (= (matchZipperSequence!20 z!580 input!3724 i!1815) e!1202828)))

(declare-fun b!1885414 () Bool)

(assert (=> b!1885414 (= e!1202828 (nullableZipper!45 z!580))))

(declare-fun b!1885415 () Bool)

(declare-fun derivationStepZipper!81 ((Set Context!1980) C!10438) (Set Context!1980))

(declare-fun apply!5544 (BalanceConc!13764 Int) C!10438)

(assert (=> b!1885415 (= e!1202828 (matchZipperSequence!20 (derivationStepZipper!81 z!580 (apply!5544 input!3724 i!1815)) input!3724 (+ i!1815 1)))))

(assert (= (and d!577859 c!308025) b!1885414))

(assert (= (and d!577859 (not c!308025)) b!1885415))

(assert (=> d!577859 m!2318395))

(assert (=> b!1885414 m!2318397))

(declare-fun m!2318421 () Bool)

(assert (=> b!1885415 m!2318421))

(assert (=> b!1885415 m!2318421))

(declare-fun m!2318423 () Bool)

(assert (=> b!1885415 m!2318423))

(assert (=> b!1885415 m!2318423))

(declare-fun m!2318425 () Bool)

(assert (=> b!1885415 m!2318425))

(assert (=> b!1885397 d!577859))

(declare-fun d!577861 () Bool)

(declare-fun isBalanced!2209 (Conc!6974) Bool)

(assert (=> d!577861 (= (inv!27950 input!3724) (isBalanced!2209 (c!308015 input!3724)))))

(declare-fun bs!412920 () Bool)

(assert (= bs!412920 d!577861))

(declare-fun m!2318427 () Bool)

(assert (=> bs!412920 m!2318427))

(assert (=> start!188762 d!577861))

(declare-fun d!577863 () Bool)

(declare-fun lambda!73862 () Int)

(declare-fun forall!4425 (List!21058 Int) Bool)

(assert (=> d!577863 (= (inv!27952 setElem!11683) (forall!4425 (exprs!1490 setElem!11683) lambda!73862))))

(declare-fun bs!412921 () Bool)

(assert (= bs!412921 d!577863))

(declare-fun m!2318429 () Bool)

(assert (=> bs!412921 m!2318429))

(assert (=> setNonEmpty!11683 d!577863))

(declare-fun d!577865 () Bool)

(declare-fun c!308028 () Bool)

(assert (=> d!577865 (= c!308028 (is-Node!6974 (c!308015 input!3724)))))

(declare-fun e!1202833 () Bool)

(assert (=> d!577865 (= (inv!27951 (c!308015 input!3724)) e!1202833)))

(declare-fun b!1885422 () Bool)

(declare-fun inv!27956 (Conc!6974) Bool)

(assert (=> b!1885422 (= e!1202833 (inv!27956 (c!308015 input!3724)))))

(declare-fun b!1885423 () Bool)

(declare-fun e!1202834 () Bool)

(assert (=> b!1885423 (= e!1202833 e!1202834)))

(declare-fun res!841653 () Bool)

(assert (=> b!1885423 (= res!841653 (not (is-Leaf!10261 (c!308015 input!3724))))))

(assert (=> b!1885423 (=> res!841653 e!1202834)))

(declare-fun b!1885424 () Bool)

(declare-fun inv!27957 (Conc!6974) Bool)

(assert (=> b!1885424 (= e!1202834 (inv!27957 (c!308015 input!3724)))))

(assert (= (and d!577865 c!308028) b!1885422))

(assert (= (and d!577865 (not c!308028)) b!1885423))

(assert (= (and b!1885423 (not res!841653)) b!1885424))

(declare-fun m!2318431 () Bool)

(assert (=> b!1885422 m!2318431))

(declare-fun m!2318433 () Bool)

(assert (=> b!1885424 m!2318433))

(assert (=> b!1885396 d!577865))

(declare-fun d!577867 () Bool)

(declare-fun lt!723355 () Int)

(declare-fun size!16664 (List!21057) Int)

(declare-fun list!8563 (BalanceConc!13764) List!21057)

(assert (=> d!577867 (= lt!723355 (size!16664 (list!8563 input!3724)))))

(declare-fun size!16665 (Conc!6974) Int)

(assert (=> d!577867 (= lt!723355 (size!16665 (c!308015 input!3724)))))

(assert (=> d!577867 (= (size!16662 input!3724) lt!723355)))

(declare-fun bs!412922 () Bool)

(assert (= bs!412922 d!577867))

(declare-fun m!2318435 () Bool)

(assert (=> bs!412922 m!2318435))

(assert (=> bs!412922 m!2318435))

(declare-fun m!2318437 () Bool)

(assert (=> bs!412922 m!2318437))

(declare-fun m!2318439 () Bool)

(assert (=> bs!412922 m!2318439))

(assert (=> b!1885395 d!577867))

(declare-fun b!1885429 () Bool)

(declare-fun e!1202837 () Bool)

(declare-fun tp!537254 () Bool)

(declare-fun tp!537255 () Bool)

(assert (=> b!1885429 (= e!1202837 (and tp!537254 tp!537255))))

(assert (=> b!1885394 (= tp!537238 e!1202837)))

(assert (= (and b!1885394 (is-Cons!20976 (exprs!1490 setElem!11683))) b!1885429))

(declare-fun condSetEmpty!11689 () Bool)

(assert (=> setNonEmpty!11683 (= condSetEmpty!11689 (= setRest!11683 (as set.empty (Set Context!1980))))))

(declare-fun setRes!11689 () Bool)

(assert (=> setNonEmpty!11683 (= tp!537239 setRes!11689)))

(declare-fun setIsEmpty!11689 () Bool)

(assert (=> setIsEmpty!11689 setRes!11689))

(declare-fun setNonEmpty!11689 () Bool)

(declare-fun setElem!11689 () Context!1980)

(declare-fun e!1202840 () Bool)

(declare-fun tp!537260 () Bool)

(assert (=> setNonEmpty!11689 (= setRes!11689 (and tp!537260 (inv!27952 setElem!11689) e!1202840))))

(declare-fun setRest!11689 () (Set Context!1980))

(assert (=> setNonEmpty!11689 (= setRest!11683 (set.union (set.insert setElem!11689 (as set.empty (Set Context!1980))) setRest!11689))))

(declare-fun b!1885434 () Bool)

(declare-fun tp!537261 () Bool)

(assert (=> b!1885434 (= e!1202840 tp!537261)))

(assert (= (and setNonEmpty!11683 condSetEmpty!11689) setIsEmpty!11689))

(assert (= (and setNonEmpty!11683 (not condSetEmpty!11689)) setNonEmpty!11689))

(assert (= setNonEmpty!11689 b!1885434))

(declare-fun m!2318441 () Bool)

(assert (=> setNonEmpty!11689 m!2318441))

(declare-fun tp!537268 () Bool)

(declare-fun e!1202846 () Bool)

(declare-fun tp!537270 () Bool)

(declare-fun b!1885443 () Bool)

(assert (=> b!1885443 (= e!1202846 (and (inv!27951 (left!16856 (c!308015 input!3724))) tp!537268 (inv!27951 (right!17186 (c!308015 input!3724))) tp!537270))))

(declare-fun b!1885445 () Bool)

(declare-fun e!1202845 () Bool)

(declare-fun tp!537269 () Bool)

(assert (=> b!1885445 (= e!1202845 tp!537269)))

(declare-fun b!1885444 () Bool)

(declare-fun inv!27958 (IArray!13953) Bool)

(assert (=> b!1885444 (= e!1202846 (and (inv!27958 (xs!9864 (c!308015 input!3724))) e!1202845))))

(assert (=> b!1885396 (= tp!537240 (and (inv!27951 (c!308015 input!3724)) e!1202846))))

(assert (= (and b!1885396 (is-Node!6974 (c!308015 input!3724))) b!1885443))

(assert (= b!1885444 b!1885445))

(assert (= (and b!1885396 (is-Leaf!10261 (c!308015 input!3724))) b!1885444))

(declare-fun m!2318443 () Bool)

(assert (=> b!1885443 m!2318443))

(declare-fun m!2318445 () Bool)

(assert (=> b!1885443 m!2318445))

(declare-fun m!2318447 () Bool)

(assert (=> b!1885444 m!2318447))

(assert (=> b!1885396 m!2318391))

(push 1)

(assert (not b!1885443))

(assert (not b!1885445))

(assert (not b!1885415))

(assert (not b!1885414))

(assert (not d!577861))

(assert (not b!1885422))

(assert (not b!1885444))

(assert (not d!577859))

(assert (not b!1885429))

(assert (not setNonEmpty!11689))

(assert (not d!577855))

(assert (not b!1885396))

(assert (not d!577867))

(assert (not d!577863))

(assert (not b!1885434))

(assert (not b!1885424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

