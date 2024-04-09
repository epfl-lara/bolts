; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103094 () Bool)

(assert start!103094)

(declare-fun b!1237703 () Bool)

(declare-fun res!825626 () Bool)

(declare-fun e!701499 () Bool)

(assert (=> b!1237703 (=> (not res!825626) (not e!701499))))

(declare-datatypes ((List!27439 0))(
  ( (Nil!27436) (Cons!27435 (h!28644 (_ BitVec 64)) (t!40909 List!27439)) )
))
(declare-fun acc!846 () List!27439)

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7354 (List!27439 (_ BitVec 64)) Bool)

(assert (=> b!1237703 (= res!825626 (contains!7354 acc!846 k0!2925))))

(declare-fun b!1237704 () Bool)

(declare-fun res!825632 () Bool)

(assert (=> b!1237704 (=> (not res!825632) (not e!701499))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79774 0))(
  ( (array!79775 (arr!38488 (Array (_ BitVec 32) (_ BitVec 64))) (size!39025 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79774)

(assert (=> b!1237704 (= res!825632 (not (= from!3213 (bvsub (size!39025 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237705 () Bool)

(declare-fun e!701501 () Bool)

(declare-fun e!701500 () Bool)

(assert (=> b!1237705 (= e!701501 e!701500)))

(declare-fun res!825627 () Bool)

(assert (=> b!1237705 (=> (not res!825627) (not e!701500))))

(declare-fun lt!561073 () List!27439)

(assert (=> b!1237705 (= res!825627 (not (contains!7354 lt!561073 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237706 () Bool)

(assert (=> b!1237706 (= e!701499 (not e!701501))))

(declare-fun res!825628 () Bool)

(assert (=> b!1237706 (=> res!825628 e!701501)))

(assert (=> b!1237706 (= res!825628 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!591 (List!27439 List!27439) Bool)

(assert (=> b!1237706 (subseq!591 acc!846 lt!561073)))

(declare-datatypes ((Unit!41024 0))(
  ( (Unit!41025) )
))
(declare-fun lt!561071 () Unit!41024)

(declare-fun subseqTail!78 (List!27439 List!27439) Unit!41024)

(assert (=> b!1237706 (= lt!561071 (subseqTail!78 lt!561073 lt!561073))))

(assert (=> b!1237706 (subseq!591 lt!561073 lt!561073)))

(declare-fun lt!561072 () Unit!41024)

(declare-fun lemmaListSubSeqRefl!0 (List!27439) Unit!41024)

(assert (=> b!1237706 (= lt!561072 (lemmaListSubSeqRefl!0 lt!561073))))

(assert (=> b!1237706 (= lt!561073 (Cons!27435 (select (arr!38488 a!3835) from!3213) acc!846))))

(declare-fun b!1237707 () Bool)

(declare-fun res!825634 () Bool)

(assert (=> b!1237707 (=> (not res!825634) (not e!701499))))

(declare-fun noDuplicate!1961 (List!27439) Bool)

(assert (=> b!1237707 (= res!825634 (noDuplicate!1961 acc!846))))

(declare-fun b!1237708 () Bool)

(declare-fun res!825625 () Bool)

(assert (=> b!1237708 (=> (not res!825625) (not e!701499))))

(assert (=> b!1237708 (= res!825625 (not (contains!7354 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237709 () Bool)

(declare-fun res!825630 () Bool)

(assert (=> b!1237709 (=> (not res!825630) (not e!701499))))

(assert (=> b!1237709 (= res!825630 (not (contains!7354 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237710 () Bool)

(declare-fun res!825629 () Bool)

(assert (=> b!1237710 (=> res!825629 e!701501)))

(assert (=> b!1237710 (= res!825629 (not (noDuplicate!1961 lt!561073)))))

(declare-fun b!1237711 () Bool)

(declare-fun res!825631 () Bool)

(assert (=> b!1237711 (=> (not res!825631) (not e!701499))))

(declare-fun arrayNoDuplicates!0 (array!79774 (_ BitVec 32) List!27439) Bool)

(assert (=> b!1237711 (= res!825631 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237713 () Bool)

(assert (=> b!1237713 (= e!701500 (not (contains!7354 lt!561073 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237712 () Bool)

(declare-fun res!825633 () Bool)

(assert (=> b!1237712 (=> (not res!825633) (not e!701499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237712 (= res!825633 (validKeyInArray!0 (select (arr!38488 a!3835) from!3213)))))

(declare-fun res!825624 () Bool)

(assert (=> start!103094 (=> (not res!825624) (not e!701499))))

(assert (=> start!103094 (= res!825624 (and (bvslt (size!39025 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39025 a!3835))))))

(assert (=> start!103094 e!701499))

(declare-fun array_inv!29264 (array!79774) Bool)

(assert (=> start!103094 (array_inv!29264 a!3835)))

(assert (=> start!103094 true))

(assert (= (and start!103094 res!825624) b!1237707))

(assert (= (and b!1237707 res!825634) b!1237708))

(assert (= (and b!1237708 res!825625) b!1237709))

(assert (= (and b!1237709 res!825630) b!1237711))

(assert (= (and b!1237711 res!825631) b!1237703))

(assert (= (and b!1237703 res!825626) b!1237704))

(assert (= (and b!1237704 res!825632) b!1237712))

(assert (= (and b!1237712 res!825633) b!1237706))

(assert (= (and b!1237706 (not res!825628)) b!1237710))

(assert (= (and b!1237710 (not res!825629)) b!1237705))

(assert (= (and b!1237705 res!825627) b!1237713))

(declare-fun m!1141373 () Bool)

(assert (=> b!1237713 m!1141373))

(declare-fun m!1141375 () Bool)

(assert (=> b!1237711 m!1141375))

(declare-fun m!1141377 () Bool)

(assert (=> b!1237708 m!1141377))

(declare-fun m!1141379 () Bool)

(assert (=> b!1237706 m!1141379))

(declare-fun m!1141381 () Bool)

(assert (=> b!1237706 m!1141381))

(declare-fun m!1141383 () Bool)

(assert (=> b!1237706 m!1141383))

(declare-fun m!1141385 () Bool)

(assert (=> b!1237706 m!1141385))

(declare-fun m!1141387 () Bool)

(assert (=> b!1237706 m!1141387))

(declare-fun m!1141389 () Bool)

(assert (=> start!103094 m!1141389))

(declare-fun m!1141391 () Bool)

(assert (=> b!1237703 m!1141391))

(assert (=> b!1237712 m!1141387))

(assert (=> b!1237712 m!1141387))

(declare-fun m!1141393 () Bool)

(assert (=> b!1237712 m!1141393))

(declare-fun m!1141395 () Bool)

(assert (=> b!1237710 m!1141395))

(declare-fun m!1141397 () Bool)

(assert (=> b!1237705 m!1141397))

(declare-fun m!1141399 () Bool)

(assert (=> b!1237707 m!1141399))

(declare-fun m!1141401 () Bool)

(assert (=> b!1237709 m!1141401))

(check-sat (not b!1237706) (not b!1237703) (not start!103094) (not b!1237707) (not b!1237711) (not b!1237708) (not b!1237713) (not b!1237710) (not b!1237709) (not b!1237705) (not b!1237712))
(check-sat)
(get-model)

(declare-fun d!135667 () Bool)

(declare-fun lt!561085 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!593 (List!27439) (InoxSet (_ BitVec 64)))

(assert (=> d!135667 (= lt!561085 (select (content!593 lt!561073) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701518 () Bool)

(assert (=> d!135667 (= lt!561085 e!701518)))

(declare-fun res!825672 () Bool)

(assert (=> d!135667 (=> (not res!825672) (not e!701518))))

(get-info :version)

(assert (=> d!135667 (= res!825672 ((_ is Cons!27435) lt!561073))))

(assert (=> d!135667 (= (contains!7354 lt!561073 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561085)))

(declare-fun b!1237751 () Bool)

(declare-fun e!701519 () Bool)

(assert (=> b!1237751 (= e!701518 e!701519)))

(declare-fun res!825673 () Bool)

(assert (=> b!1237751 (=> res!825673 e!701519)))

(assert (=> b!1237751 (= res!825673 (= (h!28644 lt!561073) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237752 () Bool)

(assert (=> b!1237752 (= e!701519 (contains!7354 (t!40909 lt!561073) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135667 res!825672) b!1237751))

(assert (= (and b!1237751 (not res!825673)) b!1237752))

(declare-fun m!1141433 () Bool)

(assert (=> d!135667 m!1141433))

(declare-fun m!1141435 () Bool)

(assert (=> d!135667 m!1141435))

(declare-fun m!1141437 () Bool)

(assert (=> b!1237752 m!1141437))

(assert (=> b!1237713 d!135667))

(declare-fun d!135669 () Bool)

(declare-fun res!825678 () Bool)

(declare-fun e!701524 () Bool)

(assert (=> d!135669 (=> res!825678 e!701524)))

(assert (=> d!135669 (= res!825678 ((_ is Nil!27436) acc!846))))

(assert (=> d!135669 (= (noDuplicate!1961 acc!846) e!701524)))

(declare-fun b!1237757 () Bool)

(declare-fun e!701525 () Bool)

(assert (=> b!1237757 (= e!701524 e!701525)))

(declare-fun res!825679 () Bool)

(assert (=> b!1237757 (=> (not res!825679) (not e!701525))))

(assert (=> b!1237757 (= res!825679 (not (contains!7354 (t!40909 acc!846) (h!28644 acc!846))))))

(declare-fun b!1237758 () Bool)

(assert (=> b!1237758 (= e!701525 (noDuplicate!1961 (t!40909 acc!846)))))

(assert (= (and d!135669 (not res!825678)) b!1237757))

(assert (= (and b!1237757 res!825679) b!1237758))

(declare-fun m!1141439 () Bool)

(assert (=> b!1237757 m!1141439))

(declare-fun m!1141441 () Bool)

(assert (=> b!1237758 m!1141441))

(assert (=> b!1237707 d!135669))

(declare-fun d!135671 () Bool)

(assert (=> d!135671 (= (validKeyInArray!0 (select (arr!38488 a!3835) from!3213)) (and (not (= (select (arr!38488 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38488 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1237712 d!135671))

(declare-fun d!135673 () Bool)

(assert (=> d!135673 (= (array_inv!29264 a!3835) (bvsge (size!39025 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103094 d!135673))

(declare-fun b!1237775 () Bool)

(declare-fun e!701545 () Bool)

(declare-fun e!701542 () Bool)

(assert (=> b!1237775 (= e!701545 e!701542)))

(declare-fun res!825697 () Bool)

(assert (=> b!1237775 (=> (not res!825697) (not e!701542))))

(assert (=> b!1237775 (= res!825697 ((_ is Cons!27435) lt!561073))))

(declare-fun d!135675 () Bool)

(declare-fun res!825698 () Bool)

(assert (=> d!135675 (=> res!825698 e!701545)))

(assert (=> d!135675 (= res!825698 ((_ is Nil!27436) acc!846))))

(assert (=> d!135675 (= (subseq!591 acc!846 lt!561073) e!701545)))

(declare-fun b!1237776 () Bool)

(declare-fun e!701543 () Bool)

(assert (=> b!1237776 (= e!701542 e!701543)))

(declare-fun res!825699 () Bool)

(assert (=> b!1237776 (=> res!825699 e!701543)))

(declare-fun e!701544 () Bool)

(assert (=> b!1237776 (= res!825699 e!701544)))

(declare-fun res!825696 () Bool)

(assert (=> b!1237776 (=> (not res!825696) (not e!701544))))

(assert (=> b!1237776 (= res!825696 (= (h!28644 acc!846) (h!28644 lt!561073)))))

(declare-fun b!1237777 () Bool)

(assert (=> b!1237777 (= e!701544 (subseq!591 (t!40909 acc!846) (t!40909 lt!561073)))))

(declare-fun b!1237778 () Bool)

(assert (=> b!1237778 (= e!701543 (subseq!591 acc!846 (t!40909 lt!561073)))))

(assert (= (and d!135675 (not res!825698)) b!1237775))

(assert (= (and b!1237775 res!825697) b!1237776))

(assert (= (and b!1237776 res!825696) b!1237777))

(assert (= (and b!1237776 (not res!825699)) b!1237778))

(declare-fun m!1141443 () Bool)

(assert (=> b!1237777 m!1141443))

(declare-fun m!1141445 () Bool)

(assert (=> b!1237778 m!1141445))

(assert (=> b!1237706 d!135675))

(declare-fun b!1237829 () Bool)

(declare-fun e!701591 () Unit!41024)

(declare-fun Unit!41028 () Unit!41024)

(assert (=> b!1237829 (= e!701591 Unit!41028)))

(declare-fun bm!61034 () Bool)

(declare-fun call!61037 () Unit!41024)

(declare-fun c!120910 () Bool)

(assert (=> bm!61034 (= call!61037 (subseqTail!78 (ite c!120910 lt!561073 (t!40909 lt!561073)) (t!40909 lt!561073)))))

(declare-fun b!1237830 () Bool)

(declare-fun e!701593 () Unit!41024)

(declare-fun Unit!41029 () Unit!41024)

(assert (=> b!1237830 (= e!701593 Unit!41029)))

(declare-fun d!135683 () Bool)

(declare-fun tail!162 (List!27439) List!27439)

(assert (=> d!135683 (subseq!591 (tail!162 lt!561073) lt!561073)))

(declare-fun lt!561097 () Unit!41024)

(assert (=> d!135683 (= lt!561097 e!701591)))

(declare-fun c!120911 () Bool)

(assert (=> d!135683 (= c!120911 (and ((_ is Cons!27435) lt!561073) ((_ is Cons!27435) lt!561073)))))

(declare-fun e!701592 () Bool)

(assert (=> d!135683 e!701592))

(declare-fun res!825736 () Bool)

(assert (=> d!135683 (=> (not res!825736) (not e!701592))))

(declare-fun isEmpty!1013 (List!27439) Bool)

(assert (=> d!135683 (= res!825736 (not (isEmpty!1013 lt!561073)))))

(assert (=> d!135683 (= (subseqTail!78 lt!561073 lt!561073) lt!561097)))

(declare-fun b!1237831 () Bool)

(declare-fun e!701590 () Unit!41024)

(assert (=> b!1237831 (= e!701590 call!61037)))

(declare-fun b!1237832 () Bool)

(assert (=> b!1237832 (= e!701591 e!701590)))

(assert (=> b!1237832 (= c!120910 (subseq!591 lt!561073 (t!40909 lt!561073)))))

(declare-fun b!1237833 () Bool)

(assert (=> b!1237833 (= e!701592 (subseq!591 lt!561073 lt!561073))))

(declare-fun b!1237834 () Bool)

(declare-fun c!120912 () Bool)

(assert (=> b!1237834 (= c!120912 (not (isEmpty!1013 (t!40909 lt!561073))))))

(assert (=> b!1237834 (= e!701590 e!701593)))

(declare-fun b!1237835 () Bool)

(assert (=> b!1237835 (= e!701593 call!61037)))

(assert (= (and d!135683 res!825736) b!1237833))

(assert (= (and d!135683 c!120911) b!1237832))

(assert (= (and d!135683 (not c!120911)) b!1237829))

(assert (= (and b!1237832 c!120910) b!1237831))

(assert (= (and b!1237832 (not c!120910)) b!1237834))

(assert (= (and b!1237834 c!120912) b!1237835))

(assert (= (and b!1237834 (not c!120912)) b!1237830))

(assert (= (or b!1237831 b!1237835) bm!61034))

(declare-fun m!1141481 () Bool)

(assert (=> bm!61034 m!1141481))

(declare-fun m!1141483 () Bool)

(assert (=> b!1237834 m!1141483))

(declare-fun m!1141485 () Bool)

(assert (=> d!135683 m!1141485))

(assert (=> d!135683 m!1141485))

(declare-fun m!1141487 () Bool)

(assert (=> d!135683 m!1141487))

(declare-fun m!1141489 () Bool)

(assert (=> d!135683 m!1141489))

(assert (=> b!1237833 m!1141383))

(declare-fun m!1141491 () Bool)

(assert (=> b!1237832 m!1141491))

(assert (=> b!1237706 d!135683))

(declare-fun b!1237842 () Bool)

(declare-fun e!701599 () Bool)

(declare-fun e!701596 () Bool)

(assert (=> b!1237842 (= e!701599 e!701596)))

(declare-fun res!825738 () Bool)

(assert (=> b!1237842 (=> (not res!825738) (not e!701596))))

(assert (=> b!1237842 (= res!825738 ((_ is Cons!27435) lt!561073))))

(declare-fun d!135701 () Bool)

(declare-fun res!825739 () Bool)

(assert (=> d!135701 (=> res!825739 e!701599)))

(assert (=> d!135701 (= res!825739 ((_ is Nil!27436) lt!561073))))

(assert (=> d!135701 (= (subseq!591 lt!561073 lt!561073) e!701599)))

(declare-fun b!1237843 () Bool)

(declare-fun e!701597 () Bool)

(assert (=> b!1237843 (= e!701596 e!701597)))

(declare-fun res!825740 () Bool)

(assert (=> b!1237843 (=> res!825740 e!701597)))

(declare-fun e!701598 () Bool)

(assert (=> b!1237843 (= res!825740 e!701598)))

(declare-fun res!825737 () Bool)

(assert (=> b!1237843 (=> (not res!825737) (not e!701598))))

(assert (=> b!1237843 (= res!825737 (= (h!28644 lt!561073) (h!28644 lt!561073)))))

(declare-fun b!1237844 () Bool)

(assert (=> b!1237844 (= e!701598 (subseq!591 (t!40909 lt!561073) (t!40909 lt!561073)))))

(declare-fun b!1237845 () Bool)

(assert (=> b!1237845 (= e!701597 (subseq!591 lt!561073 (t!40909 lt!561073)))))

(assert (= (and d!135701 (not res!825739)) b!1237842))

(assert (= (and b!1237842 res!825738) b!1237843))

(assert (= (and b!1237843 res!825737) b!1237844))

(assert (= (and b!1237843 (not res!825740)) b!1237845))

(declare-fun m!1141493 () Bool)

(assert (=> b!1237844 m!1141493))

(assert (=> b!1237845 m!1141491))

(assert (=> b!1237706 d!135701))

(declare-fun d!135703 () Bool)

(assert (=> d!135703 (subseq!591 lt!561073 lt!561073)))

(declare-fun lt!561100 () Unit!41024)

(declare-fun choose!36 (List!27439) Unit!41024)

(assert (=> d!135703 (= lt!561100 (choose!36 lt!561073))))

(assert (=> d!135703 (= (lemmaListSubSeqRefl!0 lt!561073) lt!561100)))

(declare-fun bs!34801 () Bool)

(assert (= bs!34801 d!135703))

(assert (=> bs!34801 m!1141383))

(declare-fun m!1141499 () Bool)

(assert (=> bs!34801 m!1141499))

(assert (=> b!1237706 d!135703))

(declare-fun b!1237894 () Bool)

(declare-fun e!701647 () Bool)

(declare-fun e!701644 () Bool)

(assert (=> b!1237894 (= e!701647 e!701644)))

(declare-fun res!825781 () Bool)

(assert (=> b!1237894 (=> (not res!825781) (not e!701644))))

(declare-fun e!701646 () Bool)

(assert (=> b!1237894 (= res!825781 (not e!701646))))

(declare-fun res!825782 () Bool)

(assert (=> b!1237894 (=> (not res!825782) (not e!701646))))

(assert (=> b!1237894 (= res!825782 (validKeyInArray!0 (select (arr!38488 a!3835) from!3213)))))

(declare-fun b!1237895 () Bool)

(declare-fun e!701645 () Bool)

(declare-fun call!61044 () Bool)

(assert (=> b!1237895 (= e!701645 call!61044)))

(declare-fun b!1237896 () Bool)

(assert (=> b!1237896 (= e!701646 (contains!7354 acc!846 (select (arr!38488 a!3835) from!3213)))))

(declare-fun b!1237897 () Bool)

(assert (=> b!1237897 (= e!701645 call!61044)))

(declare-fun b!1237898 () Bool)

(assert (=> b!1237898 (= e!701644 e!701645)))

(declare-fun c!120919 () Bool)

(assert (=> b!1237898 (= c!120919 (validKeyInArray!0 (select (arr!38488 a!3835) from!3213)))))

(declare-fun bm!61041 () Bool)

(assert (=> bm!61041 (= call!61044 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120919 (Cons!27435 (select (arr!38488 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun d!135707 () Bool)

(declare-fun res!825783 () Bool)

(assert (=> d!135707 (=> res!825783 e!701647)))

(assert (=> d!135707 (= res!825783 (bvsge from!3213 (size!39025 a!3835)))))

(assert (=> d!135707 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701647)))

(assert (= (and d!135707 (not res!825783)) b!1237894))

(assert (= (and b!1237894 res!825782) b!1237896))

(assert (= (and b!1237894 res!825781) b!1237898))

(assert (= (and b!1237898 c!120919) b!1237897))

(assert (= (and b!1237898 (not c!120919)) b!1237895))

(assert (= (or b!1237897 b!1237895) bm!61041))

(assert (=> b!1237894 m!1141387))

(assert (=> b!1237894 m!1141387))

(assert (=> b!1237894 m!1141393))

(assert (=> b!1237896 m!1141387))

(assert (=> b!1237896 m!1141387))

(declare-fun m!1141525 () Bool)

(assert (=> b!1237896 m!1141525))

(assert (=> b!1237898 m!1141387))

(assert (=> b!1237898 m!1141387))

(assert (=> b!1237898 m!1141393))

(assert (=> bm!61041 m!1141387))

(declare-fun m!1141527 () Bool)

(assert (=> bm!61041 m!1141527))

(assert (=> b!1237711 d!135707))

(declare-fun d!135723 () Bool)

(declare-fun lt!561103 () Bool)

(assert (=> d!135723 (= lt!561103 (select (content!593 lt!561073) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701652 () Bool)

(assert (=> d!135723 (= lt!561103 e!701652)))

(declare-fun res!825788 () Bool)

(assert (=> d!135723 (=> (not res!825788) (not e!701652))))

(assert (=> d!135723 (= res!825788 ((_ is Cons!27435) lt!561073))))

(assert (=> d!135723 (= (contains!7354 lt!561073 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561103)))

(declare-fun b!1237903 () Bool)

(declare-fun e!701653 () Bool)

(assert (=> b!1237903 (= e!701652 e!701653)))

(declare-fun res!825789 () Bool)

(assert (=> b!1237903 (=> res!825789 e!701653)))

(assert (=> b!1237903 (= res!825789 (= (h!28644 lt!561073) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237904 () Bool)

(assert (=> b!1237904 (= e!701653 (contains!7354 (t!40909 lt!561073) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135723 res!825788) b!1237903))

(assert (= (and b!1237903 (not res!825789)) b!1237904))

(assert (=> d!135723 m!1141433))

(declare-fun m!1141533 () Bool)

(assert (=> d!135723 m!1141533))

(declare-fun m!1141535 () Bool)

(assert (=> b!1237904 m!1141535))

(assert (=> b!1237705 d!135723))

(declare-fun d!135727 () Bool)

(declare-fun res!825790 () Bool)

(declare-fun e!701654 () Bool)

(assert (=> d!135727 (=> res!825790 e!701654)))

(assert (=> d!135727 (= res!825790 ((_ is Nil!27436) lt!561073))))

(assert (=> d!135727 (= (noDuplicate!1961 lt!561073) e!701654)))

(declare-fun b!1237905 () Bool)

(declare-fun e!701655 () Bool)

(assert (=> b!1237905 (= e!701654 e!701655)))

(declare-fun res!825791 () Bool)

(assert (=> b!1237905 (=> (not res!825791) (not e!701655))))

(assert (=> b!1237905 (= res!825791 (not (contains!7354 (t!40909 lt!561073) (h!28644 lt!561073))))))

(declare-fun b!1237906 () Bool)

(assert (=> b!1237906 (= e!701655 (noDuplicate!1961 (t!40909 lt!561073)))))

(assert (= (and d!135727 (not res!825790)) b!1237905))

(assert (= (and b!1237905 res!825791) b!1237906))

(declare-fun m!1141537 () Bool)

(assert (=> b!1237905 m!1141537))

(declare-fun m!1141539 () Bool)

(assert (=> b!1237906 m!1141539))

(assert (=> b!1237710 d!135727))

(declare-fun d!135729 () Bool)

(declare-fun lt!561104 () Bool)

(assert (=> d!135729 (= lt!561104 (select (content!593 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701656 () Bool)

(assert (=> d!135729 (= lt!561104 e!701656)))

(declare-fun res!825792 () Bool)

(assert (=> d!135729 (=> (not res!825792) (not e!701656))))

(assert (=> d!135729 (= res!825792 ((_ is Cons!27435) acc!846))))

(assert (=> d!135729 (= (contains!7354 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561104)))

(declare-fun b!1237907 () Bool)

(declare-fun e!701657 () Bool)

(assert (=> b!1237907 (= e!701656 e!701657)))

(declare-fun res!825793 () Bool)

(assert (=> b!1237907 (=> res!825793 e!701657)))

(assert (=> b!1237907 (= res!825793 (= (h!28644 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237908 () Bool)

(assert (=> b!1237908 (= e!701657 (contains!7354 (t!40909 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135729 res!825792) b!1237907))

(assert (= (and b!1237907 (not res!825793)) b!1237908))

(declare-fun m!1141541 () Bool)

(assert (=> d!135729 m!1141541))

(declare-fun m!1141543 () Bool)

(assert (=> d!135729 m!1141543))

(declare-fun m!1141545 () Bool)

(assert (=> b!1237908 m!1141545))

(assert (=> b!1237709 d!135729))

(declare-fun d!135731 () Bool)

(declare-fun lt!561105 () Bool)

(assert (=> d!135731 (= lt!561105 (select (content!593 acc!846) k0!2925))))

(declare-fun e!701658 () Bool)

(assert (=> d!135731 (= lt!561105 e!701658)))

(declare-fun res!825794 () Bool)

(assert (=> d!135731 (=> (not res!825794) (not e!701658))))

(assert (=> d!135731 (= res!825794 ((_ is Cons!27435) acc!846))))

(assert (=> d!135731 (= (contains!7354 acc!846 k0!2925) lt!561105)))

(declare-fun b!1237909 () Bool)

(declare-fun e!701659 () Bool)

(assert (=> b!1237909 (= e!701658 e!701659)))

(declare-fun res!825795 () Bool)

(assert (=> b!1237909 (=> res!825795 e!701659)))

(assert (=> b!1237909 (= res!825795 (= (h!28644 acc!846) k0!2925))))

(declare-fun b!1237910 () Bool)

(assert (=> b!1237910 (= e!701659 (contains!7354 (t!40909 acc!846) k0!2925))))

(assert (= (and d!135731 res!825794) b!1237909))

(assert (= (and b!1237909 (not res!825795)) b!1237910))

(assert (=> d!135731 m!1141541))

(declare-fun m!1141547 () Bool)

(assert (=> d!135731 m!1141547))

(declare-fun m!1141549 () Bool)

(assert (=> b!1237910 m!1141549))

(assert (=> b!1237703 d!135731))

(declare-fun d!135733 () Bool)

(declare-fun lt!561106 () Bool)

(assert (=> d!135733 (= lt!561106 (select (content!593 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701660 () Bool)

(assert (=> d!135733 (= lt!561106 e!701660)))

(declare-fun res!825796 () Bool)

(assert (=> d!135733 (=> (not res!825796) (not e!701660))))

(assert (=> d!135733 (= res!825796 ((_ is Cons!27435) acc!846))))

(assert (=> d!135733 (= (contains!7354 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561106)))

(declare-fun b!1237911 () Bool)

(declare-fun e!701661 () Bool)

(assert (=> b!1237911 (= e!701660 e!701661)))

(declare-fun res!825797 () Bool)

(assert (=> b!1237911 (=> res!825797 e!701661)))

(assert (=> b!1237911 (= res!825797 (= (h!28644 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237912 () Bool)

(assert (=> b!1237912 (= e!701661 (contains!7354 (t!40909 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135733 res!825796) b!1237911))

(assert (= (and b!1237911 (not res!825797)) b!1237912))

(assert (=> d!135733 m!1141541))

(declare-fun m!1141551 () Bool)

(assert (=> d!135733 m!1141551))

(declare-fun m!1141553 () Bool)

(assert (=> b!1237912 m!1141553))

(assert (=> b!1237708 d!135733))

(check-sat (not d!135731) (not b!1237758) (not b!1237905) (not b!1237906) (not b!1237896) (not d!135729) (not d!135667) (not b!1237844) (not b!1237904) (not b!1237908) (not b!1237757) (not b!1237910) (not b!1237845) (not d!135703) (not b!1237898) (not d!135683) (not d!135733) (not b!1237894) (not bm!61034) (not d!135723) (not b!1237833) (not b!1237778) (not b!1237834) (not b!1237752) (not b!1237832) (not b!1237912) (not b!1237777) (not bm!61041))
(check-sat)
