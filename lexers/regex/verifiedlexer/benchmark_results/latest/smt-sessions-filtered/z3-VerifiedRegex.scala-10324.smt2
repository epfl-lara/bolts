; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536546 () Bool)

(assert start!536546)

(declare-fun tp!1419378 () Bool)

(declare-fun b!5091594 () Bool)

(declare-fun tp!1419379 () Bool)

(declare-fun e!3175324 () Bool)

(declare-datatypes ((T!105622 0))(
  ( (T!105623 (val!23724 Int)) )
))
(declare-datatypes ((List!58649 0))(
  ( (Nil!58525) (Cons!58525 (h!64973 T!105622) (t!371568 List!58649)) )
))
(declare-datatypes ((IArray!31341 0))(
  ( (IArray!31342 (innerList!15728 List!58649)) )
))
(declare-datatypes ((Conc!15640 0))(
  ( (Node!15640 (left!42932 Conc!15640) (right!43262 Conc!15640) (csize!31510 Int) (cheight!15851 Int)) (Leaf!25965 (xs!19022 IArray!31341) (csize!31511 Int)) (Empty!15640) )
))
(declare-fun t!3643 () Conc!15640)

(declare-fun inv!77960 (Conc!15640) Bool)

(assert (=> b!5091594 (= e!3175324 (and (inv!77960 (left!42932 t!3643)) tp!1419378 (inv!77960 (right!43262 t!3643)) tp!1419379))))

(declare-fun b!5091595 () Bool)

(declare-fun res!2167007 () Bool)

(declare-fun e!3175323 () Bool)

(assert (=> b!5091595 (=> (not res!2167007) (not e!3175323))))

(declare-fun i!607 () Int)

(declare-fun size!39223 (Conc!15640) Int)

(assert (=> b!5091595 (= res!2167007 (< i!607 (size!39223 t!3643)))))

(declare-fun b!5091596 () Bool)

(declare-fun e!3175321 () Bool)

(assert (=> b!5091596 (= e!3175323 e!3175321)))

(declare-fun res!2167005 () Bool)

(assert (=> b!5091596 (=> (not res!2167005) (not e!3175321))))

(assert (=> b!5091596 (= res!2167005 (< i!607 (size!39223 (left!42932 t!3643))))))

(declare-fun lt!2092524 () Bool)

(declare-fun appendIndex!421 (List!58649 List!58649 Int) Bool)

(declare-fun list!19108 (Conc!15640) List!58649)

(assert (=> b!5091596 (= lt!2092524 (appendIndex!421 (list!19108 (left!42932 t!3643)) (list!19108 (right!43262 t!3643)) i!607))))

(declare-fun b!5091597 () Bool)

(declare-fun e!3175322 () Bool)

(declare-fun inv!77961 (IArray!31341) Bool)

(assert (=> b!5091597 (= e!3175324 (and (inv!77961 (xs!19022 t!3643)) e!3175322))))

(declare-fun res!2167008 () Bool)

(assert (=> start!536546 (=> (not res!2167008) (not e!3175323))))

(assert (=> start!536546 (= res!2167008 (<= 0 i!607))))

(assert (=> start!536546 e!3175323))

(assert (=> start!536546 true))

(assert (=> start!536546 (and (inv!77960 t!3643) e!3175324)))

(declare-fun b!5091598 () Bool)

(declare-fun apply!14270 (Conc!15640 Int) T!105622)

(declare-fun apply!14271 (List!58649 Int) T!105622)

(assert (=> b!5091598 (= e!3175321 (not (= (apply!14270 (left!42932 t!3643) i!607) (apply!14271 (list!19108 t!3643) i!607))))))

(declare-fun b!5091599 () Bool)

(declare-fun tp!1419377 () Bool)

(assert (=> b!5091599 (= e!3175322 tp!1419377)))

(declare-fun b!5091600 () Bool)

(declare-fun res!2167006 () Bool)

(assert (=> b!5091600 (=> (not res!2167006) (not e!3175323))))

(get-info :version)

(assert (=> b!5091600 (= res!2167006 (and (not ((_ is Leaf!25965) t!3643)) ((_ is Node!15640) t!3643)))))

(assert (= (and start!536546 res!2167008) b!5091595))

(assert (= (and b!5091595 res!2167007) b!5091600))

(assert (= (and b!5091600 res!2167006) b!5091596))

(assert (= (and b!5091596 res!2167005) b!5091598))

(assert (= (and start!536546 ((_ is Node!15640) t!3643)) b!5091594))

(assert (= b!5091597 b!5091599))

(assert (= (and start!536546 ((_ is Leaf!25965) t!3643)) b!5091597))

(declare-fun m!6149806 () Bool)

(assert (=> b!5091598 m!6149806))

(declare-fun m!6149808 () Bool)

(assert (=> b!5091598 m!6149808))

(assert (=> b!5091598 m!6149808))

(declare-fun m!6149810 () Bool)

(assert (=> b!5091598 m!6149810))

(declare-fun m!6149812 () Bool)

(assert (=> start!536546 m!6149812))

(declare-fun m!6149814 () Bool)

(assert (=> b!5091597 m!6149814))

(declare-fun m!6149816 () Bool)

(assert (=> b!5091594 m!6149816))

(declare-fun m!6149818 () Bool)

(assert (=> b!5091594 m!6149818))

(declare-fun m!6149820 () Bool)

(assert (=> b!5091596 m!6149820))

(declare-fun m!6149822 () Bool)

(assert (=> b!5091596 m!6149822))

(declare-fun m!6149824 () Bool)

(assert (=> b!5091596 m!6149824))

(assert (=> b!5091596 m!6149822))

(assert (=> b!5091596 m!6149824))

(declare-fun m!6149826 () Bool)

(assert (=> b!5091596 m!6149826))

(declare-fun m!6149828 () Bool)

(assert (=> b!5091595 m!6149828))

(check-sat (not b!5091597) (not start!536546) (not b!5091598) (not b!5091596) (not b!5091595) (not b!5091599) (not b!5091594))
(check-sat)
(get-model)

(declare-fun d!1648163 () Bool)

(declare-fun size!39224 (List!58649) Int)

(assert (=> d!1648163 (= (inv!77961 (xs!19022 t!3643)) (<= (size!39224 (innerList!15728 (xs!19022 t!3643))) 2147483647))))

(declare-fun bs!1191178 () Bool)

(assert (= bs!1191178 d!1648163))

(declare-fun m!6149830 () Bool)

(assert (=> bs!1191178 m!6149830))

(assert (=> b!5091597 d!1648163))

(declare-fun d!1648165 () Bool)

(declare-fun c!875044 () Bool)

(assert (=> d!1648165 (= c!875044 ((_ is Node!15640) t!3643))))

(declare-fun e!3175335 () Bool)

(assert (=> d!1648165 (= (inv!77960 t!3643) e!3175335)))

(declare-fun b!5091616 () Bool)

(declare-fun inv!77964 (Conc!15640) Bool)

(assert (=> b!5091616 (= e!3175335 (inv!77964 t!3643))))

(declare-fun b!5091617 () Bool)

(declare-fun e!3175336 () Bool)

(assert (=> b!5091617 (= e!3175335 e!3175336)))

(declare-fun res!2167014 () Bool)

(assert (=> b!5091617 (= res!2167014 (not ((_ is Leaf!25965) t!3643)))))

(assert (=> b!5091617 (=> res!2167014 e!3175336)))

(declare-fun b!5091618 () Bool)

(declare-fun inv!77965 (Conc!15640) Bool)

(assert (=> b!5091618 (= e!3175336 (inv!77965 t!3643))))

(assert (= (and d!1648165 c!875044) b!5091616))

(assert (= (and d!1648165 (not c!875044)) b!5091617))

(assert (= (and b!5091617 (not res!2167014)) b!5091618))

(declare-fun m!6149836 () Bool)

(assert (=> b!5091616 m!6149836))

(declare-fun m!6149838 () Bool)

(assert (=> b!5091618 m!6149838))

(assert (=> start!536546 d!1648165))

(declare-fun d!1648169 () Bool)

(declare-fun lt!2092530 () Int)

(assert (=> d!1648169 (= lt!2092530 (size!39224 (list!19108 (left!42932 t!3643))))))

(assert (=> d!1648169 (= lt!2092530 (ite ((_ is Empty!15640) (left!42932 t!3643)) 0 (ite ((_ is Leaf!25965) (left!42932 t!3643)) (csize!31511 (left!42932 t!3643)) (csize!31510 (left!42932 t!3643)))))))

(assert (=> d!1648169 (= (size!39223 (left!42932 t!3643)) lt!2092530)))

(declare-fun bs!1191180 () Bool)

(assert (= bs!1191180 d!1648169))

(assert (=> bs!1191180 m!6149822))

(assert (=> bs!1191180 m!6149822))

(declare-fun m!6149842 () Bool)

(assert (=> bs!1191180 m!6149842))

(assert (=> b!5091596 d!1648169))

(declare-fun b!5091649 () Bool)

(declare-fun e!3175357 () T!105622)

(declare-fun call!354685 () T!105622)

(assert (=> b!5091649 (= e!3175357 call!354685)))

(declare-fun b!5091650 () Bool)

(assert (=> b!5091650 (= e!3175357 call!354685)))

(declare-fun d!1648173 () Bool)

(declare-fun ++!12840 (List!58649 List!58649) List!58649)

(assert (=> d!1648173 (= (apply!14271 (++!12840 (list!19108 (left!42932 t!3643)) (list!19108 (right!43262 t!3643))) i!607) e!3175357)))

(declare-fun c!875055 () Bool)

(assert (=> d!1648173 (= c!875055 (< i!607 (size!39224 (list!19108 (left!42932 t!3643)))))))

(declare-fun lt!2092536 () Bool)

(declare-fun e!3175359 () Bool)

(assert (=> d!1648173 (= lt!2092536 e!3175359)))

(declare-fun res!2167025 () Bool)

(assert (=> d!1648173 (=> res!2167025 e!3175359)))

(assert (=> d!1648173 (= res!2167025 (or ((_ is Nil!58525) (list!19108 (left!42932 t!3643))) (= i!607 0)))))

(declare-fun e!3175358 () Bool)

(assert (=> d!1648173 e!3175358))

(declare-fun res!2167026 () Bool)

(assert (=> d!1648173 (=> (not res!2167026) (not e!3175358))))

(assert (=> d!1648173 (= res!2167026 (<= 0 i!607))))

(assert (=> d!1648173 (= (appendIndex!421 (list!19108 (left!42932 t!3643)) (list!19108 (right!43262 t!3643)) i!607) true)))

(declare-fun b!5091651 () Bool)

(assert (=> b!5091651 (= e!3175359 (appendIndex!421 (t!371568 (list!19108 (left!42932 t!3643))) (list!19108 (right!43262 t!3643)) (- i!607 1)))))

(declare-fun bm!354680 () Bool)

(declare-fun e!3175360 () Int)

(assert (=> bm!354680 (= call!354685 (apply!14271 (ite c!875055 (list!19108 (left!42932 t!3643)) (list!19108 (right!43262 t!3643))) e!3175360))))

(declare-fun c!875056 () Bool)

(assert (=> bm!354680 (= c!875056 c!875055)))

(declare-fun b!5091652 () Bool)

(assert (=> b!5091652 (= e!3175360 (- i!607 (size!39224 (list!19108 (left!42932 t!3643)))))))

(declare-fun b!5091653 () Bool)

(assert (=> b!5091653 (= e!3175360 i!607)))

(declare-fun b!5091654 () Bool)

(assert (=> b!5091654 (= e!3175358 (< i!607 (+ (size!39224 (list!19108 (left!42932 t!3643))) (size!39224 (list!19108 (right!43262 t!3643))))))))

(assert (= (and d!1648173 res!2167026) b!5091654))

(assert (= (and d!1648173 (not res!2167025)) b!5091651))

(assert (= (and d!1648173 c!875055) b!5091650))

(assert (= (and d!1648173 (not c!875055)) b!5091649))

(assert (= (or b!5091650 b!5091649) bm!354680))

(assert (= (and bm!354680 c!875056) b!5091653))

(assert (= (and bm!354680 (not c!875056)) b!5091652))

(assert (=> b!5091651 m!6149824))

(declare-fun m!6149854 () Bool)

(assert (=> b!5091651 m!6149854))

(declare-fun m!6149856 () Bool)

(assert (=> bm!354680 m!6149856))

(assert (=> d!1648173 m!6149822))

(assert (=> d!1648173 m!6149824))

(declare-fun m!6149858 () Bool)

(assert (=> d!1648173 m!6149858))

(assert (=> d!1648173 m!6149858))

(declare-fun m!6149860 () Bool)

(assert (=> d!1648173 m!6149860))

(assert (=> d!1648173 m!6149822))

(assert (=> d!1648173 m!6149842))

(assert (=> b!5091654 m!6149822))

(assert (=> b!5091654 m!6149842))

(assert (=> b!5091654 m!6149824))

(declare-fun m!6149862 () Bool)

(assert (=> b!5091654 m!6149862))

(assert (=> b!5091652 m!6149822))

(assert (=> b!5091652 m!6149842))

(assert (=> b!5091596 d!1648173))

(declare-fun b!5091680 () Bool)

(declare-fun e!3175373 () List!58649)

(declare-fun e!3175374 () List!58649)

(assert (=> b!5091680 (= e!3175373 e!3175374)))

(declare-fun c!875070 () Bool)

(assert (=> b!5091680 (= c!875070 ((_ is Leaf!25965) (left!42932 t!3643)))))

(declare-fun b!5091682 () Bool)

(assert (=> b!5091682 (= e!3175374 (++!12840 (list!19108 (left!42932 (left!42932 t!3643))) (list!19108 (right!43262 (left!42932 t!3643)))))))

(declare-fun d!1648177 () Bool)

(declare-fun c!875069 () Bool)

(assert (=> d!1648177 (= c!875069 ((_ is Empty!15640) (left!42932 t!3643)))))

(assert (=> d!1648177 (= (list!19108 (left!42932 t!3643)) e!3175373)))

(declare-fun b!5091681 () Bool)

(declare-fun list!19110 (IArray!31341) List!58649)

(assert (=> b!5091681 (= e!3175374 (list!19110 (xs!19022 (left!42932 t!3643))))))

(declare-fun b!5091679 () Bool)

(assert (=> b!5091679 (= e!3175373 Nil!58525)))

(assert (= (and d!1648177 c!875069) b!5091679))

(assert (= (and d!1648177 (not c!875069)) b!5091680))

(assert (= (and b!5091680 c!875070) b!5091681))

(assert (= (and b!5091680 (not c!875070)) b!5091682))

(declare-fun m!6149880 () Bool)

(assert (=> b!5091682 m!6149880))

(declare-fun m!6149882 () Bool)

(assert (=> b!5091682 m!6149882))

(assert (=> b!5091682 m!6149880))

(assert (=> b!5091682 m!6149882))

(declare-fun m!6149884 () Bool)

(assert (=> b!5091682 m!6149884))

(declare-fun m!6149886 () Bool)

(assert (=> b!5091681 m!6149886))

(assert (=> b!5091596 d!1648177))

(declare-fun b!5091684 () Bool)

(declare-fun e!3175375 () List!58649)

(declare-fun e!3175376 () List!58649)

(assert (=> b!5091684 (= e!3175375 e!3175376)))

(declare-fun c!875072 () Bool)

(assert (=> b!5091684 (= c!875072 ((_ is Leaf!25965) (right!43262 t!3643)))))

(declare-fun b!5091686 () Bool)

(assert (=> b!5091686 (= e!3175376 (++!12840 (list!19108 (left!42932 (right!43262 t!3643))) (list!19108 (right!43262 (right!43262 t!3643)))))))

(declare-fun d!1648183 () Bool)

(declare-fun c!875071 () Bool)

(assert (=> d!1648183 (= c!875071 ((_ is Empty!15640) (right!43262 t!3643)))))

(assert (=> d!1648183 (= (list!19108 (right!43262 t!3643)) e!3175375)))

(declare-fun b!5091685 () Bool)

(assert (=> b!5091685 (= e!3175376 (list!19110 (xs!19022 (right!43262 t!3643))))))

(declare-fun b!5091683 () Bool)

(assert (=> b!5091683 (= e!3175375 Nil!58525)))

(assert (= (and d!1648183 c!875071) b!5091683))

(assert (= (and d!1648183 (not c!875071)) b!5091684))

(assert (= (and b!5091684 c!875072) b!5091685))

(assert (= (and b!5091684 (not c!875072)) b!5091686))

(declare-fun m!6149888 () Bool)

(assert (=> b!5091686 m!6149888))

(declare-fun m!6149890 () Bool)

(assert (=> b!5091686 m!6149890))

(assert (=> b!5091686 m!6149888))

(assert (=> b!5091686 m!6149890))

(declare-fun m!6149892 () Bool)

(assert (=> b!5091686 m!6149892))

(declare-fun m!6149894 () Bool)

(assert (=> b!5091685 m!6149894))

(assert (=> b!5091596 d!1648183))

(declare-fun d!1648185 () Bool)

(declare-fun c!875073 () Bool)

(assert (=> d!1648185 (= c!875073 ((_ is Node!15640) (left!42932 t!3643)))))

(declare-fun e!3175377 () Bool)

(assert (=> d!1648185 (= (inv!77960 (left!42932 t!3643)) e!3175377)))

(declare-fun b!5091687 () Bool)

(assert (=> b!5091687 (= e!3175377 (inv!77964 (left!42932 t!3643)))))

(declare-fun b!5091688 () Bool)

(declare-fun e!3175378 () Bool)

(assert (=> b!5091688 (= e!3175377 e!3175378)))

(declare-fun res!2167027 () Bool)

(assert (=> b!5091688 (= res!2167027 (not ((_ is Leaf!25965) (left!42932 t!3643))))))

(assert (=> b!5091688 (=> res!2167027 e!3175378)))

(declare-fun b!5091689 () Bool)

(assert (=> b!5091689 (= e!3175378 (inv!77965 (left!42932 t!3643)))))

(assert (= (and d!1648185 c!875073) b!5091687))

(assert (= (and d!1648185 (not c!875073)) b!5091688))

(assert (= (and b!5091688 (not res!2167027)) b!5091689))

(declare-fun m!6149896 () Bool)

(assert (=> b!5091687 m!6149896))

(declare-fun m!6149898 () Bool)

(assert (=> b!5091689 m!6149898))

(assert (=> b!5091594 d!1648185))

(declare-fun d!1648187 () Bool)

(declare-fun c!875074 () Bool)

(assert (=> d!1648187 (= c!875074 ((_ is Node!15640) (right!43262 t!3643)))))

(declare-fun e!3175379 () Bool)

(assert (=> d!1648187 (= (inv!77960 (right!43262 t!3643)) e!3175379)))

(declare-fun b!5091690 () Bool)

(assert (=> b!5091690 (= e!3175379 (inv!77964 (right!43262 t!3643)))))

(declare-fun b!5091691 () Bool)

(declare-fun e!3175380 () Bool)

(assert (=> b!5091691 (= e!3175379 e!3175380)))

(declare-fun res!2167028 () Bool)

(assert (=> b!5091691 (= res!2167028 (not ((_ is Leaf!25965) (right!43262 t!3643))))))

(assert (=> b!5091691 (=> res!2167028 e!3175380)))

(declare-fun b!5091692 () Bool)

(assert (=> b!5091692 (= e!3175380 (inv!77965 (right!43262 t!3643)))))

(assert (= (and d!1648187 c!875074) b!5091690))

(assert (= (and d!1648187 (not c!875074)) b!5091691))

(assert (= (and b!5091691 (not res!2167028)) b!5091692))

(declare-fun m!6149900 () Bool)

(assert (=> b!5091690 m!6149900))

(declare-fun m!6149902 () Bool)

(assert (=> b!5091692 m!6149902))

(assert (=> b!5091594 d!1648187))

(declare-fun d!1648189 () Bool)

(declare-fun lt!2092537 () Int)

(assert (=> d!1648189 (= lt!2092537 (size!39224 (list!19108 t!3643)))))

(assert (=> d!1648189 (= lt!2092537 (ite ((_ is Empty!15640) t!3643) 0 (ite ((_ is Leaf!25965) t!3643) (csize!31511 t!3643) (csize!31510 t!3643))))))

(assert (=> d!1648189 (= (size!39223 t!3643) lt!2092537)))

(declare-fun bs!1191181 () Bool)

(assert (= bs!1191181 d!1648189))

(assert (=> bs!1191181 m!6149808))

(assert (=> bs!1191181 m!6149808))

(declare-fun m!6149904 () Bool)

(assert (=> bs!1191181 m!6149904))

(assert (=> b!5091595 d!1648189))

(declare-fun b!5091728 () Bool)

(declare-fun e!3175402 () T!105622)

(declare-fun e!3175401 () T!105622)

(assert (=> b!5091728 (= e!3175402 e!3175401)))

(declare-fun lt!2092549 () Bool)

(assert (=> b!5091728 (= lt!2092549 (appendIndex!421 (list!19108 (left!42932 (left!42932 t!3643))) (list!19108 (right!43262 (left!42932 t!3643))) i!607))))

(declare-fun c!875090 () Bool)

(assert (=> b!5091728 (= c!875090 (< i!607 (size!39223 (left!42932 (left!42932 t!3643)))))))

(declare-fun b!5091729 () Bool)

(declare-fun e!3175403 () Bool)

(assert (=> b!5091729 (= e!3175403 (< i!607 (size!39223 (left!42932 t!3643))))))

(declare-fun b!5091730 () Bool)

(declare-fun apply!14273 (IArray!31341 Int) T!105622)

(assert (=> b!5091730 (= e!3175402 (apply!14273 (xs!19022 (left!42932 t!3643)) i!607))))

(declare-fun b!5091731 () Bool)

(declare-fun e!3175404 () Int)

(assert (=> b!5091731 (= e!3175404 (- i!607 (size!39223 (left!42932 (left!42932 t!3643)))))))

(declare-fun d!1648191 () Bool)

(declare-fun lt!2092548 () T!105622)

(assert (=> d!1648191 (= lt!2092548 (apply!14271 (list!19108 (left!42932 t!3643)) i!607))))

(assert (=> d!1648191 (= lt!2092548 e!3175402)))

(declare-fun c!875091 () Bool)

(assert (=> d!1648191 (= c!875091 ((_ is Leaf!25965) (left!42932 t!3643)))))

(assert (=> d!1648191 e!3175403))

(declare-fun res!2167034 () Bool)

(assert (=> d!1648191 (=> (not res!2167034) (not e!3175403))))

(assert (=> d!1648191 (= res!2167034 (<= 0 i!607))))

(assert (=> d!1648191 (= (apply!14270 (left!42932 t!3643) i!607) lt!2092548)))

(declare-fun b!5091732 () Bool)

(declare-fun call!354691 () T!105622)

(assert (=> b!5091732 (= e!3175401 call!354691)))

(declare-fun b!5091733 () Bool)

(assert (=> b!5091733 (= e!3175404 i!607)))

(declare-fun b!5091734 () Bool)

(assert (=> b!5091734 (= e!3175401 call!354691)))

(declare-fun bm!354686 () Bool)

(declare-fun c!875092 () Bool)

(assert (=> bm!354686 (= c!875092 c!875090)))

(assert (=> bm!354686 (= call!354691 (apply!14270 (ite c!875090 (left!42932 (left!42932 t!3643)) (right!43262 (left!42932 t!3643))) e!3175404))))

(assert (= (and d!1648191 res!2167034) b!5091729))

(assert (= (and d!1648191 c!875091) b!5091730))

(assert (= (and d!1648191 (not c!875091)) b!5091728))

(assert (= (and b!5091728 c!875090) b!5091734))

(assert (= (and b!5091728 (not c!875090)) b!5091732))

(assert (= (or b!5091734 b!5091732) bm!354686))

(assert (= (and bm!354686 c!875092) b!5091733))

(assert (= (and bm!354686 (not c!875092)) b!5091731))

(assert (=> d!1648191 m!6149822))

(assert (=> d!1648191 m!6149822))

(declare-fun m!6149916 () Bool)

(assert (=> d!1648191 m!6149916))

(declare-fun m!6149918 () Bool)

(assert (=> b!5091730 m!6149918))

(declare-fun m!6149920 () Bool)

(assert (=> bm!354686 m!6149920))

(declare-fun m!6149922 () Bool)

(assert (=> b!5091731 m!6149922))

(assert (=> b!5091728 m!6149880))

(assert (=> b!5091728 m!6149882))

(assert (=> b!5091728 m!6149880))

(assert (=> b!5091728 m!6149882))

(declare-fun m!6149924 () Bool)

(assert (=> b!5091728 m!6149924))

(assert (=> b!5091728 m!6149922))

(assert (=> b!5091729 m!6149820))

(assert (=> b!5091598 d!1648191))

(declare-fun d!1648195 () Bool)

(declare-fun lt!2092556 () T!105622)

(declare-fun contains!19592 (List!58649 T!105622) Bool)

(assert (=> d!1648195 (contains!19592 (list!19108 t!3643) lt!2092556)))

(declare-fun e!3175422 () T!105622)

(assert (=> d!1648195 (= lt!2092556 e!3175422)))

(declare-fun c!875102 () Bool)

(assert (=> d!1648195 (= c!875102 (= i!607 0))))

(declare-fun e!3175421 () Bool)

(assert (=> d!1648195 e!3175421))

(declare-fun res!2167042 () Bool)

(assert (=> d!1648195 (=> (not res!2167042) (not e!3175421))))

(assert (=> d!1648195 (= res!2167042 (<= 0 i!607))))

(assert (=> d!1648195 (= (apply!14271 (list!19108 t!3643) i!607) lt!2092556)))

(declare-fun b!5091760 () Bool)

(assert (=> b!5091760 (= e!3175421 (< i!607 (size!39224 (list!19108 t!3643))))))

(declare-fun b!5091761 () Bool)

(declare-fun head!10803 (List!58649) T!105622)

(assert (=> b!5091761 (= e!3175422 (head!10803 (list!19108 t!3643)))))

(declare-fun b!5091762 () Bool)

(declare-fun tail!9958 (List!58649) List!58649)

(assert (=> b!5091762 (= e!3175422 (apply!14271 (tail!9958 (list!19108 t!3643)) (- i!607 1)))))

(assert (= (and d!1648195 res!2167042) b!5091760))

(assert (= (and d!1648195 c!875102) b!5091761))

(assert (= (and d!1648195 (not c!875102)) b!5091762))

(assert (=> d!1648195 m!6149808))

(declare-fun m!6149946 () Bool)

(assert (=> d!1648195 m!6149946))

(assert (=> b!5091760 m!6149808))

(assert (=> b!5091760 m!6149904))

(assert (=> b!5091761 m!6149808))

(declare-fun m!6149948 () Bool)

(assert (=> b!5091761 m!6149948))

(assert (=> b!5091762 m!6149808))

(declare-fun m!6149950 () Bool)

(assert (=> b!5091762 m!6149950))

(assert (=> b!5091762 m!6149950))

(declare-fun m!6149952 () Bool)

(assert (=> b!5091762 m!6149952))

(assert (=> b!5091598 d!1648195))

(declare-fun b!5091764 () Bool)

(declare-fun e!3175423 () List!58649)

(declare-fun e!3175424 () List!58649)

(assert (=> b!5091764 (= e!3175423 e!3175424)))

(declare-fun c!875104 () Bool)

(assert (=> b!5091764 (= c!875104 ((_ is Leaf!25965) t!3643))))

(declare-fun b!5091766 () Bool)

(assert (=> b!5091766 (= e!3175424 (++!12840 (list!19108 (left!42932 t!3643)) (list!19108 (right!43262 t!3643))))))

(declare-fun d!1648207 () Bool)

(declare-fun c!875103 () Bool)

(assert (=> d!1648207 (= c!875103 ((_ is Empty!15640) t!3643))))

(assert (=> d!1648207 (= (list!19108 t!3643) e!3175423)))

(declare-fun b!5091765 () Bool)

(assert (=> b!5091765 (= e!3175424 (list!19110 (xs!19022 t!3643)))))

(declare-fun b!5091763 () Bool)

(assert (=> b!5091763 (= e!3175423 Nil!58525)))

(assert (= (and d!1648207 c!875103) b!5091763))

(assert (= (and d!1648207 (not c!875103)) b!5091764))

(assert (= (and b!5091764 c!875104) b!5091765))

(assert (= (and b!5091764 (not c!875104)) b!5091766))

(assert (=> b!5091766 m!6149822))

(assert (=> b!5091766 m!6149824))

(assert (=> b!5091766 m!6149822))

(assert (=> b!5091766 m!6149824))

(assert (=> b!5091766 m!6149858))

(declare-fun m!6149956 () Bool)

(assert (=> b!5091765 m!6149956))

(assert (=> b!5091598 d!1648207))

(declare-fun tp!1419399 () Bool)

(declare-fun e!3175439 () Bool)

(declare-fun b!5091791 () Bool)

(declare-fun tp!1419400 () Bool)

(assert (=> b!5091791 (= e!3175439 (and (inv!77960 (left!42932 (left!42932 t!3643))) tp!1419400 (inv!77960 (right!43262 (left!42932 t!3643))) tp!1419399))))

(declare-fun b!5091793 () Bool)

(declare-fun e!3175438 () Bool)

(declare-fun tp!1419398 () Bool)

(assert (=> b!5091793 (= e!3175438 tp!1419398)))

(declare-fun b!5091792 () Bool)

(assert (=> b!5091792 (= e!3175439 (and (inv!77961 (xs!19022 (left!42932 t!3643))) e!3175438))))

(assert (=> b!5091594 (= tp!1419378 (and (inv!77960 (left!42932 t!3643)) e!3175439))))

(assert (= (and b!5091594 ((_ is Node!15640) (left!42932 t!3643))) b!5091791))

(assert (= b!5091792 b!5091793))

(assert (= (and b!5091594 ((_ is Leaf!25965) (left!42932 t!3643))) b!5091792))

(declare-fun m!6149964 () Bool)

(assert (=> b!5091791 m!6149964))

(declare-fun m!6149966 () Bool)

(assert (=> b!5091791 m!6149966))

(declare-fun m!6149968 () Bool)

(assert (=> b!5091792 m!6149968))

(assert (=> b!5091594 m!6149816))

(declare-fun tp!1419406 () Bool)

(declare-fun e!3175443 () Bool)

(declare-fun b!5091797 () Bool)

(declare-fun tp!1419405 () Bool)

(assert (=> b!5091797 (= e!3175443 (and (inv!77960 (left!42932 (right!43262 t!3643))) tp!1419406 (inv!77960 (right!43262 (right!43262 t!3643))) tp!1419405))))

(declare-fun b!5091799 () Bool)

(declare-fun e!3175442 () Bool)

(declare-fun tp!1419404 () Bool)

(assert (=> b!5091799 (= e!3175442 tp!1419404)))

(declare-fun b!5091798 () Bool)

(assert (=> b!5091798 (= e!3175443 (and (inv!77961 (xs!19022 (right!43262 t!3643))) e!3175442))))

(assert (=> b!5091594 (= tp!1419379 (and (inv!77960 (right!43262 t!3643)) e!3175443))))

(assert (= (and b!5091594 ((_ is Node!15640) (right!43262 t!3643))) b!5091797))

(assert (= b!5091798 b!5091799))

(assert (= (and b!5091594 ((_ is Leaf!25965) (right!43262 t!3643))) b!5091798))

(declare-fun m!6149976 () Bool)

(assert (=> b!5091797 m!6149976))

(declare-fun m!6149978 () Bool)

(assert (=> b!5091797 m!6149978))

(declare-fun m!6149980 () Bool)

(assert (=> b!5091798 m!6149980))

(assert (=> b!5091594 m!6149818))

(declare-fun b!5091804 () Bool)

(declare-fun e!3175446 () Bool)

(declare-fun tp_is_empty!37159 () Bool)

(declare-fun tp!1419409 () Bool)

(assert (=> b!5091804 (= e!3175446 (and tp_is_empty!37159 tp!1419409))))

(assert (=> b!5091599 (= tp!1419377 e!3175446)))

(assert (= (and b!5091599 ((_ is Cons!58525) (innerList!15728 (xs!19022 t!3643)))) b!5091804))

(check-sat (not b!5091798) (not d!1648191) (not bm!354680) (not b!5091651) (not b!5091681) (not bm!354686) (not b!5091687) (not b!5091731) (not b!5091689) (not b!5091791) (not d!1648173) (not b!5091797) (not b!5091760) (not b!5091686) (not b!5091766) (not b!5091804) (not d!1648169) (not b!5091616) (not b!5091685) (not d!1648195) (not b!5091765) (not d!1648163) (not b!5091618) (not b!5091792) (not b!5091762) (not b!5091793) (not b!5091761) (not b!5091654) (not b!5091730) tp_is_empty!37159 (not b!5091682) (not b!5091692) (not b!5091690) (not b!5091652) (not b!5091594) (not b!5091729) (not b!5091728) (not b!5091799) (not d!1648189))
(check-sat)
