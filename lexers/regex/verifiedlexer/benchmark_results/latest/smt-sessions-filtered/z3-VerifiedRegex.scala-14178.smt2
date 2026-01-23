; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743658 () Bool)

(assert start!743658)

(declare-fun b!7861680 () Bool)

(declare-fun e!4645791 () Bool)

(declare-fun tp!2330069 () Bool)

(declare-fun tp!2330067 () Bool)

(assert (=> b!7861680 (= e!4645791 (and tp!2330069 tp!2330067))))

(declare-fun b!7861681 () Bool)

(declare-fun e!4645789 () Bool)

(declare-fun tp!2330075 () Bool)

(assert (=> b!7861681 (= e!4645789 tp!2330075)))

(declare-fun res!3125243 () Bool)

(declare-fun e!4645788 () Bool)

(assert (=> start!743658 (=> (not res!3125243) (not e!4645788))))

(declare-datatypes ((C!42584 0))(
  ( (C!42585 (val!31754 Int)) )
))
(declare-datatypes ((Regex!21129 0))(
  ( (ElementMatch!21129 (c!1444659 C!42584)) (Concat!29974 (regOne!42770 Regex!21129) (regTwo!42770 Regex!21129)) (EmptyExpr!21129) (Star!21129 (reg!21458 Regex!21129)) (EmptyLang!21129) (Union!21129 (regOne!42771 Regex!21129) (regTwo!42771 Regex!21129)) )
))
(declare-fun r1!6218 () Regex!21129)

(declare-fun validRegex!11539 (Regex!21129) Bool)

(assert (=> start!743658 (= res!3125243 (validRegex!11539 r1!6218))))

(assert (=> start!743658 e!4645788))

(assert (=> start!743658 e!4645791))

(assert (=> start!743658 e!4645789))

(declare-fun e!4645790 () Bool)

(assert (=> start!743658 e!4645790))

(declare-fun b!7861682 () Bool)

(declare-fun tp_is_empty!52657 () Bool)

(assert (=> b!7861682 (= e!4645791 tp_is_empty!52657)))

(declare-fun b!7861683 () Bool)

(declare-fun res!3125244 () Bool)

(assert (=> b!7861683 (=> (not res!3125244) (not e!4645788))))

(declare-datatypes ((List!73988 0))(
  ( (Nil!73864) (Cons!73864 (h!80312 C!42584) (t!388723 List!73988)) )
))
(declare-fun s!14237 () List!73988)

(declare-fun matchR!10565 (Regex!21129 List!73988) Bool)

(assert (=> b!7861683 (= res!3125244 (matchR!10565 r1!6218 s!14237))))

(declare-fun b!7861684 () Bool)

(declare-fun ListPrimitiveSize!468 (List!73988) Int)

(assert (=> b!7861684 (= e!4645788 (< (ListPrimitiveSize!468 s!14237) 0))))

(declare-fun b!7861685 () Bool)

(declare-fun tp!2330068 () Bool)

(declare-fun tp!2330072 () Bool)

(assert (=> b!7861685 (= e!4645789 (and tp!2330068 tp!2330072))))

(declare-fun b!7861686 () Bool)

(declare-fun tp!2330070 () Bool)

(declare-fun tp!2330073 () Bool)

(assert (=> b!7861686 (= e!4645791 (and tp!2330070 tp!2330073))))

(declare-fun b!7861687 () Bool)

(assert (=> b!7861687 (= e!4645789 tp_is_empty!52657)))

(declare-fun b!7861688 () Bool)

(declare-fun tp!2330076 () Bool)

(assert (=> b!7861688 (= e!4645791 tp!2330076)))

(declare-fun b!7861689 () Bool)

(declare-fun tp!2330074 () Bool)

(declare-fun tp!2330071 () Bool)

(assert (=> b!7861689 (= e!4645789 (and tp!2330074 tp!2330071))))

(declare-fun b!7861690 () Bool)

(declare-fun res!3125246 () Bool)

(assert (=> b!7861690 (=> (not res!3125246) (not e!4645788))))

(declare-fun r2!6156 () Regex!21129)

(assert (=> b!7861690 (= res!3125246 (validRegex!11539 r2!6156))))

(declare-fun b!7861691 () Bool)

(declare-fun res!3125245 () Bool)

(assert (=> b!7861691 (=> (not res!3125245) (not e!4645788))))

(declare-fun nullable!9399 (Regex!21129) Bool)

(assert (=> b!7861691 (= res!3125245 (nullable!9399 r2!6156))))

(declare-fun b!7861692 () Bool)

(declare-fun tp!2330066 () Bool)

(assert (=> b!7861692 (= e!4645790 (and tp_is_empty!52657 tp!2330066))))

(assert (= (and start!743658 res!3125243) b!7861690))

(assert (= (and b!7861690 res!3125246) b!7861683))

(assert (= (and b!7861683 res!3125244) b!7861691))

(assert (= (and b!7861691 res!3125245) b!7861684))

(get-info :version)

(assert (= (and start!743658 ((_ is ElementMatch!21129) r1!6218)) b!7861682))

(assert (= (and start!743658 ((_ is Concat!29974) r1!6218)) b!7861680))

(assert (= (and start!743658 ((_ is Star!21129) r1!6218)) b!7861688))

(assert (= (and start!743658 ((_ is Union!21129) r1!6218)) b!7861686))

(assert (= (and start!743658 ((_ is ElementMatch!21129) r2!6156)) b!7861687))

(assert (= (and start!743658 ((_ is Concat!29974) r2!6156)) b!7861685))

(assert (= (and start!743658 ((_ is Star!21129) r2!6156)) b!7861681))

(assert (= (and start!743658 ((_ is Union!21129) r2!6156)) b!7861689))

(assert (= (and start!743658 ((_ is Cons!73864) s!14237)) b!7861692))

(declare-fun m!8262550 () Bool)

(assert (=> b!7861683 m!8262550))

(declare-fun m!8262552 () Bool)

(assert (=> start!743658 m!8262552))

(declare-fun m!8262554 () Bool)

(assert (=> b!7861684 m!8262554))

(declare-fun m!8262556 () Bool)

(assert (=> b!7861690 m!8262556))

(declare-fun m!8262558 () Bool)

(assert (=> b!7861691 m!8262558))

(check-sat (not b!7861690) (not b!7861680) (not b!7861691) (not b!7861684) (not b!7861681) (not b!7861689) tp_is_empty!52657 (not b!7861692) (not b!7861688) (not b!7861686) (not start!743658) (not b!7861683) (not b!7861685))
(check-sat)
(get-model)

(declare-fun b!7861721 () Bool)

(declare-fun e!4645814 () Bool)

(declare-fun call!728875 () Bool)

(assert (=> b!7861721 (= e!4645814 call!728875)))

(declare-fun bm!728870 () Bool)

(declare-fun call!728877 () Bool)

(declare-fun c!1444669 () Bool)

(assert (=> bm!728870 (= call!728877 (validRegex!11539 (ite c!1444669 (regTwo!42771 r1!6218) (regTwo!42770 r1!6218))))))

(declare-fun c!1444670 () Bool)

(declare-fun bm!728871 () Bool)

(assert (=> bm!728871 (= call!728875 (validRegex!11539 (ite c!1444670 (reg!21458 r1!6218) (ite c!1444669 (regOne!42771 r1!6218) (regOne!42770 r1!6218)))))))

(declare-fun b!7861723 () Bool)

(declare-fun e!4645817 () Bool)

(declare-fun e!4645811 () Bool)

(assert (=> b!7861723 (= e!4645817 e!4645811)))

(assert (=> b!7861723 (= c!1444669 ((_ is Union!21129) r1!6218))))

(declare-fun b!7861724 () Bool)

(declare-fun e!4645812 () Bool)

(assert (=> b!7861724 (= e!4645812 call!728877)))

(declare-fun b!7861725 () Bool)

(declare-fun res!3125257 () Bool)

(assert (=> b!7861725 (=> (not res!3125257) (not e!4645812))))

(declare-fun call!728876 () Bool)

(assert (=> b!7861725 (= res!3125257 call!728876)))

(assert (=> b!7861725 (= e!4645811 e!4645812)))

(declare-fun b!7861726 () Bool)

(declare-fun e!4645813 () Bool)

(declare-fun e!4645816 () Bool)

(assert (=> b!7861726 (= e!4645813 e!4645816)))

(declare-fun res!3125259 () Bool)

(assert (=> b!7861726 (=> (not res!3125259) (not e!4645816))))

(assert (=> b!7861726 (= res!3125259 call!728876)))

(declare-fun bm!728872 () Bool)

(assert (=> bm!728872 (= call!728876 call!728875)))

(declare-fun b!7861727 () Bool)

(declare-fun e!4645815 () Bool)

(assert (=> b!7861727 (= e!4645815 e!4645817)))

(assert (=> b!7861727 (= c!1444670 ((_ is Star!21129) r1!6218))))

(declare-fun b!7861722 () Bool)

(assert (=> b!7861722 (= e!4645817 e!4645814)))

(declare-fun res!3125258 () Bool)

(assert (=> b!7861722 (= res!3125258 (not (nullable!9399 (reg!21458 r1!6218))))))

(assert (=> b!7861722 (=> (not res!3125258) (not e!4645814))))

(declare-fun d!2354469 () Bool)

(declare-fun res!3125260 () Bool)

(assert (=> d!2354469 (=> res!3125260 e!4645815)))

(assert (=> d!2354469 (= res!3125260 ((_ is ElementMatch!21129) r1!6218))))

(assert (=> d!2354469 (= (validRegex!11539 r1!6218) e!4645815)))

(declare-fun b!7861728 () Bool)

(declare-fun res!3125261 () Bool)

(assert (=> b!7861728 (=> res!3125261 e!4645813)))

(assert (=> b!7861728 (= res!3125261 (not ((_ is Concat!29974) r1!6218)))))

(assert (=> b!7861728 (= e!4645811 e!4645813)))

(declare-fun b!7861729 () Bool)

(assert (=> b!7861729 (= e!4645816 call!728877)))

(assert (= (and d!2354469 (not res!3125260)) b!7861727))

(assert (= (and b!7861727 c!1444670) b!7861722))

(assert (= (and b!7861727 (not c!1444670)) b!7861723))

(assert (= (and b!7861722 res!3125258) b!7861721))

(assert (= (and b!7861723 c!1444669) b!7861725))

(assert (= (and b!7861723 (not c!1444669)) b!7861728))

(assert (= (and b!7861725 res!3125257) b!7861724))

(assert (= (and b!7861728 (not res!3125261)) b!7861726))

(assert (= (and b!7861726 res!3125259) b!7861729))

(assert (= (or b!7861724 b!7861729) bm!728870))

(assert (= (or b!7861725 b!7861726) bm!728872))

(assert (= (or b!7861721 bm!728872) bm!728871))

(declare-fun m!8262562 () Bool)

(assert (=> bm!728870 m!8262562))

(declare-fun m!8262564 () Bool)

(assert (=> bm!728871 m!8262564))

(declare-fun m!8262566 () Bool)

(assert (=> b!7861722 m!8262566))

(assert (=> start!743658 d!2354469))

(declare-fun b!7861750 () Bool)

(declare-fun e!4645831 () Bool)

(declare-fun call!728878 () Bool)

(assert (=> b!7861750 (= e!4645831 call!728878)))

(declare-fun bm!728873 () Bool)

(declare-fun call!728880 () Bool)

(declare-fun c!1444675 () Bool)

(assert (=> bm!728873 (= call!728880 (validRegex!11539 (ite c!1444675 (regTwo!42771 r2!6156) (regTwo!42770 r2!6156))))))

(declare-fun c!1444676 () Bool)

(declare-fun bm!728874 () Bool)

(assert (=> bm!728874 (= call!728878 (validRegex!11539 (ite c!1444676 (reg!21458 r2!6156) (ite c!1444675 (regOne!42771 r2!6156) (regOne!42770 r2!6156)))))))

(declare-fun b!7861752 () Bool)

(declare-fun e!4645834 () Bool)

(declare-fun e!4645828 () Bool)

(assert (=> b!7861752 (= e!4645834 e!4645828)))

(assert (=> b!7861752 (= c!1444675 ((_ is Union!21129) r2!6156))))

(declare-fun b!7861753 () Bool)

(declare-fun e!4645829 () Bool)

(assert (=> b!7861753 (= e!4645829 call!728880)))

(declare-fun b!7861754 () Bool)

(declare-fun res!3125274 () Bool)

(assert (=> b!7861754 (=> (not res!3125274) (not e!4645829))))

(declare-fun call!728879 () Bool)

(assert (=> b!7861754 (= res!3125274 call!728879)))

(assert (=> b!7861754 (= e!4645828 e!4645829)))

(declare-fun b!7861755 () Bool)

(declare-fun e!4645830 () Bool)

(declare-fun e!4645833 () Bool)

(assert (=> b!7861755 (= e!4645830 e!4645833)))

(declare-fun res!3125276 () Bool)

(assert (=> b!7861755 (=> (not res!3125276) (not e!4645833))))

(assert (=> b!7861755 (= res!3125276 call!728879)))

(declare-fun bm!728875 () Bool)

(assert (=> bm!728875 (= call!728879 call!728878)))

(declare-fun b!7861756 () Bool)

(declare-fun e!4645832 () Bool)

(assert (=> b!7861756 (= e!4645832 e!4645834)))

(assert (=> b!7861756 (= c!1444676 ((_ is Star!21129) r2!6156))))

(declare-fun b!7861751 () Bool)

(assert (=> b!7861751 (= e!4645834 e!4645831)))

(declare-fun res!3125275 () Bool)

(assert (=> b!7861751 (= res!3125275 (not (nullable!9399 (reg!21458 r2!6156))))))

(assert (=> b!7861751 (=> (not res!3125275) (not e!4645831))))

(declare-fun d!2354473 () Bool)

(declare-fun res!3125277 () Bool)

(assert (=> d!2354473 (=> res!3125277 e!4645832)))

(assert (=> d!2354473 (= res!3125277 ((_ is ElementMatch!21129) r2!6156))))

(assert (=> d!2354473 (= (validRegex!11539 r2!6156) e!4645832)))

(declare-fun b!7861757 () Bool)

(declare-fun res!3125278 () Bool)

(assert (=> b!7861757 (=> res!3125278 e!4645830)))

(assert (=> b!7861757 (= res!3125278 (not ((_ is Concat!29974) r2!6156)))))

(assert (=> b!7861757 (= e!4645828 e!4645830)))

(declare-fun b!7861758 () Bool)

(assert (=> b!7861758 (= e!4645833 call!728880)))

(assert (= (and d!2354473 (not res!3125277)) b!7861756))

(assert (= (and b!7861756 c!1444676) b!7861751))

(assert (= (and b!7861756 (not c!1444676)) b!7861752))

(assert (= (and b!7861751 res!3125275) b!7861750))

(assert (= (and b!7861752 c!1444675) b!7861754))

(assert (= (and b!7861752 (not c!1444675)) b!7861757))

(assert (= (and b!7861754 res!3125274) b!7861753))

(assert (= (and b!7861757 (not res!3125278)) b!7861755))

(assert (= (and b!7861755 res!3125276) b!7861758))

(assert (= (or b!7861753 b!7861758) bm!728873))

(assert (= (or b!7861754 b!7861755) bm!728875))

(assert (= (or b!7861750 bm!728875) bm!728874))

(declare-fun m!8262568 () Bool)

(assert (=> bm!728873 m!8262568))

(declare-fun m!8262570 () Bool)

(assert (=> bm!728874 m!8262570))

(declare-fun m!8262572 () Bool)

(assert (=> b!7861751 m!8262572))

(assert (=> b!7861690 d!2354473))

(declare-fun d!2354475 () Bool)

(declare-fun lt!2680427 () Int)

(assert (=> d!2354475 (>= lt!2680427 0)))

(declare-fun e!4645839 () Int)

(assert (=> d!2354475 (= lt!2680427 e!4645839)))

(declare-fun c!1444679 () Bool)

(assert (=> d!2354475 (= c!1444679 ((_ is Nil!73864) s!14237))))

(assert (=> d!2354475 (= (ListPrimitiveSize!468 s!14237) lt!2680427)))

(declare-fun b!7861767 () Bool)

(assert (=> b!7861767 (= e!4645839 0)))

(declare-fun b!7861768 () Bool)

(assert (=> b!7861768 (= e!4645839 (+ 1 (ListPrimitiveSize!468 (t!388723 s!14237))))))

(assert (= (and d!2354475 c!1444679) b!7861767))

(assert (= (and d!2354475 (not c!1444679)) b!7861768))

(declare-fun m!8262574 () Bool)

(assert (=> b!7861768 m!8262574))

(assert (=> b!7861684 d!2354475))

(declare-fun d!2354477 () Bool)

(declare-fun nullableFct!3711 (Regex!21129) Bool)

(assert (=> d!2354477 (= (nullable!9399 r2!6156) (nullableFct!3711 r2!6156))))

(declare-fun bs!1967205 () Bool)

(assert (= bs!1967205 d!2354477))

(declare-fun m!8262576 () Bool)

(assert (=> bs!1967205 m!8262576))

(assert (=> b!7861691 d!2354477))

(declare-fun d!2354479 () Bool)

(declare-fun e!4645892 () Bool)

(assert (=> d!2354479 e!4645892))

(declare-fun c!1444699 () Bool)

(assert (=> d!2354479 (= c!1444699 ((_ is EmptyExpr!21129) r1!6218))))

(declare-fun lt!2680431 () Bool)

(declare-fun e!4645895 () Bool)

(assert (=> d!2354479 (= lt!2680431 e!4645895)))

(declare-fun c!1444697 () Bool)

(declare-fun isEmpty!42366 (List!73988) Bool)

(assert (=> d!2354479 (= c!1444697 (isEmpty!42366 s!14237))))

(assert (=> d!2354479 (validRegex!11539 r1!6218)))

(assert (=> d!2354479 (= (matchR!10565 r1!6218 s!14237) lt!2680431)))

(declare-fun b!7861857 () Bool)

(declare-fun e!4645894 () Bool)

(declare-fun head!16077 (List!73988) C!42584)

(assert (=> b!7861857 (= e!4645894 (= (head!16077 s!14237) (c!1444659 r1!6218)))))

(declare-fun b!7861858 () Bool)

(declare-fun e!4645896 () Bool)

(assert (=> b!7861858 (= e!4645892 e!4645896)))

(declare-fun c!1444698 () Bool)

(assert (=> b!7861858 (= c!1444698 ((_ is EmptyLang!21129) r1!6218))))

(declare-fun b!7861859 () Bool)

(declare-fun e!4645891 () Bool)

(assert (=> b!7861859 (= e!4645891 (not (= (head!16077 s!14237) (c!1444659 r1!6218))))))

(declare-fun b!7861860 () Bool)

(declare-fun res!3125327 () Bool)

(declare-fun e!4645893 () Bool)

(assert (=> b!7861860 (=> res!3125327 e!4645893)))

(assert (=> b!7861860 (= res!3125327 e!4645894)))

(declare-fun res!3125334 () Bool)

(assert (=> b!7861860 (=> (not res!3125334) (not e!4645894))))

(assert (=> b!7861860 (= res!3125334 lt!2680431)))

(declare-fun b!7861861 () Bool)

(declare-fun res!3125328 () Bool)

(assert (=> b!7861861 (=> res!3125328 e!4645893)))

(assert (=> b!7861861 (= res!3125328 (not ((_ is ElementMatch!21129) r1!6218)))))

(assert (=> b!7861861 (= e!4645896 e!4645893)))

(declare-fun b!7861862 () Bool)

(declare-fun derivativeStep!6362 (Regex!21129 C!42584) Regex!21129)

(declare-fun tail!15620 (List!73988) List!73988)

(assert (=> b!7861862 (= e!4645895 (matchR!10565 (derivativeStep!6362 r1!6218 (head!16077 s!14237)) (tail!15620 s!14237)))))

(declare-fun b!7861863 () Bool)

(declare-fun res!3125332 () Bool)

(assert (=> b!7861863 (=> (not res!3125332) (not e!4645894))))

(declare-fun call!728898 () Bool)

(assert (=> b!7861863 (= res!3125332 (not call!728898))))

(declare-fun b!7861864 () Bool)

(assert (=> b!7861864 (= e!4645892 (= lt!2680431 call!728898))))

(declare-fun b!7861865 () Bool)

(assert (=> b!7861865 (= e!4645896 (not lt!2680431))))

(declare-fun b!7861866 () Bool)

(declare-fun e!4645897 () Bool)

(assert (=> b!7861866 (= e!4645897 e!4645891)))

(declare-fun res!3125329 () Bool)

(assert (=> b!7861866 (=> res!3125329 e!4645891)))

(assert (=> b!7861866 (= res!3125329 call!728898)))

(declare-fun b!7861867 () Bool)

(declare-fun res!3125330 () Bool)

(assert (=> b!7861867 (=> (not res!3125330) (not e!4645894))))

(assert (=> b!7861867 (= res!3125330 (isEmpty!42366 (tail!15620 s!14237)))))

(declare-fun b!7861868 () Bool)

(assert (=> b!7861868 (= e!4645893 e!4645897)))

(declare-fun res!3125333 () Bool)

(assert (=> b!7861868 (=> (not res!3125333) (not e!4645897))))

(assert (=> b!7861868 (= res!3125333 (not lt!2680431))))

(declare-fun b!7861869 () Bool)

(assert (=> b!7861869 (= e!4645895 (nullable!9399 r1!6218))))

(declare-fun bm!728893 () Bool)

(assert (=> bm!728893 (= call!728898 (isEmpty!42366 s!14237))))

(declare-fun b!7861870 () Bool)

(declare-fun res!3125331 () Bool)

(assert (=> b!7861870 (=> res!3125331 e!4645891)))

(assert (=> b!7861870 (= res!3125331 (not (isEmpty!42366 (tail!15620 s!14237))))))

(assert (= (and d!2354479 c!1444697) b!7861869))

(assert (= (and d!2354479 (not c!1444697)) b!7861862))

(assert (= (and d!2354479 c!1444699) b!7861864))

(assert (= (and d!2354479 (not c!1444699)) b!7861858))

(assert (= (and b!7861858 c!1444698) b!7861865))

(assert (= (and b!7861858 (not c!1444698)) b!7861861))

(assert (= (and b!7861861 (not res!3125328)) b!7861860))

(assert (= (and b!7861860 res!3125334) b!7861863))

(assert (= (and b!7861863 res!3125332) b!7861867))

(assert (= (and b!7861867 res!3125330) b!7861857))

(assert (= (and b!7861860 (not res!3125327)) b!7861868))

(assert (= (and b!7861868 res!3125333) b!7861866))

(assert (= (and b!7861866 (not res!3125329)) b!7861870))

(assert (= (and b!7861870 (not res!3125331)) b!7861859))

(assert (= (or b!7861864 b!7861863 b!7861866) bm!728893))

(declare-fun m!8262606 () Bool)

(assert (=> b!7861869 m!8262606))

(declare-fun m!8262608 () Bool)

(assert (=> b!7861870 m!8262608))

(assert (=> b!7861870 m!8262608))

(declare-fun m!8262610 () Bool)

(assert (=> b!7861870 m!8262610))

(declare-fun m!8262612 () Bool)

(assert (=> bm!728893 m!8262612))

(assert (=> d!2354479 m!8262612))

(assert (=> d!2354479 m!8262552))

(declare-fun m!8262614 () Bool)

(assert (=> b!7861859 m!8262614))

(assert (=> b!7861857 m!8262614))

(assert (=> b!7861867 m!8262608))

(assert (=> b!7861867 m!8262608))

(assert (=> b!7861867 m!8262610))

(assert (=> b!7861862 m!8262614))

(assert (=> b!7861862 m!8262614))

(declare-fun m!8262616 () Bool)

(assert (=> b!7861862 m!8262616))

(assert (=> b!7861862 m!8262608))

(assert (=> b!7861862 m!8262616))

(assert (=> b!7861862 m!8262608))

(declare-fun m!8262618 () Bool)

(assert (=> b!7861862 m!8262618))

(assert (=> b!7861683 d!2354479))

(declare-fun b!7861918 () Bool)

(declare-fun e!4645911 () Bool)

(declare-fun tp!2330141 () Bool)

(assert (=> b!7861918 (= e!4645911 tp!2330141)))

(declare-fun b!7861914 () Bool)

(assert (=> b!7861914 (= e!4645911 tp_is_empty!52657)))

(assert (=> b!7861689 (= tp!2330074 e!4645911)))

(declare-fun b!7861920 () Bool)

(declare-fun tp!2330135 () Bool)

(declare-fun tp!2330136 () Bool)

(assert (=> b!7861920 (= e!4645911 (and tp!2330135 tp!2330136))))

(declare-fun b!7861916 () Bool)

(declare-fun tp!2330139 () Bool)

(declare-fun tp!2330138 () Bool)

(assert (=> b!7861916 (= e!4645911 (and tp!2330139 tp!2330138))))

(assert (= (and b!7861689 ((_ is ElementMatch!21129) (regOne!42771 r2!6156))) b!7861914))

(assert (= (and b!7861689 ((_ is Concat!29974) (regOne!42771 r2!6156))) b!7861916))

(assert (= (and b!7861689 ((_ is Star!21129) (regOne!42771 r2!6156))) b!7861918))

(assert (= (and b!7861689 ((_ is Union!21129) (regOne!42771 r2!6156))) b!7861920))

(declare-fun b!7861928 () Bool)

(declare-fun e!4645913 () Bool)

(declare-fun tp!2330154 () Bool)

(assert (=> b!7861928 (= e!4645913 tp!2330154)))

(declare-fun b!7861926 () Bool)

(assert (=> b!7861926 (= e!4645913 tp_is_empty!52657)))

(assert (=> b!7861689 (= tp!2330071 e!4645913)))

(declare-fun b!7861929 () Bool)

(declare-fun tp!2330150 () Bool)

(declare-fun tp!2330151 () Bool)

(assert (=> b!7861929 (= e!4645913 (and tp!2330150 tp!2330151))))

(declare-fun b!7861927 () Bool)

(declare-fun tp!2330153 () Bool)

(declare-fun tp!2330152 () Bool)

(assert (=> b!7861927 (= e!4645913 (and tp!2330153 tp!2330152))))

(assert (= (and b!7861689 ((_ is ElementMatch!21129) (regTwo!42771 r2!6156))) b!7861926))

(assert (= (and b!7861689 ((_ is Concat!29974) (regTwo!42771 r2!6156))) b!7861927))

(assert (= (and b!7861689 ((_ is Star!21129) (regTwo!42771 r2!6156))) b!7861928))

(assert (= (and b!7861689 ((_ is Union!21129) (regTwo!42771 r2!6156))) b!7861929))

(declare-fun b!7861936 () Bool)

(declare-fun e!4645915 () Bool)

(declare-fun tp!2330164 () Bool)

(assert (=> b!7861936 (= e!4645915 tp!2330164)))

(declare-fun b!7861934 () Bool)

(assert (=> b!7861934 (= e!4645915 tp_is_empty!52657)))

(assert (=> b!7861686 (= tp!2330070 e!4645915)))

(declare-fun b!7861937 () Bool)

(declare-fun tp!2330160 () Bool)

(declare-fun tp!2330161 () Bool)

(assert (=> b!7861937 (= e!4645915 (and tp!2330160 tp!2330161))))

(declare-fun b!7861935 () Bool)

(declare-fun tp!2330163 () Bool)

(declare-fun tp!2330162 () Bool)

(assert (=> b!7861935 (= e!4645915 (and tp!2330163 tp!2330162))))

(assert (= (and b!7861686 ((_ is ElementMatch!21129) (regOne!42771 r1!6218))) b!7861934))

(assert (= (and b!7861686 ((_ is Concat!29974) (regOne!42771 r1!6218))) b!7861935))

(assert (= (and b!7861686 ((_ is Star!21129) (regOne!42771 r1!6218))) b!7861936))

(assert (= (and b!7861686 ((_ is Union!21129) (regOne!42771 r1!6218))) b!7861937))

(declare-fun b!7861940 () Bool)

(declare-fun e!4645916 () Bool)

(declare-fun tp!2330169 () Bool)

(assert (=> b!7861940 (= e!4645916 tp!2330169)))

(declare-fun b!7861938 () Bool)

(assert (=> b!7861938 (= e!4645916 tp_is_empty!52657)))

(assert (=> b!7861686 (= tp!2330073 e!4645916)))

(declare-fun b!7861941 () Bool)

(declare-fun tp!2330165 () Bool)

(declare-fun tp!2330166 () Bool)

(assert (=> b!7861941 (= e!4645916 (and tp!2330165 tp!2330166))))

(declare-fun b!7861939 () Bool)

(declare-fun tp!2330168 () Bool)

(declare-fun tp!2330167 () Bool)

(assert (=> b!7861939 (= e!4645916 (and tp!2330168 tp!2330167))))

(assert (= (and b!7861686 ((_ is ElementMatch!21129) (regTwo!42771 r1!6218))) b!7861938))

(assert (= (and b!7861686 ((_ is Concat!29974) (regTwo!42771 r1!6218))) b!7861939))

(assert (= (and b!7861686 ((_ is Star!21129) (regTwo!42771 r1!6218))) b!7861940))

(assert (= (and b!7861686 ((_ is Union!21129) (regTwo!42771 r1!6218))) b!7861941))

(declare-fun b!7861944 () Bool)

(declare-fun e!4645917 () Bool)

(declare-fun tp!2330174 () Bool)

(assert (=> b!7861944 (= e!4645917 tp!2330174)))

(declare-fun b!7861942 () Bool)

(assert (=> b!7861942 (= e!4645917 tp_is_empty!52657)))

(assert (=> b!7861685 (= tp!2330068 e!4645917)))

(declare-fun b!7861945 () Bool)

(declare-fun tp!2330170 () Bool)

(declare-fun tp!2330171 () Bool)

(assert (=> b!7861945 (= e!4645917 (and tp!2330170 tp!2330171))))

(declare-fun b!7861943 () Bool)

(declare-fun tp!2330173 () Bool)

(declare-fun tp!2330172 () Bool)

(assert (=> b!7861943 (= e!4645917 (and tp!2330173 tp!2330172))))

(assert (= (and b!7861685 ((_ is ElementMatch!21129) (regOne!42770 r2!6156))) b!7861942))

(assert (= (and b!7861685 ((_ is Concat!29974) (regOne!42770 r2!6156))) b!7861943))

(assert (= (and b!7861685 ((_ is Star!21129) (regOne!42770 r2!6156))) b!7861944))

(assert (= (and b!7861685 ((_ is Union!21129) (regOne!42770 r2!6156))) b!7861945))

(declare-fun b!7861948 () Bool)

(declare-fun e!4645918 () Bool)

(declare-fun tp!2330179 () Bool)

(assert (=> b!7861948 (= e!4645918 tp!2330179)))

(declare-fun b!7861946 () Bool)

(assert (=> b!7861946 (= e!4645918 tp_is_empty!52657)))

(assert (=> b!7861685 (= tp!2330072 e!4645918)))

(declare-fun b!7861949 () Bool)

(declare-fun tp!2330175 () Bool)

(declare-fun tp!2330176 () Bool)

(assert (=> b!7861949 (= e!4645918 (and tp!2330175 tp!2330176))))

(declare-fun b!7861947 () Bool)

(declare-fun tp!2330178 () Bool)

(declare-fun tp!2330177 () Bool)

(assert (=> b!7861947 (= e!4645918 (and tp!2330178 tp!2330177))))

(assert (= (and b!7861685 ((_ is ElementMatch!21129) (regTwo!42770 r2!6156))) b!7861946))

(assert (= (and b!7861685 ((_ is Concat!29974) (regTwo!42770 r2!6156))) b!7861947))

(assert (= (and b!7861685 ((_ is Star!21129) (regTwo!42770 r2!6156))) b!7861948))

(assert (= (and b!7861685 ((_ is Union!21129) (regTwo!42770 r2!6156))) b!7861949))

(declare-fun b!7861952 () Bool)

(declare-fun e!4645919 () Bool)

(declare-fun tp!2330184 () Bool)

(assert (=> b!7861952 (= e!4645919 tp!2330184)))

(declare-fun b!7861950 () Bool)

(assert (=> b!7861950 (= e!4645919 tp_is_empty!52657)))

(assert (=> b!7861680 (= tp!2330069 e!4645919)))

(declare-fun b!7861953 () Bool)

(declare-fun tp!2330180 () Bool)

(declare-fun tp!2330181 () Bool)

(assert (=> b!7861953 (= e!4645919 (and tp!2330180 tp!2330181))))

(declare-fun b!7861951 () Bool)

(declare-fun tp!2330183 () Bool)

(declare-fun tp!2330182 () Bool)

(assert (=> b!7861951 (= e!4645919 (and tp!2330183 tp!2330182))))

(assert (= (and b!7861680 ((_ is ElementMatch!21129) (regOne!42770 r1!6218))) b!7861950))

(assert (= (and b!7861680 ((_ is Concat!29974) (regOne!42770 r1!6218))) b!7861951))

(assert (= (and b!7861680 ((_ is Star!21129) (regOne!42770 r1!6218))) b!7861952))

(assert (= (and b!7861680 ((_ is Union!21129) (regOne!42770 r1!6218))) b!7861953))

(declare-fun b!7861956 () Bool)

(declare-fun e!4645920 () Bool)

(declare-fun tp!2330189 () Bool)

(assert (=> b!7861956 (= e!4645920 tp!2330189)))

(declare-fun b!7861954 () Bool)

(assert (=> b!7861954 (= e!4645920 tp_is_empty!52657)))

(assert (=> b!7861680 (= tp!2330067 e!4645920)))

(declare-fun b!7861957 () Bool)

(declare-fun tp!2330185 () Bool)

(declare-fun tp!2330186 () Bool)

(assert (=> b!7861957 (= e!4645920 (and tp!2330185 tp!2330186))))

(declare-fun b!7861955 () Bool)

(declare-fun tp!2330188 () Bool)

(declare-fun tp!2330187 () Bool)

(assert (=> b!7861955 (= e!4645920 (and tp!2330188 tp!2330187))))

(assert (= (and b!7861680 ((_ is ElementMatch!21129) (regTwo!42770 r1!6218))) b!7861954))

(assert (= (and b!7861680 ((_ is Concat!29974) (regTwo!42770 r1!6218))) b!7861955))

(assert (= (and b!7861680 ((_ is Star!21129) (regTwo!42770 r1!6218))) b!7861956))

(assert (= (and b!7861680 ((_ is Union!21129) (regTwo!42770 r1!6218))) b!7861957))

(declare-fun b!7861960 () Bool)

(declare-fun e!4645921 () Bool)

(declare-fun tp!2330194 () Bool)

(assert (=> b!7861960 (= e!4645921 tp!2330194)))

(declare-fun b!7861958 () Bool)

(assert (=> b!7861958 (= e!4645921 tp_is_empty!52657)))

(assert (=> b!7861681 (= tp!2330075 e!4645921)))

(declare-fun b!7861961 () Bool)

(declare-fun tp!2330190 () Bool)

(declare-fun tp!2330191 () Bool)

(assert (=> b!7861961 (= e!4645921 (and tp!2330190 tp!2330191))))

(declare-fun b!7861959 () Bool)

(declare-fun tp!2330193 () Bool)

(declare-fun tp!2330192 () Bool)

(assert (=> b!7861959 (= e!4645921 (and tp!2330193 tp!2330192))))

(assert (= (and b!7861681 ((_ is ElementMatch!21129) (reg!21458 r2!6156))) b!7861958))

(assert (= (and b!7861681 ((_ is Concat!29974) (reg!21458 r2!6156))) b!7861959))

(assert (= (and b!7861681 ((_ is Star!21129) (reg!21458 r2!6156))) b!7861960))

(assert (= (and b!7861681 ((_ is Union!21129) (reg!21458 r2!6156))) b!7861961))

(declare-fun b!7861966 () Bool)

(declare-fun e!4645924 () Bool)

(declare-fun tp!2330197 () Bool)

(assert (=> b!7861966 (= e!4645924 (and tp_is_empty!52657 tp!2330197))))

(assert (=> b!7861692 (= tp!2330066 e!4645924)))

(assert (= (and b!7861692 ((_ is Cons!73864) (t!388723 s!14237))) b!7861966))

(declare-fun b!7861969 () Bool)

(declare-fun e!4645925 () Bool)

(declare-fun tp!2330202 () Bool)

(assert (=> b!7861969 (= e!4645925 tp!2330202)))

(declare-fun b!7861967 () Bool)

(assert (=> b!7861967 (= e!4645925 tp_is_empty!52657)))

(assert (=> b!7861688 (= tp!2330076 e!4645925)))

(declare-fun b!7861970 () Bool)

(declare-fun tp!2330198 () Bool)

(declare-fun tp!2330199 () Bool)

(assert (=> b!7861970 (= e!4645925 (and tp!2330198 tp!2330199))))

(declare-fun b!7861968 () Bool)

(declare-fun tp!2330201 () Bool)

(declare-fun tp!2330200 () Bool)

(assert (=> b!7861968 (= e!4645925 (and tp!2330201 tp!2330200))))

(assert (= (and b!7861688 ((_ is ElementMatch!21129) (reg!21458 r1!6218))) b!7861967))

(assert (= (and b!7861688 ((_ is Concat!29974) (reg!21458 r1!6218))) b!7861968))

(assert (= (and b!7861688 ((_ is Star!21129) (reg!21458 r1!6218))) b!7861969))

(assert (= (and b!7861688 ((_ is Union!21129) (reg!21458 r1!6218))) b!7861970))

(check-sat (not b!7861920) (not bm!728873) (not b!7861862) (not bm!728871) (not bm!728870) (not b!7861935) (not b!7861939) (not b!7861952) (not bm!728874) (not b!7861953) (not b!7861956) (not d!2354477) (not b!7861936) (not b!7861937) (not b!7861928) (not b!7861859) (not b!7861970) (not b!7861857) (not bm!728893) (not b!7861969) (not b!7861869) (not b!7861949) tp_is_empty!52657 (not b!7861945) (not b!7861961) (not b!7861918) (not d!2354479) (not b!7861951) (not b!7861927) (not b!7861944) (not b!7861943) (not b!7861870) (not b!7861968) (not b!7861941) (not b!7861948) (not b!7861955) (not b!7861722) (not b!7861940) (not b!7861959) (not b!7861916) (not b!7861957) (not b!7861966) (not b!7861960) (not b!7861768) (not b!7861867) (not b!7861929) (not b!7861751) (not b!7861947))
(check-sat)
