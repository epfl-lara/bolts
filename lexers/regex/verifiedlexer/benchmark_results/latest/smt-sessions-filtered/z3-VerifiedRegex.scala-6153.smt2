; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297506 () Bool)

(assert start!297506)

(declare-fun b!3176682 () Bool)

(declare-fun e!1978630 () Bool)

(declare-fun tp!1004720 () Bool)

(assert (=> b!3176682 (= e!1978630 tp!1004720)))

(declare-fun b!3176679 () Bool)

(declare-fun e!1978628 () Bool)

(declare-datatypes ((T!63144 0))(
  ( (T!63145 (val!11986 Int)) )
))
(declare-datatypes ((List!35735 0))(
  ( (Nil!35611) (Cons!35611 (h!41031 T!63144) (t!234830 List!35735)) )
))
(declare-datatypes ((IArray!21109 0))(
  ( (IArray!21110 (innerList!10612 List!35735)) )
))
(declare-datatypes ((Conc!10552 0))(
  ( (Node!10552 (left!27705 Conc!10552) (right!28035 Conc!10552) (csize!21334 Int) (cheight!10763 Int)) (Leaf!16706 (xs!13670 IArray!21109) (csize!21335 Int)) (Empty!10552) )
))
(declare-fun t!3671 () Conc!10552)

(declare-fun ConcPrimitiveSize!28 (Conc!10552) Int)

(assert (=> b!3176679 (= e!1978628 (>= (ConcPrimitiveSize!28 (left!27705 t!3671)) (ConcPrimitiveSize!28 t!3671)))))

(declare-fun b!3176681 () Bool)

(declare-fun e!1978629 () Bool)

(declare-fun inv!48448 (IArray!21109) Bool)

(assert (=> b!3176681 (= e!1978629 (and (inv!48448 (xs!13670 t!3671)) e!1978630))))

(declare-fun res!1290673 () Bool)

(assert (=> start!297506 (=> (not res!1290673) (not e!1978628))))

(get-info :version)

(assert (=> start!297506 (= res!1290673 (and (not ((_ is Empty!10552) t!3671)) (not ((_ is Leaf!16706) t!3671))))))

(assert (=> start!297506 e!1978628))

(declare-fun inv!48449 (Conc!10552) Bool)

(assert (=> start!297506 (and (inv!48449 t!3671) e!1978629)))

(declare-fun b!3176680 () Bool)

(declare-fun tp!1004721 () Bool)

(declare-fun tp!1004722 () Bool)

(assert (=> b!3176680 (= e!1978629 (and (inv!48449 (left!27705 t!3671)) tp!1004722 (inv!48449 (right!28035 t!3671)) tp!1004721))))

(assert (= (and start!297506 res!1290673) b!3176679))

(assert (= (and start!297506 ((_ is Node!10552) t!3671)) b!3176680))

(assert (= b!3176681 b!3176682))

(assert (= (and start!297506 ((_ is Leaf!16706) t!3671)) b!3176681))

(declare-fun m!3433067 () Bool)

(assert (=> b!3176679 m!3433067))

(declare-fun m!3433069 () Bool)

(assert (=> b!3176679 m!3433069))

(declare-fun m!3433071 () Bool)

(assert (=> b!3176681 m!3433071))

(declare-fun m!3433073 () Bool)

(assert (=> start!297506 m!3433073))

(declare-fun m!3433075 () Bool)

(assert (=> b!3176680 m!3433075))

(declare-fun m!3433077 () Bool)

(assert (=> b!3176680 m!3433077))

(check-sat (not start!297506) (not b!3176680) (not b!3176682) (not b!3176679) (not b!3176681))
(check-sat)
(get-model)

(declare-fun b!3176722 () Bool)

(declare-fun e!1978654 () Int)

(declare-fun e!1978653 () Int)

(assert (=> b!3176722 (= e!1978654 e!1978653)))

(declare-fun c!533806 () Bool)

(assert (=> b!3176722 (= c!533806 ((_ is Leaf!16706) (left!27705 t!3671)))))

(declare-fun b!3176723 () Bool)

(assert (=> b!3176723 (= e!1978653 0)))

(declare-fun d!869638 () Bool)

(declare-fun lt!1068015 () Int)

(assert (=> d!869638 (>= lt!1068015 0)))

(assert (=> d!869638 (= lt!1068015 e!1978654)))

(declare-fun c!533807 () Bool)

(assert (=> d!869638 (= c!533807 ((_ is Node!10552) (left!27705 t!3671)))))

(assert (=> d!869638 (= (ConcPrimitiveSize!28 (left!27705 t!3671)) lt!1068015)))

(declare-fun b!3176724 () Bool)

(declare-fun call!230879 () Int)

(declare-fun IArrayPrimitiveSize!27 (IArray!21109) Int)

(assert (=> b!3176724 (= e!1978653 (+ 1 (IArrayPrimitiveSize!27 (xs!13670 (left!27705 t!3671))) call!230879))))

(declare-fun bm!230874 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!230874 (= call!230879 (BigIntAbs!0 (ite c!533807 (cheight!10763 (left!27705 t!3671)) (csize!21335 (left!27705 t!3671)))))))

(declare-fun b!3176725 () Bool)

(assert (=> b!3176725 (= e!1978654 (+ 1 (ConcPrimitiveSize!28 (left!27705 (left!27705 t!3671))) (ConcPrimitiveSize!28 (right!28035 (left!27705 t!3671))) (BigIntAbs!0 (csize!21334 (left!27705 t!3671))) call!230879))))

(assert (= (and d!869638 c!533807) b!3176725))

(assert (= (and d!869638 (not c!533807)) b!3176722))

(assert (= (and b!3176722 c!533806) b!3176724))

(assert (= (and b!3176722 (not c!533806)) b!3176723))

(assert (= (or b!3176725 b!3176724) bm!230874))

(declare-fun m!3433111 () Bool)

(assert (=> b!3176724 m!3433111))

(declare-fun m!3433113 () Bool)

(assert (=> bm!230874 m!3433113))

(declare-fun m!3433115 () Bool)

(assert (=> b!3176725 m!3433115))

(declare-fun m!3433117 () Bool)

(assert (=> b!3176725 m!3433117))

(declare-fun m!3433119 () Bool)

(assert (=> b!3176725 m!3433119))

(assert (=> b!3176679 d!869638))

(declare-fun b!3176734 () Bool)

(declare-fun e!1978660 () Int)

(declare-fun e!1978659 () Int)

(assert (=> b!3176734 (= e!1978660 e!1978659)))

(declare-fun c!533808 () Bool)

(assert (=> b!3176734 (= c!533808 ((_ is Leaf!16706) t!3671))))

(declare-fun b!3176735 () Bool)

(assert (=> b!3176735 (= e!1978659 0)))

(declare-fun d!869650 () Bool)

(declare-fun lt!1068016 () Int)

(assert (=> d!869650 (>= lt!1068016 0)))

(assert (=> d!869650 (= lt!1068016 e!1978660)))

(declare-fun c!533809 () Bool)

(assert (=> d!869650 (= c!533809 ((_ is Node!10552) t!3671))))

(assert (=> d!869650 (= (ConcPrimitiveSize!28 t!3671) lt!1068016)))

(declare-fun b!3176736 () Bool)

(declare-fun call!230880 () Int)

(assert (=> b!3176736 (= e!1978659 (+ 1 (IArrayPrimitiveSize!27 (xs!13670 t!3671)) call!230880))))

(declare-fun bm!230875 () Bool)

(assert (=> bm!230875 (= call!230880 (BigIntAbs!0 (ite c!533809 (cheight!10763 t!3671) (csize!21335 t!3671))))))

(declare-fun b!3176737 () Bool)

(assert (=> b!3176737 (= e!1978660 (+ 1 (ConcPrimitiveSize!28 (left!27705 t!3671)) (ConcPrimitiveSize!28 (right!28035 t!3671)) (BigIntAbs!0 (csize!21334 t!3671)) call!230880))))

(assert (= (and d!869650 c!533809) b!3176737))

(assert (= (and d!869650 (not c!533809)) b!3176734))

(assert (= (and b!3176734 c!533808) b!3176736))

(assert (= (and b!3176734 (not c!533808)) b!3176735))

(assert (= (or b!3176737 b!3176736) bm!230875))

(declare-fun m!3433121 () Bool)

(assert (=> b!3176736 m!3433121))

(declare-fun m!3433123 () Bool)

(assert (=> bm!230875 m!3433123))

(assert (=> b!3176737 m!3433067))

(declare-fun m!3433127 () Bool)

(assert (=> b!3176737 m!3433127))

(declare-fun m!3433131 () Bool)

(assert (=> b!3176737 m!3433131))

(assert (=> b!3176679 d!869650))

(declare-fun d!869652 () Bool)

(declare-fun c!533812 () Bool)

(assert (=> d!869652 (= c!533812 ((_ is Node!10552) (left!27705 t!3671)))))

(declare-fun e!1978672 () Bool)

(assert (=> d!869652 (= (inv!48449 (left!27705 t!3671)) e!1978672)))

(declare-fun b!3176755 () Bool)

(declare-fun inv!48452 (Conc!10552) Bool)

(assert (=> b!3176755 (= e!1978672 (inv!48452 (left!27705 t!3671)))))

(declare-fun b!3176756 () Bool)

(declare-fun e!1978673 () Bool)

(assert (=> b!3176756 (= e!1978672 e!1978673)))

(declare-fun res!1290681 () Bool)

(assert (=> b!3176756 (= res!1290681 (not ((_ is Leaf!16706) (left!27705 t!3671))))))

(assert (=> b!3176756 (=> res!1290681 e!1978673)))

(declare-fun b!3176757 () Bool)

(declare-fun inv!48453 (Conc!10552) Bool)

(assert (=> b!3176757 (= e!1978673 (inv!48453 (left!27705 t!3671)))))

(assert (= (and d!869652 c!533812) b!3176755))

(assert (= (and d!869652 (not c!533812)) b!3176756))

(assert (= (and b!3176756 (not res!1290681)) b!3176757))

(declare-fun m!3433141 () Bool)

(assert (=> b!3176755 m!3433141))

(declare-fun m!3433143 () Bool)

(assert (=> b!3176757 m!3433143))

(assert (=> b!3176680 d!869652))

(declare-fun d!869654 () Bool)

(declare-fun c!533813 () Bool)

(assert (=> d!869654 (= c!533813 ((_ is Node!10552) (right!28035 t!3671)))))

(declare-fun e!1978674 () Bool)

(assert (=> d!869654 (= (inv!48449 (right!28035 t!3671)) e!1978674)))

(declare-fun b!3176758 () Bool)

(assert (=> b!3176758 (= e!1978674 (inv!48452 (right!28035 t!3671)))))

(declare-fun b!3176759 () Bool)

(declare-fun e!1978675 () Bool)

(assert (=> b!3176759 (= e!1978674 e!1978675)))

(declare-fun res!1290682 () Bool)

(assert (=> b!3176759 (= res!1290682 (not ((_ is Leaf!16706) (right!28035 t!3671))))))

(assert (=> b!3176759 (=> res!1290682 e!1978675)))

(declare-fun b!3176760 () Bool)

(assert (=> b!3176760 (= e!1978675 (inv!48453 (right!28035 t!3671)))))

(assert (= (and d!869654 c!533813) b!3176758))

(assert (= (and d!869654 (not c!533813)) b!3176759))

(assert (= (and b!3176759 (not res!1290682)) b!3176760))

(declare-fun m!3433145 () Bool)

(assert (=> b!3176758 m!3433145))

(declare-fun m!3433147 () Bool)

(assert (=> b!3176760 m!3433147))

(assert (=> b!3176680 d!869654))

(declare-fun d!869656 () Bool)

(declare-fun c!533814 () Bool)

(assert (=> d!869656 (= c!533814 ((_ is Node!10552) t!3671))))

(declare-fun e!1978676 () Bool)

(assert (=> d!869656 (= (inv!48449 t!3671) e!1978676)))

(declare-fun b!3176761 () Bool)

(assert (=> b!3176761 (= e!1978676 (inv!48452 t!3671))))

(declare-fun b!3176762 () Bool)

(declare-fun e!1978677 () Bool)

(assert (=> b!3176762 (= e!1978676 e!1978677)))

(declare-fun res!1290683 () Bool)

(assert (=> b!3176762 (= res!1290683 (not ((_ is Leaf!16706) t!3671)))))

(assert (=> b!3176762 (=> res!1290683 e!1978677)))

(declare-fun b!3176763 () Bool)

(assert (=> b!3176763 (= e!1978677 (inv!48453 t!3671))))

(assert (= (and d!869656 c!533814) b!3176761))

(assert (= (and d!869656 (not c!533814)) b!3176762))

(assert (= (and b!3176762 (not res!1290683)) b!3176763))

(declare-fun m!3433149 () Bool)

(assert (=> b!3176761 m!3433149))

(declare-fun m!3433151 () Bool)

(assert (=> b!3176763 m!3433151))

(assert (=> start!297506 d!869656))

(declare-fun d!869658 () Bool)

(declare-fun size!26909 (List!35735) Int)

(assert (=> d!869658 (= (inv!48448 (xs!13670 t!3671)) (<= (size!26909 (innerList!10612 (xs!13670 t!3671))) 2147483647))))

(declare-fun bs!539753 () Bool)

(assert (= bs!539753 d!869658))

(declare-fun m!3433153 () Bool)

(assert (=> bs!539753 m!3433153))

(assert (=> b!3176681 d!869658))

(declare-fun b!3176768 () Bool)

(declare-fun e!1978680 () Bool)

(declare-fun tp_is_empty!17229 () Bool)

(declare-fun tp!1004740 () Bool)

(assert (=> b!3176768 (= e!1978680 (and tp_is_empty!17229 tp!1004740))))

(assert (=> b!3176682 (= tp!1004720 e!1978680)))

(assert (= (and b!3176682 ((_ is Cons!35611) (innerList!10612 (xs!13670 t!3671)))) b!3176768))

(declare-fun tp!1004747 () Bool)

(declare-fun e!1978686 () Bool)

(declare-fun tp!1004749 () Bool)

(declare-fun b!3176777 () Bool)

(assert (=> b!3176777 (= e!1978686 (and (inv!48449 (left!27705 (left!27705 t!3671))) tp!1004749 (inv!48449 (right!28035 (left!27705 t!3671))) tp!1004747))))

(declare-fun b!3176779 () Bool)

(declare-fun e!1978685 () Bool)

(declare-fun tp!1004748 () Bool)

(assert (=> b!3176779 (= e!1978685 tp!1004748)))

(declare-fun b!3176778 () Bool)

(assert (=> b!3176778 (= e!1978686 (and (inv!48448 (xs!13670 (left!27705 t!3671))) e!1978685))))

(assert (=> b!3176680 (= tp!1004722 (and (inv!48449 (left!27705 t!3671)) e!1978686))))

(assert (= (and b!3176680 ((_ is Node!10552) (left!27705 t!3671))) b!3176777))

(assert (= b!3176778 b!3176779))

(assert (= (and b!3176680 ((_ is Leaf!16706) (left!27705 t!3671))) b!3176778))

(declare-fun m!3433155 () Bool)

(assert (=> b!3176777 m!3433155))

(declare-fun m!3433157 () Bool)

(assert (=> b!3176777 m!3433157))

(declare-fun m!3433159 () Bool)

(assert (=> b!3176778 m!3433159))

(assert (=> b!3176680 m!3433075))

(declare-fun e!1978688 () Bool)

(declare-fun tp!1004750 () Bool)

(declare-fun tp!1004752 () Bool)

(declare-fun b!3176780 () Bool)

(assert (=> b!3176780 (= e!1978688 (and (inv!48449 (left!27705 (right!28035 t!3671))) tp!1004752 (inv!48449 (right!28035 (right!28035 t!3671))) tp!1004750))))

(declare-fun b!3176782 () Bool)

(declare-fun e!1978687 () Bool)

(declare-fun tp!1004751 () Bool)

(assert (=> b!3176782 (= e!1978687 tp!1004751)))

(declare-fun b!3176781 () Bool)

(assert (=> b!3176781 (= e!1978688 (and (inv!48448 (xs!13670 (right!28035 t!3671))) e!1978687))))

(assert (=> b!3176680 (= tp!1004721 (and (inv!48449 (right!28035 t!3671)) e!1978688))))

(assert (= (and b!3176680 ((_ is Node!10552) (right!28035 t!3671))) b!3176780))

(assert (= b!3176781 b!3176782))

(assert (= (and b!3176680 ((_ is Leaf!16706) (right!28035 t!3671))) b!3176781))

(declare-fun m!3433161 () Bool)

(assert (=> b!3176780 m!3433161))

(declare-fun m!3433163 () Bool)

(assert (=> b!3176780 m!3433163))

(declare-fun m!3433165 () Bool)

(assert (=> b!3176781 m!3433165))

(assert (=> b!3176680 m!3433077))

(check-sat (not d!869658) (not b!3176724) (not b!3176780) (not b!3176680) (not b!3176760) (not b!3176781) (not b!3176736) (not b!3176777) (not b!3176725) (not b!3176768) (not b!3176761) (not b!3176755) (not b!3176778) (not b!3176779) (not bm!230874) (not b!3176757) tp_is_empty!17229 (not bm!230875) (not b!3176737) (not b!3176763) (not b!3176782) (not b!3176758))
(check-sat)
(get-model)

(declare-fun b!3176853 () Bool)

(declare-fun e!1978728 () Int)

(declare-fun e!1978727 () Int)

(assert (=> b!3176853 (= e!1978728 e!1978727)))

(declare-fun c!533828 () Bool)

(assert (=> b!3176853 (= c!533828 ((_ is Leaf!16706) (left!27705 (left!27705 t!3671))))))

(declare-fun b!3176854 () Bool)

(assert (=> b!3176854 (= e!1978727 0)))

(declare-fun d!869704 () Bool)

(declare-fun lt!1068027 () Int)

(assert (=> d!869704 (>= lt!1068027 0)))

(assert (=> d!869704 (= lt!1068027 e!1978728)))

(declare-fun c!533829 () Bool)

(assert (=> d!869704 (= c!533829 ((_ is Node!10552) (left!27705 (left!27705 t!3671))))))

(assert (=> d!869704 (= (ConcPrimitiveSize!28 (left!27705 (left!27705 t!3671))) lt!1068027)))

(declare-fun b!3176855 () Bool)

(declare-fun call!230884 () Int)

(assert (=> b!3176855 (= e!1978727 (+ 1 (IArrayPrimitiveSize!27 (xs!13670 (left!27705 (left!27705 t!3671)))) call!230884))))

(declare-fun bm!230879 () Bool)

(assert (=> bm!230879 (= call!230884 (BigIntAbs!0 (ite c!533829 (cheight!10763 (left!27705 (left!27705 t!3671))) (csize!21335 (left!27705 (left!27705 t!3671))))))))

(declare-fun b!3176856 () Bool)

(assert (=> b!3176856 (= e!1978728 (+ 1 (ConcPrimitiveSize!28 (left!27705 (left!27705 (left!27705 t!3671)))) (ConcPrimitiveSize!28 (right!28035 (left!27705 (left!27705 t!3671)))) (BigIntAbs!0 (csize!21334 (left!27705 (left!27705 t!3671)))) call!230884))))

(assert (= (and d!869704 c!533829) b!3176856))

(assert (= (and d!869704 (not c!533829)) b!3176853))

(assert (= (and b!3176853 c!533828) b!3176855))

(assert (= (and b!3176853 (not c!533828)) b!3176854))

(assert (= (or b!3176856 b!3176855) bm!230879))

(declare-fun m!3433289 () Bool)

(assert (=> b!3176855 m!3433289))

(declare-fun m!3433291 () Bool)

(assert (=> bm!230879 m!3433291))

(declare-fun m!3433293 () Bool)

(assert (=> b!3176856 m!3433293))

(declare-fun m!3433295 () Bool)

(assert (=> b!3176856 m!3433295))

(declare-fun m!3433297 () Bool)

(assert (=> b!3176856 m!3433297))

(assert (=> b!3176725 d!869704))

(declare-fun b!3176857 () Bool)

(declare-fun e!1978730 () Int)

(declare-fun e!1978729 () Int)

(assert (=> b!3176857 (= e!1978730 e!1978729)))

(declare-fun c!533830 () Bool)

(assert (=> b!3176857 (= c!533830 ((_ is Leaf!16706) (right!28035 (left!27705 t!3671))))))

(declare-fun b!3176858 () Bool)

(assert (=> b!3176858 (= e!1978729 0)))

(declare-fun d!869706 () Bool)

(declare-fun lt!1068028 () Int)

(assert (=> d!869706 (>= lt!1068028 0)))

(assert (=> d!869706 (= lt!1068028 e!1978730)))

(declare-fun c!533831 () Bool)

(assert (=> d!869706 (= c!533831 ((_ is Node!10552) (right!28035 (left!27705 t!3671))))))

(assert (=> d!869706 (= (ConcPrimitiveSize!28 (right!28035 (left!27705 t!3671))) lt!1068028)))

(declare-fun b!3176859 () Bool)

(declare-fun call!230885 () Int)

(assert (=> b!3176859 (= e!1978729 (+ 1 (IArrayPrimitiveSize!27 (xs!13670 (right!28035 (left!27705 t!3671)))) call!230885))))

(declare-fun bm!230880 () Bool)

(assert (=> bm!230880 (= call!230885 (BigIntAbs!0 (ite c!533831 (cheight!10763 (right!28035 (left!27705 t!3671))) (csize!21335 (right!28035 (left!27705 t!3671))))))))

(declare-fun b!3176860 () Bool)

(assert (=> b!3176860 (= e!1978730 (+ 1 (ConcPrimitiveSize!28 (left!27705 (right!28035 (left!27705 t!3671)))) (ConcPrimitiveSize!28 (right!28035 (right!28035 (left!27705 t!3671)))) (BigIntAbs!0 (csize!21334 (right!28035 (left!27705 t!3671)))) call!230885))))

(assert (= (and d!869706 c!533831) b!3176860))

(assert (= (and d!869706 (not c!533831)) b!3176857))

(assert (= (and b!3176857 c!533830) b!3176859))

(assert (= (and b!3176857 (not c!533830)) b!3176858))

(assert (= (or b!3176860 b!3176859) bm!230880))

(declare-fun m!3433299 () Bool)

(assert (=> b!3176859 m!3433299))

(declare-fun m!3433301 () Bool)

(assert (=> bm!230880 m!3433301))

(declare-fun m!3433303 () Bool)

(assert (=> b!3176860 m!3433303))

(declare-fun m!3433305 () Bool)

(assert (=> b!3176860 m!3433305))

(declare-fun m!3433307 () Bool)

(assert (=> b!3176860 m!3433307))

(assert (=> b!3176725 d!869706))

(declare-fun d!869708 () Bool)

(assert (=> d!869708 (= (BigIntAbs!0 (csize!21334 (left!27705 t!3671))) (ite (>= (csize!21334 (left!27705 t!3671)) 0) (csize!21334 (left!27705 t!3671)) (- (csize!21334 (left!27705 t!3671)))))))

(assert (=> b!3176725 d!869708))

(declare-fun d!869710 () Bool)

(declare-fun res!1290717 () Bool)

(declare-fun e!1978733 () Bool)

(assert (=> d!869710 (=> (not res!1290717) (not e!1978733))))

(declare-fun list!12641 (IArray!21109) List!35735)

(assert (=> d!869710 (= res!1290717 (<= (size!26909 (list!12641 (xs!13670 (left!27705 t!3671)))) 512))))

(assert (=> d!869710 (= (inv!48453 (left!27705 t!3671)) e!1978733)))

(declare-fun b!3176865 () Bool)

(declare-fun res!1290718 () Bool)

(assert (=> b!3176865 (=> (not res!1290718) (not e!1978733))))

(assert (=> b!3176865 (= res!1290718 (= (csize!21335 (left!27705 t!3671)) (size!26909 (list!12641 (xs!13670 (left!27705 t!3671))))))))

(declare-fun b!3176866 () Bool)

(assert (=> b!3176866 (= e!1978733 (and (> (csize!21335 (left!27705 t!3671)) 0) (<= (csize!21335 (left!27705 t!3671)) 512)))))

(assert (= (and d!869710 res!1290717) b!3176865))

(assert (= (and b!3176865 res!1290718) b!3176866))

(declare-fun m!3433309 () Bool)

(assert (=> d!869710 m!3433309))

(assert (=> d!869710 m!3433309))

(declare-fun m!3433311 () Bool)

(assert (=> d!869710 m!3433311))

(assert (=> b!3176865 m!3433309))

(assert (=> b!3176865 m!3433309))

(assert (=> b!3176865 m!3433311))

(assert (=> b!3176757 d!869710))

(declare-fun d!869712 () Bool)

(declare-fun lt!1068031 () Int)

(assert (=> d!869712 (>= lt!1068031 0)))

(declare-fun e!1978736 () Int)

(assert (=> d!869712 (= lt!1068031 e!1978736)))

(declare-fun c!533834 () Bool)

(assert (=> d!869712 (= c!533834 ((_ is Nil!35611) (innerList!10612 (xs!13670 t!3671))))))

(assert (=> d!869712 (= (size!26909 (innerList!10612 (xs!13670 t!3671))) lt!1068031)))

(declare-fun b!3176871 () Bool)

(assert (=> b!3176871 (= e!1978736 0)))

(declare-fun b!3176872 () Bool)

(assert (=> b!3176872 (= e!1978736 (+ 1 (size!26909 (t!234830 (innerList!10612 (xs!13670 t!3671))))))))

(assert (= (and d!869712 c!533834) b!3176871))

(assert (= (and d!869712 (not c!533834)) b!3176872))

(declare-fun m!3433313 () Bool)

(assert (=> b!3176872 m!3433313))

(assert (=> d!869658 d!869712))

(declare-fun d!869714 () Bool)

(declare-fun res!1290725 () Bool)

(declare-fun e!1978739 () Bool)

(assert (=> d!869714 (=> (not res!1290725) (not e!1978739))))

(declare-fun size!26911 (Conc!10552) Int)

(assert (=> d!869714 (= res!1290725 (= (csize!21334 (right!28035 t!3671)) (+ (size!26911 (left!27705 (right!28035 t!3671))) (size!26911 (right!28035 (right!28035 t!3671))))))))

(assert (=> d!869714 (= (inv!48452 (right!28035 t!3671)) e!1978739)))

(declare-fun b!3176879 () Bool)

(declare-fun res!1290726 () Bool)

(assert (=> b!3176879 (=> (not res!1290726) (not e!1978739))))

(assert (=> b!3176879 (= res!1290726 (and (not (= (left!27705 (right!28035 t!3671)) Empty!10552)) (not (= (right!28035 (right!28035 t!3671)) Empty!10552))))))

(declare-fun b!3176880 () Bool)

(declare-fun res!1290727 () Bool)

(assert (=> b!3176880 (=> (not res!1290727) (not e!1978739))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1524 (Conc!10552) Int)

(assert (=> b!3176880 (= res!1290727 (= (cheight!10763 (right!28035 t!3671)) (+ (max!0 (height!1524 (left!27705 (right!28035 t!3671))) (height!1524 (right!28035 (right!28035 t!3671)))) 1)))))

(declare-fun b!3176881 () Bool)

(assert (=> b!3176881 (= e!1978739 (<= 0 (cheight!10763 (right!28035 t!3671))))))

(assert (= (and d!869714 res!1290725) b!3176879))

(assert (= (and b!3176879 res!1290726) b!3176880))

(assert (= (and b!3176880 res!1290727) b!3176881))

(declare-fun m!3433315 () Bool)

(assert (=> d!869714 m!3433315))

(declare-fun m!3433317 () Bool)

(assert (=> d!869714 m!3433317))

(declare-fun m!3433319 () Bool)

(assert (=> b!3176880 m!3433319))

(declare-fun m!3433321 () Bool)

(assert (=> b!3176880 m!3433321))

(assert (=> b!3176880 m!3433319))

(assert (=> b!3176880 m!3433321))

(declare-fun m!3433323 () Bool)

(assert (=> b!3176880 m!3433323))

(assert (=> b!3176758 d!869714))

(declare-fun d!869716 () Bool)

(declare-fun c!533835 () Bool)

(assert (=> d!869716 (= c!533835 ((_ is Node!10552) (left!27705 (left!27705 t!3671))))))

(declare-fun e!1978740 () Bool)

(assert (=> d!869716 (= (inv!48449 (left!27705 (left!27705 t!3671))) e!1978740)))

(declare-fun b!3176882 () Bool)

(assert (=> b!3176882 (= e!1978740 (inv!48452 (left!27705 (left!27705 t!3671))))))

(declare-fun b!3176883 () Bool)

(declare-fun e!1978741 () Bool)

(assert (=> b!3176883 (= e!1978740 e!1978741)))

(declare-fun res!1290728 () Bool)

(assert (=> b!3176883 (= res!1290728 (not ((_ is Leaf!16706) (left!27705 (left!27705 t!3671)))))))

(assert (=> b!3176883 (=> res!1290728 e!1978741)))

(declare-fun b!3176884 () Bool)

(assert (=> b!3176884 (= e!1978741 (inv!48453 (left!27705 (left!27705 t!3671))))))

(assert (= (and d!869716 c!533835) b!3176882))

(assert (= (and d!869716 (not c!533835)) b!3176883))

(assert (= (and b!3176883 (not res!1290728)) b!3176884))

(declare-fun m!3433325 () Bool)

(assert (=> b!3176882 m!3433325))

(declare-fun m!3433327 () Bool)

(assert (=> b!3176884 m!3433327))

(assert (=> b!3176777 d!869716))

(declare-fun d!869718 () Bool)

(declare-fun c!533836 () Bool)

(assert (=> d!869718 (= c!533836 ((_ is Node!10552) (right!28035 (left!27705 t!3671))))))

(declare-fun e!1978742 () Bool)

(assert (=> d!869718 (= (inv!48449 (right!28035 (left!27705 t!3671))) e!1978742)))

(declare-fun b!3176885 () Bool)

(assert (=> b!3176885 (= e!1978742 (inv!48452 (right!28035 (left!27705 t!3671))))))

(declare-fun b!3176886 () Bool)

(declare-fun e!1978743 () Bool)

(assert (=> b!3176886 (= e!1978742 e!1978743)))

(declare-fun res!1290729 () Bool)

(assert (=> b!3176886 (= res!1290729 (not ((_ is Leaf!16706) (right!28035 (left!27705 t!3671)))))))

(assert (=> b!3176886 (=> res!1290729 e!1978743)))

(declare-fun b!3176887 () Bool)

(assert (=> b!3176887 (= e!1978743 (inv!48453 (right!28035 (left!27705 t!3671))))))

(assert (= (and d!869718 c!533836) b!3176885))

(assert (= (and d!869718 (not c!533836)) b!3176886))

(assert (= (and b!3176886 (not res!1290729)) b!3176887))

(declare-fun m!3433329 () Bool)

(assert (=> b!3176885 m!3433329))

(declare-fun m!3433331 () Bool)

(assert (=> b!3176887 m!3433331))

(assert (=> b!3176777 d!869718))

(assert (=> b!3176680 d!869652))

(assert (=> b!3176680 d!869654))

(declare-fun d!869720 () Bool)

(declare-fun lt!1068034 () Int)

(assert (=> d!869720 (>= lt!1068034 0)))

(declare-fun ListPrimitiveSize!239 (List!35735) Int)

(assert (=> d!869720 (= lt!1068034 (+ 1 (ListPrimitiveSize!239 (innerList!10612 (xs!13670 (left!27705 t!3671))))))))

(assert (=> d!869720 (= (IArrayPrimitiveSize!27 (xs!13670 (left!27705 t!3671))) lt!1068034)))

(declare-fun bs!539758 () Bool)

(assert (= bs!539758 d!869720))

(declare-fun m!3433333 () Bool)

(assert (=> bs!539758 m!3433333))

(assert (=> b!3176724 d!869720))

(declare-fun d!869722 () Bool)

(assert (=> d!869722 (= (BigIntAbs!0 (ite c!533807 (cheight!10763 (left!27705 t!3671)) (csize!21335 (left!27705 t!3671)))) (ite (>= (ite c!533807 (cheight!10763 (left!27705 t!3671)) (csize!21335 (left!27705 t!3671))) 0) (ite c!533807 (cheight!10763 (left!27705 t!3671)) (csize!21335 (left!27705 t!3671))) (- (ite c!533807 (cheight!10763 (left!27705 t!3671)) (csize!21335 (left!27705 t!3671))))))))

(assert (=> bm!230874 d!869722))

(declare-fun d!869724 () Bool)

(declare-fun res!1290730 () Bool)

(declare-fun e!1978744 () Bool)

(assert (=> d!869724 (=> (not res!1290730) (not e!1978744))))

(assert (=> d!869724 (= res!1290730 (= (csize!21334 (left!27705 t!3671)) (+ (size!26911 (left!27705 (left!27705 t!3671))) (size!26911 (right!28035 (left!27705 t!3671))))))))

(assert (=> d!869724 (= (inv!48452 (left!27705 t!3671)) e!1978744)))

(declare-fun b!3176888 () Bool)

(declare-fun res!1290731 () Bool)

(assert (=> b!3176888 (=> (not res!1290731) (not e!1978744))))

(assert (=> b!3176888 (= res!1290731 (and (not (= (left!27705 (left!27705 t!3671)) Empty!10552)) (not (= (right!28035 (left!27705 t!3671)) Empty!10552))))))

(declare-fun b!3176889 () Bool)

(declare-fun res!1290732 () Bool)

(assert (=> b!3176889 (=> (not res!1290732) (not e!1978744))))

(assert (=> b!3176889 (= res!1290732 (= (cheight!10763 (left!27705 t!3671)) (+ (max!0 (height!1524 (left!27705 (left!27705 t!3671))) (height!1524 (right!28035 (left!27705 t!3671)))) 1)))))

(declare-fun b!3176890 () Bool)

(assert (=> b!3176890 (= e!1978744 (<= 0 (cheight!10763 (left!27705 t!3671))))))

(assert (= (and d!869724 res!1290730) b!3176888))

(assert (= (and b!3176888 res!1290731) b!3176889))

(assert (= (and b!3176889 res!1290732) b!3176890))

(declare-fun m!3433335 () Bool)

(assert (=> d!869724 m!3433335))

(declare-fun m!3433337 () Bool)

(assert (=> d!869724 m!3433337))

(declare-fun m!3433339 () Bool)

(assert (=> b!3176889 m!3433339))

(declare-fun m!3433341 () Bool)

(assert (=> b!3176889 m!3433341))

(assert (=> b!3176889 m!3433339))

(assert (=> b!3176889 m!3433341))

(declare-fun m!3433343 () Bool)

(assert (=> b!3176889 m!3433343))

(assert (=> b!3176755 d!869724))

(declare-fun d!869726 () Bool)

(declare-fun c!533837 () Bool)

(assert (=> d!869726 (= c!533837 ((_ is Node!10552) (left!27705 (right!28035 t!3671))))))

(declare-fun e!1978745 () Bool)

(assert (=> d!869726 (= (inv!48449 (left!27705 (right!28035 t!3671))) e!1978745)))

(declare-fun b!3176891 () Bool)

(assert (=> b!3176891 (= e!1978745 (inv!48452 (left!27705 (right!28035 t!3671))))))

(declare-fun b!3176892 () Bool)

(declare-fun e!1978746 () Bool)

(assert (=> b!3176892 (= e!1978745 e!1978746)))

(declare-fun res!1290733 () Bool)

(assert (=> b!3176892 (= res!1290733 (not ((_ is Leaf!16706) (left!27705 (right!28035 t!3671)))))))

(assert (=> b!3176892 (=> res!1290733 e!1978746)))

(declare-fun b!3176893 () Bool)

(assert (=> b!3176893 (= e!1978746 (inv!48453 (left!27705 (right!28035 t!3671))))))

(assert (= (and d!869726 c!533837) b!3176891))

(assert (= (and d!869726 (not c!533837)) b!3176892))

(assert (= (and b!3176892 (not res!1290733)) b!3176893))

(declare-fun m!3433345 () Bool)

(assert (=> b!3176891 m!3433345))

(declare-fun m!3433347 () Bool)

(assert (=> b!3176893 m!3433347))

(assert (=> b!3176780 d!869726))

(declare-fun d!869728 () Bool)

(declare-fun c!533838 () Bool)

(assert (=> d!869728 (= c!533838 ((_ is Node!10552) (right!28035 (right!28035 t!3671))))))

(declare-fun e!1978747 () Bool)

(assert (=> d!869728 (= (inv!48449 (right!28035 (right!28035 t!3671))) e!1978747)))

(declare-fun b!3176894 () Bool)

(assert (=> b!3176894 (= e!1978747 (inv!48452 (right!28035 (right!28035 t!3671))))))

(declare-fun b!3176895 () Bool)

(declare-fun e!1978748 () Bool)

(assert (=> b!3176895 (= e!1978747 e!1978748)))

(declare-fun res!1290734 () Bool)

(assert (=> b!3176895 (= res!1290734 (not ((_ is Leaf!16706) (right!28035 (right!28035 t!3671)))))))

(assert (=> b!3176895 (=> res!1290734 e!1978748)))

(declare-fun b!3176896 () Bool)

(assert (=> b!3176896 (= e!1978748 (inv!48453 (right!28035 (right!28035 t!3671))))))

(assert (= (and d!869728 c!533838) b!3176894))

(assert (= (and d!869728 (not c!533838)) b!3176895))

(assert (= (and b!3176895 (not res!1290734)) b!3176896))

(declare-fun m!3433349 () Bool)

(assert (=> b!3176894 m!3433349))

(declare-fun m!3433351 () Bool)

(assert (=> b!3176896 m!3433351))

(assert (=> b!3176780 d!869728))

(declare-fun d!869730 () Bool)

(assert (=> d!869730 (= (BigIntAbs!0 (ite c!533809 (cheight!10763 t!3671) (csize!21335 t!3671))) (ite (>= (ite c!533809 (cheight!10763 t!3671) (csize!21335 t!3671)) 0) (ite c!533809 (cheight!10763 t!3671) (csize!21335 t!3671)) (- (ite c!533809 (cheight!10763 t!3671) (csize!21335 t!3671)))))))

(assert (=> bm!230875 d!869730))

(declare-fun d!869732 () Bool)

(declare-fun res!1290735 () Bool)

(declare-fun e!1978749 () Bool)

(assert (=> d!869732 (=> (not res!1290735) (not e!1978749))))

(assert (=> d!869732 (= res!1290735 (<= (size!26909 (list!12641 (xs!13670 t!3671))) 512))))

(assert (=> d!869732 (= (inv!48453 t!3671) e!1978749)))

(declare-fun b!3176897 () Bool)

(declare-fun res!1290736 () Bool)

(assert (=> b!3176897 (=> (not res!1290736) (not e!1978749))))

(assert (=> b!3176897 (= res!1290736 (= (csize!21335 t!3671) (size!26909 (list!12641 (xs!13670 t!3671)))))))

(declare-fun b!3176898 () Bool)

(assert (=> b!3176898 (= e!1978749 (and (> (csize!21335 t!3671) 0) (<= (csize!21335 t!3671) 512)))))

(assert (= (and d!869732 res!1290735) b!3176897))

(assert (= (and b!3176897 res!1290736) b!3176898))

(declare-fun m!3433353 () Bool)

(assert (=> d!869732 m!3433353))

(assert (=> d!869732 m!3433353))

(declare-fun m!3433355 () Bool)

(assert (=> d!869732 m!3433355))

(assert (=> b!3176897 m!3433353))

(assert (=> b!3176897 m!3433353))

(assert (=> b!3176897 m!3433355))

(assert (=> b!3176763 d!869732))

(declare-fun d!869734 () Bool)

(assert (=> d!869734 (= (inv!48448 (xs!13670 (right!28035 t!3671))) (<= (size!26909 (innerList!10612 (xs!13670 (right!28035 t!3671)))) 2147483647))))

(declare-fun bs!539759 () Bool)

(assert (= bs!539759 d!869734))

(declare-fun m!3433357 () Bool)

(assert (=> bs!539759 m!3433357))

(assert (=> b!3176781 d!869734))

(assert (=> b!3176737 d!869638))

(declare-fun b!3176899 () Bool)

(declare-fun e!1978751 () Int)

(declare-fun e!1978750 () Int)

(assert (=> b!3176899 (= e!1978751 e!1978750)))

(declare-fun c!533839 () Bool)

(assert (=> b!3176899 (= c!533839 ((_ is Leaf!16706) (right!28035 t!3671)))))

(declare-fun b!3176900 () Bool)

(assert (=> b!3176900 (= e!1978750 0)))

(declare-fun d!869736 () Bool)

(declare-fun lt!1068035 () Int)

(assert (=> d!869736 (>= lt!1068035 0)))

(assert (=> d!869736 (= lt!1068035 e!1978751)))

(declare-fun c!533840 () Bool)

(assert (=> d!869736 (= c!533840 ((_ is Node!10552) (right!28035 t!3671)))))

(assert (=> d!869736 (= (ConcPrimitiveSize!28 (right!28035 t!3671)) lt!1068035)))

(declare-fun b!3176901 () Bool)

(declare-fun call!230886 () Int)

(assert (=> b!3176901 (= e!1978750 (+ 1 (IArrayPrimitiveSize!27 (xs!13670 (right!28035 t!3671))) call!230886))))

(declare-fun bm!230881 () Bool)

(assert (=> bm!230881 (= call!230886 (BigIntAbs!0 (ite c!533840 (cheight!10763 (right!28035 t!3671)) (csize!21335 (right!28035 t!3671)))))))

(declare-fun b!3176902 () Bool)

(assert (=> b!3176902 (= e!1978751 (+ 1 (ConcPrimitiveSize!28 (left!27705 (right!28035 t!3671))) (ConcPrimitiveSize!28 (right!28035 (right!28035 t!3671))) (BigIntAbs!0 (csize!21334 (right!28035 t!3671))) call!230886))))

(assert (= (and d!869736 c!533840) b!3176902))

(assert (= (and d!869736 (not c!533840)) b!3176899))

(assert (= (and b!3176899 c!533839) b!3176901))

(assert (= (and b!3176899 (not c!533839)) b!3176900))

(assert (= (or b!3176902 b!3176901) bm!230881))

(declare-fun m!3433359 () Bool)

(assert (=> b!3176901 m!3433359))

(declare-fun m!3433361 () Bool)

(assert (=> bm!230881 m!3433361))

(declare-fun m!3433363 () Bool)

(assert (=> b!3176902 m!3433363))

(declare-fun m!3433365 () Bool)

(assert (=> b!3176902 m!3433365))

(declare-fun m!3433367 () Bool)

(assert (=> b!3176902 m!3433367))

(assert (=> b!3176737 d!869736))

(declare-fun d!869738 () Bool)

(assert (=> d!869738 (= (BigIntAbs!0 (csize!21334 t!3671)) (ite (>= (csize!21334 t!3671) 0) (csize!21334 t!3671) (- (csize!21334 t!3671))))))

(assert (=> b!3176737 d!869738))

(declare-fun d!869740 () Bool)

(assert (=> d!869740 (= (inv!48448 (xs!13670 (left!27705 t!3671))) (<= (size!26909 (innerList!10612 (xs!13670 (left!27705 t!3671)))) 2147483647))))

(declare-fun bs!539760 () Bool)

(assert (= bs!539760 d!869740))

(declare-fun m!3433369 () Bool)

(assert (=> bs!539760 m!3433369))

(assert (=> b!3176778 d!869740))

(declare-fun d!869742 () Bool)

(declare-fun res!1290737 () Bool)

(declare-fun e!1978752 () Bool)

(assert (=> d!869742 (=> (not res!1290737) (not e!1978752))))

(assert (=> d!869742 (= res!1290737 (<= (size!26909 (list!12641 (xs!13670 (right!28035 t!3671)))) 512))))

(assert (=> d!869742 (= (inv!48453 (right!28035 t!3671)) e!1978752)))

(declare-fun b!3176903 () Bool)

(declare-fun res!1290738 () Bool)

(assert (=> b!3176903 (=> (not res!1290738) (not e!1978752))))

(assert (=> b!3176903 (= res!1290738 (= (csize!21335 (right!28035 t!3671)) (size!26909 (list!12641 (xs!13670 (right!28035 t!3671))))))))

(declare-fun b!3176904 () Bool)

(assert (=> b!3176904 (= e!1978752 (and (> (csize!21335 (right!28035 t!3671)) 0) (<= (csize!21335 (right!28035 t!3671)) 512)))))

(assert (= (and d!869742 res!1290737) b!3176903))

(assert (= (and b!3176903 res!1290738) b!3176904))

(declare-fun m!3433371 () Bool)

(assert (=> d!869742 m!3433371))

(assert (=> d!869742 m!3433371))

(declare-fun m!3433373 () Bool)

(assert (=> d!869742 m!3433373))

(assert (=> b!3176903 m!3433371))

(assert (=> b!3176903 m!3433371))

(assert (=> b!3176903 m!3433373))

(assert (=> b!3176760 d!869742))

(declare-fun d!869744 () Bool)

(declare-fun res!1290739 () Bool)

(declare-fun e!1978753 () Bool)

(assert (=> d!869744 (=> (not res!1290739) (not e!1978753))))

(assert (=> d!869744 (= res!1290739 (= (csize!21334 t!3671) (+ (size!26911 (left!27705 t!3671)) (size!26911 (right!28035 t!3671)))))))

(assert (=> d!869744 (= (inv!48452 t!3671) e!1978753)))

(declare-fun b!3176905 () Bool)

(declare-fun res!1290740 () Bool)

(assert (=> b!3176905 (=> (not res!1290740) (not e!1978753))))

(assert (=> b!3176905 (= res!1290740 (and (not (= (left!27705 t!3671) Empty!10552)) (not (= (right!28035 t!3671) Empty!10552))))))

(declare-fun b!3176906 () Bool)

(declare-fun res!1290741 () Bool)

(assert (=> b!3176906 (=> (not res!1290741) (not e!1978753))))

(assert (=> b!3176906 (= res!1290741 (= (cheight!10763 t!3671) (+ (max!0 (height!1524 (left!27705 t!3671)) (height!1524 (right!28035 t!3671))) 1)))))

(declare-fun b!3176907 () Bool)

(assert (=> b!3176907 (= e!1978753 (<= 0 (cheight!10763 t!3671)))))

(assert (= (and d!869744 res!1290739) b!3176905))

(assert (= (and b!3176905 res!1290740) b!3176906))

(assert (= (and b!3176906 res!1290741) b!3176907))

(declare-fun m!3433375 () Bool)

(assert (=> d!869744 m!3433375))

(declare-fun m!3433377 () Bool)

(assert (=> d!869744 m!3433377))

(declare-fun m!3433379 () Bool)

(assert (=> b!3176906 m!3433379))

(declare-fun m!3433381 () Bool)

(assert (=> b!3176906 m!3433381))

(assert (=> b!3176906 m!3433379))

(assert (=> b!3176906 m!3433381))

(declare-fun m!3433383 () Bool)

(assert (=> b!3176906 m!3433383))

(assert (=> b!3176761 d!869744))

(declare-fun d!869746 () Bool)

(declare-fun lt!1068036 () Int)

(assert (=> d!869746 (>= lt!1068036 0)))

(assert (=> d!869746 (= lt!1068036 (+ 1 (ListPrimitiveSize!239 (innerList!10612 (xs!13670 t!3671)))))))

(assert (=> d!869746 (= (IArrayPrimitiveSize!27 (xs!13670 t!3671)) lt!1068036)))

(declare-fun bs!539761 () Bool)

(assert (= bs!539761 d!869746))

(declare-fun m!3433385 () Bool)

(assert (=> bs!539761 m!3433385))

(assert (=> b!3176736 d!869746))

(declare-fun b!3176908 () Bool)

(declare-fun tp!1004770 () Bool)

(declare-fun tp!1004768 () Bool)

(declare-fun e!1978755 () Bool)

(assert (=> b!3176908 (= e!1978755 (and (inv!48449 (left!27705 (left!27705 (right!28035 t!3671)))) tp!1004770 (inv!48449 (right!28035 (left!27705 (right!28035 t!3671)))) tp!1004768))))

(declare-fun b!3176910 () Bool)

(declare-fun e!1978754 () Bool)

(declare-fun tp!1004769 () Bool)

(assert (=> b!3176910 (= e!1978754 tp!1004769)))

(declare-fun b!3176909 () Bool)

(assert (=> b!3176909 (= e!1978755 (and (inv!48448 (xs!13670 (left!27705 (right!28035 t!3671)))) e!1978754))))

(assert (=> b!3176780 (= tp!1004752 (and (inv!48449 (left!27705 (right!28035 t!3671))) e!1978755))))

(assert (= (and b!3176780 ((_ is Node!10552) (left!27705 (right!28035 t!3671)))) b!3176908))

(assert (= b!3176909 b!3176910))

(assert (= (and b!3176780 ((_ is Leaf!16706) (left!27705 (right!28035 t!3671)))) b!3176909))

(declare-fun m!3433387 () Bool)

(assert (=> b!3176908 m!3433387))

(declare-fun m!3433389 () Bool)

(assert (=> b!3176908 m!3433389))

(declare-fun m!3433391 () Bool)

(assert (=> b!3176909 m!3433391))

(assert (=> b!3176780 m!3433161))

(declare-fun b!3176911 () Bool)

(declare-fun tp!1004771 () Bool)

(declare-fun tp!1004773 () Bool)

(declare-fun e!1978757 () Bool)

(assert (=> b!3176911 (= e!1978757 (and (inv!48449 (left!27705 (right!28035 (right!28035 t!3671)))) tp!1004773 (inv!48449 (right!28035 (right!28035 (right!28035 t!3671)))) tp!1004771))))

(declare-fun b!3176913 () Bool)

(declare-fun e!1978756 () Bool)

(declare-fun tp!1004772 () Bool)

(assert (=> b!3176913 (= e!1978756 tp!1004772)))

(declare-fun b!3176912 () Bool)

(assert (=> b!3176912 (= e!1978757 (and (inv!48448 (xs!13670 (right!28035 (right!28035 t!3671)))) e!1978756))))

(assert (=> b!3176780 (= tp!1004750 (and (inv!48449 (right!28035 (right!28035 t!3671))) e!1978757))))

(assert (= (and b!3176780 ((_ is Node!10552) (right!28035 (right!28035 t!3671)))) b!3176911))

(assert (= b!3176912 b!3176913))

(assert (= (and b!3176780 ((_ is Leaf!16706) (right!28035 (right!28035 t!3671)))) b!3176912))

(declare-fun m!3433393 () Bool)

(assert (=> b!3176911 m!3433393))

(declare-fun m!3433395 () Bool)

(assert (=> b!3176911 m!3433395))

(declare-fun m!3433397 () Bool)

(assert (=> b!3176912 m!3433397))

(assert (=> b!3176780 m!3433163))

(declare-fun tp!1004776 () Bool)

(declare-fun tp!1004774 () Bool)

(declare-fun e!1978759 () Bool)

(declare-fun b!3176914 () Bool)

(assert (=> b!3176914 (= e!1978759 (and (inv!48449 (left!27705 (left!27705 (left!27705 t!3671)))) tp!1004776 (inv!48449 (right!28035 (left!27705 (left!27705 t!3671)))) tp!1004774))))

(declare-fun b!3176916 () Bool)

(declare-fun e!1978758 () Bool)

(declare-fun tp!1004775 () Bool)

(assert (=> b!3176916 (= e!1978758 tp!1004775)))

(declare-fun b!3176915 () Bool)

(assert (=> b!3176915 (= e!1978759 (and (inv!48448 (xs!13670 (left!27705 (left!27705 t!3671)))) e!1978758))))

(assert (=> b!3176777 (= tp!1004749 (and (inv!48449 (left!27705 (left!27705 t!3671))) e!1978759))))

(assert (= (and b!3176777 ((_ is Node!10552) (left!27705 (left!27705 t!3671)))) b!3176914))

(assert (= b!3176915 b!3176916))

(assert (= (and b!3176777 ((_ is Leaf!16706) (left!27705 (left!27705 t!3671)))) b!3176915))

(declare-fun m!3433399 () Bool)

(assert (=> b!3176914 m!3433399))

(declare-fun m!3433401 () Bool)

(assert (=> b!3176914 m!3433401))

(declare-fun m!3433403 () Bool)

(assert (=> b!3176915 m!3433403))

(assert (=> b!3176777 m!3433155))

(declare-fun tp!1004777 () Bool)

(declare-fun e!1978761 () Bool)

(declare-fun tp!1004779 () Bool)

(declare-fun b!3176917 () Bool)

(assert (=> b!3176917 (= e!1978761 (and (inv!48449 (left!27705 (right!28035 (left!27705 t!3671)))) tp!1004779 (inv!48449 (right!28035 (right!28035 (left!27705 t!3671)))) tp!1004777))))

(declare-fun b!3176919 () Bool)

(declare-fun e!1978760 () Bool)

(declare-fun tp!1004778 () Bool)

(assert (=> b!3176919 (= e!1978760 tp!1004778)))

(declare-fun b!3176918 () Bool)

(assert (=> b!3176918 (= e!1978761 (and (inv!48448 (xs!13670 (right!28035 (left!27705 t!3671)))) e!1978760))))

(assert (=> b!3176777 (= tp!1004747 (and (inv!48449 (right!28035 (left!27705 t!3671))) e!1978761))))

(assert (= (and b!3176777 ((_ is Node!10552) (right!28035 (left!27705 t!3671)))) b!3176917))

(assert (= b!3176918 b!3176919))

(assert (= (and b!3176777 ((_ is Leaf!16706) (right!28035 (left!27705 t!3671)))) b!3176918))

(declare-fun m!3433405 () Bool)

(assert (=> b!3176917 m!3433405))

(declare-fun m!3433407 () Bool)

(assert (=> b!3176917 m!3433407))

(declare-fun m!3433409 () Bool)

(assert (=> b!3176918 m!3433409))

(assert (=> b!3176777 m!3433157))

(declare-fun b!3176920 () Bool)

(declare-fun e!1978762 () Bool)

(declare-fun tp!1004780 () Bool)

(assert (=> b!3176920 (= e!1978762 (and tp_is_empty!17229 tp!1004780))))

(assert (=> b!3176782 (= tp!1004751 e!1978762)))

(assert (= (and b!3176782 ((_ is Cons!35611) (innerList!10612 (xs!13670 (right!28035 t!3671))))) b!3176920))

(declare-fun b!3176921 () Bool)

(declare-fun e!1978763 () Bool)

(declare-fun tp!1004781 () Bool)

(assert (=> b!3176921 (= e!1978763 (and tp_is_empty!17229 tp!1004781))))

(assert (=> b!3176779 (= tp!1004748 e!1978763)))

(assert (= (and b!3176779 ((_ is Cons!35611) (innerList!10612 (xs!13670 (left!27705 t!3671))))) b!3176921))

(declare-fun b!3176922 () Bool)

(declare-fun e!1978764 () Bool)

(declare-fun tp!1004782 () Bool)

(assert (=> b!3176922 (= e!1978764 (and tp_is_empty!17229 tp!1004782))))

(assert (=> b!3176768 (= tp!1004740 e!1978764)))

(assert (= (and b!3176768 ((_ is Cons!35611) (t!234830 (innerList!10612 (xs!13670 t!3671))))) b!3176922))

(check-sat (not b!3176896) (not b!3176880) (not b!3176891) (not b!3176889) (not b!3176780) (not bm!230880) (not d!869740) tp_is_empty!17229 (not d!869744) (not b!3176906) (not bm!230879) (not d!869724) (not b!3176893) (not b!3176872) (not d!869714) (not b!3176855) (not b!3176859) (not b!3176908) (not d!869732) (not d!869710) (not d!869720) (not b!3176903) (not b!3176913) (not b!3176914) (not b!3176885) (not b!3176915) (not b!3176912) (not b!3176910) (not b!3176856) (not b!3176920) (not b!3176860) (not b!3176897) (not b!3176887) (not b!3176865) (not b!3176919) (not b!3176882) (not b!3176901) (not b!3176902) (not bm!230881) (not b!3176922) (not b!3176916) (not b!3176909) (not b!3176911) (not b!3176777) (not b!3176921) (not b!3176884) (not b!3176894) (not d!869746) (not d!869742) (not b!3176918) (not b!3176917) (not d!869734))
(check-sat)
