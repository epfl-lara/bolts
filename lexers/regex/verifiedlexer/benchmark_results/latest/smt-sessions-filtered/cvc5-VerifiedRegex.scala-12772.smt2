; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!705986 () Bool)

(assert start!705986)

(declare-fun b!7252527 () Bool)

(assert (=> b!7252527 true))

(declare-fun b!7252522 () Bool)

(assert (=> b!7252522 true))

(declare-fun b!7252513 () Bool)

(declare-fun e!4348688 () Bool)

(declare-fun tp_is_empty!46769 () Bool)

(declare-fun tp!2037710 () Bool)

(assert (=> b!7252513 (= e!4348688 (and tp_is_empty!46769 tp!2037710))))

(declare-fun b!7252514 () Bool)

(declare-fun e!4348683 () Bool)

(declare-fun e!4348679 () Bool)

(assert (=> b!7252514 (= e!4348683 e!4348679)))

(declare-fun res!2941348 () Bool)

(assert (=> b!7252514 (=> (not res!2941348) (not e!4348679))))

(declare-datatypes ((C!37578 0))(
  ( (C!37579 (val!28737 Int)) )
))
(declare-datatypes ((Regex!18652 0))(
  ( (ElementMatch!18652 (c!1348008 C!37578)) (Concat!27497 (regOne!37816 Regex!18652) (regTwo!37816 Regex!18652)) (EmptyExpr!18652) (Star!18652 (reg!18981 Regex!18652)) (EmptyLang!18652) (Union!18652 (regOne!37817 Regex!18652) (regTwo!37817 Regex!18652)) )
))
(declare-datatypes ((List!70536 0))(
  ( (Nil!70412) (Cons!70412 (h!76860 Regex!18652) (t!384594 List!70536)) )
))
(declare-datatypes ((Context!15184 0))(
  ( (Context!15185 (exprs!8092 List!70536)) )
))
(declare-fun lt!2585677 () (Set Context!15184))

(declare-datatypes ((List!70537 0))(
  ( (Nil!70413) (Cons!70413 (h!76861 C!37578) (t!384595 List!70537)) )
))
(declare-fun s1!1971 () List!70537)

(declare-fun matchZipper!3562 ((Set Context!15184) List!70537) Bool)

(assert (=> b!7252514 (= res!2941348 (matchZipper!3562 lt!2585677 (t!384595 s1!1971)))))

(declare-fun lt!2585678 () (Set Context!15184))

(declare-fun derivationStepZipper!3430 ((Set Context!15184) C!37578) (Set Context!15184))

(assert (=> b!7252514 (= lt!2585677 (derivationStepZipper!3430 lt!2585678 (h!76861 s1!1971)))))

(declare-fun res!2941354 () Bool)

(declare-fun e!4348684 () Bool)

(assert (=> start!705986 (=> (not res!2941354) (not e!4348684))))

(assert (=> start!705986 (= res!2941354 (matchZipper!3562 lt!2585678 s1!1971))))

(declare-fun ct1!232 () Context!15184)

(assert (=> start!705986 (= lt!2585678 (set.insert ct1!232 (as set.empty (Set Context!15184))))))

(assert (=> start!705986 e!4348684))

(declare-fun e!4348680 () Bool)

(declare-fun inv!89641 (Context!15184) Bool)

(assert (=> start!705986 (and (inv!89641 ct1!232) e!4348680)))

(assert (=> start!705986 e!4348688))

(declare-fun e!4348689 () Bool)

(assert (=> start!705986 e!4348689))

(declare-fun ct2!328 () Context!15184)

(declare-fun e!4348682 () Bool)

(assert (=> start!705986 (and (inv!89641 ct2!328) e!4348682)))

(declare-fun b!7252515 () Bool)

(declare-fun e!4348690 () Bool)

(declare-fun lt!2585683 () Context!15184)

(assert (=> b!7252515 (= e!4348690 (inv!89641 lt!2585683))))

(declare-fun b!7252516 () Bool)

(declare-fun tp!2037709 () Bool)

(assert (=> b!7252516 (= e!4348680 tp!2037709)))

(declare-fun b!7252517 () Bool)

(declare-fun e!4348686 () Bool)

(declare-fun e!4348685 () Bool)

(assert (=> b!7252517 (= e!4348686 e!4348685)))

(declare-fun res!2941349 () Bool)

(assert (=> b!7252517 (=> res!2941349 e!4348685)))

(declare-fun lt!2585681 () List!70536)

(declare-fun isEmpty!40548 (List!70536) Bool)

(assert (=> b!7252517 (= res!2941349 (isEmpty!40548 lt!2585681))))

(declare-datatypes ((Unit!163891 0))(
  ( (Unit!163892) )
))
(declare-fun lt!2585695 () Unit!163891)

(declare-fun lambda!444513 () Int)

(declare-fun lemmaConcatPreservesForall!1459 (List!70536 List!70536 Int) Unit!163891)

(assert (=> b!7252517 (= lt!2585695 (lemmaConcatPreservesForall!1459 (exprs!8092 ct1!232) (exprs!8092 ct2!328) lambda!444513))))

(declare-fun lt!2585674 () (Set Context!15184))

(declare-fun lt!2585687 () Context!15184)

(declare-fun derivationStepZipperUp!2476 (Context!15184 C!37578) (Set Context!15184))

(assert (=> b!7252517 (= lt!2585674 (derivationStepZipperUp!2476 lt!2585687 (h!76861 s1!1971)))))

(declare-fun lt!2585688 () Unit!163891)

(assert (=> b!7252517 (= lt!2585688 (lemmaConcatPreservesForall!1459 (exprs!8092 ct1!232) (exprs!8092 ct2!328) lambda!444513))))

(declare-fun lt!2585680 () (Set Context!15184))

(declare-fun derivationStepZipperDown!2646 (Regex!18652 Context!15184 C!37578) (Set Context!15184))

(assert (=> b!7252517 (= lt!2585680 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 ct1!232)) lt!2585683 (h!76861 s1!1971)))))

(declare-fun tail!14330 (List!70536) List!70536)

(assert (=> b!7252517 (= lt!2585683 (Context!15185 (tail!14330 (exprs!8092 ct1!232))))))

(declare-fun b!7252518 () Bool)

(declare-fun tp!2037707 () Bool)

(assert (=> b!7252518 (= e!4348682 tp!2037707)))

(declare-fun b!7252519 () Bool)

(declare-fun res!2941351 () Bool)

(assert (=> b!7252519 (=> res!2941351 e!4348690)))

(declare-fun lt!2585689 () (Set Context!15184))

(assert (=> b!7252519 (= res!2941351 (not (= (derivationStepZipper!3430 lt!2585689 (h!76861 s1!1971)) lt!2585674)))))

(declare-fun b!7252520 () Bool)

(assert (=> b!7252520 (= e!4348684 e!4348683)))

(declare-fun res!2941346 () Bool)

(assert (=> b!7252520 (=> (not res!2941346) (not e!4348683))))

(assert (=> b!7252520 (= res!2941346 (and (not (is-Nil!70412 (exprs!8092 ct1!232))) (is-Cons!70413 s1!1971)))))

(assert (=> b!7252520 (= lt!2585689 (set.insert lt!2585687 (as set.empty (Set Context!15184))))))

(assert (=> b!7252520 (= lt!2585687 (Context!15185 lt!2585681))))

(declare-fun ++!16566 (List!70536 List!70536) List!70536)

(assert (=> b!7252520 (= lt!2585681 (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328)))))

(declare-fun lt!2585690 () Unit!163891)

(assert (=> b!7252520 (= lt!2585690 (lemmaConcatPreservesForall!1459 (exprs!8092 ct1!232) (exprs!8092 ct2!328) lambda!444513))))

(declare-fun b!7252521 () Bool)

(declare-fun e!4348681 () Bool)

(assert (=> b!7252521 (= e!4348681 e!4348690)))

(declare-fun res!2941347 () Bool)

(assert (=> b!7252521 (=> res!2941347 e!4348690)))

(declare-fun lt!2585693 () Context!15184)

(declare-fun lt!2585684 () (Set Context!15184))

(assert (=> b!7252521 (= res!2941347 (not (= lt!2585674 (set.union lt!2585684 (derivationStepZipperUp!2476 lt!2585693 (h!76861 s1!1971))))))))

(declare-fun lt!2585686 () Unit!163891)

(assert (=> b!7252521 (= lt!2585686 (lemmaConcatPreservesForall!1459 (exprs!8092 ct1!232) (exprs!8092 ct2!328) lambda!444513))))

(assert (=> b!7252522 (= e!4348685 e!4348681)))

(declare-fun res!2941352 () Bool)

(assert (=> b!7252522 (=> res!2941352 e!4348681)))

(declare-fun nullable!7912 (Regex!18652) Bool)

(assert (=> b!7252522 (= res!2941352 (not (nullable!7912 (h!76860 (exprs!8092 ct1!232)))))))

(declare-fun lambda!444515 () Int)

(declare-fun flatMap!2817 ((Set Context!15184) Int) (Set Context!15184))

(assert (=> b!7252522 (= (flatMap!2817 lt!2585689 lambda!444515) (derivationStepZipperUp!2476 lt!2585687 (h!76861 s1!1971)))))

(declare-fun lt!2585694 () Unit!163891)

(declare-fun lemmaFlatMapOnSingletonSet!2221 ((Set Context!15184) Context!15184 Int) Unit!163891)

(assert (=> b!7252522 (= lt!2585694 (lemmaFlatMapOnSingletonSet!2221 lt!2585689 lt!2585687 lambda!444515))))

(declare-fun lt!2585685 () Unit!163891)

(assert (=> b!7252522 (= lt!2585685 (lemmaConcatPreservesForall!1459 (exprs!8092 ct1!232) (exprs!8092 ct2!328) lambda!444513))))

(assert (=> b!7252522 (= (flatMap!2817 lt!2585678 lambda!444515) (derivationStepZipperUp!2476 ct1!232 (h!76861 s1!1971)))))

(declare-fun lt!2585692 () Unit!163891)

(assert (=> b!7252522 (= lt!2585692 (lemmaFlatMapOnSingletonSet!2221 lt!2585678 ct1!232 lambda!444515))))

(assert (=> b!7252522 (= lt!2585684 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 ct1!232)) lt!2585693 (h!76861 s1!1971)))))

(assert (=> b!7252522 (= lt!2585693 (Context!15185 (tail!14330 lt!2585681)))))

(declare-fun b!7252523 () Bool)

(declare-fun res!2941344 () Bool)

(assert (=> b!7252523 (=> res!2941344 e!4348681)))

(declare-fun lt!2585679 () (Set Context!15184))

(assert (=> b!7252523 (= res!2941344 (not (= lt!2585679 (set.union lt!2585680 (derivationStepZipperUp!2476 lt!2585683 (h!76861 s1!1971))))))))

(declare-fun b!7252524 () Bool)

(declare-fun e!4348687 () Bool)

(assert (=> b!7252524 (= e!4348687 e!4348686)))

(declare-fun res!2941353 () Bool)

(assert (=> b!7252524 (=> res!2941353 e!4348686)))

(assert (=> b!7252524 (= res!2941353 (isEmpty!40548 (exprs!8092 ct1!232)))))

(assert (=> b!7252524 (= lt!2585679 (derivationStepZipperUp!2476 ct1!232 (h!76861 s1!1971)))))

(declare-fun lt!2585682 () Context!15184)

(declare-fun lt!2585691 () Unit!163891)

(assert (=> b!7252524 (= lt!2585691 (lemmaConcatPreservesForall!1459 (exprs!8092 lt!2585682) (exprs!8092 ct2!328) lambda!444513))))

(declare-fun s2!1849 () List!70537)

(declare-fun ++!16567 (List!70537 List!70537) List!70537)

(assert (=> b!7252524 (matchZipper!3562 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) (++!16567 (t!384595 s1!1971) s2!1849))))

(declare-fun lt!2585675 () Unit!163891)

(assert (=> b!7252524 (= lt!2585675 (lemmaConcatPreservesForall!1459 (exprs!8092 lt!2585682) (exprs!8092 ct2!328) lambda!444513))))

(declare-fun lt!2585673 () Unit!163891)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!397 (Context!15184 Context!15184 List!70537 List!70537) Unit!163891)

(assert (=> b!7252524 (= lt!2585673 (lemmaConcatenateContextMatchesConcatOfStrings!397 lt!2585682 ct2!328 (t!384595 s1!1971) s2!1849))))

(declare-fun lambda!444514 () Int)

(declare-fun getWitness!2214 ((Set Context!15184) Int) Context!15184)

(assert (=> b!7252524 (= lt!2585682 (getWitness!2214 lt!2585677 lambda!444514))))

(declare-fun b!7252525 () Bool)

(declare-fun tp!2037708 () Bool)

(assert (=> b!7252525 (= e!4348689 (and tp_is_empty!46769 tp!2037708))))

(declare-fun b!7252526 () Bool)

(declare-fun res!2941350 () Bool)

(assert (=> b!7252526 (=> res!2941350 e!4348681)))

(assert (=> b!7252526 (= res!2941350 (not (= lt!2585677 lt!2585679)))))

(assert (=> b!7252527 (= e!4348679 (not e!4348687))))

(declare-fun res!2941343 () Bool)

(assert (=> b!7252527 (=> res!2941343 e!4348687)))

(declare-fun exists!4382 ((Set Context!15184) Int) Bool)

(assert (=> b!7252527 (= res!2941343 (not (exists!4382 lt!2585677 lambda!444514)))))

(declare-datatypes ((List!70538 0))(
  ( (Nil!70414) (Cons!70414 (h!76862 Context!15184) (t!384596 List!70538)) )
))
(declare-fun lt!2585676 () List!70538)

(declare-fun exists!4383 (List!70538 Int) Bool)

(assert (=> b!7252527 (exists!4383 lt!2585676 lambda!444514)))

(declare-fun lt!2585672 () Unit!163891)

(declare-fun lemmaZipperMatchesExistsMatchingContext!755 (List!70538 List!70537) Unit!163891)

(assert (=> b!7252527 (= lt!2585672 (lemmaZipperMatchesExistsMatchingContext!755 lt!2585676 (t!384595 s1!1971)))))

(declare-fun toList!11481 ((Set Context!15184)) List!70538)

(assert (=> b!7252527 (= lt!2585676 (toList!11481 lt!2585677))))

(declare-fun b!7252528 () Bool)

(declare-fun res!2941345 () Bool)

(assert (=> b!7252528 (=> (not res!2941345) (not e!4348684))))

(assert (=> b!7252528 (= res!2941345 (matchZipper!3562 (set.insert ct2!328 (as set.empty (Set Context!15184))) s2!1849))))

(assert (= (and start!705986 res!2941354) b!7252528))

(assert (= (and b!7252528 res!2941345) b!7252520))

(assert (= (and b!7252520 res!2941346) b!7252514))

(assert (= (and b!7252514 res!2941348) b!7252527))

(assert (= (and b!7252527 (not res!2941343)) b!7252524))

(assert (= (and b!7252524 (not res!2941353)) b!7252517))

(assert (= (and b!7252517 (not res!2941349)) b!7252522))

(assert (= (and b!7252522 (not res!2941352)) b!7252523))

(assert (= (and b!7252523 (not res!2941344)) b!7252526))

(assert (= (and b!7252526 (not res!2941350)) b!7252521))

(assert (= (and b!7252521 (not res!2941347)) b!7252519))

(assert (= (and b!7252519 (not res!2941351)) b!7252515))

(assert (= start!705986 b!7252516))

(assert (= (and start!705986 (is-Cons!70413 s1!1971)) b!7252513))

(assert (= (and start!705986 (is-Cons!70413 s2!1849)) b!7252525))

(assert (= start!705986 b!7252518))

(declare-fun m!7932098 () Bool)

(assert (=> b!7252521 m!7932098))

(declare-fun m!7932100 () Bool)

(assert (=> b!7252521 m!7932100))

(declare-fun m!7932102 () Bool)

(assert (=> b!7252524 m!7932102))

(declare-fun m!7932104 () Bool)

(assert (=> b!7252524 m!7932104))

(declare-fun m!7932106 () Bool)

(assert (=> b!7252524 m!7932106))

(declare-fun m!7932108 () Bool)

(assert (=> b!7252524 m!7932108))

(declare-fun m!7932110 () Bool)

(assert (=> b!7252524 m!7932110))

(declare-fun m!7932112 () Bool)

(assert (=> b!7252524 m!7932112))

(declare-fun m!7932114 () Bool)

(assert (=> b!7252524 m!7932114))

(assert (=> b!7252524 m!7932110))

(declare-fun m!7932116 () Bool)

(assert (=> b!7252524 m!7932116))

(assert (=> b!7252524 m!7932102))

(declare-fun m!7932118 () Bool)

(assert (=> b!7252524 m!7932118))

(assert (=> b!7252524 m!7932114))

(declare-fun m!7932120 () Bool)

(assert (=> b!7252515 m!7932120))

(declare-fun m!7932122 () Bool)

(assert (=> b!7252523 m!7932122))

(declare-fun m!7932124 () Bool)

(assert (=> b!7252527 m!7932124))

(declare-fun m!7932126 () Bool)

(assert (=> b!7252527 m!7932126))

(declare-fun m!7932128 () Bool)

(assert (=> b!7252527 m!7932128))

(declare-fun m!7932130 () Bool)

(assert (=> b!7252527 m!7932130))

(declare-fun m!7932132 () Bool)

(assert (=> start!705986 m!7932132))

(declare-fun m!7932134 () Bool)

(assert (=> start!705986 m!7932134))

(declare-fun m!7932136 () Bool)

(assert (=> start!705986 m!7932136))

(declare-fun m!7932138 () Bool)

(assert (=> start!705986 m!7932138))

(declare-fun m!7932140 () Bool)

(assert (=> b!7252517 m!7932140))

(assert (=> b!7252517 m!7932100))

(declare-fun m!7932142 () Bool)

(assert (=> b!7252517 m!7932142))

(assert (=> b!7252517 m!7932100))

(declare-fun m!7932144 () Bool)

(assert (=> b!7252517 m!7932144))

(declare-fun m!7932146 () Bool)

(assert (=> b!7252517 m!7932146))

(declare-fun m!7932148 () Bool)

(assert (=> b!7252528 m!7932148))

(assert (=> b!7252528 m!7932148))

(declare-fun m!7932150 () Bool)

(assert (=> b!7252528 m!7932150))

(declare-fun m!7932152 () Bool)

(assert (=> b!7252514 m!7932152))

(declare-fun m!7932154 () Bool)

(assert (=> b!7252514 m!7932154))

(declare-fun m!7932156 () Bool)

(assert (=> b!7252520 m!7932156))

(declare-fun m!7932158 () Bool)

(assert (=> b!7252520 m!7932158))

(assert (=> b!7252520 m!7932100))

(declare-fun m!7932160 () Bool)

(assert (=> b!7252519 m!7932160))

(assert (=> b!7252522 m!7932146))

(declare-fun m!7932162 () Bool)

(assert (=> b!7252522 m!7932162))

(declare-fun m!7932164 () Bool)

(assert (=> b!7252522 m!7932164))

(declare-fun m!7932166 () Bool)

(assert (=> b!7252522 m!7932166))

(declare-fun m!7932168 () Bool)

(assert (=> b!7252522 m!7932168))

(assert (=> b!7252522 m!7932100))

(declare-fun m!7932170 () Bool)

(assert (=> b!7252522 m!7932170))

(declare-fun m!7932172 () Bool)

(assert (=> b!7252522 m!7932172))

(declare-fun m!7932174 () Bool)

(assert (=> b!7252522 m!7932174))

(assert (=> b!7252522 m!7932118))

(push 1)

(assert (not b!7252516))

(assert (not b!7252513))

(assert (not start!705986))

(assert (not b!7252525))

(assert (not b!7252517))

(assert (not b!7252524))

(assert (not b!7252515))

(assert (not b!7252514))

(assert (not b!7252518))

(assert (not b!7252522))

(assert (not b!7252527))

(assert (not b!7252523))

(assert (not b!7252519))

(assert (not b!7252528))

(assert (not b!7252520))

(assert tp_is_empty!46769)

(assert (not b!7252521))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1906636 () Bool)

(declare-fun d!2254673 () Bool)

(assert (= bs!1906636 (and d!2254673 b!7252522)))

(declare-fun lambda!444545 () Int)

(assert (=> bs!1906636 (= lambda!444545 lambda!444515)))

(assert (=> d!2254673 true))

(assert (=> d!2254673 (= (derivationStepZipper!3430 lt!2585689 (h!76861 s1!1971)) (flatMap!2817 lt!2585689 lambda!444545))))

(declare-fun bs!1906637 () Bool)

(assert (= bs!1906637 d!2254673))

(declare-fun m!7932254 () Bool)

(assert (=> bs!1906637 m!7932254))

(assert (=> b!7252519 d!2254673))

(declare-fun b!7252595 () Bool)

(declare-fun e!4348731 () List!70536)

(assert (=> b!7252595 (= e!4348731 (exprs!8092 ct2!328))))

(declare-fun b!7252596 () Bool)

(assert (=> b!7252596 (= e!4348731 (Cons!70412 (h!76860 (exprs!8092 ct1!232)) (++!16566 (t!384594 (exprs!8092 ct1!232)) (exprs!8092 ct2!328))))))

(declare-fun e!4348732 () Bool)

(declare-fun lt!2585770 () List!70536)

(declare-fun b!7252598 () Bool)

(assert (=> b!7252598 (= e!4348732 (or (not (= (exprs!8092 ct2!328) Nil!70412)) (= lt!2585770 (exprs!8092 ct1!232))))))

(declare-fun d!2254675 () Bool)

(assert (=> d!2254675 e!4348732))

(declare-fun res!2941395 () Bool)

(assert (=> d!2254675 (=> (not res!2941395) (not e!4348732))))

(declare-fun content!14619 (List!70536) (Set Regex!18652))

(assert (=> d!2254675 (= res!2941395 (= (content!14619 lt!2585770) (set.union (content!14619 (exprs!8092 ct1!232)) (content!14619 (exprs!8092 ct2!328)))))))

(assert (=> d!2254675 (= lt!2585770 e!4348731)))

(declare-fun c!1348024 () Bool)

(assert (=> d!2254675 (= c!1348024 (is-Nil!70412 (exprs!8092 ct1!232)))))

(assert (=> d!2254675 (= (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328)) lt!2585770)))

(declare-fun b!7252597 () Bool)

(declare-fun res!2941396 () Bool)

(assert (=> b!7252597 (=> (not res!2941396) (not e!4348732))))

(declare-fun size!41722 (List!70536) Int)

(assert (=> b!7252597 (= res!2941396 (= (size!41722 lt!2585770) (+ (size!41722 (exprs!8092 ct1!232)) (size!41722 (exprs!8092 ct2!328)))))))

(assert (= (and d!2254675 c!1348024) b!7252595))

(assert (= (and d!2254675 (not c!1348024)) b!7252596))

(assert (= (and d!2254675 res!2941395) b!7252597))

(assert (= (and b!7252597 res!2941396) b!7252598))

(declare-fun m!7932256 () Bool)

(assert (=> b!7252596 m!7932256))

(declare-fun m!7932258 () Bool)

(assert (=> d!2254675 m!7932258))

(declare-fun m!7932260 () Bool)

(assert (=> d!2254675 m!7932260))

(declare-fun m!7932262 () Bool)

(assert (=> d!2254675 m!7932262))

(declare-fun m!7932264 () Bool)

(assert (=> b!7252597 m!7932264))

(declare-fun m!7932266 () Bool)

(assert (=> b!7252597 m!7932266))

(declare-fun m!7932268 () Bool)

(assert (=> b!7252597 m!7932268))

(assert (=> b!7252520 d!2254675))

(declare-fun d!2254677 () Bool)

(declare-fun forall!17499 (List!70536 Int) Bool)

(assert (=> d!2254677 (forall!17499 (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328)) lambda!444513)))

(declare-fun lt!2585773 () Unit!163891)

(declare-fun choose!56038 (List!70536 List!70536 Int) Unit!163891)

(assert (=> d!2254677 (= lt!2585773 (choose!56038 (exprs!8092 ct1!232) (exprs!8092 ct2!328) lambda!444513))))

(assert (=> d!2254677 (forall!17499 (exprs!8092 ct1!232) lambda!444513)))

(assert (=> d!2254677 (= (lemmaConcatPreservesForall!1459 (exprs!8092 ct1!232) (exprs!8092 ct2!328) lambda!444513) lt!2585773)))

(declare-fun bs!1906638 () Bool)

(assert (= bs!1906638 d!2254677))

(assert (=> bs!1906638 m!7932158))

(assert (=> bs!1906638 m!7932158))

(declare-fun m!7932270 () Bool)

(assert (=> bs!1906638 m!7932270))

(declare-fun m!7932272 () Bool)

(assert (=> bs!1906638 m!7932272))

(declare-fun m!7932274 () Bool)

(assert (=> bs!1906638 m!7932274))

(assert (=> b!7252520 d!2254677))

(declare-fun d!2254679 () Bool)

(declare-fun lt!2585776 () Bool)

(assert (=> d!2254679 (= lt!2585776 (exists!4383 (toList!11481 lt!2585677) lambda!444514))))

(declare-fun choose!56039 ((Set Context!15184) Int) Bool)

(assert (=> d!2254679 (= lt!2585776 (choose!56039 lt!2585677 lambda!444514))))

(assert (=> d!2254679 (= (exists!4382 lt!2585677 lambda!444514) lt!2585776)))

(declare-fun bs!1906639 () Bool)

(assert (= bs!1906639 d!2254679))

(assert (=> bs!1906639 m!7932130))

(assert (=> bs!1906639 m!7932130))

(declare-fun m!7932276 () Bool)

(assert (=> bs!1906639 m!7932276))

(declare-fun m!7932278 () Bool)

(assert (=> bs!1906639 m!7932278))

(assert (=> b!7252527 d!2254679))

(declare-fun bs!1906640 () Bool)

(declare-fun d!2254681 () Bool)

(assert (= bs!1906640 (and d!2254681 b!7252527)))

(declare-fun lambda!444548 () Int)

(assert (=> bs!1906640 (not (= lambda!444548 lambda!444514))))

(assert (=> d!2254681 true))

(declare-fun order!28987 () Int)

(declare-fun dynLambda!28753 (Int Int) Int)

(assert (=> d!2254681 (< (dynLambda!28753 order!28987 lambda!444514) (dynLambda!28753 order!28987 lambda!444548))))

(declare-fun forall!17500 (List!70538 Int) Bool)

(assert (=> d!2254681 (= (exists!4383 lt!2585676 lambda!444514) (not (forall!17500 lt!2585676 lambda!444548)))))

(declare-fun bs!1906641 () Bool)

(assert (= bs!1906641 d!2254681))

(declare-fun m!7932280 () Bool)

(assert (=> bs!1906641 m!7932280))

(assert (=> b!7252527 d!2254681))

(declare-fun bs!1906642 () Bool)

(declare-fun d!2254683 () Bool)

(assert (= bs!1906642 (and d!2254683 b!7252527)))

(declare-fun lambda!444551 () Int)

(assert (=> bs!1906642 (= lambda!444551 lambda!444514)))

(declare-fun bs!1906643 () Bool)

(assert (= bs!1906643 (and d!2254683 d!2254681)))

(assert (=> bs!1906643 (not (= lambda!444551 lambda!444548))))

(assert (=> d!2254683 true))

(assert (=> d!2254683 (exists!4383 lt!2585676 lambda!444551)))

(declare-fun lt!2585779 () Unit!163891)

(declare-fun choose!56040 (List!70538 List!70537) Unit!163891)

(assert (=> d!2254683 (= lt!2585779 (choose!56040 lt!2585676 (t!384595 s1!1971)))))

(declare-fun content!14620 (List!70538) (Set Context!15184))

(assert (=> d!2254683 (matchZipper!3562 (content!14620 lt!2585676) (t!384595 s1!1971))))

(assert (=> d!2254683 (= (lemmaZipperMatchesExistsMatchingContext!755 lt!2585676 (t!384595 s1!1971)) lt!2585779)))

(declare-fun bs!1906644 () Bool)

(assert (= bs!1906644 d!2254683))

(declare-fun m!7932282 () Bool)

(assert (=> bs!1906644 m!7932282))

(declare-fun m!7932284 () Bool)

(assert (=> bs!1906644 m!7932284))

(declare-fun m!7932286 () Bool)

(assert (=> bs!1906644 m!7932286))

(assert (=> bs!1906644 m!7932286))

(declare-fun m!7932288 () Bool)

(assert (=> bs!1906644 m!7932288))

(assert (=> b!7252527 d!2254683))

(declare-fun d!2254685 () Bool)

(declare-fun e!4348735 () Bool)

(assert (=> d!2254685 e!4348735))

(declare-fun res!2941399 () Bool)

(assert (=> d!2254685 (=> (not res!2941399) (not e!4348735))))

(declare-fun lt!2585782 () List!70538)

(declare-fun noDuplicate!2993 (List!70538) Bool)

(assert (=> d!2254685 (= res!2941399 (noDuplicate!2993 lt!2585782))))

(declare-fun choose!56041 ((Set Context!15184)) List!70538)

(assert (=> d!2254685 (= lt!2585782 (choose!56041 lt!2585677))))

(assert (=> d!2254685 (= (toList!11481 lt!2585677) lt!2585782)))

(declare-fun b!7252603 () Bool)

(assert (=> b!7252603 (= e!4348735 (= (content!14620 lt!2585782) lt!2585677))))

(assert (= (and d!2254685 res!2941399) b!7252603))

(declare-fun m!7932290 () Bool)

(assert (=> d!2254685 m!7932290))

(declare-fun m!7932292 () Bool)

(assert (=> d!2254685 m!7932292))

(declare-fun m!7932294 () Bool)

(assert (=> b!7252603 m!7932294))

(assert (=> b!7252527 d!2254685))

(declare-fun d!2254687 () Bool)

(assert (=> d!2254687 (= (tail!14330 (exprs!8092 ct1!232)) (t!384594 (exprs!8092 ct1!232)))))

(assert (=> b!7252517 d!2254687))

(declare-fun d!2254689 () Bool)

(assert (=> d!2254689 (= (isEmpty!40548 lt!2585681) (is-Nil!70412 lt!2585681))))

(assert (=> b!7252517 d!2254689))

(declare-fun b!7252614 () Bool)

(declare-fun e!4348743 () (Set Context!15184))

(assert (=> b!7252614 (= e!4348743 (as set.empty (Set Context!15184)))))

(declare-fun b!7252615 () Bool)

(declare-fun e!4348742 () (Set Context!15184))

(assert (=> b!7252615 (= e!4348742 e!4348743)))

(declare-fun c!1348031 () Bool)

(assert (=> b!7252615 (= c!1348031 (is-Cons!70412 (exprs!8092 lt!2585687)))))

(declare-fun b!7252616 () Bool)

(declare-fun call!660655 () (Set Context!15184))

(assert (=> b!7252616 (= e!4348743 call!660655)))

(declare-fun b!7252617 () Bool)

(declare-fun e!4348744 () Bool)

(assert (=> b!7252617 (= e!4348744 (nullable!7912 (h!76860 (exprs!8092 lt!2585687))))))

(declare-fun b!7252618 () Bool)

(assert (=> b!7252618 (= e!4348742 (set.union call!660655 (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 lt!2585687))) (h!76861 s1!1971))))))

(declare-fun d!2254691 () Bool)

(declare-fun c!1348032 () Bool)

(assert (=> d!2254691 (= c!1348032 e!4348744)))

(declare-fun res!2941402 () Bool)

(assert (=> d!2254691 (=> (not res!2941402) (not e!4348744))))

(assert (=> d!2254691 (= res!2941402 (is-Cons!70412 (exprs!8092 lt!2585687)))))

(assert (=> d!2254691 (= (derivationStepZipperUp!2476 lt!2585687 (h!76861 s1!1971)) e!4348742)))

(declare-fun bm!660650 () Bool)

(assert (=> bm!660650 (= call!660655 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 lt!2585687)) (Context!15185 (t!384594 (exprs!8092 lt!2585687))) (h!76861 s1!1971)))))

(assert (= (and d!2254691 res!2941402) b!7252617))

(assert (= (and d!2254691 c!1348032) b!7252618))

(assert (= (and d!2254691 (not c!1348032)) b!7252615))

(assert (= (and b!7252615 c!1348031) b!7252616))

(assert (= (and b!7252615 (not c!1348031)) b!7252614))

(assert (= (or b!7252618 b!7252616) bm!660650))

(declare-fun m!7932296 () Bool)

(assert (=> b!7252617 m!7932296))

(declare-fun m!7932298 () Bool)

(assert (=> b!7252618 m!7932298))

(declare-fun m!7932300 () Bool)

(assert (=> bm!660650 m!7932300))

(assert (=> b!7252517 d!2254691))

(assert (=> b!7252517 d!2254677))

(declare-fun b!7252643 () Bool)

(declare-fun e!4348762 () (Set Context!15184))

(assert (=> b!7252643 (= e!4348762 (set.insert lt!2585683 (as set.empty (Set Context!15184))))))

(declare-fun bm!660663 () Bool)

(declare-fun call!660668 () List!70536)

(declare-fun call!660670 () List!70536)

(assert (=> bm!660663 (= call!660668 call!660670)))

(declare-fun b!7252644 () Bool)

(declare-fun e!4348757 () (Set Context!15184))

(declare-fun e!4348761 () (Set Context!15184))

(assert (=> b!7252644 (= e!4348757 e!4348761)))

(declare-fun c!1348045 () Bool)

(assert (=> b!7252644 (= c!1348045 (is-Concat!27497 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7252645 () Bool)

(declare-fun e!4348760 () (Set Context!15184))

(assert (=> b!7252645 (= e!4348760 (as set.empty (Set Context!15184)))))

(declare-fun b!7252646 () Bool)

(declare-fun e!4348759 () (Set Context!15184))

(assert (=> b!7252646 (= e!4348762 e!4348759)))

(declare-fun c!1348047 () Bool)

(assert (=> b!7252646 (= c!1348047 (is-Union!18652 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7252647 () Bool)

(declare-fun e!4348758 () Bool)

(assert (=> b!7252647 (= e!4348758 (nullable!7912 (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))

(declare-fun d!2254693 () Bool)

(declare-fun c!1348049 () Bool)

(assert (=> d!2254693 (= c!1348049 (and (is-ElementMatch!18652 (h!76860 (exprs!8092 ct1!232))) (= (c!1348008 (h!76860 (exprs!8092 ct1!232))) (h!76861 s1!1971))))))

(assert (=> d!2254693 (= (derivationStepZipperDown!2646 (h!76860 (exprs!8092 ct1!232)) lt!2585683 (h!76861 s1!1971)) e!4348762)))

(declare-fun bm!660664 () Bool)

(declare-fun call!660672 () (Set Context!15184))

(declare-fun call!660671 () (Set Context!15184))

(assert (=> bm!660664 (= call!660672 call!660671)))

(declare-fun b!7252648 () Bool)

(declare-fun c!1348048 () Bool)

(assert (=> b!7252648 (= c!1348048 (is-Star!18652 (h!76860 (exprs!8092 ct1!232))))))

(assert (=> b!7252648 (= e!4348761 e!4348760)))

(declare-fun b!7252649 () Bool)

(assert (=> b!7252649 (= e!4348760 call!660672)))

(declare-fun call!660673 () (Set Context!15184))

(declare-fun bm!660665 () Bool)

(assert (=> bm!660665 (= call!660673 (derivationStepZipperDown!2646 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))) (ite c!1348047 lt!2585683 (Context!15185 call!660670)) (h!76861 s1!1971)))))

(declare-fun bm!660666 () Bool)

(declare-fun call!660669 () (Set Context!15184))

(declare-fun c!1348046 () Bool)

(assert (=> bm!660666 (= call!660669 (derivationStepZipperDown!2646 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))) (ite (or c!1348047 c!1348046) lt!2585683 (Context!15185 call!660668)) (h!76861 s1!1971)))))

(declare-fun b!7252650 () Bool)

(assert (=> b!7252650 (= c!1348046 e!4348758)))

(declare-fun res!2941405 () Bool)

(assert (=> b!7252650 (=> (not res!2941405) (not e!4348758))))

(assert (=> b!7252650 (= res!2941405 (is-Concat!27497 (h!76860 (exprs!8092 ct1!232))))))

(assert (=> b!7252650 (= e!4348759 e!4348757)))

(declare-fun bm!660667 () Bool)

(declare-fun $colon$colon!2920 (List!70536 Regex!18652) List!70536)

(assert (=> bm!660667 (= call!660670 ($colon$colon!2920 (exprs!8092 lt!2585683) (ite (or c!1348046 c!1348045) (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (h!76860 (exprs!8092 ct1!232)))))))

(declare-fun bm!660668 () Bool)

(assert (=> bm!660668 (= call!660671 call!660669)))

(declare-fun b!7252651 () Bool)

(assert (=> b!7252651 (= e!4348759 (set.union call!660669 call!660673))))

(declare-fun b!7252652 () Bool)

(assert (=> b!7252652 (= e!4348757 (set.union call!660673 call!660671))))

(declare-fun b!7252653 () Bool)

(assert (=> b!7252653 (= e!4348761 call!660672)))

(assert (= (and d!2254693 c!1348049) b!7252643))

(assert (= (and d!2254693 (not c!1348049)) b!7252646))

(assert (= (and b!7252646 c!1348047) b!7252651))

(assert (= (and b!7252646 (not c!1348047)) b!7252650))

(assert (= (and b!7252650 res!2941405) b!7252647))

(assert (= (and b!7252650 c!1348046) b!7252652))

(assert (= (and b!7252650 (not c!1348046)) b!7252644))

(assert (= (and b!7252644 c!1348045) b!7252653))

(assert (= (and b!7252644 (not c!1348045)) b!7252648))

(assert (= (and b!7252648 c!1348048) b!7252649))

(assert (= (and b!7252648 (not c!1348048)) b!7252645))

(assert (= (or b!7252653 b!7252649) bm!660663))

(assert (= (or b!7252653 b!7252649) bm!660664))

(assert (= (or b!7252652 bm!660663) bm!660667))

(assert (= (or b!7252652 bm!660664) bm!660668))

(assert (= (or b!7252651 b!7252652) bm!660665))

(assert (= (or b!7252651 bm!660668) bm!660666))

(declare-fun m!7932304 () Bool)

(assert (=> bm!660665 m!7932304))

(declare-fun m!7932306 () Bool)

(assert (=> b!7252647 m!7932306))

(declare-fun m!7932308 () Bool)

(assert (=> bm!660667 m!7932308))

(declare-fun m!7932310 () Bool)

(assert (=> bm!660666 m!7932310))

(declare-fun m!7932312 () Bool)

(assert (=> b!7252643 m!7932312))

(assert (=> b!7252517 d!2254693))

(declare-fun d!2254699 () Bool)

(declare-fun c!1348052 () Bool)

(declare-fun isEmpty!40550 (List!70537) Bool)

(assert (=> d!2254699 (= c!1348052 (isEmpty!40550 s2!1849))))

(declare-fun e!4348765 () Bool)

(assert (=> d!2254699 (= (matchZipper!3562 (set.insert ct2!328 (as set.empty (Set Context!15184))) s2!1849) e!4348765)))

(declare-fun b!7252658 () Bool)

(declare-fun nullableZipper!2916 ((Set Context!15184)) Bool)

(assert (=> b!7252658 (= e!4348765 (nullableZipper!2916 (set.insert ct2!328 (as set.empty (Set Context!15184)))))))

(declare-fun b!7252659 () Bool)

(declare-fun head!14908 (List!70537) C!37578)

(declare-fun tail!14332 (List!70537) List!70537)

(assert (=> b!7252659 (= e!4348765 (matchZipper!3562 (derivationStepZipper!3430 (set.insert ct2!328 (as set.empty (Set Context!15184))) (head!14908 s2!1849)) (tail!14332 s2!1849)))))

(assert (= (and d!2254699 c!1348052) b!7252658))

(assert (= (and d!2254699 (not c!1348052)) b!7252659))

(declare-fun m!7932314 () Bool)

(assert (=> d!2254699 m!7932314))

(assert (=> b!7252658 m!7932148))

(declare-fun m!7932318 () Bool)

(assert (=> b!7252658 m!7932318))

(declare-fun m!7932320 () Bool)

(assert (=> b!7252659 m!7932320))

(assert (=> b!7252659 m!7932148))

(assert (=> b!7252659 m!7932320))

(declare-fun m!7932322 () Bool)

(assert (=> b!7252659 m!7932322))

(declare-fun m!7932324 () Bool)

(assert (=> b!7252659 m!7932324))

(assert (=> b!7252659 m!7932322))

(assert (=> b!7252659 m!7932324))

(declare-fun m!7932326 () Bool)

(assert (=> b!7252659 m!7932326))

(assert (=> b!7252528 d!2254699))

(declare-fun d!2254703 () Bool)

(declare-fun e!4348768 () Bool)

(assert (=> d!2254703 e!4348768))

(declare-fun res!2941408 () Bool)

(assert (=> d!2254703 (=> (not res!2941408) (not e!4348768))))

(declare-fun lt!2585785 () Context!15184)

(declare-fun dynLambda!28754 (Int Context!15184) Bool)

(assert (=> d!2254703 (= res!2941408 (dynLambda!28754 lambda!444514 lt!2585785))))

(declare-fun getWitness!2216 (List!70538 Int) Context!15184)

(assert (=> d!2254703 (= lt!2585785 (getWitness!2216 (toList!11481 lt!2585677) lambda!444514))))

(assert (=> d!2254703 (exists!4382 lt!2585677 lambda!444514)))

(assert (=> d!2254703 (= (getWitness!2214 lt!2585677 lambda!444514) lt!2585785)))

(declare-fun b!7252662 () Bool)

(assert (=> b!7252662 (= e!4348768 (set.member lt!2585785 lt!2585677))))

(assert (= (and d!2254703 res!2941408) b!7252662))

(declare-fun b_lambda!278623 () Bool)

(assert (=> (not b_lambda!278623) (not d!2254703)))

(declare-fun m!7932328 () Bool)

(assert (=> d!2254703 m!7932328))

(assert (=> d!2254703 m!7932130))

(assert (=> d!2254703 m!7932130))

(declare-fun m!7932330 () Bool)

(assert (=> d!2254703 m!7932330))

(assert (=> d!2254703 m!7932124))

(declare-fun m!7932332 () Bool)

(assert (=> b!7252662 m!7932332))

(assert (=> b!7252524 d!2254703))

(declare-fun d!2254705 () Bool)

(assert (=> d!2254705 (= (isEmpty!40548 (exprs!8092 ct1!232)) (is-Nil!70412 (exprs!8092 ct1!232)))))

(assert (=> b!7252524 d!2254705))

(declare-fun b!7252681 () Bool)

(declare-fun e!4348779 () List!70537)

(assert (=> b!7252681 (= e!4348779 s2!1849)))

(declare-fun b!7252683 () Bool)

(declare-fun res!2941415 () Bool)

(declare-fun e!4348780 () Bool)

(assert (=> b!7252683 (=> (not res!2941415) (not e!4348780))))

(declare-fun lt!2585788 () List!70537)

(declare-fun size!41723 (List!70537) Int)

(assert (=> b!7252683 (= res!2941415 (= (size!41723 lt!2585788) (+ (size!41723 (t!384595 s1!1971)) (size!41723 s2!1849))))))

(declare-fun d!2254707 () Bool)

(assert (=> d!2254707 e!4348780))

(declare-fun res!2941416 () Bool)

(assert (=> d!2254707 (=> (not res!2941416) (not e!4348780))))

(declare-fun content!14621 (List!70537) (Set C!37578))

(assert (=> d!2254707 (= res!2941416 (= (content!14621 lt!2585788) (set.union (content!14621 (t!384595 s1!1971)) (content!14621 s2!1849))))))

(assert (=> d!2254707 (= lt!2585788 e!4348779)))

(declare-fun c!1348059 () Bool)

(assert (=> d!2254707 (= c!1348059 (is-Nil!70413 (t!384595 s1!1971)))))

(assert (=> d!2254707 (= (++!16567 (t!384595 s1!1971) s2!1849) lt!2585788)))

(declare-fun b!7252684 () Bool)

(assert (=> b!7252684 (= e!4348780 (or (not (= s2!1849 Nil!70413)) (= lt!2585788 (t!384595 s1!1971))))))

(declare-fun b!7252682 () Bool)

(assert (=> b!7252682 (= e!4348779 (Cons!70413 (h!76861 (t!384595 s1!1971)) (++!16567 (t!384595 (t!384595 s1!1971)) s2!1849)))))

(assert (= (and d!2254707 c!1348059) b!7252681))

(assert (= (and d!2254707 (not c!1348059)) b!7252682))

(assert (= (and d!2254707 res!2941416) b!7252683))

(assert (= (and b!7252683 res!2941415) b!7252684))

(declare-fun m!7932334 () Bool)

(assert (=> b!7252683 m!7932334))

(declare-fun m!7932336 () Bool)

(assert (=> b!7252683 m!7932336))

(declare-fun m!7932338 () Bool)

(assert (=> b!7252683 m!7932338))

(declare-fun m!7932340 () Bool)

(assert (=> d!2254707 m!7932340))

(declare-fun m!7932342 () Bool)

(assert (=> d!2254707 m!7932342))

(declare-fun m!7932344 () Bool)

(assert (=> d!2254707 m!7932344))

(declare-fun m!7932346 () Bool)

(assert (=> b!7252682 m!7932346))

(assert (=> b!7252524 d!2254707))

(declare-fun b!7252685 () Bool)

(declare-fun e!4348782 () (Set Context!15184))

(assert (=> b!7252685 (= e!4348782 (as set.empty (Set Context!15184)))))

(declare-fun b!7252686 () Bool)

(declare-fun e!4348781 () (Set Context!15184))

(assert (=> b!7252686 (= e!4348781 e!4348782)))

(declare-fun c!1348060 () Bool)

(assert (=> b!7252686 (= c!1348060 (is-Cons!70412 (exprs!8092 ct1!232)))))

(declare-fun b!7252687 () Bool)

(declare-fun call!660676 () (Set Context!15184))

(assert (=> b!7252687 (= e!4348782 call!660676)))

(declare-fun b!7252688 () Bool)

(declare-fun e!4348783 () Bool)

(assert (=> b!7252688 (= e!4348783 (nullable!7912 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7252689 () Bool)

(assert (=> b!7252689 (= e!4348781 (set.union call!660676 (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 ct1!232))) (h!76861 s1!1971))))))

(declare-fun d!2254709 () Bool)

(declare-fun c!1348061 () Bool)

(assert (=> d!2254709 (= c!1348061 e!4348783)))

(declare-fun res!2941417 () Bool)

(assert (=> d!2254709 (=> (not res!2941417) (not e!4348783))))

(assert (=> d!2254709 (= res!2941417 (is-Cons!70412 (exprs!8092 ct1!232)))))

(assert (=> d!2254709 (= (derivationStepZipperUp!2476 ct1!232 (h!76861 s1!1971)) e!4348781)))

(declare-fun bm!660671 () Bool)

(assert (=> bm!660671 (= call!660676 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 ct1!232)) (Context!15185 (t!384594 (exprs!8092 ct1!232))) (h!76861 s1!1971)))))

(assert (= (and d!2254709 res!2941417) b!7252688))

(assert (= (and d!2254709 c!1348061) b!7252689))

(assert (= (and d!2254709 (not c!1348061)) b!7252686))

(assert (= (and b!7252686 c!1348060) b!7252687))

(assert (= (and b!7252686 (not c!1348060)) b!7252685))

(assert (= (or b!7252689 b!7252687) bm!660671))

(assert (=> b!7252688 m!7932162))

(declare-fun m!7932348 () Bool)

(assert (=> b!7252689 m!7932348))

(declare-fun m!7932350 () Bool)

(assert (=> bm!660671 m!7932350))

(assert (=> b!7252524 d!2254709))

(declare-fun b!7252690 () Bool)

(declare-fun e!4348784 () List!70536)

(assert (=> b!7252690 (= e!4348784 (exprs!8092 ct2!328))))

(declare-fun b!7252691 () Bool)

(assert (=> b!7252691 (= e!4348784 (Cons!70412 (h!76860 (exprs!8092 lt!2585682)) (++!16566 (t!384594 (exprs!8092 lt!2585682)) (exprs!8092 ct2!328))))))

(declare-fun e!4348785 () Bool)

(declare-fun lt!2585789 () List!70536)

(declare-fun b!7252693 () Bool)

(assert (=> b!7252693 (= e!4348785 (or (not (= (exprs!8092 ct2!328) Nil!70412)) (= lt!2585789 (exprs!8092 lt!2585682))))))

(declare-fun d!2254711 () Bool)

(assert (=> d!2254711 e!4348785))

(declare-fun res!2941418 () Bool)

(assert (=> d!2254711 (=> (not res!2941418) (not e!4348785))))

(assert (=> d!2254711 (= res!2941418 (= (content!14619 lt!2585789) (set.union (content!14619 (exprs!8092 lt!2585682)) (content!14619 (exprs!8092 ct2!328)))))))

(assert (=> d!2254711 (= lt!2585789 e!4348784)))

(declare-fun c!1348062 () Bool)

(assert (=> d!2254711 (= c!1348062 (is-Nil!70412 (exprs!8092 lt!2585682)))))

(assert (=> d!2254711 (= (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328)) lt!2585789)))

(declare-fun b!7252692 () Bool)

(declare-fun res!2941419 () Bool)

(assert (=> b!7252692 (=> (not res!2941419) (not e!4348785))))

(assert (=> b!7252692 (= res!2941419 (= (size!41722 lt!2585789) (+ (size!41722 (exprs!8092 lt!2585682)) (size!41722 (exprs!8092 ct2!328)))))))

(assert (= (and d!2254711 c!1348062) b!7252690))

(assert (= (and d!2254711 (not c!1348062)) b!7252691))

(assert (= (and d!2254711 res!2941418) b!7252692))

(assert (= (and b!7252692 res!2941419) b!7252693))

(declare-fun m!7932352 () Bool)

(assert (=> b!7252691 m!7932352))

(declare-fun m!7932354 () Bool)

(assert (=> d!2254711 m!7932354))

(declare-fun m!7932356 () Bool)

(assert (=> d!2254711 m!7932356))

(assert (=> d!2254711 m!7932262))

(declare-fun m!7932358 () Bool)

(assert (=> b!7252692 m!7932358))

(declare-fun m!7932360 () Bool)

(assert (=> b!7252692 m!7932360))

(assert (=> b!7252692 m!7932268))

(assert (=> b!7252524 d!2254711))

(declare-fun d!2254713 () Bool)

(assert (=> d!2254713 (forall!17499 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328)) lambda!444513)))

(declare-fun lt!2585790 () Unit!163891)

(assert (=> d!2254713 (= lt!2585790 (choose!56038 (exprs!8092 lt!2585682) (exprs!8092 ct2!328) lambda!444513))))

(assert (=> d!2254713 (forall!17499 (exprs!8092 lt!2585682) lambda!444513)))

(assert (=> d!2254713 (= (lemmaConcatPreservesForall!1459 (exprs!8092 lt!2585682) (exprs!8092 ct2!328) lambda!444513) lt!2585790)))

(declare-fun bs!1906649 () Bool)

(assert (= bs!1906649 d!2254713))

(assert (=> bs!1906649 m!7932108))

(assert (=> bs!1906649 m!7932108))

(declare-fun m!7932362 () Bool)

(assert (=> bs!1906649 m!7932362))

(declare-fun m!7932364 () Bool)

(assert (=> bs!1906649 m!7932364))

(declare-fun m!7932366 () Bool)

(assert (=> bs!1906649 m!7932366))

(assert (=> b!7252524 d!2254713))

(declare-fun d!2254715 () Bool)

(declare-fun c!1348063 () Bool)

(assert (=> d!2254715 (= c!1348063 (isEmpty!40550 (++!16567 (t!384595 s1!1971) s2!1849)))))

(declare-fun e!4348786 () Bool)

(assert (=> d!2254715 (= (matchZipper!3562 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) (++!16567 (t!384595 s1!1971) s2!1849)) e!4348786)))

(declare-fun b!7252694 () Bool)

(assert (=> b!7252694 (= e!4348786 (nullableZipper!2916 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184)))))))

(declare-fun b!7252695 () Bool)

(assert (=> b!7252695 (= e!4348786 (matchZipper!3562 (derivationStepZipper!3430 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) (head!14908 (++!16567 (t!384595 s1!1971) s2!1849))) (tail!14332 (++!16567 (t!384595 s1!1971) s2!1849))))))

(assert (= (and d!2254715 c!1348063) b!7252694))

(assert (= (and d!2254715 (not c!1348063)) b!7252695))

(assert (=> d!2254715 m!7932110))

(declare-fun m!7932368 () Bool)

(assert (=> d!2254715 m!7932368))

(assert (=> b!7252694 m!7932114))

(declare-fun m!7932370 () Bool)

(assert (=> b!7252694 m!7932370))

(assert (=> b!7252695 m!7932110))

(declare-fun m!7932372 () Bool)

(assert (=> b!7252695 m!7932372))

(assert (=> b!7252695 m!7932114))

(assert (=> b!7252695 m!7932372))

(declare-fun m!7932374 () Bool)

(assert (=> b!7252695 m!7932374))

(assert (=> b!7252695 m!7932110))

(declare-fun m!7932376 () Bool)

(assert (=> b!7252695 m!7932376))

(assert (=> b!7252695 m!7932374))

(assert (=> b!7252695 m!7932376))

(declare-fun m!7932378 () Bool)

(assert (=> b!7252695 m!7932378))

(assert (=> b!7252524 d!2254715))

(declare-fun bs!1906650 () Bool)

(declare-fun d!2254717 () Bool)

(assert (= bs!1906650 (and d!2254717 b!7252520)))

(declare-fun lambda!444560 () Int)

(assert (=> bs!1906650 (= lambda!444560 lambda!444513)))

(assert (=> d!2254717 (matchZipper!3562 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) (++!16567 (t!384595 s1!1971) s2!1849))))

(declare-fun lt!2585798 () Unit!163891)

(assert (=> d!2254717 (= lt!2585798 (lemmaConcatPreservesForall!1459 (exprs!8092 lt!2585682) (exprs!8092 ct2!328) lambda!444560))))

(declare-fun lt!2585797 () Unit!163891)

(declare-fun choose!56042 (Context!15184 Context!15184 List!70537 List!70537) Unit!163891)

(assert (=> d!2254717 (= lt!2585797 (choose!56042 lt!2585682 ct2!328 (t!384595 s1!1971) s2!1849))))

(assert (=> d!2254717 (matchZipper!3562 (set.insert lt!2585682 (as set.empty (Set Context!15184))) (t!384595 s1!1971))))

(assert (=> d!2254717 (= (lemmaConcatenateContextMatchesConcatOfStrings!397 lt!2585682 ct2!328 (t!384595 s1!1971) s2!1849) lt!2585797)))

(declare-fun bs!1906651 () Bool)

(assert (= bs!1906651 d!2254717))

(assert (=> bs!1906651 m!7932110))

(declare-fun m!7932386 () Bool)

(assert (=> bs!1906651 m!7932386))

(assert (=> bs!1906651 m!7932108))

(assert (=> bs!1906651 m!7932114))

(assert (=> bs!1906651 m!7932110))

(assert (=> bs!1906651 m!7932116))

(assert (=> bs!1906651 m!7932114))

(declare-fun m!7932388 () Bool)

(assert (=> bs!1906651 m!7932388))

(assert (=> bs!1906651 m!7932386))

(declare-fun m!7932390 () Bool)

(assert (=> bs!1906651 m!7932390))

(declare-fun m!7932392 () Bool)

(assert (=> bs!1906651 m!7932392))

(assert (=> b!7252524 d!2254717))

(declare-fun d!2254721 () Bool)

(declare-fun c!1348066 () Bool)

(assert (=> d!2254721 (= c!1348066 (isEmpty!40550 (t!384595 s1!1971)))))

(declare-fun e!4348790 () Bool)

(assert (=> d!2254721 (= (matchZipper!3562 lt!2585677 (t!384595 s1!1971)) e!4348790)))

(declare-fun b!7252701 () Bool)

(assert (=> b!7252701 (= e!4348790 (nullableZipper!2916 lt!2585677))))

(declare-fun b!7252702 () Bool)

(assert (=> b!7252702 (= e!4348790 (matchZipper!3562 (derivationStepZipper!3430 lt!2585677 (head!14908 (t!384595 s1!1971))) (tail!14332 (t!384595 s1!1971))))))

(assert (= (and d!2254721 c!1348066) b!7252701))

(assert (= (and d!2254721 (not c!1348066)) b!7252702))

(declare-fun m!7932394 () Bool)

(assert (=> d!2254721 m!7932394))

(declare-fun m!7932396 () Bool)

(assert (=> b!7252701 m!7932396))

(declare-fun m!7932398 () Bool)

(assert (=> b!7252702 m!7932398))

(assert (=> b!7252702 m!7932398))

(declare-fun m!7932400 () Bool)

(assert (=> b!7252702 m!7932400))

(declare-fun m!7932402 () Bool)

(assert (=> b!7252702 m!7932402))

(assert (=> b!7252702 m!7932400))

(assert (=> b!7252702 m!7932402))

(declare-fun m!7932404 () Bool)

(assert (=> b!7252702 m!7932404))

(assert (=> b!7252514 d!2254721))

(declare-fun bs!1906652 () Bool)

(declare-fun d!2254723 () Bool)

(assert (= bs!1906652 (and d!2254723 b!7252522)))

(declare-fun lambda!444561 () Int)

(assert (=> bs!1906652 (= lambda!444561 lambda!444515)))

(declare-fun bs!1906653 () Bool)

(assert (= bs!1906653 (and d!2254723 d!2254673)))

(assert (=> bs!1906653 (= lambda!444561 lambda!444545)))

(assert (=> d!2254723 true))

(assert (=> d!2254723 (= (derivationStepZipper!3430 lt!2585678 (h!76861 s1!1971)) (flatMap!2817 lt!2585678 lambda!444561))))

(declare-fun bs!1906655 () Bool)

(assert (= bs!1906655 d!2254723))

(declare-fun m!7932406 () Bool)

(assert (=> bs!1906655 m!7932406))

(assert (=> b!7252514 d!2254723))

(declare-fun bs!1906656 () Bool)

(declare-fun d!2254725 () Bool)

(assert (= bs!1906656 (and d!2254725 b!7252520)))

(declare-fun lambda!444564 () Int)

(assert (=> bs!1906656 (= lambda!444564 lambda!444513)))

(declare-fun bs!1906657 () Bool)

(assert (= bs!1906657 (and d!2254725 d!2254717)))

(assert (=> bs!1906657 (= lambda!444564 lambda!444560)))

(assert (=> d!2254725 (= (inv!89641 lt!2585683) (forall!17499 (exprs!8092 lt!2585683) lambda!444564))))

(declare-fun bs!1906658 () Bool)

(assert (= bs!1906658 d!2254725))

(declare-fun m!7932418 () Bool)

(assert (=> bs!1906658 m!7932418))

(assert (=> b!7252515 d!2254725))

(declare-fun d!2254729 () Bool)

(declare-fun c!1348069 () Bool)

(assert (=> d!2254729 (= c!1348069 (isEmpty!40550 s1!1971))))

(declare-fun e!4348794 () Bool)

(assert (=> d!2254729 (= (matchZipper!3562 lt!2585678 s1!1971) e!4348794)))

(declare-fun b!7252708 () Bool)

(assert (=> b!7252708 (= e!4348794 (nullableZipper!2916 lt!2585678))))

(declare-fun b!7252709 () Bool)

(assert (=> b!7252709 (= e!4348794 (matchZipper!3562 (derivationStepZipper!3430 lt!2585678 (head!14908 s1!1971)) (tail!14332 s1!1971)))))

(assert (= (and d!2254729 c!1348069) b!7252708))

(assert (= (and d!2254729 (not c!1348069)) b!7252709))

(declare-fun m!7932422 () Bool)

(assert (=> d!2254729 m!7932422))

(declare-fun m!7932424 () Bool)

(assert (=> b!7252708 m!7932424))

(declare-fun m!7932426 () Bool)

(assert (=> b!7252709 m!7932426))

(assert (=> b!7252709 m!7932426))

(declare-fun m!7932428 () Bool)

(assert (=> b!7252709 m!7932428))

(declare-fun m!7932430 () Bool)

(assert (=> b!7252709 m!7932430))

(assert (=> b!7252709 m!7932428))

(assert (=> b!7252709 m!7932430))

(declare-fun m!7932432 () Bool)

(assert (=> b!7252709 m!7932432))

(assert (=> start!705986 d!2254729))

(declare-fun bs!1906659 () Bool)

(declare-fun d!2254733 () Bool)

(assert (= bs!1906659 (and d!2254733 b!7252520)))

(declare-fun lambda!444565 () Int)

(assert (=> bs!1906659 (= lambda!444565 lambda!444513)))

(declare-fun bs!1906660 () Bool)

(assert (= bs!1906660 (and d!2254733 d!2254717)))

(assert (=> bs!1906660 (= lambda!444565 lambda!444560)))

(declare-fun bs!1906661 () Bool)

(assert (= bs!1906661 (and d!2254733 d!2254725)))

(assert (=> bs!1906661 (= lambda!444565 lambda!444564)))

(assert (=> d!2254733 (= (inv!89641 ct1!232) (forall!17499 (exprs!8092 ct1!232) lambda!444565))))

(declare-fun bs!1906662 () Bool)

(assert (= bs!1906662 d!2254733))

(declare-fun m!7932434 () Bool)

(assert (=> bs!1906662 m!7932434))

(assert (=> start!705986 d!2254733))

(declare-fun bs!1906663 () Bool)

(declare-fun d!2254735 () Bool)

(assert (= bs!1906663 (and d!2254735 b!7252520)))

(declare-fun lambda!444566 () Int)

(assert (=> bs!1906663 (= lambda!444566 lambda!444513)))

(declare-fun bs!1906664 () Bool)

(assert (= bs!1906664 (and d!2254735 d!2254717)))

(assert (=> bs!1906664 (= lambda!444566 lambda!444560)))

(declare-fun bs!1906665 () Bool)

(assert (= bs!1906665 (and d!2254735 d!2254725)))

(assert (=> bs!1906665 (= lambda!444566 lambda!444564)))

(declare-fun bs!1906666 () Bool)

(assert (= bs!1906666 (and d!2254735 d!2254733)))

(assert (=> bs!1906666 (= lambda!444566 lambda!444565)))

(assert (=> d!2254735 (= (inv!89641 ct2!328) (forall!17499 (exprs!8092 ct2!328) lambda!444566))))

(declare-fun bs!1906667 () Bool)

(assert (= bs!1906667 d!2254735))

(declare-fun m!7932436 () Bool)

(assert (=> bs!1906667 m!7932436))

(assert (=> start!705986 d!2254735))

(declare-fun b!7252710 () Bool)

(declare-fun e!4348796 () (Set Context!15184))

(assert (=> b!7252710 (= e!4348796 (as set.empty (Set Context!15184)))))

(declare-fun b!7252711 () Bool)

(declare-fun e!4348795 () (Set Context!15184))

(assert (=> b!7252711 (= e!4348795 e!4348796)))

(declare-fun c!1348070 () Bool)

(assert (=> b!7252711 (= c!1348070 (is-Cons!70412 (exprs!8092 lt!2585693)))))

(declare-fun b!7252712 () Bool)

(declare-fun call!660679 () (Set Context!15184))

(assert (=> b!7252712 (= e!4348796 call!660679)))

(declare-fun b!7252713 () Bool)

(declare-fun e!4348797 () Bool)

(assert (=> b!7252713 (= e!4348797 (nullable!7912 (h!76860 (exprs!8092 lt!2585693))))))

(declare-fun b!7252714 () Bool)

(assert (=> b!7252714 (= e!4348795 (set.union call!660679 (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 lt!2585693))) (h!76861 s1!1971))))))

(declare-fun d!2254737 () Bool)

(declare-fun c!1348071 () Bool)

(assert (=> d!2254737 (= c!1348071 e!4348797)))

(declare-fun res!2941422 () Bool)

(assert (=> d!2254737 (=> (not res!2941422) (not e!4348797))))

(assert (=> d!2254737 (= res!2941422 (is-Cons!70412 (exprs!8092 lt!2585693)))))

(assert (=> d!2254737 (= (derivationStepZipperUp!2476 lt!2585693 (h!76861 s1!1971)) e!4348795)))

(declare-fun bm!660674 () Bool)

(assert (=> bm!660674 (= call!660679 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 lt!2585693)) (Context!15185 (t!384594 (exprs!8092 lt!2585693))) (h!76861 s1!1971)))))

(assert (= (and d!2254737 res!2941422) b!7252713))

(assert (= (and d!2254737 c!1348071) b!7252714))

(assert (= (and d!2254737 (not c!1348071)) b!7252711))

(assert (= (and b!7252711 c!1348070) b!7252712))

(assert (= (and b!7252711 (not c!1348070)) b!7252710))

(assert (= (or b!7252714 b!7252712) bm!660674))

(declare-fun m!7932438 () Bool)

(assert (=> b!7252713 m!7932438))

(declare-fun m!7932440 () Bool)

(assert (=> b!7252714 m!7932440))

(declare-fun m!7932442 () Bool)

(assert (=> bm!660674 m!7932442))

(assert (=> b!7252521 d!2254737))

(assert (=> b!7252521 d!2254677))

(declare-fun d!2254739 () Bool)

(declare-fun dynLambda!28755 (Int Context!15184) (Set Context!15184))

(assert (=> d!2254739 (= (flatMap!2817 lt!2585689 lambda!444515) (dynLambda!28755 lambda!444515 lt!2585687))))

(declare-fun lt!2585802 () Unit!163891)

(declare-fun choose!56043 ((Set Context!15184) Context!15184 Int) Unit!163891)

(assert (=> d!2254739 (= lt!2585802 (choose!56043 lt!2585689 lt!2585687 lambda!444515))))

(assert (=> d!2254739 (= lt!2585689 (set.insert lt!2585687 (as set.empty (Set Context!15184))))))

(assert (=> d!2254739 (= (lemmaFlatMapOnSingletonSet!2221 lt!2585689 lt!2585687 lambda!444515) lt!2585802)))

(declare-fun b_lambda!278625 () Bool)

(assert (=> (not b_lambda!278625) (not d!2254739)))

(declare-fun bs!1906668 () Bool)

(assert (= bs!1906668 d!2254739))

(assert (=> bs!1906668 m!7932174))

(declare-fun m!7932444 () Bool)

(assert (=> bs!1906668 m!7932444))

(declare-fun m!7932446 () Bool)

(assert (=> bs!1906668 m!7932446))

(assert (=> bs!1906668 m!7932156))

(assert (=> b!7252522 d!2254739))

(declare-fun d!2254741 () Bool)

(declare-fun choose!56044 ((Set Context!15184) Int) (Set Context!15184))

(assert (=> d!2254741 (= (flatMap!2817 lt!2585678 lambda!444515) (choose!56044 lt!2585678 lambda!444515))))

(declare-fun bs!1906669 () Bool)

(assert (= bs!1906669 d!2254741))

(declare-fun m!7932448 () Bool)

(assert (=> bs!1906669 m!7932448))

(assert (=> b!7252522 d!2254741))

(declare-fun d!2254743 () Bool)

(declare-fun nullableFct!3105 (Regex!18652) Bool)

(assert (=> d!2254743 (= (nullable!7912 (h!76860 (exprs!8092 ct1!232))) (nullableFct!3105 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun bs!1906670 () Bool)

(assert (= bs!1906670 d!2254743))

(declare-fun m!7932450 () Bool)

(assert (=> bs!1906670 m!7932450))

(assert (=> b!7252522 d!2254743))

(assert (=> b!7252522 d!2254691))

(declare-fun d!2254745 () Bool)

(assert (=> d!2254745 (= (tail!14330 lt!2585681) (t!384594 lt!2585681))))

(assert (=> b!7252522 d!2254745))

(declare-fun b!7252715 () Bool)

(declare-fun e!4348803 () (Set Context!15184))

(assert (=> b!7252715 (= e!4348803 (set.insert lt!2585693 (as set.empty (Set Context!15184))))))

(declare-fun bm!660675 () Bool)

(declare-fun call!660680 () List!70536)

(declare-fun call!660682 () List!70536)

(assert (=> bm!660675 (= call!660680 call!660682)))

(declare-fun b!7252716 () Bool)

(declare-fun e!4348798 () (Set Context!15184))

(declare-fun e!4348802 () (Set Context!15184))

(assert (=> b!7252716 (= e!4348798 e!4348802)))

(declare-fun c!1348072 () Bool)

(assert (=> b!7252716 (= c!1348072 (is-Concat!27497 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7252717 () Bool)

(declare-fun e!4348801 () (Set Context!15184))

(assert (=> b!7252717 (= e!4348801 (as set.empty (Set Context!15184)))))

(declare-fun b!7252718 () Bool)

(declare-fun e!4348800 () (Set Context!15184))

(assert (=> b!7252718 (= e!4348803 e!4348800)))

(declare-fun c!1348074 () Bool)

(assert (=> b!7252718 (= c!1348074 (is-Union!18652 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7252719 () Bool)

(declare-fun e!4348799 () Bool)

(assert (=> b!7252719 (= e!4348799 (nullable!7912 (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))

(declare-fun d!2254747 () Bool)

(declare-fun c!1348076 () Bool)

(assert (=> d!2254747 (= c!1348076 (and (is-ElementMatch!18652 (h!76860 (exprs!8092 ct1!232))) (= (c!1348008 (h!76860 (exprs!8092 ct1!232))) (h!76861 s1!1971))))))

(assert (=> d!2254747 (= (derivationStepZipperDown!2646 (h!76860 (exprs!8092 ct1!232)) lt!2585693 (h!76861 s1!1971)) e!4348803)))

(declare-fun bm!660676 () Bool)

(declare-fun call!660684 () (Set Context!15184))

(declare-fun call!660683 () (Set Context!15184))

(assert (=> bm!660676 (= call!660684 call!660683)))

(declare-fun b!7252720 () Bool)

(declare-fun c!1348075 () Bool)

(assert (=> b!7252720 (= c!1348075 (is-Star!18652 (h!76860 (exprs!8092 ct1!232))))))

(assert (=> b!7252720 (= e!4348802 e!4348801)))

(declare-fun b!7252721 () Bool)

(assert (=> b!7252721 (= e!4348801 call!660684)))

(declare-fun bm!660677 () Bool)

(declare-fun call!660685 () (Set Context!15184))

(assert (=> bm!660677 (= call!660685 (derivationStepZipperDown!2646 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))) (ite c!1348074 lt!2585693 (Context!15185 call!660682)) (h!76861 s1!1971)))))

(declare-fun c!1348073 () Bool)

(declare-fun bm!660678 () Bool)

(declare-fun call!660681 () (Set Context!15184))

(assert (=> bm!660678 (= call!660681 (derivationStepZipperDown!2646 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))) (ite (or c!1348074 c!1348073) lt!2585693 (Context!15185 call!660680)) (h!76861 s1!1971)))))

(declare-fun b!7252722 () Bool)

(assert (=> b!7252722 (= c!1348073 e!4348799)))

(declare-fun res!2941423 () Bool)

(assert (=> b!7252722 (=> (not res!2941423) (not e!4348799))))

(assert (=> b!7252722 (= res!2941423 (is-Concat!27497 (h!76860 (exprs!8092 ct1!232))))))

(assert (=> b!7252722 (= e!4348800 e!4348798)))

(declare-fun bm!660679 () Bool)

(assert (=> bm!660679 (= call!660682 ($colon$colon!2920 (exprs!8092 lt!2585693) (ite (or c!1348073 c!1348072) (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (h!76860 (exprs!8092 ct1!232)))))))

(declare-fun bm!660680 () Bool)

(assert (=> bm!660680 (= call!660683 call!660681)))

(declare-fun b!7252723 () Bool)

(assert (=> b!7252723 (= e!4348800 (set.union call!660681 call!660685))))

(declare-fun b!7252724 () Bool)

(assert (=> b!7252724 (= e!4348798 (set.union call!660685 call!660683))))

(declare-fun b!7252725 () Bool)

(assert (=> b!7252725 (= e!4348802 call!660684)))

(assert (= (and d!2254747 c!1348076) b!7252715))

(assert (= (and d!2254747 (not c!1348076)) b!7252718))

(assert (= (and b!7252718 c!1348074) b!7252723))

(assert (= (and b!7252718 (not c!1348074)) b!7252722))

(assert (= (and b!7252722 res!2941423) b!7252719))

(assert (= (and b!7252722 c!1348073) b!7252724))

(assert (= (and b!7252722 (not c!1348073)) b!7252716))

(assert (= (and b!7252716 c!1348072) b!7252725))

(assert (= (and b!7252716 (not c!1348072)) b!7252720))

(assert (= (and b!7252720 c!1348075) b!7252721))

(assert (= (and b!7252720 (not c!1348075)) b!7252717))

(assert (= (or b!7252725 b!7252721) bm!660675))

(assert (= (or b!7252725 b!7252721) bm!660676))

(assert (= (or b!7252724 bm!660675) bm!660679))

(assert (= (or b!7252724 bm!660676) bm!660680))

(assert (= (or b!7252723 b!7252724) bm!660677))

(assert (= (or b!7252723 bm!660680) bm!660678))

(declare-fun m!7932452 () Bool)

(assert (=> bm!660677 m!7932452))

(assert (=> b!7252719 m!7932306))

(declare-fun m!7932454 () Bool)

(assert (=> bm!660679 m!7932454))

(declare-fun m!7932456 () Bool)

(assert (=> bm!660678 m!7932456))

(declare-fun m!7932458 () Bool)

(assert (=> b!7252715 m!7932458))

(assert (=> b!7252522 d!2254747))

(assert (=> b!7252522 d!2254677))

(assert (=> b!7252522 d!2254709))

(declare-fun d!2254749 () Bool)

(assert (=> d!2254749 (= (flatMap!2817 lt!2585678 lambda!444515) (dynLambda!28755 lambda!444515 ct1!232))))

(declare-fun lt!2585803 () Unit!163891)

(assert (=> d!2254749 (= lt!2585803 (choose!56043 lt!2585678 ct1!232 lambda!444515))))

(assert (=> d!2254749 (= lt!2585678 (set.insert ct1!232 (as set.empty (Set Context!15184))))))

(assert (=> d!2254749 (= (lemmaFlatMapOnSingletonSet!2221 lt!2585678 ct1!232 lambda!444515) lt!2585803)))

(declare-fun b_lambda!278627 () Bool)

(assert (=> (not b_lambda!278627) (not d!2254749)))

(declare-fun bs!1906671 () Bool)

(assert (= bs!1906671 d!2254749))

(assert (=> bs!1906671 m!7932166))

(declare-fun m!7932460 () Bool)

(assert (=> bs!1906671 m!7932460))

(declare-fun m!7932462 () Bool)

(assert (=> bs!1906671 m!7932462))

(assert (=> bs!1906671 m!7932134))

(assert (=> b!7252522 d!2254749))

(declare-fun d!2254751 () Bool)

(assert (=> d!2254751 (= (flatMap!2817 lt!2585689 lambda!444515) (choose!56044 lt!2585689 lambda!444515))))

(declare-fun bs!1906672 () Bool)

(assert (= bs!1906672 d!2254751))

(declare-fun m!7932464 () Bool)

(assert (=> bs!1906672 m!7932464))

(assert (=> b!7252522 d!2254751))

(declare-fun b!7252726 () Bool)

(declare-fun e!4348805 () (Set Context!15184))

(assert (=> b!7252726 (= e!4348805 (as set.empty (Set Context!15184)))))

(declare-fun b!7252727 () Bool)

(declare-fun e!4348804 () (Set Context!15184))

(assert (=> b!7252727 (= e!4348804 e!4348805)))

(declare-fun c!1348077 () Bool)

(assert (=> b!7252727 (= c!1348077 (is-Cons!70412 (exprs!8092 lt!2585683)))))

(declare-fun b!7252728 () Bool)

(declare-fun call!660686 () (Set Context!15184))

(assert (=> b!7252728 (= e!4348805 call!660686)))

(declare-fun b!7252729 () Bool)

(declare-fun e!4348806 () Bool)

(assert (=> b!7252729 (= e!4348806 (nullable!7912 (h!76860 (exprs!8092 lt!2585683))))))

(declare-fun b!7252730 () Bool)

(assert (=> b!7252730 (= e!4348804 (set.union call!660686 (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 lt!2585683))) (h!76861 s1!1971))))))

(declare-fun d!2254753 () Bool)

(declare-fun c!1348078 () Bool)

(assert (=> d!2254753 (= c!1348078 e!4348806)))

(declare-fun res!2941424 () Bool)

(assert (=> d!2254753 (=> (not res!2941424) (not e!4348806))))

(assert (=> d!2254753 (= res!2941424 (is-Cons!70412 (exprs!8092 lt!2585683)))))

(assert (=> d!2254753 (= (derivationStepZipperUp!2476 lt!2585683 (h!76861 s1!1971)) e!4348804)))

(declare-fun bm!660681 () Bool)

(assert (=> bm!660681 (= call!660686 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 lt!2585683)) (Context!15185 (t!384594 (exprs!8092 lt!2585683))) (h!76861 s1!1971)))))

(assert (= (and d!2254753 res!2941424) b!7252729))

(assert (= (and d!2254753 c!1348078) b!7252730))

(assert (= (and d!2254753 (not c!1348078)) b!7252727))

(assert (= (and b!7252727 c!1348077) b!7252728))

(assert (= (and b!7252727 (not c!1348077)) b!7252726))

(assert (= (or b!7252730 b!7252728) bm!660681))

(declare-fun m!7932466 () Bool)

(assert (=> b!7252729 m!7932466))

(declare-fun m!7932468 () Bool)

(assert (=> b!7252730 m!7932468))

(declare-fun m!7932470 () Bool)

(assert (=> bm!660681 m!7932470))

(assert (=> b!7252523 d!2254753))

(declare-fun b!7252735 () Bool)

(declare-fun e!4348809 () Bool)

(declare-fun tp!2037727 () Bool)

(declare-fun tp!2037728 () Bool)

(assert (=> b!7252735 (= e!4348809 (and tp!2037727 tp!2037728))))

(assert (=> b!7252518 (= tp!2037707 e!4348809)))

(assert (= (and b!7252518 (is-Cons!70412 (exprs!8092 ct2!328))) b!7252735))

(declare-fun b!7252740 () Bool)

(declare-fun e!4348812 () Bool)

(declare-fun tp!2037731 () Bool)

(assert (=> b!7252740 (= e!4348812 (and tp_is_empty!46769 tp!2037731))))

(assert (=> b!7252513 (= tp!2037710 e!4348812)))

(assert (= (and b!7252513 (is-Cons!70413 (t!384595 s1!1971))) b!7252740))

(declare-fun b!7252741 () Bool)

(declare-fun e!4348813 () Bool)

(declare-fun tp!2037732 () Bool)

(assert (=> b!7252741 (= e!4348813 (and tp_is_empty!46769 tp!2037732))))

(assert (=> b!7252525 (= tp!2037708 e!4348813)))

(assert (= (and b!7252525 (is-Cons!70413 (t!384595 s2!1849))) b!7252741))

(declare-fun b!7252742 () Bool)

(declare-fun e!4348814 () Bool)

(declare-fun tp!2037733 () Bool)

(declare-fun tp!2037734 () Bool)

(assert (=> b!7252742 (= e!4348814 (and tp!2037733 tp!2037734))))

(assert (=> b!7252516 (= tp!2037709 e!4348814)))

(assert (= (and b!7252516 (is-Cons!70412 (exprs!8092 ct1!232))) b!7252742))

(declare-fun b_lambda!278629 () Bool)

(assert (= b_lambda!278623 (or b!7252527 b_lambda!278629)))

(declare-fun bs!1906673 () Bool)

(declare-fun d!2254755 () Bool)

(assert (= bs!1906673 (and d!2254755 b!7252527)))

(assert (=> bs!1906673 (= (dynLambda!28754 lambda!444514 lt!2585785) (matchZipper!3562 (set.insert lt!2585785 (as set.empty (Set Context!15184))) (t!384595 s1!1971)))))

(declare-fun m!7932472 () Bool)

(assert (=> bs!1906673 m!7932472))

(assert (=> bs!1906673 m!7932472))

(declare-fun m!7932474 () Bool)

(assert (=> bs!1906673 m!7932474))

(assert (=> d!2254703 d!2254755))

(declare-fun b_lambda!278631 () Bool)

(assert (= b_lambda!278625 (or b!7252522 b_lambda!278631)))

(declare-fun bs!1906674 () Bool)

(declare-fun d!2254757 () Bool)

(assert (= bs!1906674 (and d!2254757 b!7252522)))

(assert (=> bs!1906674 (= (dynLambda!28755 lambda!444515 lt!2585687) (derivationStepZipperUp!2476 lt!2585687 (h!76861 s1!1971)))))

(assert (=> bs!1906674 m!7932146))

(assert (=> d!2254739 d!2254757))

(declare-fun b_lambda!278633 () Bool)

(assert (= b_lambda!278627 (or b!7252522 b_lambda!278633)))

(declare-fun bs!1906675 () Bool)

(declare-fun d!2254759 () Bool)

(assert (= bs!1906675 (and d!2254759 b!7252522)))

(assert (=> bs!1906675 (= (dynLambda!28755 lambda!444515 ct1!232) (derivationStepZipperUp!2476 ct1!232 (h!76861 s1!1971)))))

(assert (=> bs!1906675 m!7932118))

(assert (=> d!2254749 d!2254759))

(push 1)

(assert (not d!2254675))

(assert (not bm!660665))

(assert (not bm!660674))

(assert (not b!7252603))

(assert (not bs!1906674))

(assert (not b!7252659))

(assert tp_is_empty!46769)

(assert (not b!7252597))

(assert (not d!2254673))

(assert (not b!7252730))

(assert (not b!7252708))

(assert (not bm!660677))

(assert (not d!2254707))

(assert (not b!7252701))

(assert (not b_lambda!278633))

(assert (not d!2254703))

(assert (not d!2254715))

(assert (not b!7252683))

(assert (not b!7252709))

(assert (not d!2254729))

(assert (not b!7252647))

(assert (not b!7252729))

(assert (not b!7252689))

(assert (not d!2254721))

(assert (not d!2254733))

(assert (not b!7252691))

(assert (not b!7252735))

(assert (not bm!660681))

(assert (not d!2254679))

(assert (not b_lambda!278629))

(assert (not bm!660650))

(assert (not b!7252658))

(assert (not d!2254683))

(assert (not d!2254711))

(assert (not bm!660666))

(assert (not b!7252682))

(assert (not b!7252694))

(assert (not bm!660679))

(assert (not d!2254735))

(assert (not d!2254677))

(assert (not b!7252695))

(assert (not d!2254739))

(assert (not b!7252617))

(assert (not bs!1906673))

(assert (not d!2254717))

(assert (not b!7252714))

(assert (not b!7252719))

(assert (not b!7252618))

(assert (not bm!660678))

(assert (not b!7252688))

(assert (not b!7252713))

(assert (not b!7252742))

(assert (not bm!660667))

(assert (not d!2254751))

(assert (not d!2254741))

(assert (not bm!660671))

(assert (not b!7252741))

(assert (not b!7252692))

(assert (not d!2254685))

(assert (not bs!1906675))

(assert (not d!2254723))

(assert (not d!2254713))

(assert (not d!2254681))

(assert (not b!7252740))

(assert (not b_lambda!278631))

(assert (not d!2254699))

(assert (not d!2254725))

(assert (not d!2254749))

(assert (not b!7252702))

(assert (not b!7252596))

(assert (not d!2254743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2254825 () Bool)

(assert (=> d!2254825 (= (nullable!7912 (regOne!37816 (h!76860 (exprs!8092 ct1!232)))) (nullableFct!3105 (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))

(declare-fun bs!1906706 () Bool)

(assert (= bs!1906706 d!2254825))

(declare-fun m!7932654 () Bool)

(assert (=> bs!1906706 m!7932654))

(assert (=> b!7252719 d!2254825))

(declare-fun e!4348884 () (Set Context!15184))

(declare-fun b!7252857 () Bool)

(assert (=> b!7252857 (= e!4348884 (set.insert (ite (or c!1348047 c!1348046) lt!2585683 (Context!15185 call!660668)) (as set.empty (Set Context!15184))))))

(declare-fun bm!660708 () Bool)

(declare-fun call!660713 () List!70536)

(declare-fun call!660715 () List!70536)

(assert (=> bm!660708 (= call!660713 call!660715)))

(declare-fun b!7252858 () Bool)

(declare-fun e!4348879 () (Set Context!15184))

(declare-fun e!4348883 () (Set Context!15184))

(assert (=> b!7252858 (= e!4348879 e!4348883)))

(declare-fun c!1348118 () Bool)

(assert (=> b!7252858 (= c!1348118 (is-Concat!27497 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))))))

(declare-fun b!7252859 () Bool)

(declare-fun e!4348882 () (Set Context!15184))

(assert (=> b!7252859 (= e!4348882 (as set.empty (Set Context!15184)))))

(declare-fun b!7252860 () Bool)

(declare-fun e!4348881 () (Set Context!15184))

(assert (=> b!7252860 (= e!4348884 e!4348881)))

(declare-fun c!1348120 () Bool)

(assert (=> b!7252860 (= c!1348120 (is-Union!18652 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))))))

(declare-fun b!7252861 () Bool)

(declare-fun e!4348880 () Bool)

(assert (=> b!7252861 (= e!4348880 (nullable!7912 (regOne!37816 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))))))))

(declare-fun d!2254827 () Bool)

(declare-fun c!1348122 () Bool)

(assert (=> d!2254827 (= c!1348122 (and (is-ElementMatch!18652 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (= (c!1348008 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (h!76861 s1!1971))))))

(assert (=> d!2254827 (= (derivationStepZipperDown!2646 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))) (ite (or c!1348047 c!1348046) lt!2585683 (Context!15185 call!660668)) (h!76861 s1!1971)) e!4348884)))

(declare-fun bm!660709 () Bool)

(declare-fun call!660717 () (Set Context!15184))

(declare-fun call!660716 () (Set Context!15184))

(assert (=> bm!660709 (= call!660717 call!660716)))

(declare-fun c!1348121 () Bool)

(declare-fun b!7252862 () Bool)

(assert (=> b!7252862 (= c!1348121 (is-Star!18652 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))))))

(assert (=> b!7252862 (= e!4348883 e!4348882)))

(declare-fun b!7252863 () Bool)

(assert (=> b!7252863 (= e!4348882 call!660717)))

(declare-fun call!660718 () (Set Context!15184))

(declare-fun bm!660710 () Bool)

(assert (=> bm!660710 (= call!660718 (derivationStepZipperDown!2646 (ite c!1348120 (regTwo!37817 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (regOne!37816 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))))) (ite c!1348120 (ite (or c!1348047 c!1348046) lt!2585683 (Context!15185 call!660668)) (Context!15185 call!660715)) (h!76861 s1!1971)))))

(declare-fun call!660714 () (Set Context!15184))

(declare-fun c!1348119 () Bool)

(declare-fun bm!660711 () Bool)

(assert (=> bm!660711 (= call!660714 (derivationStepZipperDown!2646 (ite c!1348120 (regOne!37817 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (ite c!1348119 (regTwo!37816 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (ite c!1348118 (regOne!37816 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (reg!18981 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))))))) (ite (or c!1348120 c!1348119) (ite (or c!1348047 c!1348046) lt!2585683 (Context!15185 call!660668)) (Context!15185 call!660713)) (h!76861 s1!1971)))))

(declare-fun b!7252864 () Bool)

(assert (=> b!7252864 (= c!1348119 e!4348880)))

(declare-fun res!2941451 () Bool)

(assert (=> b!7252864 (=> (not res!2941451) (not e!4348880))))

(assert (=> b!7252864 (= res!2941451 (is-Concat!27497 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))))))

(assert (=> b!7252864 (= e!4348881 e!4348879)))

(declare-fun bm!660712 () Bool)

(assert (=> bm!660712 (= call!660715 ($colon$colon!2920 (exprs!8092 (ite (or c!1348047 c!1348046) lt!2585683 (Context!15185 call!660668))) (ite (or c!1348119 c!1348118) (regTwo!37816 (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (ite c!1348047 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348046 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348045 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))))))))

(declare-fun bm!660713 () Bool)

(assert (=> bm!660713 (= call!660716 call!660714)))

(declare-fun b!7252865 () Bool)

(assert (=> b!7252865 (= e!4348881 (set.union call!660714 call!660718))))

(declare-fun b!7252866 () Bool)

(assert (=> b!7252866 (= e!4348879 (set.union call!660718 call!660716))))

(declare-fun b!7252867 () Bool)

(assert (=> b!7252867 (= e!4348883 call!660717)))

(assert (= (and d!2254827 c!1348122) b!7252857))

(assert (= (and d!2254827 (not c!1348122)) b!7252860))

(assert (= (and b!7252860 c!1348120) b!7252865))

(assert (= (and b!7252860 (not c!1348120)) b!7252864))

(assert (= (and b!7252864 res!2941451) b!7252861))

(assert (= (and b!7252864 c!1348119) b!7252866))

(assert (= (and b!7252864 (not c!1348119)) b!7252858))

(assert (= (and b!7252858 c!1348118) b!7252867))

(assert (= (and b!7252858 (not c!1348118)) b!7252862))

(assert (= (and b!7252862 c!1348121) b!7252863))

(assert (= (and b!7252862 (not c!1348121)) b!7252859))

(assert (= (or b!7252867 b!7252863) bm!660708))

(assert (= (or b!7252867 b!7252863) bm!660709))

(assert (= (or b!7252866 bm!660708) bm!660712))

(assert (= (or b!7252866 bm!660709) bm!660713))

(assert (= (or b!7252865 b!7252866) bm!660710))

(assert (= (or b!7252865 bm!660713) bm!660711))

(declare-fun m!7932656 () Bool)

(assert (=> bm!660710 m!7932656))

(declare-fun m!7932658 () Bool)

(assert (=> b!7252861 m!7932658))

(declare-fun m!7932660 () Bool)

(assert (=> bm!660712 m!7932660))

(declare-fun m!7932662 () Bool)

(assert (=> bm!660711 m!7932662))

(declare-fun m!7932664 () Bool)

(assert (=> b!7252857 m!7932664))

(assert (=> bm!660666 d!2254827))

(assert (=> d!2254749 d!2254741))

(declare-fun d!2254829 () Bool)

(assert (=> d!2254829 (= (flatMap!2817 lt!2585678 lambda!444515) (dynLambda!28755 lambda!444515 ct1!232))))

(assert (=> d!2254829 true))

(declare-fun _$13!4584 () Unit!163891)

(assert (=> d!2254829 (= (choose!56043 lt!2585678 ct1!232 lambda!444515) _$13!4584)))

(declare-fun b_lambda!278647 () Bool)

(assert (=> (not b_lambda!278647) (not d!2254829)))

(declare-fun bs!1906707 () Bool)

(assert (= bs!1906707 d!2254829))

(assert (=> bs!1906707 m!7932166))

(assert (=> bs!1906707 m!7932460))

(assert (=> d!2254749 d!2254829))

(declare-fun b!7252868 () Bool)

(declare-fun e!4348885 () List!70536)

(assert (=> b!7252868 (= e!4348885 (exprs!8092 ct2!328))))

(declare-fun b!7252869 () Bool)

(assert (=> b!7252869 (= e!4348885 (Cons!70412 (h!76860 (t!384594 (exprs!8092 ct1!232))) (++!16566 (t!384594 (t!384594 (exprs!8092 ct1!232))) (exprs!8092 ct2!328))))))

(declare-fun b!7252871 () Bool)

(declare-fun e!4348886 () Bool)

(declare-fun lt!2585834 () List!70536)

(assert (=> b!7252871 (= e!4348886 (or (not (= (exprs!8092 ct2!328) Nil!70412)) (= lt!2585834 (t!384594 (exprs!8092 ct1!232)))))))

(declare-fun d!2254831 () Bool)

(assert (=> d!2254831 e!4348886))

(declare-fun res!2941452 () Bool)

(assert (=> d!2254831 (=> (not res!2941452) (not e!4348886))))

(assert (=> d!2254831 (= res!2941452 (= (content!14619 lt!2585834) (set.union (content!14619 (t!384594 (exprs!8092 ct1!232))) (content!14619 (exprs!8092 ct2!328)))))))

(assert (=> d!2254831 (= lt!2585834 e!4348885)))

(declare-fun c!1348123 () Bool)

(assert (=> d!2254831 (= c!1348123 (is-Nil!70412 (t!384594 (exprs!8092 ct1!232))))))

(assert (=> d!2254831 (= (++!16566 (t!384594 (exprs!8092 ct1!232)) (exprs!8092 ct2!328)) lt!2585834)))

(declare-fun b!7252870 () Bool)

(declare-fun res!2941453 () Bool)

(assert (=> b!7252870 (=> (not res!2941453) (not e!4348886))))

(assert (=> b!7252870 (= res!2941453 (= (size!41722 lt!2585834) (+ (size!41722 (t!384594 (exprs!8092 ct1!232))) (size!41722 (exprs!8092 ct2!328)))))))

(assert (= (and d!2254831 c!1348123) b!7252868))

(assert (= (and d!2254831 (not c!1348123)) b!7252869))

(assert (= (and d!2254831 res!2941452) b!7252870))

(assert (= (and b!7252870 res!2941453) b!7252871))

(declare-fun m!7932666 () Bool)

(assert (=> b!7252869 m!7932666))

(declare-fun m!7932668 () Bool)

(assert (=> d!2254831 m!7932668))

(declare-fun m!7932670 () Bool)

(assert (=> d!2254831 m!7932670))

(assert (=> d!2254831 m!7932262))

(declare-fun m!7932672 () Bool)

(assert (=> b!7252870 m!7932672))

(declare-fun m!7932674 () Bool)

(assert (=> b!7252870 m!7932674))

(assert (=> b!7252870 m!7932268))

(assert (=> b!7252596 d!2254831))

(declare-fun b!7252884 () Bool)

(declare-fun lt!2585840 () Unit!163891)

(declare-fun Unit!163895 () Unit!163891)

(assert (=> b!7252884 (= lt!2585840 Unit!163895)))

(assert (=> b!7252884 false))

(declare-fun e!4348897 () Context!15184)

(declare-fun head!14910 (List!70538) Context!15184)

(assert (=> b!7252884 (= e!4348897 (head!14910 (toList!11481 lt!2585677)))))

(declare-fun b!7252885 () Bool)

(declare-fun e!4348898 () Context!15184)

(assert (=> b!7252885 (= e!4348898 e!4348897)))

(declare-fun c!1348128 () Bool)

(assert (=> b!7252885 (= c!1348128 (is-Cons!70414 (toList!11481 lt!2585677)))))

(declare-fun b!7252886 () Bool)

(assert (=> b!7252886 (= e!4348897 (getWitness!2216 (t!384596 (toList!11481 lt!2585677)) lambda!444514))))

(declare-fun b!7252887 () Bool)

(assert (=> b!7252887 (= e!4348898 (h!76862 (toList!11481 lt!2585677)))))

(declare-fun b!7252889 () Bool)

(declare-fun e!4348895 () Bool)

(assert (=> b!7252889 (= e!4348895 (dynLambda!28754 lambda!444514 (h!76862 (toList!11481 lt!2585677))))))

(declare-fun b!7252888 () Bool)

(declare-fun e!4348896 () Bool)

(declare-fun lt!2585839 () Context!15184)

(declare-fun contains!20744 (List!70538 Context!15184) Bool)

(assert (=> b!7252888 (= e!4348896 (contains!20744 (toList!11481 lt!2585677) lt!2585839))))

(declare-fun d!2254833 () Bool)

(assert (=> d!2254833 e!4348896))

(declare-fun res!2941458 () Bool)

(assert (=> d!2254833 (=> (not res!2941458) (not e!4348896))))

(assert (=> d!2254833 (= res!2941458 (dynLambda!28754 lambda!444514 lt!2585839))))

(assert (=> d!2254833 (= lt!2585839 e!4348898)))

(declare-fun c!1348129 () Bool)

(assert (=> d!2254833 (= c!1348129 e!4348895)))

(declare-fun res!2941459 () Bool)

(assert (=> d!2254833 (=> (not res!2941459) (not e!4348895))))

(assert (=> d!2254833 (= res!2941459 (is-Cons!70414 (toList!11481 lt!2585677)))))

(assert (=> d!2254833 (exists!4383 (toList!11481 lt!2585677) lambda!444514)))

(assert (=> d!2254833 (= (getWitness!2216 (toList!11481 lt!2585677) lambda!444514) lt!2585839)))

(assert (= (and d!2254833 res!2941459) b!7252889))

(assert (= (and d!2254833 c!1348129) b!7252887))

(assert (= (and d!2254833 (not c!1348129)) b!7252885))

(assert (= (and b!7252885 c!1348128) b!7252886))

(assert (= (and b!7252885 (not c!1348128)) b!7252884))

(assert (= (and d!2254833 res!2941458) b!7252888))

(declare-fun b_lambda!278649 () Bool)

(assert (=> (not b_lambda!278649) (not b!7252889)))

(declare-fun b_lambda!278651 () Bool)

(assert (=> (not b_lambda!278651) (not d!2254833)))

(declare-fun m!7932676 () Bool)

(assert (=> b!7252889 m!7932676))

(declare-fun m!7932678 () Bool)

(assert (=> b!7252886 m!7932678))

(declare-fun m!7932680 () Bool)

(assert (=> d!2254833 m!7932680))

(assert (=> d!2254833 m!7932130))

(assert (=> d!2254833 m!7932276))

(assert (=> b!7252888 m!7932130))

(declare-fun m!7932682 () Bool)

(assert (=> b!7252888 m!7932682))

(assert (=> b!7252884 m!7932130))

(declare-fun m!7932684 () Bool)

(assert (=> b!7252884 m!7932684))

(assert (=> d!2254703 d!2254833))

(assert (=> d!2254703 d!2254685))

(assert (=> d!2254703 d!2254679))

(declare-fun d!2254835 () Bool)

(declare-fun res!2941464 () Bool)

(declare-fun e!4348903 () Bool)

(assert (=> d!2254835 (=> res!2941464 e!4348903)))

(assert (=> d!2254835 (= res!2941464 (is-Nil!70412 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))))))

(assert (=> d!2254835 (= (forall!17499 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328)) lambda!444513) e!4348903)))

(declare-fun b!7252894 () Bool)

(declare-fun e!4348904 () Bool)

(assert (=> b!7252894 (= e!4348903 e!4348904)))

(declare-fun res!2941465 () Bool)

(assert (=> b!7252894 (=> (not res!2941465) (not e!4348904))))

(declare-fun dynLambda!28759 (Int Regex!18652) Bool)

(assert (=> b!7252894 (= res!2941465 (dynLambda!28759 lambda!444513 (h!76860 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328)))))))

(declare-fun b!7252895 () Bool)

(assert (=> b!7252895 (= e!4348904 (forall!17499 (t!384594 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) lambda!444513))))

(assert (= (and d!2254835 (not res!2941464)) b!7252894))

(assert (= (and b!7252894 res!2941465) b!7252895))

(declare-fun b_lambda!278653 () Bool)

(assert (=> (not b_lambda!278653) (not b!7252894)))

(declare-fun m!7932686 () Bool)

(assert (=> b!7252894 m!7932686))

(declare-fun m!7932688 () Bool)

(assert (=> b!7252895 m!7932688))

(assert (=> d!2254713 d!2254835))

(assert (=> d!2254713 d!2254711))

(declare-fun d!2254837 () Bool)

(assert (=> d!2254837 (forall!17499 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328)) lambda!444513)))

(assert (=> d!2254837 true))

(declare-fun _$78!776 () Unit!163891)

(assert (=> d!2254837 (= (choose!56038 (exprs!8092 lt!2585682) (exprs!8092 ct2!328) lambda!444513) _$78!776)))

(declare-fun bs!1906708 () Bool)

(assert (= bs!1906708 d!2254837))

(assert (=> bs!1906708 m!7932108))

(assert (=> bs!1906708 m!7932108))

(assert (=> bs!1906708 m!7932362))

(assert (=> d!2254713 d!2254837))

(declare-fun d!2254839 () Bool)

(declare-fun res!2941466 () Bool)

(declare-fun e!4348905 () Bool)

(assert (=> d!2254839 (=> res!2941466 e!4348905)))

(assert (=> d!2254839 (= res!2941466 (is-Nil!70412 (exprs!8092 lt!2585682)))))

(assert (=> d!2254839 (= (forall!17499 (exprs!8092 lt!2585682) lambda!444513) e!4348905)))

(declare-fun b!7252896 () Bool)

(declare-fun e!4348906 () Bool)

(assert (=> b!7252896 (= e!4348905 e!4348906)))

(declare-fun res!2941467 () Bool)

(assert (=> b!7252896 (=> (not res!2941467) (not e!4348906))))

(assert (=> b!7252896 (= res!2941467 (dynLambda!28759 lambda!444513 (h!76860 (exprs!8092 lt!2585682))))))

(declare-fun b!7252897 () Bool)

(assert (=> b!7252897 (= e!4348906 (forall!17499 (t!384594 (exprs!8092 lt!2585682)) lambda!444513))))

(assert (= (and d!2254839 (not res!2941466)) b!7252896))

(assert (= (and b!7252896 res!2941467) b!7252897))

(declare-fun b_lambda!278655 () Bool)

(assert (=> (not b_lambda!278655) (not b!7252896)))

(declare-fun m!7932690 () Bool)

(assert (=> b!7252896 m!7932690))

(declare-fun m!7932692 () Bool)

(assert (=> b!7252897 m!7932692))

(assert (=> d!2254713 d!2254839))

(declare-fun d!2254841 () Bool)

(assert (=> d!2254841 (= ($colon$colon!2920 (exprs!8092 lt!2585683) (ite (or c!1348046 c!1348045) (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (h!76860 (exprs!8092 ct1!232)))) (Cons!70412 (ite (or c!1348046 c!1348045) (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (h!76860 (exprs!8092 ct1!232))) (exprs!8092 lt!2585683)))))

(assert (=> bm!660667 d!2254841))

(declare-fun d!2254843 () Bool)

(declare-fun c!1348132 () Bool)

(assert (=> d!2254843 (= c!1348132 (is-Nil!70412 lt!2585770))))

(declare-fun e!4348909 () (Set Regex!18652))

(assert (=> d!2254843 (= (content!14619 lt!2585770) e!4348909)))

(declare-fun b!7252902 () Bool)

(assert (=> b!7252902 (= e!4348909 (as set.empty (Set Regex!18652)))))

(declare-fun b!7252903 () Bool)

(assert (=> b!7252903 (= e!4348909 (set.union (set.insert (h!76860 lt!2585770) (as set.empty (Set Regex!18652))) (content!14619 (t!384594 lt!2585770))))))

(assert (= (and d!2254843 c!1348132) b!7252902))

(assert (= (and d!2254843 (not c!1348132)) b!7252903))

(declare-fun m!7932694 () Bool)

(assert (=> b!7252903 m!7932694))

(declare-fun m!7932696 () Bool)

(assert (=> b!7252903 m!7932696))

(assert (=> d!2254675 d!2254843))

(declare-fun d!2254845 () Bool)

(declare-fun c!1348133 () Bool)

(assert (=> d!2254845 (= c!1348133 (is-Nil!70412 (exprs!8092 ct1!232)))))

(declare-fun e!4348910 () (Set Regex!18652))

(assert (=> d!2254845 (= (content!14619 (exprs!8092 ct1!232)) e!4348910)))

(declare-fun b!7252904 () Bool)

(assert (=> b!7252904 (= e!4348910 (as set.empty (Set Regex!18652)))))

(declare-fun b!7252905 () Bool)

(assert (=> b!7252905 (= e!4348910 (set.union (set.insert (h!76860 (exprs!8092 ct1!232)) (as set.empty (Set Regex!18652))) (content!14619 (t!384594 (exprs!8092 ct1!232)))))))

(assert (= (and d!2254845 c!1348133) b!7252904))

(assert (= (and d!2254845 (not c!1348133)) b!7252905))

(declare-fun m!7932698 () Bool)

(assert (=> b!7252905 m!7932698))

(assert (=> b!7252905 m!7932670))

(assert (=> d!2254675 d!2254845))

(declare-fun d!2254847 () Bool)

(declare-fun c!1348134 () Bool)

(assert (=> d!2254847 (= c!1348134 (is-Nil!70412 (exprs!8092 ct2!328)))))

(declare-fun e!4348911 () (Set Regex!18652))

(assert (=> d!2254847 (= (content!14619 (exprs!8092 ct2!328)) e!4348911)))

(declare-fun b!7252906 () Bool)

(assert (=> b!7252906 (= e!4348911 (as set.empty (Set Regex!18652)))))

(declare-fun b!7252907 () Bool)

(assert (=> b!7252907 (= e!4348911 (set.union (set.insert (h!76860 (exprs!8092 ct2!328)) (as set.empty (Set Regex!18652))) (content!14619 (t!384594 (exprs!8092 ct2!328)))))))

(assert (= (and d!2254847 c!1348134) b!7252906))

(assert (= (and d!2254847 (not c!1348134)) b!7252907))

(declare-fun m!7932700 () Bool)

(assert (=> b!7252907 m!7932700))

(declare-fun m!7932702 () Bool)

(assert (=> b!7252907 m!7932702))

(assert (=> d!2254675 d!2254847))

(declare-fun d!2254849 () Bool)

(assert (=> d!2254849 (= (isEmpty!40550 s2!1849) (is-Nil!70413 s2!1849))))

(assert (=> d!2254699 d!2254849))

(declare-fun d!2254851 () Bool)

(assert (=> d!2254851 (= (nullable!7912 (h!76860 (exprs!8092 lt!2585683))) (nullableFct!3105 (h!76860 (exprs!8092 lt!2585683))))))

(declare-fun bs!1906709 () Bool)

(assert (= bs!1906709 d!2254851))

(declare-fun m!7932704 () Bool)

(assert (=> bs!1906709 m!7932704))

(assert (=> b!7252729 d!2254851))

(declare-fun d!2254853 () Bool)

(declare-fun c!1348135 () Bool)

(assert (=> d!2254853 (= c!1348135 (isEmpty!40550 (tail!14332 s2!1849)))))

(declare-fun e!4348912 () Bool)

(assert (=> d!2254853 (= (matchZipper!3562 (derivationStepZipper!3430 (set.insert ct2!328 (as set.empty (Set Context!15184))) (head!14908 s2!1849)) (tail!14332 s2!1849)) e!4348912)))

(declare-fun b!7252908 () Bool)

(assert (=> b!7252908 (= e!4348912 (nullableZipper!2916 (derivationStepZipper!3430 (set.insert ct2!328 (as set.empty (Set Context!15184))) (head!14908 s2!1849))))))

(declare-fun b!7252909 () Bool)

(assert (=> b!7252909 (= e!4348912 (matchZipper!3562 (derivationStepZipper!3430 (derivationStepZipper!3430 (set.insert ct2!328 (as set.empty (Set Context!15184))) (head!14908 s2!1849)) (head!14908 (tail!14332 s2!1849))) (tail!14332 (tail!14332 s2!1849))))))

(assert (= (and d!2254853 c!1348135) b!7252908))

(assert (= (and d!2254853 (not c!1348135)) b!7252909))

(assert (=> d!2254853 m!7932324))

(declare-fun m!7932706 () Bool)

(assert (=> d!2254853 m!7932706))

(assert (=> b!7252908 m!7932322))

(declare-fun m!7932708 () Bool)

(assert (=> b!7252908 m!7932708))

(assert (=> b!7252909 m!7932324))

(declare-fun m!7932710 () Bool)

(assert (=> b!7252909 m!7932710))

(assert (=> b!7252909 m!7932322))

(assert (=> b!7252909 m!7932710))

(declare-fun m!7932712 () Bool)

(assert (=> b!7252909 m!7932712))

(assert (=> b!7252909 m!7932324))

(declare-fun m!7932714 () Bool)

(assert (=> b!7252909 m!7932714))

(assert (=> b!7252909 m!7932712))

(assert (=> b!7252909 m!7932714))

(declare-fun m!7932716 () Bool)

(assert (=> b!7252909 m!7932716))

(assert (=> b!7252659 d!2254853))

(declare-fun bs!1906710 () Bool)

(declare-fun d!2254855 () Bool)

(assert (= bs!1906710 (and d!2254855 b!7252522)))

(declare-fun lambda!444579 () Int)

(assert (=> bs!1906710 (= (= (head!14908 s2!1849) (h!76861 s1!1971)) (= lambda!444579 lambda!444515))))

(declare-fun bs!1906711 () Bool)

(assert (= bs!1906711 (and d!2254855 d!2254673)))

(assert (=> bs!1906711 (= (= (head!14908 s2!1849) (h!76861 s1!1971)) (= lambda!444579 lambda!444545))))

(declare-fun bs!1906712 () Bool)

(assert (= bs!1906712 (and d!2254855 d!2254723)))

(assert (=> bs!1906712 (= (= (head!14908 s2!1849) (h!76861 s1!1971)) (= lambda!444579 lambda!444561))))

(assert (=> d!2254855 true))

(assert (=> d!2254855 (= (derivationStepZipper!3430 (set.insert ct2!328 (as set.empty (Set Context!15184))) (head!14908 s2!1849)) (flatMap!2817 (set.insert ct2!328 (as set.empty (Set Context!15184))) lambda!444579))))

(declare-fun bs!1906713 () Bool)

(assert (= bs!1906713 d!2254855))

(assert (=> bs!1906713 m!7932148))

(declare-fun m!7932718 () Bool)

(assert (=> bs!1906713 m!7932718))

(assert (=> b!7252659 d!2254855))

(declare-fun d!2254857 () Bool)

(assert (=> d!2254857 (= (head!14908 s2!1849) (h!76861 s2!1849))))

(assert (=> b!7252659 d!2254857))

(declare-fun d!2254859 () Bool)

(assert (=> d!2254859 (= (tail!14332 s2!1849) (t!384595 s2!1849))))

(assert (=> b!7252659 d!2254859))

(declare-fun bs!1906714 () Bool)

(declare-fun d!2254861 () Bool)

(assert (= bs!1906714 (and d!2254861 b!7252527)))

(declare-fun lambda!444582 () Int)

(assert (=> bs!1906714 (not (= lambda!444582 lambda!444514))))

(declare-fun bs!1906715 () Bool)

(assert (= bs!1906715 (and d!2254861 d!2254681)))

(assert (=> bs!1906715 (not (= lambda!444582 lambda!444548))))

(declare-fun bs!1906716 () Bool)

(assert (= bs!1906716 (and d!2254861 d!2254683)))

(assert (=> bs!1906716 (not (= lambda!444582 lambda!444551))))

(assert (=> d!2254861 (= (nullableZipper!2916 lt!2585677) (exists!4382 lt!2585677 lambda!444582))))

(declare-fun bs!1906717 () Bool)

(assert (= bs!1906717 d!2254861))

(declare-fun m!7932720 () Bool)

(assert (=> bs!1906717 m!7932720))

(assert (=> b!7252701 d!2254861))

(declare-fun e!4348918 () (Set Context!15184))

(declare-fun b!7252910 () Bool)

(assert (=> b!7252910 (= e!4348918 (set.insert (ite c!1348074 lt!2585693 (Context!15185 call!660682)) (as set.empty (Set Context!15184))))))

(declare-fun bm!660714 () Bool)

(declare-fun call!660719 () List!70536)

(declare-fun call!660721 () List!70536)

(assert (=> bm!660714 (= call!660719 call!660721)))

(declare-fun b!7252911 () Bool)

(declare-fun e!4348913 () (Set Context!15184))

(declare-fun e!4348917 () (Set Context!15184))

(assert (=> b!7252911 (= e!4348913 e!4348917)))

(declare-fun c!1348138 () Bool)

(assert (=> b!7252911 (= c!1348138 (is-Concat!27497 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))))))

(declare-fun b!7252912 () Bool)

(declare-fun e!4348916 () (Set Context!15184))

(assert (=> b!7252912 (= e!4348916 (as set.empty (Set Context!15184)))))

(declare-fun b!7252913 () Bool)

(declare-fun e!4348915 () (Set Context!15184))

(assert (=> b!7252913 (= e!4348918 e!4348915)))

(declare-fun c!1348140 () Bool)

(assert (=> b!7252913 (= c!1348140 (is-Union!18652 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))))))

(declare-fun b!7252914 () Bool)

(declare-fun e!4348914 () Bool)

(assert (=> b!7252914 (= e!4348914 (nullable!7912 (regOne!37816 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))))

(declare-fun c!1348142 () Bool)

(declare-fun d!2254863 () Bool)

(assert (=> d!2254863 (= c!1348142 (and (is-ElementMatch!18652 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (= (c!1348008 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (h!76861 s1!1971))))))

(assert (=> d!2254863 (= (derivationStepZipperDown!2646 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))) (ite c!1348074 lt!2585693 (Context!15185 call!660682)) (h!76861 s1!1971)) e!4348918)))

(declare-fun bm!660715 () Bool)

(declare-fun call!660723 () (Set Context!15184))

(declare-fun call!660722 () (Set Context!15184))

(assert (=> bm!660715 (= call!660723 call!660722)))

(declare-fun b!7252915 () Bool)

(declare-fun c!1348141 () Bool)

(assert (=> b!7252915 (= c!1348141 (is-Star!18652 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))))))

(assert (=> b!7252915 (= e!4348917 e!4348916)))

(declare-fun b!7252916 () Bool)

(assert (=> b!7252916 (= e!4348916 call!660723)))

(declare-fun call!660724 () (Set Context!15184))

(declare-fun bm!660716 () Bool)

(assert (=> bm!660716 (= call!660724 (derivationStepZipperDown!2646 (ite c!1348140 (regTwo!37817 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (regOne!37816 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))) (ite c!1348140 (ite c!1348074 lt!2585693 (Context!15185 call!660682)) (Context!15185 call!660721)) (h!76861 s1!1971)))))

(declare-fun bm!660717 () Bool)

(declare-fun call!660720 () (Set Context!15184))

(declare-fun c!1348139 () Bool)

(assert (=> bm!660717 (= call!660720 (derivationStepZipperDown!2646 (ite c!1348140 (regOne!37817 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (ite c!1348139 (regTwo!37816 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (ite c!1348138 (regOne!37816 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (reg!18981 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))) (ite (or c!1348140 c!1348139) (ite c!1348074 lt!2585693 (Context!15185 call!660682)) (Context!15185 call!660719)) (h!76861 s1!1971)))))

(declare-fun b!7252917 () Bool)

(assert (=> b!7252917 (= c!1348139 e!4348914)))

(declare-fun res!2941468 () Bool)

(assert (=> b!7252917 (=> (not res!2941468) (not e!4348914))))

(assert (=> b!7252917 (= res!2941468 (is-Concat!27497 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))))))

(assert (=> b!7252917 (= e!4348915 e!4348913)))

(declare-fun bm!660718 () Bool)

(assert (=> bm!660718 (= call!660721 ($colon$colon!2920 (exprs!8092 (ite c!1348074 lt!2585693 (Context!15185 call!660682))) (ite (or c!1348139 c!1348138) (regTwo!37816 (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (ite c!1348074 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))))

(declare-fun bm!660719 () Bool)

(assert (=> bm!660719 (= call!660722 call!660720)))

(declare-fun b!7252918 () Bool)

(assert (=> b!7252918 (= e!4348915 (set.union call!660720 call!660724))))

(declare-fun b!7252919 () Bool)

(assert (=> b!7252919 (= e!4348913 (set.union call!660724 call!660722))))

(declare-fun b!7252920 () Bool)

(assert (=> b!7252920 (= e!4348917 call!660723)))

(assert (= (and d!2254863 c!1348142) b!7252910))

(assert (= (and d!2254863 (not c!1348142)) b!7252913))

(assert (= (and b!7252913 c!1348140) b!7252918))

(assert (= (and b!7252913 (not c!1348140)) b!7252917))

(assert (= (and b!7252917 res!2941468) b!7252914))

(assert (= (and b!7252917 c!1348139) b!7252919))

(assert (= (and b!7252917 (not c!1348139)) b!7252911))

(assert (= (and b!7252911 c!1348138) b!7252920))

(assert (= (and b!7252911 (not c!1348138)) b!7252915))

(assert (= (and b!7252915 c!1348141) b!7252916))

(assert (= (and b!7252915 (not c!1348141)) b!7252912))

(assert (= (or b!7252920 b!7252916) bm!660714))

(assert (= (or b!7252920 b!7252916) bm!660715))

(assert (= (or b!7252919 bm!660714) bm!660718))

(assert (= (or b!7252919 bm!660715) bm!660719))

(assert (= (or b!7252918 b!7252919) bm!660716))

(assert (= (or b!7252918 bm!660719) bm!660717))

(declare-fun m!7932722 () Bool)

(assert (=> bm!660716 m!7932722))

(declare-fun m!7932724 () Bool)

(assert (=> b!7252914 m!7932724))

(declare-fun m!7932726 () Bool)

(assert (=> bm!660718 m!7932726))

(declare-fun m!7932728 () Bool)

(assert (=> bm!660717 m!7932728))

(declare-fun m!7932730 () Bool)

(assert (=> b!7252910 m!7932730))

(assert (=> bm!660677 d!2254863))

(declare-fun b!7252921 () Bool)

(declare-fun e!4348919 () List!70537)

(assert (=> b!7252921 (= e!4348919 s2!1849)))

(declare-fun b!7252923 () Bool)

(declare-fun res!2941469 () Bool)

(declare-fun e!4348920 () Bool)

(assert (=> b!7252923 (=> (not res!2941469) (not e!4348920))))

(declare-fun lt!2585841 () List!70537)

(assert (=> b!7252923 (= res!2941469 (= (size!41723 lt!2585841) (+ (size!41723 (t!384595 (t!384595 s1!1971))) (size!41723 s2!1849))))))

(declare-fun d!2254865 () Bool)

(assert (=> d!2254865 e!4348920))

(declare-fun res!2941470 () Bool)

(assert (=> d!2254865 (=> (not res!2941470) (not e!4348920))))

(assert (=> d!2254865 (= res!2941470 (= (content!14621 lt!2585841) (set.union (content!14621 (t!384595 (t!384595 s1!1971))) (content!14621 s2!1849))))))

(assert (=> d!2254865 (= lt!2585841 e!4348919)))

(declare-fun c!1348143 () Bool)

(assert (=> d!2254865 (= c!1348143 (is-Nil!70413 (t!384595 (t!384595 s1!1971))))))

(assert (=> d!2254865 (= (++!16567 (t!384595 (t!384595 s1!1971)) s2!1849) lt!2585841)))

(declare-fun b!7252924 () Bool)

(assert (=> b!7252924 (= e!4348920 (or (not (= s2!1849 Nil!70413)) (= lt!2585841 (t!384595 (t!384595 s1!1971)))))))

(declare-fun b!7252922 () Bool)

(assert (=> b!7252922 (= e!4348919 (Cons!70413 (h!76861 (t!384595 (t!384595 s1!1971))) (++!16567 (t!384595 (t!384595 (t!384595 s1!1971))) s2!1849)))))

(assert (= (and d!2254865 c!1348143) b!7252921))

(assert (= (and d!2254865 (not c!1348143)) b!7252922))

(assert (= (and d!2254865 res!2941470) b!7252923))

(assert (= (and b!7252923 res!2941469) b!7252924))

(declare-fun m!7932732 () Bool)

(assert (=> b!7252923 m!7932732))

(declare-fun m!7932734 () Bool)

(assert (=> b!7252923 m!7932734))

(assert (=> b!7252923 m!7932338))

(declare-fun m!7932736 () Bool)

(assert (=> d!2254865 m!7932736))

(declare-fun m!7932738 () Bool)

(assert (=> d!2254865 m!7932738))

(assert (=> d!2254865 m!7932344))

(declare-fun m!7932740 () Bool)

(assert (=> b!7252922 m!7932740))

(assert (=> b!7252682 d!2254865))

(declare-fun d!2254867 () Bool)

(assert (=> d!2254867 (= (isEmpty!40550 s1!1971) (is-Nil!70413 s1!1971))))

(assert (=> d!2254729 d!2254867))

(declare-fun bs!1906718 () Bool)

(declare-fun d!2254869 () Bool)

(assert (= bs!1906718 (and d!2254869 b!7252527)))

(declare-fun lambda!444583 () Int)

(assert (=> bs!1906718 (not (= lambda!444583 lambda!444514))))

(declare-fun bs!1906719 () Bool)

(assert (= bs!1906719 (and d!2254869 d!2254681)))

(assert (=> bs!1906719 (not (= lambda!444583 lambda!444548))))

(declare-fun bs!1906720 () Bool)

(assert (= bs!1906720 (and d!2254869 d!2254683)))

(assert (=> bs!1906720 (not (= lambda!444583 lambda!444551))))

(declare-fun bs!1906721 () Bool)

(assert (= bs!1906721 (and d!2254869 d!2254861)))

(assert (=> bs!1906721 (= lambda!444583 lambda!444582)))

(assert (=> d!2254869 (= (nullableZipper!2916 lt!2585678) (exists!4382 lt!2585678 lambda!444583))))

(declare-fun bs!1906722 () Bool)

(assert (= bs!1906722 d!2254869))

(declare-fun m!7932742 () Bool)

(assert (=> bs!1906722 m!7932742))

(assert (=> b!7252708 d!2254869))

(assert (=> bs!1906674 d!2254691))

(declare-fun d!2254871 () Bool)

(declare-fun c!1348146 () Bool)

(assert (=> d!2254871 (= c!1348146 (is-Nil!70413 lt!2585788))))

(declare-fun e!4348923 () (Set C!37578))

(assert (=> d!2254871 (= (content!14621 lt!2585788) e!4348923)))

(declare-fun b!7252929 () Bool)

(assert (=> b!7252929 (= e!4348923 (as set.empty (Set C!37578)))))

(declare-fun b!7252930 () Bool)

(assert (=> b!7252930 (= e!4348923 (set.union (set.insert (h!76861 lt!2585788) (as set.empty (Set C!37578))) (content!14621 (t!384595 lt!2585788))))))

(assert (= (and d!2254871 c!1348146) b!7252929))

(assert (= (and d!2254871 (not c!1348146)) b!7252930))

(declare-fun m!7932744 () Bool)

(assert (=> b!7252930 m!7932744))

(declare-fun m!7932746 () Bool)

(assert (=> b!7252930 m!7932746))

(assert (=> d!2254707 d!2254871))

(declare-fun d!2254873 () Bool)

(declare-fun c!1348147 () Bool)

(assert (=> d!2254873 (= c!1348147 (is-Nil!70413 (t!384595 s1!1971)))))

(declare-fun e!4348924 () (Set C!37578))

(assert (=> d!2254873 (= (content!14621 (t!384595 s1!1971)) e!4348924)))

(declare-fun b!7252931 () Bool)

(assert (=> b!7252931 (= e!4348924 (as set.empty (Set C!37578)))))

(declare-fun b!7252932 () Bool)

(assert (=> b!7252932 (= e!4348924 (set.union (set.insert (h!76861 (t!384595 s1!1971)) (as set.empty (Set C!37578))) (content!14621 (t!384595 (t!384595 s1!1971)))))))

(assert (= (and d!2254873 c!1348147) b!7252931))

(assert (= (and d!2254873 (not c!1348147)) b!7252932))

(declare-fun m!7932748 () Bool)

(assert (=> b!7252932 m!7932748))

(assert (=> b!7252932 m!7932738))

(assert (=> d!2254707 d!2254873))

(declare-fun d!2254875 () Bool)

(declare-fun c!1348148 () Bool)

(assert (=> d!2254875 (= c!1348148 (is-Nil!70413 s2!1849))))

(declare-fun e!4348925 () (Set C!37578))

(assert (=> d!2254875 (= (content!14621 s2!1849) e!4348925)))

(declare-fun b!7252933 () Bool)

(assert (=> b!7252933 (= e!4348925 (as set.empty (Set C!37578)))))

(declare-fun b!7252934 () Bool)

(assert (=> b!7252934 (= e!4348925 (set.union (set.insert (h!76861 s2!1849) (as set.empty (Set C!37578))) (content!14621 (t!384595 s2!1849))))))

(assert (= (and d!2254875 c!1348148) b!7252933))

(assert (= (and d!2254875 (not c!1348148)) b!7252934))

(declare-fun m!7932750 () Bool)

(assert (=> b!7252934 m!7932750))

(declare-fun m!7932752 () Bool)

(assert (=> b!7252934 m!7932752))

(assert (=> d!2254707 d!2254875))

(declare-fun b!7252935 () Bool)

(declare-fun e!4348926 () List!70536)

(assert (=> b!7252935 (= e!4348926 (exprs!8092 ct2!328))))

(declare-fun b!7252936 () Bool)

(assert (=> b!7252936 (= e!4348926 (Cons!70412 (h!76860 (t!384594 (exprs!8092 lt!2585682))) (++!16566 (t!384594 (t!384594 (exprs!8092 lt!2585682))) (exprs!8092 ct2!328))))))

(declare-fun e!4348927 () Bool)

(declare-fun b!7252938 () Bool)

(declare-fun lt!2585842 () List!70536)

(assert (=> b!7252938 (= e!4348927 (or (not (= (exprs!8092 ct2!328) Nil!70412)) (= lt!2585842 (t!384594 (exprs!8092 lt!2585682)))))))

(declare-fun d!2254877 () Bool)

(assert (=> d!2254877 e!4348927))

(declare-fun res!2941471 () Bool)

(assert (=> d!2254877 (=> (not res!2941471) (not e!4348927))))

(assert (=> d!2254877 (= res!2941471 (= (content!14619 lt!2585842) (set.union (content!14619 (t!384594 (exprs!8092 lt!2585682))) (content!14619 (exprs!8092 ct2!328)))))))

(assert (=> d!2254877 (= lt!2585842 e!4348926)))

(declare-fun c!1348149 () Bool)

(assert (=> d!2254877 (= c!1348149 (is-Nil!70412 (t!384594 (exprs!8092 lt!2585682))))))

(assert (=> d!2254877 (= (++!16566 (t!384594 (exprs!8092 lt!2585682)) (exprs!8092 ct2!328)) lt!2585842)))

(declare-fun b!7252937 () Bool)

(declare-fun res!2941472 () Bool)

(assert (=> b!7252937 (=> (not res!2941472) (not e!4348927))))

(assert (=> b!7252937 (= res!2941472 (= (size!41722 lt!2585842) (+ (size!41722 (t!384594 (exprs!8092 lt!2585682))) (size!41722 (exprs!8092 ct2!328)))))))

(assert (= (and d!2254877 c!1348149) b!7252935))

(assert (= (and d!2254877 (not c!1348149)) b!7252936))

(assert (= (and d!2254877 res!2941471) b!7252937))

(assert (= (and b!7252937 res!2941472) b!7252938))

(declare-fun m!7932754 () Bool)

(assert (=> b!7252936 m!7932754))

(declare-fun m!7932756 () Bool)

(assert (=> d!2254877 m!7932756))

(declare-fun m!7932758 () Bool)

(assert (=> d!2254877 m!7932758))

(assert (=> d!2254877 m!7932262))

(declare-fun m!7932760 () Bool)

(assert (=> b!7252937 m!7932760))

(declare-fun m!7932762 () Bool)

(assert (=> b!7252937 m!7932762))

(assert (=> b!7252937 m!7932268))

(assert (=> b!7252691 d!2254877))

(declare-fun bs!1906723 () Bool)

(declare-fun d!2254879 () Bool)

(assert (= bs!1906723 (and d!2254879 d!2254733)))

(declare-fun lambda!444586 () Int)

(assert (=> bs!1906723 (= lambda!444586 lambda!444565)))

(declare-fun bs!1906724 () Bool)

(assert (= bs!1906724 (and d!2254879 d!2254717)))

(assert (=> bs!1906724 (= lambda!444586 lambda!444560)))

(declare-fun bs!1906725 () Bool)

(assert (= bs!1906725 (and d!2254879 d!2254725)))

(assert (=> bs!1906725 (= lambda!444586 lambda!444564)))

(declare-fun bs!1906726 () Bool)

(assert (= bs!1906726 (and d!2254879 d!2254735)))

(assert (=> bs!1906726 (= lambda!444586 lambda!444566)))

(declare-fun bs!1906727 () Bool)

(assert (= bs!1906727 (and d!2254879 b!7252520)))

(assert (=> bs!1906727 (= lambda!444586 lambda!444513)))

(assert (=> d!2254879 (matchZipper!3562 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) (++!16567 (t!384595 s1!1971) s2!1849))))

(declare-fun lt!2585845 () Unit!163891)

(assert (=> d!2254879 (= lt!2585845 (lemmaConcatPreservesForall!1459 (exprs!8092 lt!2585682) (exprs!8092 ct2!328) lambda!444586))))

(assert (=> d!2254879 true))

(declare-fun _$56!518 () Unit!163891)

(assert (=> d!2254879 (= (choose!56042 lt!2585682 ct2!328 (t!384595 s1!1971) s2!1849) _$56!518)))

(declare-fun bs!1906728 () Bool)

(assert (= bs!1906728 d!2254879))

(declare-fun m!7932764 () Bool)

(assert (=> bs!1906728 m!7932764))

(assert (=> bs!1906728 m!7932110))

(assert (=> bs!1906728 m!7932114))

(assert (=> bs!1906728 m!7932108))

(assert (=> bs!1906728 m!7932114))

(assert (=> bs!1906728 m!7932110))

(assert (=> bs!1906728 m!7932116))

(assert (=> d!2254717 d!2254879))

(assert (=> d!2254717 d!2254715))

(declare-fun d!2254881 () Bool)

(assert (=> d!2254881 (forall!17499 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328)) lambda!444560)))

(declare-fun lt!2585846 () Unit!163891)

(assert (=> d!2254881 (= lt!2585846 (choose!56038 (exprs!8092 lt!2585682) (exprs!8092 ct2!328) lambda!444560))))

(assert (=> d!2254881 (forall!17499 (exprs!8092 lt!2585682) lambda!444560)))

(assert (=> d!2254881 (= (lemmaConcatPreservesForall!1459 (exprs!8092 lt!2585682) (exprs!8092 ct2!328) lambda!444560) lt!2585846)))

(declare-fun bs!1906729 () Bool)

(assert (= bs!1906729 d!2254881))

(assert (=> bs!1906729 m!7932108))

(assert (=> bs!1906729 m!7932108))

(declare-fun m!7932766 () Bool)

(assert (=> bs!1906729 m!7932766))

(declare-fun m!7932768 () Bool)

(assert (=> bs!1906729 m!7932768))

(declare-fun m!7932770 () Bool)

(assert (=> bs!1906729 m!7932770))

(assert (=> d!2254717 d!2254881))

(assert (=> d!2254717 d!2254707))

(assert (=> d!2254717 d!2254711))

(declare-fun d!2254883 () Bool)

(declare-fun c!1348150 () Bool)

(assert (=> d!2254883 (= c!1348150 (isEmpty!40550 (t!384595 s1!1971)))))

(declare-fun e!4348928 () Bool)

(assert (=> d!2254883 (= (matchZipper!3562 (set.insert lt!2585682 (as set.empty (Set Context!15184))) (t!384595 s1!1971)) e!4348928)))

(declare-fun b!7252939 () Bool)

(assert (=> b!7252939 (= e!4348928 (nullableZipper!2916 (set.insert lt!2585682 (as set.empty (Set Context!15184)))))))

(declare-fun b!7252940 () Bool)

(assert (=> b!7252940 (= e!4348928 (matchZipper!3562 (derivationStepZipper!3430 (set.insert lt!2585682 (as set.empty (Set Context!15184))) (head!14908 (t!384595 s1!1971))) (tail!14332 (t!384595 s1!1971))))))

(assert (= (and d!2254883 c!1348150) b!7252939))

(assert (= (and d!2254883 (not c!1348150)) b!7252940))

(assert (=> d!2254883 m!7932394))

(assert (=> b!7252939 m!7932386))

(declare-fun m!7932772 () Bool)

(assert (=> b!7252939 m!7932772))

(assert (=> b!7252940 m!7932398))

(assert (=> b!7252940 m!7932386))

(assert (=> b!7252940 m!7932398))

(declare-fun m!7932774 () Bool)

(assert (=> b!7252940 m!7932774))

(assert (=> b!7252940 m!7932402))

(assert (=> b!7252940 m!7932774))

(assert (=> b!7252940 m!7932402))

(declare-fun m!7932776 () Bool)

(assert (=> b!7252940 m!7932776))

(assert (=> d!2254717 d!2254883))

(declare-fun d!2254885 () Bool)

(assert (=> d!2254885 (= (nullable!7912 (h!76860 (exprs!8092 lt!2585687))) (nullableFct!3105 (h!76860 (exprs!8092 lt!2585687))))))

(declare-fun bs!1906730 () Bool)

(assert (= bs!1906730 d!2254885))

(declare-fun m!7932778 () Bool)

(assert (=> bs!1906730 m!7932778))

(assert (=> b!7252617 d!2254885))

(declare-fun d!2254887 () Bool)

(declare-fun res!2941477 () Bool)

(declare-fun e!4348933 () Bool)

(assert (=> d!2254887 (=> res!2941477 e!4348933)))

(assert (=> d!2254887 (= res!2941477 (is-Nil!70414 lt!2585782))))

(assert (=> d!2254887 (= (noDuplicate!2993 lt!2585782) e!4348933)))

(declare-fun b!7252945 () Bool)

(declare-fun e!4348934 () Bool)

(assert (=> b!7252945 (= e!4348933 e!4348934)))

(declare-fun res!2941478 () Bool)

(assert (=> b!7252945 (=> (not res!2941478) (not e!4348934))))

(assert (=> b!7252945 (= res!2941478 (not (contains!20744 (t!384596 lt!2585782) (h!76862 lt!2585782))))))

(declare-fun b!7252946 () Bool)

(assert (=> b!7252946 (= e!4348934 (noDuplicate!2993 (t!384596 lt!2585782)))))

(assert (= (and d!2254887 (not res!2941477)) b!7252945))

(assert (= (and b!7252945 res!2941478) b!7252946))

(declare-fun m!7932780 () Bool)

(assert (=> b!7252945 m!7932780))

(declare-fun m!7932782 () Bool)

(assert (=> b!7252946 m!7932782))

(assert (=> d!2254685 d!2254887))

(declare-fun d!2254889 () Bool)

(declare-fun e!4348943 () Bool)

(assert (=> d!2254889 e!4348943))

(declare-fun res!2941483 () Bool)

(assert (=> d!2254889 (=> (not res!2941483) (not e!4348943))))

(declare-fun res!2941484 () List!70538)

(assert (=> d!2254889 (= res!2941483 (noDuplicate!2993 res!2941484))))

(declare-fun e!4348942 () Bool)

(assert (=> d!2254889 e!4348942))

(assert (=> d!2254889 (= (choose!56041 lt!2585677) res!2941484)))

(declare-fun b!7252954 () Bool)

(declare-fun e!4348941 () Bool)

(declare-fun tp!2037752 () Bool)

(assert (=> b!7252954 (= e!4348941 tp!2037752)))

(declare-fun tp!2037751 () Bool)

(declare-fun b!7252953 () Bool)

(assert (=> b!7252953 (= e!4348942 (and (inv!89641 (h!76862 res!2941484)) e!4348941 tp!2037751))))

(declare-fun b!7252955 () Bool)

(assert (=> b!7252955 (= e!4348943 (= (content!14620 res!2941484) lt!2585677))))

(assert (= b!7252953 b!7252954))

(assert (= (and d!2254889 (is-Cons!70414 res!2941484)) b!7252953))

(assert (= (and d!2254889 res!2941483) b!7252955))

(declare-fun m!7932784 () Bool)

(assert (=> d!2254889 m!7932784))

(declare-fun m!7932786 () Bool)

(assert (=> b!7252953 m!7932786))

(declare-fun m!7932788 () Bool)

(assert (=> b!7252955 m!7932788))

(assert (=> d!2254685 d!2254889))

(assert (=> b!7252688 d!2254743))

(declare-fun d!2254891 () Bool)

(assert (=> d!2254891 (= (nullable!7912 (h!76860 (exprs!8092 lt!2585693))) (nullableFct!3105 (h!76860 (exprs!8092 lt!2585693))))))

(declare-fun bs!1906731 () Bool)

(assert (= bs!1906731 d!2254891))

(declare-fun m!7932790 () Bool)

(assert (=> bs!1906731 m!7932790))

(assert (=> b!7252713 d!2254891))

(declare-fun bs!1906732 () Bool)

(declare-fun d!2254893 () Bool)

(assert (= bs!1906732 (and d!2254893 d!2254869)))

(declare-fun lambda!444587 () Int)

(assert (=> bs!1906732 (= lambda!444587 lambda!444583)))

(declare-fun bs!1906733 () Bool)

(assert (= bs!1906733 (and d!2254893 b!7252527)))

(assert (=> bs!1906733 (not (= lambda!444587 lambda!444514))))

(declare-fun bs!1906734 () Bool)

(assert (= bs!1906734 (and d!2254893 d!2254683)))

(assert (=> bs!1906734 (not (= lambda!444587 lambda!444551))))

(declare-fun bs!1906735 () Bool)

(assert (= bs!1906735 (and d!2254893 d!2254681)))

(assert (=> bs!1906735 (not (= lambda!444587 lambda!444548))))

(declare-fun bs!1906736 () Bool)

(assert (= bs!1906736 (and d!2254893 d!2254861)))

(assert (=> bs!1906736 (= lambda!444587 lambda!444582)))

(assert (=> d!2254893 (= (nullableZipper!2916 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184)))) (exists!4382 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) lambda!444587))))

(declare-fun bs!1906737 () Bool)

(assert (= bs!1906737 d!2254893))

(assert (=> bs!1906737 m!7932114))

(declare-fun m!7932792 () Bool)

(assert (=> bs!1906737 m!7932792))

(assert (=> b!7252694 d!2254893))

(declare-fun d!2254895 () Bool)

(declare-fun lt!2585849 () Int)

(assert (=> d!2254895 (>= lt!2585849 0)))

(declare-fun e!4348946 () Int)

(assert (=> d!2254895 (= lt!2585849 e!4348946)))

(declare-fun c!1348153 () Bool)

(assert (=> d!2254895 (= c!1348153 (is-Nil!70412 lt!2585770))))

(assert (=> d!2254895 (= (size!41722 lt!2585770) lt!2585849)))

(declare-fun b!7252960 () Bool)

(assert (=> b!7252960 (= e!4348946 0)))

(declare-fun b!7252961 () Bool)

(assert (=> b!7252961 (= e!4348946 (+ 1 (size!41722 (t!384594 lt!2585770))))))

(assert (= (and d!2254895 c!1348153) b!7252960))

(assert (= (and d!2254895 (not c!1348153)) b!7252961))

(declare-fun m!7932794 () Bool)

(assert (=> b!7252961 m!7932794))

(assert (=> b!7252597 d!2254895))

(declare-fun d!2254897 () Bool)

(declare-fun lt!2585850 () Int)

(assert (=> d!2254897 (>= lt!2585850 0)))

(declare-fun e!4348947 () Int)

(assert (=> d!2254897 (= lt!2585850 e!4348947)))

(declare-fun c!1348154 () Bool)

(assert (=> d!2254897 (= c!1348154 (is-Nil!70412 (exprs!8092 ct1!232)))))

(assert (=> d!2254897 (= (size!41722 (exprs!8092 ct1!232)) lt!2585850)))

(declare-fun b!7252962 () Bool)

(assert (=> b!7252962 (= e!4348947 0)))

(declare-fun b!7252963 () Bool)

(assert (=> b!7252963 (= e!4348947 (+ 1 (size!41722 (t!384594 (exprs!8092 ct1!232)))))))

(assert (= (and d!2254897 c!1348154) b!7252962))

(assert (= (and d!2254897 (not c!1348154)) b!7252963))

(assert (=> b!7252963 m!7932674))

(assert (=> b!7252597 d!2254897))

(declare-fun d!2254899 () Bool)

(declare-fun lt!2585851 () Int)

(assert (=> d!2254899 (>= lt!2585851 0)))

(declare-fun e!4348948 () Int)

(assert (=> d!2254899 (= lt!2585851 e!4348948)))

(declare-fun c!1348155 () Bool)

(assert (=> d!2254899 (= c!1348155 (is-Nil!70412 (exprs!8092 ct2!328)))))

(assert (=> d!2254899 (= (size!41722 (exprs!8092 ct2!328)) lt!2585851)))

(declare-fun b!7252964 () Bool)

(assert (=> b!7252964 (= e!4348948 0)))

(declare-fun b!7252965 () Bool)

(assert (=> b!7252965 (= e!4348948 (+ 1 (size!41722 (t!384594 (exprs!8092 ct2!328)))))))

(assert (= (and d!2254899 c!1348155) b!7252964))

(assert (= (and d!2254899 (not c!1348155)) b!7252965))

(declare-fun m!7932796 () Bool)

(assert (=> b!7252965 m!7932796))

(assert (=> b!7252597 d!2254899))

(declare-fun d!2254901 () Bool)

(assert (=> d!2254901 (= (flatMap!2817 lt!2585678 lambda!444561) (choose!56044 lt!2585678 lambda!444561))))

(declare-fun bs!1906738 () Bool)

(assert (= bs!1906738 d!2254901))

(declare-fun m!7932798 () Bool)

(assert (=> bs!1906738 m!7932798))

(assert (=> d!2254723 d!2254901))

(declare-fun d!2254903 () Bool)

(assert (=> d!2254903 true))

(declare-fun setRes!53583 () Bool)

(assert (=> d!2254903 setRes!53583))

(declare-fun condSetEmpty!53583 () Bool)

(declare-fun res!2941487 () (Set Context!15184))

(assert (=> d!2254903 (= condSetEmpty!53583 (= res!2941487 (as set.empty (Set Context!15184))))))

(assert (=> d!2254903 (= (choose!56044 lt!2585678 lambda!444515) res!2941487)))

(declare-fun setIsEmpty!53583 () Bool)

(assert (=> setIsEmpty!53583 setRes!53583))

(declare-fun setNonEmpty!53583 () Bool)

(declare-fun setElem!53583 () Context!15184)

(declare-fun tp!2037757 () Bool)

(declare-fun e!4348951 () Bool)

(assert (=> setNonEmpty!53583 (= setRes!53583 (and tp!2037757 (inv!89641 setElem!53583) e!4348951))))

(declare-fun setRest!53583 () (Set Context!15184))

(assert (=> setNonEmpty!53583 (= res!2941487 (set.union (set.insert setElem!53583 (as set.empty (Set Context!15184))) setRest!53583))))

(declare-fun b!7252968 () Bool)

(declare-fun tp!2037758 () Bool)

(assert (=> b!7252968 (= e!4348951 tp!2037758)))

(assert (= (and d!2254903 condSetEmpty!53583) setIsEmpty!53583))

(assert (= (and d!2254903 (not condSetEmpty!53583)) setNonEmpty!53583))

(assert (= setNonEmpty!53583 b!7252968))

(declare-fun m!7932800 () Bool)

(assert (=> setNonEmpty!53583 m!7932800))

(assert (=> d!2254741 d!2254903))

(declare-fun b!7252969 () Bool)

(declare-fun e!4348957 () (Set Context!15184))

(assert (=> b!7252969 (= e!4348957 (set.insert (ite c!1348047 lt!2585683 (Context!15185 call!660670)) (as set.empty (Set Context!15184))))))

(declare-fun bm!660720 () Bool)

(declare-fun call!660725 () List!70536)

(declare-fun call!660727 () List!70536)

(assert (=> bm!660720 (= call!660725 call!660727)))

(declare-fun b!7252970 () Bool)

(declare-fun e!4348952 () (Set Context!15184))

(declare-fun e!4348956 () (Set Context!15184))

(assert (=> b!7252970 (= e!4348952 e!4348956)))

(declare-fun c!1348156 () Bool)

(assert (=> b!7252970 (= c!1348156 (is-Concat!27497 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))))))

(declare-fun b!7252971 () Bool)

(declare-fun e!4348955 () (Set Context!15184))

(assert (=> b!7252971 (= e!4348955 (as set.empty (Set Context!15184)))))

(declare-fun b!7252972 () Bool)

(declare-fun e!4348954 () (Set Context!15184))

(assert (=> b!7252972 (= e!4348957 e!4348954)))

(declare-fun c!1348158 () Bool)

(assert (=> b!7252972 (= c!1348158 (is-Union!18652 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))))))

(declare-fun b!7252973 () Bool)

(declare-fun e!4348953 () Bool)

(assert (=> b!7252973 (= e!4348953 (nullable!7912 (regOne!37816 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))))

(declare-fun c!1348160 () Bool)

(declare-fun d!2254905 () Bool)

(assert (=> d!2254905 (= c!1348160 (and (is-ElementMatch!18652 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (= (c!1348008 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (h!76861 s1!1971))))))

(assert (=> d!2254905 (= (derivationStepZipperDown!2646 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))) (ite c!1348047 lt!2585683 (Context!15185 call!660670)) (h!76861 s1!1971)) e!4348957)))

(declare-fun bm!660721 () Bool)

(declare-fun call!660729 () (Set Context!15184))

(declare-fun call!660728 () (Set Context!15184))

(assert (=> bm!660721 (= call!660729 call!660728)))

(declare-fun b!7252974 () Bool)

(declare-fun c!1348159 () Bool)

(assert (=> b!7252974 (= c!1348159 (is-Star!18652 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))))))

(assert (=> b!7252974 (= e!4348956 e!4348955)))

(declare-fun b!7252975 () Bool)

(assert (=> b!7252975 (= e!4348955 call!660729)))

(declare-fun call!660730 () (Set Context!15184))

(declare-fun bm!660722 () Bool)

(assert (=> bm!660722 (= call!660730 (derivationStepZipperDown!2646 (ite c!1348158 (regTwo!37817 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (regOne!37816 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))) (ite c!1348158 (ite c!1348047 lt!2585683 (Context!15185 call!660670)) (Context!15185 call!660727)) (h!76861 s1!1971)))))

(declare-fun bm!660723 () Bool)

(declare-fun call!660726 () (Set Context!15184))

(declare-fun c!1348157 () Bool)

(assert (=> bm!660723 (= call!660726 (derivationStepZipperDown!2646 (ite c!1348158 (regOne!37817 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (ite c!1348157 (regTwo!37816 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (ite c!1348156 (regOne!37816 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (reg!18981 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))) (ite (or c!1348158 c!1348157) (ite c!1348047 lt!2585683 (Context!15185 call!660670)) (Context!15185 call!660725)) (h!76861 s1!1971)))))

(declare-fun b!7252976 () Bool)

(assert (=> b!7252976 (= c!1348157 e!4348953)))

(declare-fun res!2941488 () Bool)

(assert (=> b!7252976 (=> (not res!2941488) (not e!4348953))))

(assert (=> b!7252976 (= res!2941488 (is-Concat!27497 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))))))

(assert (=> b!7252976 (= e!4348954 e!4348952)))

(declare-fun bm!660724 () Bool)

(assert (=> bm!660724 (= call!660727 ($colon$colon!2920 (exprs!8092 (ite c!1348047 lt!2585683 (Context!15185 call!660670))) (ite (or c!1348157 c!1348156) (regTwo!37816 (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))) (ite c!1348047 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))))

(declare-fun bm!660725 () Bool)

(assert (=> bm!660725 (= call!660728 call!660726)))

(declare-fun b!7252977 () Bool)

(assert (=> b!7252977 (= e!4348954 (set.union call!660726 call!660730))))

(declare-fun b!7252978 () Bool)

(assert (=> b!7252978 (= e!4348952 (set.union call!660730 call!660728))))

(declare-fun b!7252979 () Bool)

(assert (=> b!7252979 (= e!4348956 call!660729)))

(assert (= (and d!2254905 c!1348160) b!7252969))

(assert (= (and d!2254905 (not c!1348160)) b!7252972))

(assert (= (and b!7252972 c!1348158) b!7252977))

(assert (= (and b!7252972 (not c!1348158)) b!7252976))

(assert (= (and b!7252976 res!2941488) b!7252973))

(assert (= (and b!7252976 c!1348157) b!7252978))

(assert (= (and b!7252976 (not c!1348157)) b!7252970))

(assert (= (and b!7252970 c!1348156) b!7252979))

(assert (= (and b!7252970 (not c!1348156)) b!7252974))

(assert (= (and b!7252974 c!1348159) b!7252975))

(assert (= (and b!7252974 (not c!1348159)) b!7252971))

(assert (= (or b!7252979 b!7252975) bm!660720))

(assert (= (or b!7252979 b!7252975) bm!660721))

(assert (= (or b!7252978 bm!660720) bm!660724))

(assert (= (or b!7252978 bm!660721) bm!660725))

(assert (= (or b!7252977 b!7252978) bm!660722))

(assert (= (or b!7252977 bm!660725) bm!660723))

(declare-fun m!7932802 () Bool)

(assert (=> bm!660722 m!7932802))

(declare-fun m!7932804 () Bool)

(assert (=> b!7252973 m!7932804))

(declare-fun m!7932806 () Bool)

(assert (=> bm!660724 m!7932806))

(declare-fun m!7932808 () Bool)

(assert (=> bm!660723 m!7932808))

(declare-fun m!7932810 () Bool)

(assert (=> b!7252969 m!7932810))

(assert (=> bm!660665 d!2254905))

(declare-fun d!2254907 () Bool)

(assert (=> d!2254907 (= (isEmpty!40550 (t!384595 s1!1971)) (is-Nil!70413 (t!384595 s1!1971)))))

(assert (=> d!2254721 d!2254907))

(declare-fun b!7252980 () Bool)

(declare-fun e!4348963 () (Set Context!15184))

(assert (=> b!7252980 (= e!4348963 (set.insert (Context!15185 (t!384594 (exprs!8092 lt!2585683))) (as set.empty (Set Context!15184))))))

(declare-fun bm!660726 () Bool)

(declare-fun call!660731 () List!70536)

(declare-fun call!660733 () List!70536)

(assert (=> bm!660726 (= call!660731 call!660733)))

(declare-fun b!7252981 () Bool)

(declare-fun e!4348958 () (Set Context!15184))

(declare-fun e!4348962 () (Set Context!15184))

(assert (=> b!7252981 (= e!4348958 e!4348962)))

(declare-fun c!1348161 () Bool)

(assert (=> b!7252981 (= c!1348161 (is-Concat!27497 (h!76860 (exprs!8092 lt!2585683))))))

(declare-fun b!7252982 () Bool)

(declare-fun e!4348961 () (Set Context!15184))

(assert (=> b!7252982 (= e!4348961 (as set.empty (Set Context!15184)))))

(declare-fun b!7252983 () Bool)

(declare-fun e!4348960 () (Set Context!15184))

(assert (=> b!7252983 (= e!4348963 e!4348960)))

(declare-fun c!1348163 () Bool)

(assert (=> b!7252983 (= c!1348163 (is-Union!18652 (h!76860 (exprs!8092 lt!2585683))))))

(declare-fun b!7252984 () Bool)

(declare-fun e!4348959 () Bool)

(assert (=> b!7252984 (= e!4348959 (nullable!7912 (regOne!37816 (h!76860 (exprs!8092 lt!2585683)))))))

(declare-fun d!2254909 () Bool)

(declare-fun c!1348165 () Bool)

(assert (=> d!2254909 (= c!1348165 (and (is-ElementMatch!18652 (h!76860 (exprs!8092 lt!2585683))) (= (c!1348008 (h!76860 (exprs!8092 lt!2585683))) (h!76861 s1!1971))))))

(assert (=> d!2254909 (= (derivationStepZipperDown!2646 (h!76860 (exprs!8092 lt!2585683)) (Context!15185 (t!384594 (exprs!8092 lt!2585683))) (h!76861 s1!1971)) e!4348963)))

(declare-fun bm!660727 () Bool)

(declare-fun call!660735 () (Set Context!15184))

(declare-fun call!660734 () (Set Context!15184))

(assert (=> bm!660727 (= call!660735 call!660734)))

(declare-fun b!7252985 () Bool)

(declare-fun c!1348164 () Bool)

(assert (=> b!7252985 (= c!1348164 (is-Star!18652 (h!76860 (exprs!8092 lt!2585683))))))

(assert (=> b!7252985 (= e!4348962 e!4348961)))

(declare-fun b!7252986 () Bool)

(assert (=> b!7252986 (= e!4348961 call!660735)))

(declare-fun call!660736 () (Set Context!15184))

(declare-fun bm!660728 () Bool)

(assert (=> bm!660728 (= call!660736 (derivationStepZipperDown!2646 (ite c!1348163 (regTwo!37817 (h!76860 (exprs!8092 lt!2585683))) (regOne!37816 (h!76860 (exprs!8092 lt!2585683)))) (ite c!1348163 (Context!15185 (t!384594 (exprs!8092 lt!2585683))) (Context!15185 call!660733)) (h!76861 s1!1971)))))

(declare-fun call!660732 () (Set Context!15184))

(declare-fun bm!660729 () Bool)

(declare-fun c!1348162 () Bool)

(assert (=> bm!660729 (= call!660732 (derivationStepZipperDown!2646 (ite c!1348163 (regOne!37817 (h!76860 (exprs!8092 lt!2585683))) (ite c!1348162 (regTwo!37816 (h!76860 (exprs!8092 lt!2585683))) (ite c!1348161 (regOne!37816 (h!76860 (exprs!8092 lt!2585683))) (reg!18981 (h!76860 (exprs!8092 lt!2585683)))))) (ite (or c!1348163 c!1348162) (Context!15185 (t!384594 (exprs!8092 lt!2585683))) (Context!15185 call!660731)) (h!76861 s1!1971)))))

(declare-fun b!7252987 () Bool)

(assert (=> b!7252987 (= c!1348162 e!4348959)))

(declare-fun res!2941489 () Bool)

(assert (=> b!7252987 (=> (not res!2941489) (not e!4348959))))

(assert (=> b!7252987 (= res!2941489 (is-Concat!27497 (h!76860 (exprs!8092 lt!2585683))))))

(assert (=> b!7252987 (= e!4348960 e!4348958)))

(declare-fun bm!660730 () Bool)

(assert (=> bm!660730 (= call!660733 ($colon$colon!2920 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585683)))) (ite (or c!1348162 c!1348161) (regTwo!37816 (h!76860 (exprs!8092 lt!2585683))) (h!76860 (exprs!8092 lt!2585683)))))))

(declare-fun bm!660731 () Bool)

(assert (=> bm!660731 (= call!660734 call!660732)))

(declare-fun b!7252988 () Bool)

(assert (=> b!7252988 (= e!4348960 (set.union call!660732 call!660736))))

(declare-fun b!7252989 () Bool)

(assert (=> b!7252989 (= e!4348958 (set.union call!660736 call!660734))))

(declare-fun b!7252990 () Bool)

(assert (=> b!7252990 (= e!4348962 call!660735)))

(assert (= (and d!2254909 c!1348165) b!7252980))

(assert (= (and d!2254909 (not c!1348165)) b!7252983))

(assert (= (and b!7252983 c!1348163) b!7252988))

(assert (= (and b!7252983 (not c!1348163)) b!7252987))

(assert (= (and b!7252987 res!2941489) b!7252984))

(assert (= (and b!7252987 c!1348162) b!7252989))

(assert (= (and b!7252987 (not c!1348162)) b!7252981))

(assert (= (and b!7252981 c!1348161) b!7252990))

(assert (= (and b!7252981 (not c!1348161)) b!7252985))

(assert (= (and b!7252985 c!1348164) b!7252986))

(assert (= (and b!7252985 (not c!1348164)) b!7252982))

(assert (= (or b!7252990 b!7252986) bm!660726))

(assert (= (or b!7252990 b!7252986) bm!660727))

(assert (= (or b!7252989 bm!660726) bm!660730))

(assert (= (or b!7252989 bm!660727) bm!660731))

(assert (= (or b!7252988 b!7252989) bm!660728))

(assert (= (or b!7252988 bm!660731) bm!660729))

(declare-fun m!7932812 () Bool)

(assert (=> bm!660728 m!7932812))

(declare-fun m!7932814 () Bool)

(assert (=> b!7252984 m!7932814))

(declare-fun m!7932816 () Bool)

(assert (=> bm!660730 m!7932816))

(declare-fun m!7932818 () Bool)

(assert (=> bm!660729 m!7932818))

(declare-fun m!7932820 () Bool)

(assert (=> b!7252980 m!7932820))

(assert (=> bm!660681 d!2254909))

(declare-fun d!2254911 () Bool)

(declare-fun c!1348166 () Bool)

(assert (=> d!2254911 (= c!1348166 (is-Nil!70412 lt!2585789))))

(declare-fun e!4348964 () (Set Regex!18652))

(assert (=> d!2254911 (= (content!14619 lt!2585789) e!4348964)))

(declare-fun b!7252991 () Bool)

(assert (=> b!7252991 (= e!4348964 (as set.empty (Set Regex!18652)))))

(declare-fun b!7252992 () Bool)

(assert (=> b!7252992 (= e!4348964 (set.union (set.insert (h!76860 lt!2585789) (as set.empty (Set Regex!18652))) (content!14619 (t!384594 lt!2585789))))))

(assert (= (and d!2254911 c!1348166) b!7252991))

(assert (= (and d!2254911 (not c!1348166)) b!7252992))

(declare-fun m!7932822 () Bool)

(assert (=> b!7252992 m!7932822))

(declare-fun m!7932824 () Bool)

(assert (=> b!7252992 m!7932824))

(assert (=> d!2254711 d!2254911))

(declare-fun d!2254913 () Bool)

(declare-fun c!1348167 () Bool)

(assert (=> d!2254913 (= c!1348167 (is-Nil!70412 (exprs!8092 lt!2585682)))))

(declare-fun e!4348965 () (Set Regex!18652))

(assert (=> d!2254913 (= (content!14619 (exprs!8092 lt!2585682)) e!4348965)))

(declare-fun b!7252993 () Bool)

(assert (=> b!7252993 (= e!4348965 (as set.empty (Set Regex!18652)))))

(declare-fun b!7252994 () Bool)

(assert (=> b!7252994 (= e!4348965 (set.union (set.insert (h!76860 (exprs!8092 lt!2585682)) (as set.empty (Set Regex!18652))) (content!14619 (t!384594 (exprs!8092 lt!2585682)))))))

(assert (= (and d!2254913 c!1348167) b!7252993))

(assert (= (and d!2254913 (not c!1348167)) b!7252994))

(declare-fun m!7932826 () Bool)

(assert (=> b!7252994 m!7932826))

(assert (=> b!7252994 m!7932758))

(assert (=> d!2254711 d!2254913))

(assert (=> d!2254711 d!2254847))

(declare-fun d!2254915 () Bool)

(declare-fun res!2941494 () Bool)

(declare-fun e!4348970 () Bool)

(assert (=> d!2254915 (=> res!2941494 e!4348970)))

(assert (=> d!2254915 (= res!2941494 (is-Nil!70414 lt!2585676))))

(assert (=> d!2254915 (= (forall!17500 lt!2585676 lambda!444548) e!4348970)))

(declare-fun b!7252999 () Bool)

(declare-fun e!4348971 () Bool)

(assert (=> b!7252999 (= e!4348970 e!4348971)))

(declare-fun res!2941495 () Bool)

(assert (=> b!7252999 (=> (not res!2941495) (not e!4348971))))

(assert (=> b!7252999 (= res!2941495 (dynLambda!28754 lambda!444548 (h!76862 lt!2585676)))))

(declare-fun b!7253000 () Bool)

(assert (=> b!7253000 (= e!4348971 (forall!17500 (t!384596 lt!2585676) lambda!444548))))

(assert (= (and d!2254915 (not res!2941494)) b!7252999))

(assert (= (and b!7252999 res!2941495) b!7253000))

(declare-fun b_lambda!278657 () Bool)

(assert (=> (not b_lambda!278657) (not b!7252999)))

(declare-fun m!7932828 () Bool)

(assert (=> b!7252999 m!7932828))

(declare-fun m!7932830 () Bool)

(assert (=> b!7253000 m!7932830))

(assert (=> d!2254681 d!2254915))

(declare-fun e!4348977 () (Set Context!15184))

(declare-fun b!7253001 () Bool)

(assert (=> b!7253001 (= e!4348977 (set.insert (ite (or c!1348074 c!1348073) lt!2585693 (Context!15185 call!660680)) (as set.empty (Set Context!15184))))))

(declare-fun bm!660732 () Bool)

(declare-fun call!660737 () List!70536)

(declare-fun call!660739 () List!70536)

(assert (=> bm!660732 (= call!660737 call!660739)))

(declare-fun b!7253002 () Bool)

(declare-fun e!4348972 () (Set Context!15184))

(declare-fun e!4348976 () (Set Context!15184))

(assert (=> b!7253002 (= e!4348972 e!4348976)))

(declare-fun c!1348168 () Bool)

(assert (=> b!7253002 (= c!1348168 (is-Concat!27497 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))))))

(declare-fun b!7253003 () Bool)

(declare-fun e!4348975 () (Set Context!15184))

(assert (=> b!7253003 (= e!4348975 (as set.empty (Set Context!15184)))))

(declare-fun b!7253004 () Bool)

(declare-fun e!4348974 () (Set Context!15184))

(assert (=> b!7253004 (= e!4348977 e!4348974)))

(declare-fun c!1348170 () Bool)

(assert (=> b!7253004 (= c!1348170 (is-Union!18652 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))))))

(declare-fun b!7253005 () Bool)

(declare-fun e!4348973 () Bool)

(assert (=> b!7253005 (= e!4348973 (nullable!7912 (regOne!37816 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))))))))

(declare-fun d!2254917 () Bool)

(declare-fun c!1348172 () Bool)

(assert (=> d!2254917 (= c!1348172 (and (is-ElementMatch!18652 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (= (c!1348008 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (h!76861 s1!1971))))))

(assert (=> d!2254917 (= (derivationStepZipperDown!2646 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))) (ite (or c!1348074 c!1348073) lt!2585693 (Context!15185 call!660680)) (h!76861 s1!1971)) e!4348977)))

(declare-fun bm!660733 () Bool)

(declare-fun call!660741 () (Set Context!15184))

(declare-fun call!660740 () (Set Context!15184))

(assert (=> bm!660733 (= call!660741 call!660740)))

(declare-fun c!1348171 () Bool)

(declare-fun b!7253006 () Bool)

(assert (=> b!7253006 (= c!1348171 (is-Star!18652 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))))))

(assert (=> b!7253006 (= e!4348976 e!4348975)))

(declare-fun b!7253007 () Bool)

(assert (=> b!7253007 (= e!4348975 call!660741)))

(declare-fun call!660742 () (Set Context!15184))

(declare-fun bm!660734 () Bool)

(assert (=> bm!660734 (= call!660742 (derivationStepZipperDown!2646 (ite c!1348170 (regTwo!37817 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (regOne!37816 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))))) (ite c!1348170 (ite (or c!1348074 c!1348073) lt!2585693 (Context!15185 call!660680)) (Context!15185 call!660739)) (h!76861 s1!1971)))))

(declare-fun call!660738 () (Set Context!15184))

(declare-fun bm!660735 () Bool)

(declare-fun c!1348169 () Bool)

(assert (=> bm!660735 (= call!660738 (derivationStepZipperDown!2646 (ite c!1348170 (regOne!37817 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (ite c!1348169 (regTwo!37816 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (ite c!1348168 (regOne!37816 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (reg!18981 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))))))) (ite (or c!1348170 c!1348169) (ite (or c!1348074 c!1348073) lt!2585693 (Context!15185 call!660680)) (Context!15185 call!660737)) (h!76861 s1!1971)))))

(declare-fun b!7253008 () Bool)

(assert (=> b!7253008 (= c!1348169 e!4348973)))

(declare-fun res!2941496 () Bool)

(assert (=> b!7253008 (=> (not res!2941496) (not e!4348973))))

(assert (=> b!7253008 (= res!2941496 (is-Concat!27497 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))))))

(assert (=> b!7253008 (= e!4348974 e!4348972)))

(declare-fun bm!660736 () Bool)

(assert (=> bm!660736 (= call!660739 ($colon$colon!2920 (exprs!8092 (ite (or c!1348074 c!1348073) lt!2585693 (Context!15185 call!660680))) (ite (or c!1348169 c!1348168) (regTwo!37816 (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232))))))) (ite c!1348074 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348073 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348072 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))))))))

(declare-fun bm!660737 () Bool)

(assert (=> bm!660737 (= call!660740 call!660738)))

(declare-fun b!7253009 () Bool)

(assert (=> b!7253009 (= e!4348974 (set.union call!660738 call!660742))))

(declare-fun b!7253010 () Bool)

(assert (=> b!7253010 (= e!4348972 (set.union call!660742 call!660740))))

(declare-fun b!7253011 () Bool)

(assert (=> b!7253011 (= e!4348976 call!660741)))

(assert (= (and d!2254917 c!1348172) b!7253001))

(assert (= (and d!2254917 (not c!1348172)) b!7253004))

(assert (= (and b!7253004 c!1348170) b!7253009))

(assert (= (and b!7253004 (not c!1348170)) b!7253008))

(assert (= (and b!7253008 res!2941496) b!7253005))

(assert (= (and b!7253008 c!1348169) b!7253010))

(assert (= (and b!7253008 (not c!1348169)) b!7253002))

(assert (= (and b!7253002 c!1348168) b!7253011))

(assert (= (and b!7253002 (not c!1348168)) b!7253006))

(assert (= (and b!7253006 c!1348171) b!7253007))

(assert (= (and b!7253006 (not c!1348171)) b!7253003))

(assert (= (or b!7253011 b!7253007) bm!660732))

(assert (= (or b!7253011 b!7253007) bm!660733))

(assert (= (or b!7253010 bm!660732) bm!660736))

(assert (= (or b!7253010 bm!660733) bm!660737))

(assert (= (or b!7253009 b!7253010) bm!660734))

(assert (= (or b!7253009 bm!660737) bm!660735))

(declare-fun m!7932832 () Bool)

(assert (=> bm!660734 m!7932832))

(declare-fun m!7932834 () Bool)

(assert (=> b!7253005 m!7932834))

(declare-fun m!7932836 () Bool)

(assert (=> bm!660736 m!7932836))

(declare-fun m!7932838 () Bool)

(assert (=> bm!660735 m!7932838))

(declare-fun m!7932840 () Bool)

(assert (=> b!7253001 m!7932840))

(assert (=> bm!660678 d!2254917))

(assert (=> d!2254739 d!2254751))

(declare-fun d!2254919 () Bool)

(assert (=> d!2254919 (= (flatMap!2817 lt!2585689 lambda!444515) (dynLambda!28755 lambda!444515 lt!2585687))))

(assert (=> d!2254919 true))

(declare-fun _$13!4585 () Unit!163891)

(assert (=> d!2254919 (= (choose!56043 lt!2585689 lt!2585687 lambda!444515) _$13!4585)))

(declare-fun b_lambda!278659 () Bool)

(assert (=> (not b_lambda!278659) (not d!2254919)))

(declare-fun bs!1906739 () Bool)

(assert (= bs!1906739 d!2254919))

(assert (=> bs!1906739 m!7932174))

(assert (=> bs!1906739 m!7932444))

(assert (=> d!2254739 d!2254919))

(declare-fun bs!1906740 () Bool)

(declare-fun d!2254921 () Bool)

(assert (= bs!1906740 (and d!2254921 d!2254869)))

(declare-fun lambda!444588 () Int)

(assert (=> bs!1906740 (= lambda!444588 lambda!444583)))

(declare-fun bs!1906741 () Bool)

(assert (= bs!1906741 (and d!2254921 b!7252527)))

(assert (=> bs!1906741 (not (= lambda!444588 lambda!444514))))

(declare-fun bs!1906742 () Bool)

(assert (= bs!1906742 (and d!2254921 d!2254893)))

(assert (=> bs!1906742 (= lambda!444588 lambda!444587)))

(declare-fun bs!1906743 () Bool)

(assert (= bs!1906743 (and d!2254921 d!2254683)))

(assert (=> bs!1906743 (not (= lambda!444588 lambda!444551))))

(declare-fun bs!1906744 () Bool)

(assert (= bs!1906744 (and d!2254921 d!2254681)))

(assert (=> bs!1906744 (not (= lambda!444588 lambda!444548))))

(declare-fun bs!1906745 () Bool)

(assert (= bs!1906745 (and d!2254921 d!2254861)))

(assert (=> bs!1906745 (= lambda!444588 lambda!444582)))

(assert (=> d!2254921 (= (nullableZipper!2916 (set.insert ct2!328 (as set.empty (Set Context!15184)))) (exists!4382 (set.insert ct2!328 (as set.empty (Set Context!15184))) lambda!444588))))

(declare-fun bs!1906746 () Bool)

(assert (= bs!1906746 d!2254921))

(assert (=> bs!1906746 m!7932148))

(declare-fun m!7932842 () Bool)

(assert (=> bs!1906746 m!7932842))

(assert (=> b!7252658 d!2254921))

(declare-fun d!2254923 () Bool)

(declare-fun lt!2585854 () Int)

(assert (=> d!2254923 (>= lt!2585854 0)))

(declare-fun e!4348980 () Int)

(assert (=> d!2254923 (= lt!2585854 e!4348980)))

(declare-fun c!1348175 () Bool)

(assert (=> d!2254923 (= c!1348175 (is-Nil!70413 lt!2585788))))

(assert (=> d!2254923 (= (size!41723 lt!2585788) lt!2585854)))

(declare-fun b!7253016 () Bool)

(assert (=> b!7253016 (= e!4348980 0)))

(declare-fun b!7253017 () Bool)

(assert (=> b!7253017 (= e!4348980 (+ 1 (size!41723 (t!384595 lt!2585788))))))

(assert (= (and d!2254923 c!1348175) b!7253016))

(assert (= (and d!2254923 (not c!1348175)) b!7253017))

(declare-fun m!7932844 () Bool)

(assert (=> b!7253017 m!7932844))

(assert (=> b!7252683 d!2254923))

(declare-fun d!2254925 () Bool)

(declare-fun lt!2585855 () Int)

(assert (=> d!2254925 (>= lt!2585855 0)))

(declare-fun e!4348981 () Int)

(assert (=> d!2254925 (= lt!2585855 e!4348981)))

(declare-fun c!1348176 () Bool)

(assert (=> d!2254925 (= c!1348176 (is-Nil!70413 (t!384595 s1!1971)))))

(assert (=> d!2254925 (= (size!41723 (t!384595 s1!1971)) lt!2585855)))

(declare-fun b!7253018 () Bool)

(assert (=> b!7253018 (= e!4348981 0)))

(declare-fun b!7253019 () Bool)

(assert (=> b!7253019 (= e!4348981 (+ 1 (size!41723 (t!384595 (t!384595 s1!1971)))))))

(assert (= (and d!2254925 c!1348176) b!7253018))

(assert (= (and d!2254925 (not c!1348176)) b!7253019))

(assert (=> b!7253019 m!7932734))

(assert (=> b!7252683 d!2254925))

(declare-fun d!2254927 () Bool)

(declare-fun lt!2585856 () Int)

(assert (=> d!2254927 (>= lt!2585856 0)))

(declare-fun e!4348982 () Int)

(assert (=> d!2254927 (= lt!2585856 e!4348982)))

(declare-fun c!1348177 () Bool)

(assert (=> d!2254927 (= c!1348177 (is-Nil!70413 s2!1849))))

(assert (=> d!2254927 (= (size!41723 s2!1849) lt!2585856)))

(declare-fun b!7253020 () Bool)

(assert (=> b!7253020 (= e!4348982 0)))

(declare-fun b!7253021 () Bool)

(assert (=> b!7253021 (= e!4348982 (+ 1 (size!41723 (t!384595 s2!1849))))))

(assert (= (and d!2254927 c!1348177) b!7253020))

(assert (= (and d!2254927 (not c!1348177)) b!7253021))

(declare-fun m!7932846 () Bool)

(assert (=> b!7253021 m!7932846))

(assert (=> b!7252683 d!2254927))

(declare-fun d!2254929 () Bool)

(declare-fun res!2941497 () Bool)

(declare-fun e!4348983 () Bool)

(assert (=> d!2254929 (=> res!2941497 e!4348983)))

(assert (=> d!2254929 (= res!2941497 (is-Nil!70412 (exprs!8092 ct1!232)))))

(assert (=> d!2254929 (= (forall!17499 (exprs!8092 ct1!232) lambda!444565) e!4348983)))

(declare-fun b!7253022 () Bool)

(declare-fun e!4348984 () Bool)

(assert (=> b!7253022 (= e!4348983 e!4348984)))

(declare-fun res!2941498 () Bool)

(assert (=> b!7253022 (=> (not res!2941498) (not e!4348984))))

(assert (=> b!7253022 (= res!2941498 (dynLambda!28759 lambda!444565 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7253023 () Bool)

(assert (=> b!7253023 (= e!4348984 (forall!17499 (t!384594 (exprs!8092 ct1!232)) lambda!444565))))

(assert (= (and d!2254929 (not res!2941497)) b!7253022))

(assert (= (and b!7253022 res!2941498) b!7253023))

(declare-fun b_lambda!278661 () Bool)

(assert (=> (not b_lambda!278661) (not b!7253022)))

(declare-fun m!7932848 () Bool)

(assert (=> b!7253022 m!7932848))

(declare-fun m!7932850 () Bool)

(assert (=> b!7253023 m!7932850))

(assert (=> d!2254733 d!2254929))

(declare-fun d!2254931 () Bool)

(assert (=> d!2254931 (= ($colon$colon!2920 (exprs!8092 lt!2585693) (ite (or c!1348073 c!1348072) (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (h!76860 (exprs!8092 ct1!232)))) (Cons!70412 (ite (or c!1348073 c!1348072) (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (h!76860 (exprs!8092 ct1!232))) (exprs!8092 lt!2585693)))))

(assert (=> bm!660679 d!2254931))

(declare-fun d!2254933 () Bool)

(declare-fun c!1348178 () Bool)

(assert (=> d!2254933 (= c!1348178 (isEmpty!40550 (tail!14332 (t!384595 s1!1971))))))

(declare-fun e!4348985 () Bool)

(assert (=> d!2254933 (= (matchZipper!3562 (derivationStepZipper!3430 lt!2585677 (head!14908 (t!384595 s1!1971))) (tail!14332 (t!384595 s1!1971))) e!4348985)))

(declare-fun b!7253024 () Bool)

(assert (=> b!7253024 (= e!4348985 (nullableZipper!2916 (derivationStepZipper!3430 lt!2585677 (head!14908 (t!384595 s1!1971)))))))

(declare-fun b!7253025 () Bool)

(assert (=> b!7253025 (= e!4348985 (matchZipper!3562 (derivationStepZipper!3430 (derivationStepZipper!3430 lt!2585677 (head!14908 (t!384595 s1!1971))) (head!14908 (tail!14332 (t!384595 s1!1971)))) (tail!14332 (tail!14332 (t!384595 s1!1971)))))))

(assert (= (and d!2254933 c!1348178) b!7253024))

(assert (= (and d!2254933 (not c!1348178)) b!7253025))

(assert (=> d!2254933 m!7932402))

(declare-fun m!7932852 () Bool)

(assert (=> d!2254933 m!7932852))

(assert (=> b!7253024 m!7932400))

(declare-fun m!7932854 () Bool)

(assert (=> b!7253024 m!7932854))

(assert (=> b!7253025 m!7932402))

(declare-fun m!7932856 () Bool)

(assert (=> b!7253025 m!7932856))

(assert (=> b!7253025 m!7932400))

(assert (=> b!7253025 m!7932856))

(declare-fun m!7932858 () Bool)

(assert (=> b!7253025 m!7932858))

(assert (=> b!7253025 m!7932402))

(declare-fun m!7932860 () Bool)

(assert (=> b!7253025 m!7932860))

(assert (=> b!7253025 m!7932858))

(assert (=> b!7253025 m!7932860))

(declare-fun m!7932862 () Bool)

(assert (=> b!7253025 m!7932862))

(assert (=> b!7252702 d!2254933))

(declare-fun bs!1906747 () Bool)

(declare-fun d!2254935 () Bool)

(assert (= bs!1906747 (and d!2254935 b!7252522)))

(declare-fun lambda!444589 () Int)

(assert (=> bs!1906747 (= (= (head!14908 (t!384595 s1!1971)) (h!76861 s1!1971)) (= lambda!444589 lambda!444515))))

(declare-fun bs!1906748 () Bool)

(assert (= bs!1906748 (and d!2254935 d!2254673)))

(assert (=> bs!1906748 (= (= (head!14908 (t!384595 s1!1971)) (h!76861 s1!1971)) (= lambda!444589 lambda!444545))))

(declare-fun bs!1906749 () Bool)

(assert (= bs!1906749 (and d!2254935 d!2254723)))

(assert (=> bs!1906749 (= (= (head!14908 (t!384595 s1!1971)) (h!76861 s1!1971)) (= lambda!444589 lambda!444561))))

(declare-fun bs!1906750 () Bool)

(assert (= bs!1906750 (and d!2254935 d!2254855)))

(assert (=> bs!1906750 (= (= (head!14908 (t!384595 s1!1971)) (head!14908 s2!1849)) (= lambda!444589 lambda!444579))))

(assert (=> d!2254935 true))

(assert (=> d!2254935 (= (derivationStepZipper!3430 lt!2585677 (head!14908 (t!384595 s1!1971))) (flatMap!2817 lt!2585677 lambda!444589))))

(declare-fun bs!1906751 () Bool)

(assert (= bs!1906751 d!2254935))

(declare-fun m!7932864 () Bool)

(assert (=> bs!1906751 m!7932864))

(assert (=> b!7252702 d!2254935))

(declare-fun d!2254937 () Bool)

(assert (=> d!2254937 (= (head!14908 (t!384595 s1!1971)) (h!76861 (t!384595 s1!1971)))))

(assert (=> b!7252702 d!2254937))

(declare-fun d!2254939 () Bool)

(assert (=> d!2254939 (= (tail!14332 (t!384595 s1!1971)) (t!384595 (t!384595 s1!1971)))))

(assert (=> b!7252702 d!2254939))

(declare-fun b!7253026 () Bool)

(declare-fun e!4348987 () (Set Context!15184))

(assert (=> b!7253026 (= e!4348987 (as set.empty (Set Context!15184)))))

(declare-fun b!7253027 () Bool)

(declare-fun e!4348986 () (Set Context!15184))

(assert (=> b!7253027 (= e!4348986 e!4348987)))

(declare-fun c!1348179 () Bool)

(assert (=> b!7253027 (= c!1348179 (is-Cons!70412 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585683))))))))

(declare-fun b!7253028 () Bool)

(declare-fun call!660743 () (Set Context!15184))

(assert (=> b!7253028 (= e!4348987 call!660743)))

(declare-fun b!7253029 () Bool)

(declare-fun e!4348988 () Bool)

(assert (=> b!7253029 (= e!4348988 (nullable!7912 (h!76860 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585683)))))))))

(declare-fun b!7253030 () Bool)

(assert (=> b!7253030 (= e!4348986 (set.union call!660743 (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585683)))))) (h!76861 s1!1971))))))

(declare-fun d!2254941 () Bool)

(declare-fun c!1348180 () Bool)

(assert (=> d!2254941 (= c!1348180 e!4348988)))

(declare-fun res!2941499 () Bool)

(assert (=> d!2254941 (=> (not res!2941499) (not e!4348988))))

(assert (=> d!2254941 (= res!2941499 (is-Cons!70412 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585683))))))))

(assert (=> d!2254941 (= (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 lt!2585683))) (h!76861 s1!1971)) e!4348986)))

(declare-fun bm!660738 () Bool)

(assert (=> bm!660738 (= call!660743 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585683))))) (Context!15185 (t!384594 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585683)))))) (h!76861 s1!1971)))))

(assert (= (and d!2254941 res!2941499) b!7253029))

(assert (= (and d!2254941 c!1348180) b!7253030))

(assert (= (and d!2254941 (not c!1348180)) b!7253027))

(assert (= (and b!7253027 c!1348179) b!7253028))

(assert (= (and b!7253027 (not c!1348179)) b!7253026))

(assert (= (or b!7253030 b!7253028) bm!660738))

(declare-fun m!7932866 () Bool)

(assert (=> b!7253029 m!7932866))

(declare-fun m!7932868 () Bool)

(assert (=> b!7253030 m!7932868))

(declare-fun m!7932870 () Bool)

(assert (=> bm!660738 m!7932870))

(assert (=> b!7252730 d!2254941))

(declare-fun d!2254943 () Bool)

(declare-fun lt!2585857 () Int)

(assert (=> d!2254943 (>= lt!2585857 0)))

(declare-fun e!4348989 () Int)

(assert (=> d!2254943 (= lt!2585857 e!4348989)))

(declare-fun c!1348181 () Bool)

(assert (=> d!2254943 (= c!1348181 (is-Nil!70412 lt!2585789))))

(assert (=> d!2254943 (= (size!41722 lt!2585789) lt!2585857)))

(declare-fun b!7253031 () Bool)

(assert (=> b!7253031 (= e!4348989 0)))

(declare-fun b!7253032 () Bool)

(assert (=> b!7253032 (= e!4348989 (+ 1 (size!41722 (t!384594 lt!2585789))))))

(assert (= (and d!2254943 c!1348181) b!7253031))

(assert (= (and d!2254943 (not c!1348181)) b!7253032))

(declare-fun m!7932872 () Bool)

(assert (=> b!7253032 m!7932872))

(assert (=> b!7252692 d!2254943))

(declare-fun d!2254945 () Bool)

(declare-fun lt!2585858 () Int)

(assert (=> d!2254945 (>= lt!2585858 0)))

(declare-fun e!4348990 () Int)

(assert (=> d!2254945 (= lt!2585858 e!4348990)))

(declare-fun c!1348182 () Bool)

(assert (=> d!2254945 (= c!1348182 (is-Nil!70412 (exprs!8092 lt!2585682)))))

(assert (=> d!2254945 (= (size!41722 (exprs!8092 lt!2585682)) lt!2585858)))

(declare-fun b!7253033 () Bool)

(assert (=> b!7253033 (= e!4348990 0)))

(declare-fun b!7253034 () Bool)

(assert (=> b!7253034 (= e!4348990 (+ 1 (size!41722 (t!384594 (exprs!8092 lt!2585682)))))))

(assert (= (and d!2254945 c!1348182) b!7253033))

(assert (= (and d!2254945 (not c!1348182)) b!7253034))

(assert (=> b!7253034 m!7932762))

(assert (=> b!7252692 d!2254945))

(assert (=> b!7252692 d!2254899))

(declare-fun b!7253035 () Bool)

(declare-fun e!4348996 () (Set Context!15184))

(assert (=> b!7253035 (= e!4348996 (set.insert (Context!15185 (t!384594 (exprs!8092 lt!2585687))) (as set.empty (Set Context!15184))))))

(declare-fun bm!660739 () Bool)

(declare-fun call!660744 () List!70536)

(declare-fun call!660746 () List!70536)

(assert (=> bm!660739 (= call!660744 call!660746)))

(declare-fun b!7253036 () Bool)

(declare-fun e!4348991 () (Set Context!15184))

(declare-fun e!4348995 () (Set Context!15184))

(assert (=> b!7253036 (= e!4348991 e!4348995)))

(declare-fun c!1348183 () Bool)

(assert (=> b!7253036 (= c!1348183 (is-Concat!27497 (h!76860 (exprs!8092 lt!2585687))))))

(declare-fun b!7253037 () Bool)

(declare-fun e!4348994 () (Set Context!15184))

(assert (=> b!7253037 (= e!4348994 (as set.empty (Set Context!15184)))))

(declare-fun b!7253038 () Bool)

(declare-fun e!4348993 () (Set Context!15184))

(assert (=> b!7253038 (= e!4348996 e!4348993)))

(declare-fun c!1348185 () Bool)

(assert (=> b!7253038 (= c!1348185 (is-Union!18652 (h!76860 (exprs!8092 lt!2585687))))))

(declare-fun b!7253039 () Bool)

(declare-fun e!4348992 () Bool)

(assert (=> b!7253039 (= e!4348992 (nullable!7912 (regOne!37816 (h!76860 (exprs!8092 lt!2585687)))))))

(declare-fun d!2254947 () Bool)

(declare-fun c!1348187 () Bool)

(assert (=> d!2254947 (= c!1348187 (and (is-ElementMatch!18652 (h!76860 (exprs!8092 lt!2585687))) (= (c!1348008 (h!76860 (exprs!8092 lt!2585687))) (h!76861 s1!1971))))))

(assert (=> d!2254947 (= (derivationStepZipperDown!2646 (h!76860 (exprs!8092 lt!2585687)) (Context!15185 (t!384594 (exprs!8092 lt!2585687))) (h!76861 s1!1971)) e!4348996)))

(declare-fun bm!660740 () Bool)

(declare-fun call!660748 () (Set Context!15184))

(declare-fun call!660747 () (Set Context!15184))

(assert (=> bm!660740 (= call!660748 call!660747)))

(declare-fun b!7253040 () Bool)

(declare-fun c!1348186 () Bool)

(assert (=> b!7253040 (= c!1348186 (is-Star!18652 (h!76860 (exprs!8092 lt!2585687))))))

(assert (=> b!7253040 (= e!4348995 e!4348994)))

(declare-fun b!7253041 () Bool)

(assert (=> b!7253041 (= e!4348994 call!660748)))

(declare-fun bm!660741 () Bool)

(declare-fun call!660749 () (Set Context!15184))

(assert (=> bm!660741 (= call!660749 (derivationStepZipperDown!2646 (ite c!1348185 (regTwo!37817 (h!76860 (exprs!8092 lt!2585687))) (regOne!37816 (h!76860 (exprs!8092 lt!2585687)))) (ite c!1348185 (Context!15185 (t!384594 (exprs!8092 lt!2585687))) (Context!15185 call!660746)) (h!76861 s1!1971)))))

(declare-fun c!1348184 () Bool)

(declare-fun bm!660742 () Bool)

(declare-fun call!660745 () (Set Context!15184))

(assert (=> bm!660742 (= call!660745 (derivationStepZipperDown!2646 (ite c!1348185 (regOne!37817 (h!76860 (exprs!8092 lt!2585687))) (ite c!1348184 (regTwo!37816 (h!76860 (exprs!8092 lt!2585687))) (ite c!1348183 (regOne!37816 (h!76860 (exprs!8092 lt!2585687))) (reg!18981 (h!76860 (exprs!8092 lt!2585687)))))) (ite (or c!1348185 c!1348184) (Context!15185 (t!384594 (exprs!8092 lt!2585687))) (Context!15185 call!660744)) (h!76861 s1!1971)))))

(declare-fun b!7253042 () Bool)

(assert (=> b!7253042 (= c!1348184 e!4348992)))

(declare-fun res!2941500 () Bool)

(assert (=> b!7253042 (=> (not res!2941500) (not e!4348992))))

(assert (=> b!7253042 (= res!2941500 (is-Concat!27497 (h!76860 (exprs!8092 lt!2585687))))))

(assert (=> b!7253042 (= e!4348993 e!4348991)))

(declare-fun bm!660743 () Bool)

(assert (=> bm!660743 (= call!660746 ($colon$colon!2920 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585687)))) (ite (or c!1348184 c!1348183) (regTwo!37816 (h!76860 (exprs!8092 lt!2585687))) (h!76860 (exprs!8092 lt!2585687)))))))

(declare-fun bm!660744 () Bool)

(assert (=> bm!660744 (= call!660747 call!660745)))

(declare-fun b!7253043 () Bool)

(assert (=> b!7253043 (= e!4348993 (set.union call!660745 call!660749))))

(declare-fun b!7253044 () Bool)

(assert (=> b!7253044 (= e!4348991 (set.union call!660749 call!660747))))

(declare-fun b!7253045 () Bool)

(assert (=> b!7253045 (= e!4348995 call!660748)))

(assert (= (and d!2254947 c!1348187) b!7253035))

(assert (= (and d!2254947 (not c!1348187)) b!7253038))

(assert (= (and b!7253038 c!1348185) b!7253043))

(assert (= (and b!7253038 (not c!1348185)) b!7253042))

(assert (= (and b!7253042 res!2941500) b!7253039))

(assert (= (and b!7253042 c!1348184) b!7253044))

(assert (= (and b!7253042 (not c!1348184)) b!7253036))

(assert (= (and b!7253036 c!1348183) b!7253045))

(assert (= (and b!7253036 (not c!1348183)) b!7253040))

(assert (= (and b!7253040 c!1348186) b!7253041))

(assert (= (and b!7253040 (not c!1348186)) b!7253037))

(assert (= (or b!7253045 b!7253041) bm!660739))

(assert (= (or b!7253045 b!7253041) bm!660740))

(assert (= (or b!7253044 bm!660739) bm!660743))

(assert (= (or b!7253044 bm!660740) bm!660744))

(assert (= (or b!7253043 b!7253044) bm!660741))

(assert (= (or b!7253043 bm!660744) bm!660742))

(declare-fun m!7932874 () Bool)

(assert (=> bm!660741 m!7932874))

(declare-fun m!7932876 () Bool)

(assert (=> b!7253039 m!7932876))

(declare-fun m!7932878 () Bool)

(assert (=> bm!660743 m!7932878))

(declare-fun m!7932880 () Bool)

(assert (=> bm!660742 m!7932880))

(declare-fun m!7932882 () Bool)

(assert (=> b!7253035 m!7932882))

(assert (=> bm!660650 d!2254947))

(declare-fun bs!1906752 () Bool)

(declare-fun d!2254949 () Bool)

(assert (= bs!1906752 (and d!2254949 d!2254869)))

(declare-fun lambda!444590 () Int)

(assert (=> bs!1906752 (not (= lambda!444590 lambda!444583))))

(declare-fun bs!1906753 () Bool)

(assert (= bs!1906753 (and d!2254949 b!7252527)))

(assert (=> bs!1906753 (not (= lambda!444590 lambda!444514))))

(declare-fun bs!1906754 () Bool)

(assert (= bs!1906754 (and d!2254949 d!2254893)))

(assert (=> bs!1906754 (not (= lambda!444590 lambda!444587))))

(declare-fun bs!1906755 () Bool)

(assert (= bs!1906755 (and d!2254949 d!2254921)))

(assert (=> bs!1906755 (not (= lambda!444590 lambda!444588))))

(declare-fun bs!1906756 () Bool)

(assert (= bs!1906756 (and d!2254949 d!2254683)))

(assert (=> bs!1906756 (not (= lambda!444590 lambda!444551))))

(declare-fun bs!1906757 () Bool)

(assert (= bs!1906757 (and d!2254949 d!2254681)))

(assert (=> bs!1906757 (= (= lambda!444551 lambda!444514) (= lambda!444590 lambda!444548))))

(declare-fun bs!1906758 () Bool)

(assert (= bs!1906758 (and d!2254949 d!2254861)))

(assert (=> bs!1906758 (not (= lambda!444590 lambda!444582))))

(assert (=> d!2254949 true))

(assert (=> d!2254949 (< (dynLambda!28753 order!28987 lambda!444551) (dynLambda!28753 order!28987 lambda!444590))))

(assert (=> d!2254949 (= (exists!4383 lt!2585676 lambda!444551) (not (forall!17500 lt!2585676 lambda!444590)))))

(declare-fun bs!1906759 () Bool)

(assert (= bs!1906759 d!2254949))

(declare-fun m!7932884 () Bool)

(assert (=> bs!1906759 m!7932884))

(assert (=> d!2254683 d!2254949))

(declare-fun bs!1906760 () Bool)

(declare-fun d!2254951 () Bool)

(assert (= bs!1906760 (and d!2254951 d!2254949)))

(declare-fun lambda!444593 () Int)

(assert (=> bs!1906760 (not (= lambda!444593 lambda!444590))))

(declare-fun bs!1906761 () Bool)

(assert (= bs!1906761 (and d!2254951 d!2254869)))

(assert (=> bs!1906761 (not (= lambda!444593 lambda!444583))))

(declare-fun bs!1906762 () Bool)

(assert (= bs!1906762 (and d!2254951 b!7252527)))

(assert (=> bs!1906762 (= lambda!444593 lambda!444514)))

(declare-fun bs!1906763 () Bool)

(assert (= bs!1906763 (and d!2254951 d!2254893)))

(assert (=> bs!1906763 (not (= lambda!444593 lambda!444587))))

(declare-fun bs!1906764 () Bool)

(assert (= bs!1906764 (and d!2254951 d!2254921)))

(assert (=> bs!1906764 (not (= lambda!444593 lambda!444588))))

(declare-fun bs!1906765 () Bool)

(assert (= bs!1906765 (and d!2254951 d!2254683)))

(assert (=> bs!1906765 (= lambda!444593 lambda!444551)))

(declare-fun bs!1906766 () Bool)

(assert (= bs!1906766 (and d!2254951 d!2254681)))

(assert (=> bs!1906766 (not (= lambda!444593 lambda!444548))))

(declare-fun bs!1906767 () Bool)

(assert (= bs!1906767 (and d!2254951 d!2254861)))

(assert (=> bs!1906767 (not (= lambda!444593 lambda!444582))))

(assert (=> d!2254951 true))

(assert (=> d!2254951 (exists!4383 lt!2585676 lambda!444593)))

(assert (=> d!2254951 true))

(declare-fun _$60!1234 () Unit!163891)

(assert (=> d!2254951 (= (choose!56040 lt!2585676 (t!384595 s1!1971)) _$60!1234)))

(declare-fun bs!1906768 () Bool)

(assert (= bs!1906768 d!2254951))

(declare-fun m!7932886 () Bool)

(assert (=> bs!1906768 m!7932886))

(assert (=> d!2254683 d!2254951))

(declare-fun d!2254953 () Bool)

(declare-fun c!1348190 () Bool)

(assert (=> d!2254953 (= c!1348190 (isEmpty!40550 (t!384595 s1!1971)))))

(declare-fun e!4348997 () Bool)

(assert (=> d!2254953 (= (matchZipper!3562 (content!14620 lt!2585676) (t!384595 s1!1971)) e!4348997)))

(declare-fun b!7253046 () Bool)

(assert (=> b!7253046 (= e!4348997 (nullableZipper!2916 (content!14620 lt!2585676)))))

(declare-fun b!7253047 () Bool)

(assert (=> b!7253047 (= e!4348997 (matchZipper!3562 (derivationStepZipper!3430 (content!14620 lt!2585676) (head!14908 (t!384595 s1!1971))) (tail!14332 (t!384595 s1!1971))))))

(assert (= (and d!2254953 c!1348190) b!7253046))

(assert (= (and d!2254953 (not c!1348190)) b!7253047))

(assert (=> d!2254953 m!7932394))

(assert (=> b!7253046 m!7932286))

(declare-fun m!7932888 () Bool)

(assert (=> b!7253046 m!7932888))

(assert (=> b!7253047 m!7932398))

(assert (=> b!7253047 m!7932286))

(assert (=> b!7253047 m!7932398))

(declare-fun m!7932890 () Bool)

(assert (=> b!7253047 m!7932890))

(assert (=> b!7253047 m!7932402))

(assert (=> b!7253047 m!7932890))

(assert (=> b!7253047 m!7932402))

(declare-fun m!7932892 () Bool)

(assert (=> b!7253047 m!7932892))

(assert (=> d!2254683 d!2254953))

(declare-fun d!2254955 () Bool)

(declare-fun c!1348193 () Bool)

(assert (=> d!2254955 (= c!1348193 (is-Nil!70414 lt!2585676))))

(declare-fun e!4349000 () (Set Context!15184))

(assert (=> d!2254955 (= (content!14620 lt!2585676) e!4349000)))

(declare-fun b!7253052 () Bool)

(assert (=> b!7253052 (= e!4349000 (as set.empty (Set Context!15184)))))

(declare-fun b!7253053 () Bool)

(assert (=> b!7253053 (= e!4349000 (set.union (set.insert (h!76862 lt!2585676) (as set.empty (Set Context!15184))) (content!14620 (t!384596 lt!2585676))))))

(assert (= (and d!2254955 c!1348193) b!7253052))

(assert (= (and d!2254955 (not c!1348193)) b!7253053))

(declare-fun m!7932894 () Bool)

(assert (=> b!7253053 m!7932894))

(declare-fun m!7932896 () Bool)

(assert (=> b!7253053 m!7932896))

(assert (=> d!2254683 d!2254955))

(declare-fun d!2254957 () Bool)

(assert (=> d!2254957 true))

(declare-fun setRes!53584 () Bool)

(assert (=> d!2254957 setRes!53584))

(declare-fun condSetEmpty!53584 () Bool)

(declare-fun res!2941501 () (Set Context!15184))

(assert (=> d!2254957 (= condSetEmpty!53584 (= res!2941501 (as set.empty (Set Context!15184))))))

(assert (=> d!2254957 (= (choose!56044 lt!2585689 lambda!444515) res!2941501)))

(declare-fun setIsEmpty!53584 () Bool)

(assert (=> setIsEmpty!53584 setRes!53584))

(declare-fun e!4349001 () Bool)

(declare-fun setElem!53584 () Context!15184)

(declare-fun setNonEmpty!53584 () Bool)

(declare-fun tp!2037759 () Bool)

(assert (=> setNonEmpty!53584 (= setRes!53584 (and tp!2037759 (inv!89641 setElem!53584) e!4349001))))

(declare-fun setRest!53584 () (Set Context!15184))

(assert (=> setNonEmpty!53584 (= res!2941501 (set.union (set.insert setElem!53584 (as set.empty (Set Context!15184))) setRest!53584))))

(declare-fun b!7253054 () Bool)

(declare-fun tp!2037760 () Bool)

(assert (=> b!7253054 (= e!4349001 tp!2037760)))

(assert (= (and d!2254957 condSetEmpty!53584) setIsEmpty!53584))

(assert (= (and d!2254957 (not condSetEmpty!53584)) setNonEmpty!53584))

(assert (= setNonEmpty!53584 b!7253054))

(declare-fun m!7932898 () Bool)

(assert (=> setNonEmpty!53584 m!7932898))

(assert (=> d!2254751 d!2254957))

(declare-fun d!2254959 () Bool)

(declare-fun res!2941502 () Bool)

(declare-fun e!4349002 () Bool)

(assert (=> d!2254959 (=> res!2941502 e!4349002)))

(assert (=> d!2254959 (= res!2941502 (is-Nil!70412 (exprs!8092 lt!2585683)))))

(assert (=> d!2254959 (= (forall!17499 (exprs!8092 lt!2585683) lambda!444564) e!4349002)))

(declare-fun b!7253055 () Bool)

(declare-fun e!4349003 () Bool)

(assert (=> b!7253055 (= e!4349002 e!4349003)))

(declare-fun res!2941503 () Bool)

(assert (=> b!7253055 (=> (not res!2941503) (not e!4349003))))

(assert (=> b!7253055 (= res!2941503 (dynLambda!28759 lambda!444564 (h!76860 (exprs!8092 lt!2585683))))))

(declare-fun b!7253056 () Bool)

(assert (=> b!7253056 (= e!4349003 (forall!17499 (t!384594 (exprs!8092 lt!2585683)) lambda!444564))))

(assert (= (and d!2254959 (not res!2941502)) b!7253055))

(assert (= (and b!7253055 res!2941503) b!7253056))

(declare-fun b_lambda!278663 () Bool)

(assert (=> (not b_lambda!278663) (not b!7253055)))

(declare-fun m!7932900 () Bool)

(assert (=> b!7253055 m!7932900))

(declare-fun m!7932902 () Bool)

(assert (=> b!7253056 m!7932902))

(assert (=> d!2254725 d!2254959))

(declare-fun b!7253071 () Bool)

(declare-fun e!4349019 () Bool)

(declare-fun call!660755 () Bool)

(assert (=> b!7253071 (= e!4349019 call!660755)))

(declare-fun b!7253072 () Bool)

(declare-fun e!4349020 () Bool)

(assert (=> b!7253072 (= e!4349020 call!660755)))

(declare-fun b!7253073 () Bool)

(declare-fun e!4349016 () Bool)

(assert (=> b!7253073 (= e!4349016 e!4349020)))

(declare-fun res!2941514 () Bool)

(declare-fun call!660754 () Bool)

(assert (=> b!7253073 (= res!2941514 call!660754)))

(assert (=> b!7253073 (=> (not res!2941514) (not e!4349020))))

(declare-fun b!7253074 () Bool)

(declare-fun e!4349018 () Bool)

(assert (=> b!7253074 (= e!4349018 e!4349016)))

(declare-fun c!1348196 () Bool)

(assert (=> b!7253074 (= c!1348196 (is-Union!18652 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7253075 () Bool)

(declare-fun e!4349021 () Bool)

(assert (=> b!7253075 (= e!4349021 e!4349018)))

(declare-fun res!2941516 () Bool)

(assert (=> b!7253075 (=> res!2941516 e!4349018)))

(assert (=> b!7253075 (= res!2941516 (is-Star!18652 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun bm!660749 () Bool)

(assert (=> bm!660749 (= call!660755 (nullable!7912 (ite c!1348196 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regTwo!37816 (h!76860 (exprs!8092 ct1!232))))))))

(declare-fun b!7253076 () Bool)

(declare-fun e!4349017 () Bool)

(assert (=> b!7253076 (= e!4349017 e!4349021)))

(declare-fun res!2941518 () Bool)

(assert (=> b!7253076 (=> (not res!2941518) (not e!4349021))))

(assert (=> b!7253076 (= res!2941518 (and (not (is-EmptyLang!18652 (h!76860 (exprs!8092 ct1!232)))) (not (is-ElementMatch!18652 (h!76860 (exprs!8092 ct1!232))))))))

(declare-fun b!7253077 () Bool)

(assert (=> b!7253077 (= e!4349016 e!4349019)))

(declare-fun res!2941515 () Bool)

(assert (=> b!7253077 (= res!2941515 call!660754)))

(assert (=> b!7253077 (=> res!2941515 e!4349019)))

(declare-fun bm!660750 () Bool)

(assert (=> bm!660750 (= call!660754 (nullable!7912 (ite c!1348196 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232))))))))

(declare-fun d!2254961 () Bool)

(declare-fun res!2941517 () Bool)

(assert (=> d!2254961 (=> res!2941517 e!4349017)))

(assert (=> d!2254961 (= res!2941517 (is-EmptyExpr!18652 (h!76860 (exprs!8092 ct1!232))))))

(assert (=> d!2254961 (= (nullableFct!3105 (h!76860 (exprs!8092 ct1!232))) e!4349017)))

(assert (= (and d!2254961 (not res!2941517)) b!7253076))

(assert (= (and b!7253076 res!2941518) b!7253075))

(assert (= (and b!7253075 (not res!2941516)) b!7253074))

(assert (= (and b!7253074 c!1348196) b!7253077))

(assert (= (and b!7253074 (not c!1348196)) b!7253073))

(assert (= (and b!7253077 (not res!2941515)) b!7253071))

(assert (= (and b!7253073 res!2941514) b!7253072))

(assert (= (or b!7253071 b!7253072) bm!660749))

(assert (= (or b!7253077 b!7253073) bm!660750))

(declare-fun m!7932904 () Bool)

(assert (=> bm!660749 m!7932904))

(declare-fun m!7932906 () Bool)

(assert (=> bm!660750 m!7932906))

(assert (=> d!2254743 d!2254961))

(declare-fun b!7253078 () Bool)

(declare-fun e!4349027 () (Set Context!15184))

(assert (=> b!7253078 (= e!4349027 (set.insert (Context!15185 (t!384594 (exprs!8092 lt!2585693))) (as set.empty (Set Context!15184))))))

(declare-fun bm!660751 () Bool)

(declare-fun call!660756 () List!70536)

(declare-fun call!660758 () List!70536)

(assert (=> bm!660751 (= call!660756 call!660758)))

(declare-fun b!7253079 () Bool)

(declare-fun e!4349022 () (Set Context!15184))

(declare-fun e!4349026 () (Set Context!15184))

(assert (=> b!7253079 (= e!4349022 e!4349026)))

(declare-fun c!1348197 () Bool)

(assert (=> b!7253079 (= c!1348197 (is-Concat!27497 (h!76860 (exprs!8092 lt!2585693))))))

(declare-fun b!7253080 () Bool)

(declare-fun e!4349025 () (Set Context!15184))

(assert (=> b!7253080 (= e!4349025 (as set.empty (Set Context!15184)))))

(declare-fun b!7253081 () Bool)

(declare-fun e!4349024 () (Set Context!15184))

(assert (=> b!7253081 (= e!4349027 e!4349024)))

(declare-fun c!1348199 () Bool)

(assert (=> b!7253081 (= c!1348199 (is-Union!18652 (h!76860 (exprs!8092 lt!2585693))))))

(declare-fun b!7253082 () Bool)

(declare-fun e!4349023 () Bool)

(assert (=> b!7253082 (= e!4349023 (nullable!7912 (regOne!37816 (h!76860 (exprs!8092 lt!2585693)))))))

(declare-fun d!2254963 () Bool)

(declare-fun c!1348201 () Bool)

(assert (=> d!2254963 (= c!1348201 (and (is-ElementMatch!18652 (h!76860 (exprs!8092 lt!2585693))) (= (c!1348008 (h!76860 (exprs!8092 lt!2585693))) (h!76861 s1!1971))))))

(assert (=> d!2254963 (= (derivationStepZipperDown!2646 (h!76860 (exprs!8092 lt!2585693)) (Context!15185 (t!384594 (exprs!8092 lt!2585693))) (h!76861 s1!1971)) e!4349027)))

(declare-fun bm!660752 () Bool)

(declare-fun call!660760 () (Set Context!15184))

(declare-fun call!660759 () (Set Context!15184))

(assert (=> bm!660752 (= call!660760 call!660759)))

(declare-fun b!7253083 () Bool)

(declare-fun c!1348200 () Bool)

(assert (=> b!7253083 (= c!1348200 (is-Star!18652 (h!76860 (exprs!8092 lt!2585693))))))

(assert (=> b!7253083 (= e!4349026 e!4349025)))

(declare-fun b!7253084 () Bool)

(assert (=> b!7253084 (= e!4349025 call!660760)))

(declare-fun call!660761 () (Set Context!15184))

(declare-fun bm!660753 () Bool)

(assert (=> bm!660753 (= call!660761 (derivationStepZipperDown!2646 (ite c!1348199 (regTwo!37817 (h!76860 (exprs!8092 lt!2585693))) (regOne!37816 (h!76860 (exprs!8092 lt!2585693)))) (ite c!1348199 (Context!15185 (t!384594 (exprs!8092 lt!2585693))) (Context!15185 call!660758)) (h!76861 s1!1971)))))

(declare-fun bm!660754 () Bool)

(declare-fun c!1348198 () Bool)

(declare-fun call!660757 () (Set Context!15184))

(assert (=> bm!660754 (= call!660757 (derivationStepZipperDown!2646 (ite c!1348199 (regOne!37817 (h!76860 (exprs!8092 lt!2585693))) (ite c!1348198 (regTwo!37816 (h!76860 (exprs!8092 lt!2585693))) (ite c!1348197 (regOne!37816 (h!76860 (exprs!8092 lt!2585693))) (reg!18981 (h!76860 (exprs!8092 lt!2585693)))))) (ite (or c!1348199 c!1348198) (Context!15185 (t!384594 (exprs!8092 lt!2585693))) (Context!15185 call!660756)) (h!76861 s1!1971)))))

(declare-fun b!7253085 () Bool)

(assert (=> b!7253085 (= c!1348198 e!4349023)))

(declare-fun res!2941519 () Bool)

(assert (=> b!7253085 (=> (not res!2941519) (not e!4349023))))

(assert (=> b!7253085 (= res!2941519 (is-Concat!27497 (h!76860 (exprs!8092 lt!2585693))))))

(assert (=> b!7253085 (= e!4349024 e!4349022)))

(declare-fun bm!660755 () Bool)

(assert (=> bm!660755 (= call!660758 ($colon$colon!2920 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585693)))) (ite (or c!1348198 c!1348197) (regTwo!37816 (h!76860 (exprs!8092 lt!2585693))) (h!76860 (exprs!8092 lt!2585693)))))))

(declare-fun bm!660756 () Bool)

(assert (=> bm!660756 (= call!660759 call!660757)))

(declare-fun b!7253086 () Bool)

(assert (=> b!7253086 (= e!4349024 (set.union call!660757 call!660761))))

(declare-fun b!7253087 () Bool)

(assert (=> b!7253087 (= e!4349022 (set.union call!660761 call!660759))))

(declare-fun b!7253088 () Bool)

(assert (=> b!7253088 (= e!4349026 call!660760)))

(assert (= (and d!2254963 c!1348201) b!7253078))

(assert (= (and d!2254963 (not c!1348201)) b!7253081))

(assert (= (and b!7253081 c!1348199) b!7253086))

(assert (= (and b!7253081 (not c!1348199)) b!7253085))

(assert (= (and b!7253085 res!2941519) b!7253082))

(assert (= (and b!7253085 c!1348198) b!7253087))

(assert (= (and b!7253085 (not c!1348198)) b!7253079))

(assert (= (and b!7253079 c!1348197) b!7253088))

(assert (= (and b!7253079 (not c!1348197)) b!7253083))

(assert (= (and b!7253083 c!1348200) b!7253084))

(assert (= (and b!7253083 (not c!1348200)) b!7253080))

(assert (= (or b!7253088 b!7253084) bm!660751))

(assert (= (or b!7253088 b!7253084) bm!660752))

(assert (= (or b!7253087 bm!660751) bm!660755))

(assert (= (or b!7253087 bm!660752) bm!660756))

(assert (= (or b!7253086 b!7253087) bm!660753))

(assert (= (or b!7253086 bm!660756) bm!660754))

(declare-fun m!7932908 () Bool)

(assert (=> bm!660753 m!7932908))

(declare-fun m!7932910 () Bool)

(assert (=> b!7253082 m!7932910))

(declare-fun m!7932912 () Bool)

(assert (=> bm!660755 m!7932912))

(declare-fun m!7932914 () Bool)

(assert (=> bm!660754 m!7932914))

(declare-fun m!7932916 () Bool)

(assert (=> b!7253078 m!7932916))

(assert (=> bm!660674 d!2254963))

(declare-fun d!2254965 () Bool)

(declare-fun c!1348202 () Bool)

(assert (=> d!2254965 (= c!1348202 (is-Nil!70414 lt!2585782))))

(declare-fun e!4349028 () (Set Context!15184))

(assert (=> d!2254965 (= (content!14620 lt!2585782) e!4349028)))

(declare-fun b!7253089 () Bool)

(assert (=> b!7253089 (= e!4349028 (as set.empty (Set Context!15184)))))

(declare-fun b!7253090 () Bool)

(assert (=> b!7253090 (= e!4349028 (set.union (set.insert (h!76862 lt!2585782) (as set.empty (Set Context!15184))) (content!14620 (t!384596 lt!2585782))))))

(assert (= (and d!2254965 c!1348202) b!7253089))

(assert (= (and d!2254965 (not c!1348202)) b!7253090))

(declare-fun m!7932918 () Bool)

(assert (=> b!7253090 m!7932918))

(declare-fun m!7932920 () Bool)

(assert (=> b!7253090 m!7932920))

(assert (=> b!7252603 d!2254965))

(declare-fun b!7253091 () Bool)

(declare-fun e!4349034 () (Set Context!15184))

(assert (=> b!7253091 (= e!4349034 (set.insert (Context!15185 (t!384594 (exprs!8092 ct1!232))) (as set.empty (Set Context!15184))))))

(declare-fun bm!660757 () Bool)

(declare-fun call!660762 () List!70536)

(declare-fun call!660764 () List!70536)

(assert (=> bm!660757 (= call!660762 call!660764)))

(declare-fun b!7253092 () Bool)

(declare-fun e!4349029 () (Set Context!15184))

(declare-fun e!4349033 () (Set Context!15184))

(assert (=> b!7253092 (= e!4349029 e!4349033)))

(declare-fun c!1348203 () Bool)

(assert (=> b!7253092 (= c!1348203 (is-Concat!27497 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7253093 () Bool)

(declare-fun e!4349032 () (Set Context!15184))

(assert (=> b!7253093 (= e!4349032 (as set.empty (Set Context!15184)))))

(declare-fun b!7253094 () Bool)

(declare-fun e!4349031 () (Set Context!15184))

(assert (=> b!7253094 (= e!4349034 e!4349031)))

(declare-fun c!1348205 () Bool)

(assert (=> b!7253094 (= c!1348205 (is-Union!18652 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7253095 () Bool)

(declare-fun e!4349030 () Bool)

(assert (=> b!7253095 (= e!4349030 (nullable!7912 (regOne!37816 (h!76860 (exprs!8092 ct1!232)))))))

(declare-fun d!2254967 () Bool)

(declare-fun c!1348207 () Bool)

(assert (=> d!2254967 (= c!1348207 (and (is-ElementMatch!18652 (h!76860 (exprs!8092 ct1!232))) (= (c!1348008 (h!76860 (exprs!8092 ct1!232))) (h!76861 s1!1971))))))

(assert (=> d!2254967 (= (derivationStepZipperDown!2646 (h!76860 (exprs!8092 ct1!232)) (Context!15185 (t!384594 (exprs!8092 ct1!232))) (h!76861 s1!1971)) e!4349034)))

(declare-fun bm!660758 () Bool)

(declare-fun call!660766 () (Set Context!15184))

(declare-fun call!660765 () (Set Context!15184))

(assert (=> bm!660758 (= call!660766 call!660765)))

(declare-fun b!7253096 () Bool)

(declare-fun c!1348206 () Bool)

(assert (=> b!7253096 (= c!1348206 (is-Star!18652 (h!76860 (exprs!8092 ct1!232))))))

(assert (=> b!7253096 (= e!4349033 e!4349032)))

(declare-fun b!7253097 () Bool)

(assert (=> b!7253097 (= e!4349032 call!660766)))

(declare-fun call!660767 () (Set Context!15184))

(declare-fun bm!660759 () Bool)

(assert (=> bm!660759 (= call!660767 (derivationStepZipperDown!2646 (ite c!1348205 (regTwo!37817 (h!76860 (exprs!8092 ct1!232))) (regOne!37816 (h!76860 (exprs!8092 ct1!232)))) (ite c!1348205 (Context!15185 (t!384594 (exprs!8092 ct1!232))) (Context!15185 call!660764)) (h!76861 s1!1971)))))

(declare-fun c!1348204 () Bool)

(declare-fun bm!660760 () Bool)

(declare-fun call!660763 () (Set Context!15184))

(assert (=> bm!660760 (= call!660763 (derivationStepZipperDown!2646 (ite c!1348205 (regOne!37817 (h!76860 (exprs!8092 ct1!232))) (ite c!1348204 (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (ite c!1348203 (regOne!37816 (h!76860 (exprs!8092 ct1!232))) (reg!18981 (h!76860 (exprs!8092 ct1!232)))))) (ite (or c!1348205 c!1348204) (Context!15185 (t!384594 (exprs!8092 ct1!232))) (Context!15185 call!660762)) (h!76861 s1!1971)))))

(declare-fun b!7253098 () Bool)

(assert (=> b!7253098 (= c!1348204 e!4349030)))

(declare-fun res!2941520 () Bool)

(assert (=> b!7253098 (=> (not res!2941520) (not e!4349030))))

(assert (=> b!7253098 (= res!2941520 (is-Concat!27497 (h!76860 (exprs!8092 ct1!232))))))

(assert (=> b!7253098 (= e!4349031 e!4349029)))

(declare-fun bm!660761 () Bool)

(assert (=> bm!660761 (= call!660764 ($colon$colon!2920 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 ct1!232)))) (ite (or c!1348204 c!1348203) (regTwo!37816 (h!76860 (exprs!8092 ct1!232))) (h!76860 (exprs!8092 ct1!232)))))))

(declare-fun bm!660762 () Bool)

(assert (=> bm!660762 (= call!660765 call!660763)))

(declare-fun b!7253099 () Bool)

(assert (=> b!7253099 (= e!4349031 (set.union call!660763 call!660767))))

(declare-fun b!7253100 () Bool)

(assert (=> b!7253100 (= e!4349029 (set.union call!660767 call!660765))))

(declare-fun b!7253101 () Bool)

(assert (=> b!7253101 (= e!4349033 call!660766)))

(assert (= (and d!2254967 c!1348207) b!7253091))

(assert (= (and d!2254967 (not c!1348207)) b!7253094))

(assert (= (and b!7253094 c!1348205) b!7253099))

(assert (= (and b!7253094 (not c!1348205)) b!7253098))

(assert (= (and b!7253098 res!2941520) b!7253095))

(assert (= (and b!7253098 c!1348204) b!7253100))

(assert (= (and b!7253098 (not c!1348204)) b!7253092))

(assert (= (and b!7253092 c!1348203) b!7253101))

(assert (= (and b!7253092 (not c!1348203)) b!7253096))

(assert (= (and b!7253096 c!1348206) b!7253097))

(assert (= (and b!7253096 (not c!1348206)) b!7253093))

(assert (= (or b!7253101 b!7253097) bm!660757))

(assert (= (or b!7253101 b!7253097) bm!660758))

(assert (= (or b!7253100 bm!660757) bm!660761))

(assert (= (or b!7253100 bm!660758) bm!660762))

(assert (= (or b!7253099 b!7253100) bm!660759))

(assert (= (or b!7253099 bm!660762) bm!660760))

(declare-fun m!7932922 () Bool)

(assert (=> bm!660759 m!7932922))

(assert (=> b!7253095 m!7932306))

(declare-fun m!7932924 () Bool)

(assert (=> bm!660761 m!7932924))

(declare-fun m!7932926 () Bool)

(assert (=> bm!660760 m!7932926))

(declare-fun m!7932928 () Bool)

(assert (=> b!7253091 m!7932928))

(assert (=> bm!660671 d!2254967))

(declare-fun bs!1906769 () Bool)

(declare-fun d!2254969 () Bool)

(assert (= bs!1906769 (and d!2254969 d!2254949)))

(declare-fun lambda!444594 () Int)

(assert (=> bs!1906769 (= (= lambda!444514 lambda!444551) (= lambda!444594 lambda!444590))))

(declare-fun bs!1906770 () Bool)

(assert (= bs!1906770 (and d!2254969 d!2254869)))

(assert (=> bs!1906770 (not (= lambda!444594 lambda!444583))))

(declare-fun bs!1906771 () Bool)

(assert (= bs!1906771 (and d!2254969 b!7252527)))

(assert (=> bs!1906771 (not (= lambda!444594 lambda!444514))))

(declare-fun bs!1906772 () Bool)

(assert (= bs!1906772 (and d!2254969 d!2254893)))

(assert (=> bs!1906772 (not (= lambda!444594 lambda!444587))))

(declare-fun bs!1906773 () Bool)

(assert (= bs!1906773 (and d!2254969 d!2254951)))

(assert (=> bs!1906773 (not (= lambda!444594 lambda!444593))))

(declare-fun bs!1906774 () Bool)

(assert (= bs!1906774 (and d!2254969 d!2254921)))

(assert (=> bs!1906774 (not (= lambda!444594 lambda!444588))))

(declare-fun bs!1906775 () Bool)

(assert (= bs!1906775 (and d!2254969 d!2254683)))

(assert (=> bs!1906775 (not (= lambda!444594 lambda!444551))))

(declare-fun bs!1906776 () Bool)

(assert (= bs!1906776 (and d!2254969 d!2254681)))

(assert (=> bs!1906776 (= lambda!444594 lambda!444548)))

(declare-fun bs!1906777 () Bool)

(assert (= bs!1906777 (and d!2254969 d!2254861)))

(assert (=> bs!1906777 (not (= lambda!444594 lambda!444582))))

(assert (=> d!2254969 true))

(assert (=> d!2254969 (< (dynLambda!28753 order!28987 lambda!444514) (dynLambda!28753 order!28987 lambda!444594))))

(assert (=> d!2254969 (= (exists!4383 (toList!11481 lt!2585677) lambda!444514) (not (forall!17500 (toList!11481 lt!2585677) lambda!444594)))))

(declare-fun bs!1906778 () Bool)

(assert (= bs!1906778 d!2254969))

(assert (=> bs!1906778 m!7932130))

(declare-fun m!7932930 () Bool)

(assert (=> bs!1906778 m!7932930))

(assert (=> d!2254679 d!2254969))

(assert (=> d!2254679 d!2254685))

(declare-fun d!2254971 () Bool)

(declare-fun res!2941523 () Bool)

(assert (=> d!2254971 (= res!2941523 (exists!4383 (toList!11481 lt!2585677) lambda!444514))))

(assert (=> d!2254971 true))

(assert (=> d!2254971 (= (choose!56039 lt!2585677 lambda!444514) res!2941523)))

(declare-fun bs!1906779 () Bool)

(assert (= bs!1906779 d!2254971))

(assert (=> bs!1906779 m!7932130))

(assert (=> bs!1906779 m!7932130))

(assert (=> bs!1906779 m!7932276))

(assert (=> d!2254679 d!2254971))

(declare-fun d!2254973 () Bool)

(declare-fun c!1348208 () Bool)

(assert (=> d!2254973 (= c!1348208 (isEmpty!40550 (tail!14332 s1!1971)))))

(declare-fun e!4349035 () Bool)

(assert (=> d!2254973 (= (matchZipper!3562 (derivationStepZipper!3430 lt!2585678 (head!14908 s1!1971)) (tail!14332 s1!1971)) e!4349035)))

(declare-fun b!7253102 () Bool)

(assert (=> b!7253102 (= e!4349035 (nullableZipper!2916 (derivationStepZipper!3430 lt!2585678 (head!14908 s1!1971))))))

(declare-fun b!7253103 () Bool)

(assert (=> b!7253103 (= e!4349035 (matchZipper!3562 (derivationStepZipper!3430 (derivationStepZipper!3430 lt!2585678 (head!14908 s1!1971)) (head!14908 (tail!14332 s1!1971))) (tail!14332 (tail!14332 s1!1971))))))

(assert (= (and d!2254973 c!1348208) b!7253102))

(assert (= (and d!2254973 (not c!1348208)) b!7253103))

(assert (=> d!2254973 m!7932430))

(declare-fun m!7932932 () Bool)

(assert (=> d!2254973 m!7932932))

(assert (=> b!7253102 m!7932428))

(declare-fun m!7932934 () Bool)

(assert (=> b!7253102 m!7932934))

(assert (=> b!7253103 m!7932430))

(declare-fun m!7932936 () Bool)

(assert (=> b!7253103 m!7932936))

(assert (=> b!7253103 m!7932428))

(assert (=> b!7253103 m!7932936))

(declare-fun m!7932938 () Bool)

(assert (=> b!7253103 m!7932938))

(assert (=> b!7253103 m!7932430))

(declare-fun m!7932940 () Bool)

(assert (=> b!7253103 m!7932940))

(assert (=> b!7253103 m!7932938))

(assert (=> b!7253103 m!7932940))

(declare-fun m!7932942 () Bool)

(assert (=> b!7253103 m!7932942))

(assert (=> b!7252709 d!2254973))

(declare-fun bs!1906780 () Bool)

(declare-fun d!2254975 () Bool)

(assert (= bs!1906780 (and d!2254975 b!7252522)))

(declare-fun lambda!444595 () Int)

(assert (=> bs!1906780 (= (= (head!14908 s1!1971) (h!76861 s1!1971)) (= lambda!444595 lambda!444515))))

(declare-fun bs!1906781 () Bool)

(assert (= bs!1906781 (and d!2254975 d!2254935)))

(assert (=> bs!1906781 (= (= (head!14908 s1!1971) (head!14908 (t!384595 s1!1971))) (= lambda!444595 lambda!444589))))

(declare-fun bs!1906782 () Bool)

(assert (= bs!1906782 (and d!2254975 d!2254673)))

(assert (=> bs!1906782 (= (= (head!14908 s1!1971) (h!76861 s1!1971)) (= lambda!444595 lambda!444545))))

(declare-fun bs!1906783 () Bool)

(assert (= bs!1906783 (and d!2254975 d!2254723)))

(assert (=> bs!1906783 (= (= (head!14908 s1!1971) (h!76861 s1!1971)) (= lambda!444595 lambda!444561))))

(declare-fun bs!1906784 () Bool)

(assert (= bs!1906784 (and d!2254975 d!2254855)))

(assert (=> bs!1906784 (= (= (head!14908 s1!1971) (head!14908 s2!1849)) (= lambda!444595 lambda!444579))))

(assert (=> d!2254975 true))

(assert (=> d!2254975 (= (derivationStepZipper!3430 lt!2585678 (head!14908 s1!1971)) (flatMap!2817 lt!2585678 lambda!444595))))

(declare-fun bs!1906785 () Bool)

(assert (= bs!1906785 d!2254975))

(declare-fun m!7932944 () Bool)

(assert (=> bs!1906785 m!7932944))

(assert (=> b!7252709 d!2254975))

(declare-fun d!2254977 () Bool)

(assert (=> d!2254977 (= (head!14908 s1!1971) (h!76861 s1!1971))))

(assert (=> b!7252709 d!2254977))

(declare-fun d!2254979 () Bool)

(assert (=> d!2254979 (= (tail!14332 s1!1971) (t!384595 s1!1971))))

(assert (=> b!7252709 d!2254979))

(declare-fun d!2254981 () Bool)

(assert (=> d!2254981 (= (isEmpty!40550 (++!16567 (t!384595 s1!1971) s2!1849)) (is-Nil!70413 (++!16567 (t!384595 s1!1971) s2!1849)))))

(assert (=> d!2254715 d!2254981))

(assert (=> bs!1906675 d!2254709))

(assert (=> b!7252647 d!2254825))

(declare-fun d!2254983 () Bool)

(declare-fun c!1348209 () Bool)

(assert (=> d!2254983 (= c!1348209 (isEmpty!40550 (tail!14332 (++!16567 (t!384595 s1!1971) s2!1849))))))

(declare-fun e!4349036 () Bool)

(assert (=> d!2254983 (= (matchZipper!3562 (derivationStepZipper!3430 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) (head!14908 (++!16567 (t!384595 s1!1971) s2!1849))) (tail!14332 (++!16567 (t!384595 s1!1971) s2!1849))) e!4349036)))

(declare-fun b!7253104 () Bool)

(assert (=> b!7253104 (= e!4349036 (nullableZipper!2916 (derivationStepZipper!3430 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) (head!14908 (++!16567 (t!384595 s1!1971) s2!1849)))))))

(declare-fun b!7253105 () Bool)

(assert (=> b!7253105 (= e!4349036 (matchZipper!3562 (derivationStepZipper!3430 (derivationStepZipper!3430 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) (head!14908 (++!16567 (t!384595 s1!1971) s2!1849))) (head!14908 (tail!14332 (++!16567 (t!384595 s1!1971) s2!1849)))) (tail!14332 (tail!14332 (++!16567 (t!384595 s1!1971) s2!1849)))))))

(assert (= (and d!2254983 c!1348209) b!7253104))

(assert (= (and d!2254983 (not c!1348209)) b!7253105))

(assert (=> d!2254983 m!7932376))

(declare-fun m!7932946 () Bool)

(assert (=> d!2254983 m!7932946))

(assert (=> b!7253104 m!7932374))

(declare-fun m!7932948 () Bool)

(assert (=> b!7253104 m!7932948))

(assert (=> b!7253105 m!7932376))

(declare-fun m!7932950 () Bool)

(assert (=> b!7253105 m!7932950))

(assert (=> b!7253105 m!7932374))

(assert (=> b!7253105 m!7932950))

(declare-fun m!7932952 () Bool)

(assert (=> b!7253105 m!7932952))

(assert (=> b!7253105 m!7932376))

(declare-fun m!7932954 () Bool)

(assert (=> b!7253105 m!7932954))

(assert (=> b!7253105 m!7932952))

(assert (=> b!7253105 m!7932954))

(declare-fun m!7932956 () Bool)

(assert (=> b!7253105 m!7932956))

(assert (=> b!7252695 d!2254983))

(declare-fun bs!1906786 () Bool)

(declare-fun d!2254985 () Bool)

(assert (= bs!1906786 (and d!2254985 d!2254975)))

(declare-fun lambda!444596 () Int)

(assert (=> bs!1906786 (= (= (head!14908 (++!16567 (t!384595 s1!1971) s2!1849)) (head!14908 s1!1971)) (= lambda!444596 lambda!444595))))

(declare-fun bs!1906787 () Bool)

(assert (= bs!1906787 (and d!2254985 b!7252522)))

(assert (=> bs!1906787 (= (= (head!14908 (++!16567 (t!384595 s1!1971) s2!1849)) (h!76861 s1!1971)) (= lambda!444596 lambda!444515))))

(declare-fun bs!1906788 () Bool)

(assert (= bs!1906788 (and d!2254985 d!2254935)))

(assert (=> bs!1906788 (= (= (head!14908 (++!16567 (t!384595 s1!1971) s2!1849)) (head!14908 (t!384595 s1!1971))) (= lambda!444596 lambda!444589))))

(declare-fun bs!1906789 () Bool)

(assert (= bs!1906789 (and d!2254985 d!2254673)))

(assert (=> bs!1906789 (= (= (head!14908 (++!16567 (t!384595 s1!1971) s2!1849)) (h!76861 s1!1971)) (= lambda!444596 lambda!444545))))

(declare-fun bs!1906790 () Bool)

(assert (= bs!1906790 (and d!2254985 d!2254723)))

(assert (=> bs!1906790 (= (= (head!14908 (++!16567 (t!384595 s1!1971) s2!1849)) (h!76861 s1!1971)) (= lambda!444596 lambda!444561))))

(declare-fun bs!1906791 () Bool)

(assert (= bs!1906791 (and d!2254985 d!2254855)))

(assert (=> bs!1906791 (= (= (head!14908 (++!16567 (t!384595 s1!1971) s2!1849)) (head!14908 s2!1849)) (= lambda!444596 lambda!444579))))

(assert (=> d!2254985 true))

(assert (=> d!2254985 (= (derivationStepZipper!3430 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) (head!14908 (++!16567 (t!384595 s1!1971) s2!1849))) (flatMap!2817 (set.insert (Context!15185 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328))) (as set.empty (Set Context!15184))) lambda!444596))))

(declare-fun bs!1906792 () Bool)

(assert (= bs!1906792 d!2254985))

(assert (=> bs!1906792 m!7932114))

(declare-fun m!7932958 () Bool)

(assert (=> bs!1906792 m!7932958))

(assert (=> b!7252695 d!2254985))

(declare-fun d!2254987 () Bool)

(assert (=> d!2254987 (= (head!14908 (++!16567 (t!384595 s1!1971) s2!1849)) (h!76861 (++!16567 (t!384595 s1!1971) s2!1849)))))

(assert (=> b!7252695 d!2254987))

(declare-fun d!2254989 () Bool)

(assert (=> d!2254989 (= (tail!14332 (++!16567 (t!384595 s1!1971) s2!1849)) (t!384595 (++!16567 (t!384595 s1!1971) s2!1849)))))

(assert (=> b!7252695 d!2254989))

(declare-fun d!2254991 () Bool)

(declare-fun res!2941524 () Bool)

(declare-fun e!4349037 () Bool)

(assert (=> d!2254991 (=> res!2941524 e!4349037)))

(assert (=> d!2254991 (= res!2941524 (is-Nil!70412 (exprs!8092 ct2!328)))))

(assert (=> d!2254991 (= (forall!17499 (exprs!8092 ct2!328) lambda!444566) e!4349037)))

(declare-fun b!7253106 () Bool)

(declare-fun e!4349038 () Bool)

(assert (=> b!7253106 (= e!4349037 e!4349038)))

(declare-fun res!2941525 () Bool)

(assert (=> b!7253106 (=> (not res!2941525) (not e!4349038))))

(assert (=> b!7253106 (= res!2941525 (dynLambda!28759 lambda!444566 (h!76860 (exprs!8092 ct2!328))))))

(declare-fun b!7253107 () Bool)

(assert (=> b!7253107 (= e!4349038 (forall!17499 (t!384594 (exprs!8092 ct2!328)) lambda!444566))))

(assert (= (and d!2254991 (not res!2941524)) b!7253106))

(assert (= (and b!7253106 res!2941525) b!7253107))

(declare-fun b_lambda!278665 () Bool)

(assert (=> (not b_lambda!278665) (not b!7253106)))

(declare-fun m!7932960 () Bool)

(assert (=> b!7253106 m!7932960))

(declare-fun m!7932962 () Bool)

(assert (=> b!7253107 m!7932962))

(assert (=> d!2254735 d!2254991))

(declare-fun b!7253108 () Bool)

(declare-fun e!4349040 () (Set Context!15184))

(assert (=> b!7253108 (= e!4349040 (as set.empty (Set Context!15184)))))

(declare-fun b!7253109 () Bool)

(declare-fun e!4349039 () (Set Context!15184))

(assert (=> b!7253109 (= e!4349039 e!4349040)))

(declare-fun c!1348210 () Bool)

(assert (=> b!7253109 (= c!1348210 (is-Cons!70412 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585687))))))))

(declare-fun b!7253110 () Bool)

(declare-fun call!660768 () (Set Context!15184))

(assert (=> b!7253110 (= e!4349040 call!660768)))

(declare-fun b!7253111 () Bool)

(declare-fun e!4349041 () Bool)

(assert (=> b!7253111 (= e!4349041 (nullable!7912 (h!76860 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585687)))))))))

(declare-fun b!7253112 () Bool)

(assert (=> b!7253112 (= e!4349039 (set.union call!660768 (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585687)))))) (h!76861 s1!1971))))))

(declare-fun d!2254993 () Bool)

(declare-fun c!1348211 () Bool)

(assert (=> d!2254993 (= c!1348211 e!4349041)))

(declare-fun res!2941526 () Bool)

(assert (=> d!2254993 (=> (not res!2941526) (not e!4349041))))

(assert (=> d!2254993 (= res!2941526 (is-Cons!70412 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585687))))))))

(assert (=> d!2254993 (= (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 lt!2585687))) (h!76861 s1!1971)) e!4349039)))

(declare-fun bm!660763 () Bool)

(assert (=> bm!660763 (= call!660768 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585687))))) (Context!15185 (t!384594 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585687)))))) (h!76861 s1!1971)))))

(assert (= (and d!2254993 res!2941526) b!7253111))

(assert (= (and d!2254993 c!1348211) b!7253112))

(assert (= (and d!2254993 (not c!1348211)) b!7253109))

(assert (= (and b!7253109 c!1348210) b!7253110))

(assert (= (and b!7253109 (not c!1348210)) b!7253108))

(assert (= (or b!7253112 b!7253110) bm!660763))

(declare-fun m!7932964 () Bool)

(assert (=> b!7253111 m!7932964))

(declare-fun m!7932966 () Bool)

(assert (=> b!7253112 m!7932966))

(declare-fun m!7932968 () Bool)

(assert (=> bm!660763 m!7932968))

(assert (=> b!7252618 d!2254993))

(declare-fun d!2254995 () Bool)

(declare-fun c!1348212 () Bool)

(assert (=> d!2254995 (= c!1348212 (isEmpty!40550 (t!384595 s1!1971)))))

(declare-fun e!4349042 () Bool)

(assert (=> d!2254995 (= (matchZipper!3562 (set.insert lt!2585785 (as set.empty (Set Context!15184))) (t!384595 s1!1971)) e!4349042)))

(declare-fun b!7253113 () Bool)

(assert (=> b!7253113 (= e!4349042 (nullableZipper!2916 (set.insert lt!2585785 (as set.empty (Set Context!15184)))))))

(declare-fun b!7253114 () Bool)

(assert (=> b!7253114 (= e!4349042 (matchZipper!3562 (derivationStepZipper!3430 (set.insert lt!2585785 (as set.empty (Set Context!15184))) (head!14908 (t!384595 s1!1971))) (tail!14332 (t!384595 s1!1971))))))

(assert (= (and d!2254995 c!1348212) b!7253113))

(assert (= (and d!2254995 (not c!1348212)) b!7253114))

(assert (=> d!2254995 m!7932394))

(assert (=> b!7253113 m!7932472))

(declare-fun m!7932970 () Bool)

(assert (=> b!7253113 m!7932970))

(assert (=> b!7253114 m!7932398))

(assert (=> b!7253114 m!7932472))

(assert (=> b!7253114 m!7932398))

(declare-fun m!7932972 () Bool)

(assert (=> b!7253114 m!7932972))

(assert (=> b!7253114 m!7932402))

(assert (=> b!7253114 m!7932972))

(assert (=> b!7253114 m!7932402))

(declare-fun m!7932974 () Bool)

(assert (=> b!7253114 m!7932974))

(assert (=> bs!1906673 d!2254995))

(declare-fun d!2254997 () Bool)

(assert (=> d!2254997 (= (flatMap!2817 lt!2585689 lambda!444545) (choose!56044 lt!2585689 lambda!444545))))

(declare-fun bs!1906793 () Bool)

(assert (= bs!1906793 d!2254997))

(declare-fun m!7932976 () Bool)

(assert (=> bs!1906793 m!7932976))

(assert (=> d!2254673 d!2254997))

(declare-fun b!7253115 () Bool)

(declare-fun e!4349044 () (Set Context!15184))

(assert (=> b!7253115 (= e!4349044 (as set.empty (Set Context!15184)))))

(declare-fun b!7253116 () Bool)

(declare-fun e!4349043 () (Set Context!15184))

(assert (=> b!7253116 (= e!4349043 e!4349044)))

(declare-fun c!1348213 () Bool)

(assert (=> b!7253116 (= c!1348213 (is-Cons!70412 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585693))))))))

(declare-fun b!7253117 () Bool)

(declare-fun call!660769 () (Set Context!15184))

(assert (=> b!7253117 (= e!4349044 call!660769)))

(declare-fun b!7253118 () Bool)

(declare-fun e!4349045 () Bool)

(assert (=> b!7253118 (= e!4349045 (nullable!7912 (h!76860 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585693)))))))))

(declare-fun b!7253119 () Bool)

(assert (=> b!7253119 (= e!4349043 (set.union call!660769 (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585693)))))) (h!76861 s1!1971))))))

(declare-fun d!2254999 () Bool)

(declare-fun c!1348214 () Bool)

(assert (=> d!2254999 (= c!1348214 e!4349045)))

(declare-fun res!2941527 () Bool)

(assert (=> d!2254999 (=> (not res!2941527) (not e!4349045))))

(assert (=> d!2254999 (= res!2941527 (is-Cons!70412 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585693))))))))

(assert (=> d!2254999 (= (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 lt!2585693))) (h!76861 s1!1971)) e!4349043)))

(declare-fun bm!660764 () Bool)

(assert (=> bm!660764 (= call!660769 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585693))))) (Context!15185 (t!384594 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 lt!2585693)))))) (h!76861 s1!1971)))))

(assert (= (and d!2254999 res!2941527) b!7253118))

(assert (= (and d!2254999 c!1348214) b!7253119))

(assert (= (and d!2254999 (not c!1348214)) b!7253116))

(assert (= (and b!7253116 c!1348213) b!7253117))

(assert (= (and b!7253116 (not c!1348213)) b!7253115))

(assert (= (or b!7253119 b!7253117) bm!660764))

(declare-fun m!7932978 () Bool)

(assert (=> b!7253118 m!7932978))

(declare-fun m!7932980 () Bool)

(assert (=> b!7253119 m!7932980))

(declare-fun m!7932982 () Bool)

(assert (=> bm!660764 m!7932982))

(assert (=> b!7252714 d!2254999))

(declare-fun d!2255001 () Bool)

(declare-fun res!2941528 () Bool)

(declare-fun e!4349046 () Bool)

(assert (=> d!2255001 (=> res!2941528 e!4349046)))

(assert (=> d!2255001 (= res!2941528 (is-Nil!70412 (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328))))))

(assert (=> d!2255001 (= (forall!17499 (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328)) lambda!444513) e!4349046)))

(declare-fun b!7253120 () Bool)

(declare-fun e!4349047 () Bool)

(assert (=> b!7253120 (= e!4349046 e!4349047)))

(declare-fun res!2941529 () Bool)

(assert (=> b!7253120 (=> (not res!2941529) (not e!4349047))))

(assert (=> b!7253120 (= res!2941529 (dynLambda!28759 lambda!444513 (h!76860 (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328)))))))

(declare-fun b!7253121 () Bool)

(assert (=> b!7253121 (= e!4349047 (forall!17499 (t!384594 (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328))) lambda!444513))))

(assert (= (and d!2255001 (not res!2941528)) b!7253120))

(assert (= (and b!7253120 res!2941529) b!7253121))

(declare-fun b_lambda!278667 () Bool)

(assert (=> (not b_lambda!278667) (not b!7253120)))

(declare-fun m!7932984 () Bool)

(assert (=> b!7253120 m!7932984))

(declare-fun m!7932986 () Bool)

(assert (=> b!7253121 m!7932986))

(assert (=> d!2254677 d!2255001))

(assert (=> d!2254677 d!2254675))

(declare-fun d!2255003 () Bool)

(assert (=> d!2255003 (forall!17499 (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328)) lambda!444513)))

(assert (=> d!2255003 true))

(declare-fun _$78!777 () Unit!163891)

(assert (=> d!2255003 (= (choose!56038 (exprs!8092 ct1!232) (exprs!8092 ct2!328) lambda!444513) _$78!777)))

(declare-fun bs!1906794 () Bool)

(assert (= bs!1906794 d!2255003))

(assert (=> bs!1906794 m!7932158))

(assert (=> bs!1906794 m!7932158))

(assert (=> bs!1906794 m!7932270))

(assert (=> d!2254677 d!2255003))

(declare-fun d!2255005 () Bool)

(declare-fun res!2941530 () Bool)

(declare-fun e!4349048 () Bool)

(assert (=> d!2255005 (=> res!2941530 e!4349048)))

(assert (=> d!2255005 (= res!2941530 (is-Nil!70412 (exprs!8092 ct1!232)))))

(assert (=> d!2255005 (= (forall!17499 (exprs!8092 ct1!232) lambda!444513) e!4349048)))

(declare-fun b!7253122 () Bool)

(declare-fun e!4349049 () Bool)

(assert (=> b!7253122 (= e!4349048 e!4349049)))

(declare-fun res!2941531 () Bool)

(assert (=> b!7253122 (=> (not res!2941531) (not e!4349049))))

(assert (=> b!7253122 (= res!2941531 (dynLambda!28759 lambda!444513 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun b!7253123 () Bool)

(assert (=> b!7253123 (= e!4349049 (forall!17499 (t!384594 (exprs!8092 ct1!232)) lambda!444513))))

(assert (= (and d!2255005 (not res!2941530)) b!7253122))

(assert (= (and b!7253122 res!2941531) b!7253123))

(declare-fun b_lambda!278669 () Bool)

(assert (=> (not b_lambda!278669) (not b!7253122)))

(declare-fun m!7932988 () Bool)

(assert (=> b!7253122 m!7932988))

(declare-fun m!7932990 () Bool)

(assert (=> b!7253123 m!7932990))

(assert (=> d!2254677 d!2255005))

(declare-fun b!7253124 () Bool)

(declare-fun e!4349051 () (Set Context!15184))

(assert (=> b!7253124 (= e!4349051 (as set.empty (Set Context!15184)))))

(declare-fun b!7253125 () Bool)

(declare-fun e!4349050 () (Set Context!15184))

(assert (=> b!7253125 (= e!4349050 e!4349051)))

(declare-fun c!1348215 () Bool)

(assert (=> b!7253125 (= c!1348215 (is-Cons!70412 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 ct1!232))))))))

(declare-fun b!7253126 () Bool)

(declare-fun call!660770 () (Set Context!15184))

(assert (=> b!7253126 (= e!4349051 call!660770)))

(declare-fun b!7253127 () Bool)

(declare-fun e!4349052 () Bool)

(assert (=> b!7253127 (= e!4349052 (nullable!7912 (h!76860 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 ct1!232)))))))))

(declare-fun b!7253128 () Bool)

(assert (=> b!7253128 (= e!4349050 (set.union call!660770 (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 ct1!232)))))) (h!76861 s1!1971))))))

(declare-fun d!2255007 () Bool)

(declare-fun c!1348216 () Bool)

(assert (=> d!2255007 (= c!1348216 e!4349052)))

(declare-fun res!2941532 () Bool)

(assert (=> d!2255007 (=> (not res!2941532) (not e!4349052))))

(assert (=> d!2255007 (= res!2941532 (is-Cons!70412 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 ct1!232))))))))

(assert (=> d!2255007 (= (derivationStepZipperUp!2476 (Context!15185 (t!384594 (exprs!8092 ct1!232))) (h!76861 s1!1971)) e!4349050)))

(declare-fun bm!660765 () Bool)

(assert (=> bm!660765 (= call!660770 (derivationStepZipperDown!2646 (h!76860 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 ct1!232))))) (Context!15185 (t!384594 (exprs!8092 (Context!15185 (t!384594 (exprs!8092 ct1!232)))))) (h!76861 s1!1971)))))

(assert (= (and d!2255007 res!2941532) b!7253127))

(assert (= (and d!2255007 c!1348216) b!7253128))

(assert (= (and d!2255007 (not c!1348216)) b!7253125))

(assert (= (and b!7253125 c!1348215) b!7253126))

(assert (= (and b!7253125 (not c!1348215)) b!7253124))

(assert (= (or b!7253128 b!7253126) bm!660765))

(declare-fun m!7932992 () Bool)

(assert (=> b!7253127 m!7932992))

(declare-fun m!7932994 () Bool)

(assert (=> b!7253128 m!7932994))

(declare-fun m!7932996 () Bool)

(assert (=> bm!660765 m!7932996))

(assert (=> b!7252689 d!2255007))

(declare-fun b!7253129 () Bool)

(declare-fun e!4349053 () Bool)

(declare-fun tp!2037761 () Bool)

(assert (=> b!7253129 (= e!4349053 (and tp_is_empty!46769 tp!2037761))))

(assert (=> b!7252741 (= tp!2037732 e!4349053)))

(assert (= (and b!7252741 (is-Cons!70413 (t!384595 (t!384595 s2!1849)))) b!7253129))

(declare-fun b!7253143 () Bool)

(declare-fun e!4349056 () Bool)

(declare-fun tp!2037775 () Bool)

(declare-fun tp!2037773 () Bool)

(assert (=> b!7253143 (= e!4349056 (and tp!2037775 tp!2037773))))

(declare-fun b!7253140 () Bool)

(assert (=> b!7253140 (= e!4349056 tp_is_empty!46769)))

(assert (=> b!7252742 (= tp!2037733 e!4349056)))

(declare-fun b!7253141 () Bool)

(declare-fun tp!2037772 () Bool)

(declare-fun tp!2037774 () Bool)

(assert (=> b!7253141 (= e!4349056 (and tp!2037772 tp!2037774))))

(declare-fun b!7253142 () Bool)

(declare-fun tp!2037776 () Bool)

(assert (=> b!7253142 (= e!4349056 tp!2037776)))

(assert (= (and b!7252742 (is-ElementMatch!18652 (h!76860 (exprs!8092 ct1!232)))) b!7253140))

(assert (= (and b!7252742 (is-Concat!27497 (h!76860 (exprs!8092 ct1!232)))) b!7253141))

(assert (= (and b!7252742 (is-Star!18652 (h!76860 (exprs!8092 ct1!232)))) b!7253142))

(assert (= (and b!7252742 (is-Union!18652 (h!76860 (exprs!8092 ct1!232)))) b!7253143))

(declare-fun b!7253144 () Bool)

(declare-fun e!4349057 () Bool)

(declare-fun tp!2037777 () Bool)

(declare-fun tp!2037778 () Bool)

(assert (=> b!7253144 (= e!4349057 (and tp!2037777 tp!2037778))))

(assert (=> b!7252742 (= tp!2037734 e!4349057)))

(assert (= (and b!7252742 (is-Cons!70412 (t!384594 (exprs!8092 ct1!232)))) b!7253144))

(declare-fun b!7253148 () Bool)

(declare-fun e!4349058 () Bool)

(declare-fun tp!2037782 () Bool)

(declare-fun tp!2037780 () Bool)

(assert (=> b!7253148 (= e!4349058 (and tp!2037782 tp!2037780))))

(declare-fun b!7253145 () Bool)

(assert (=> b!7253145 (= e!4349058 tp_is_empty!46769)))

(assert (=> b!7252735 (= tp!2037727 e!4349058)))

(declare-fun b!7253146 () Bool)

(declare-fun tp!2037779 () Bool)

(declare-fun tp!2037781 () Bool)

(assert (=> b!7253146 (= e!4349058 (and tp!2037779 tp!2037781))))

(declare-fun b!7253147 () Bool)

(declare-fun tp!2037783 () Bool)

(assert (=> b!7253147 (= e!4349058 tp!2037783)))

(assert (= (and b!7252735 (is-ElementMatch!18652 (h!76860 (exprs!8092 ct2!328)))) b!7253145))

(assert (= (and b!7252735 (is-Concat!27497 (h!76860 (exprs!8092 ct2!328)))) b!7253146))

(assert (= (and b!7252735 (is-Star!18652 (h!76860 (exprs!8092 ct2!328)))) b!7253147))

(assert (= (and b!7252735 (is-Union!18652 (h!76860 (exprs!8092 ct2!328)))) b!7253148))

(declare-fun b!7253149 () Bool)

(declare-fun e!4349059 () Bool)

(declare-fun tp!2037784 () Bool)

(declare-fun tp!2037785 () Bool)

(assert (=> b!7253149 (= e!4349059 (and tp!2037784 tp!2037785))))

(assert (=> b!7252735 (= tp!2037728 e!4349059)))

(assert (= (and b!7252735 (is-Cons!70412 (t!384594 (exprs!8092 ct2!328)))) b!7253149))

(declare-fun b!7253150 () Bool)

(declare-fun e!4349060 () Bool)

(declare-fun tp!2037786 () Bool)

(assert (=> b!7253150 (= e!4349060 (and tp_is_empty!46769 tp!2037786))))

(assert (=> b!7252740 (= tp!2037731 e!4349060)))

(assert (= (and b!7252740 (is-Cons!70413 (t!384595 (t!384595 s1!1971)))) b!7253150))

(declare-fun b_lambda!278671 () Bool)

(assert (= b_lambda!278661 (or d!2254733 b_lambda!278671)))

(declare-fun bs!1906795 () Bool)

(declare-fun d!2255009 () Bool)

(assert (= bs!1906795 (and d!2255009 d!2254733)))

(declare-fun validRegex!9543 (Regex!18652) Bool)

(assert (=> bs!1906795 (= (dynLambda!28759 lambda!444565 (h!76860 (exprs!8092 ct1!232))) (validRegex!9543 (h!76860 (exprs!8092 ct1!232))))))

(declare-fun m!7932998 () Bool)

(assert (=> bs!1906795 m!7932998))

(assert (=> b!7253022 d!2255009))

(declare-fun b_lambda!278673 () Bool)

(assert (= b_lambda!278659 (or b!7252522 b_lambda!278673)))

(assert (=> d!2254919 d!2254757))

(declare-fun b_lambda!278675 () Bool)

(assert (= b_lambda!278667 (or b!7252520 b_lambda!278675)))

(declare-fun bs!1906796 () Bool)

(declare-fun d!2255011 () Bool)

(assert (= bs!1906796 (and d!2255011 b!7252520)))

(assert (=> bs!1906796 (= (dynLambda!28759 lambda!444513 (h!76860 (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328)))) (validRegex!9543 (h!76860 (++!16566 (exprs!8092 ct1!232) (exprs!8092 ct2!328)))))))

(declare-fun m!7933000 () Bool)

(assert (=> bs!1906796 m!7933000))

(assert (=> b!7253120 d!2255011))

(declare-fun b_lambda!278677 () Bool)

(assert (= b_lambda!278655 (or b!7252520 b_lambda!278677)))

(declare-fun bs!1906797 () Bool)

(declare-fun d!2255013 () Bool)

(assert (= bs!1906797 (and d!2255013 b!7252520)))

(assert (=> bs!1906797 (= (dynLambda!28759 lambda!444513 (h!76860 (exprs!8092 lt!2585682))) (validRegex!9543 (h!76860 (exprs!8092 lt!2585682))))))

(declare-fun m!7933002 () Bool)

(assert (=> bs!1906797 m!7933002))

(assert (=> b!7252896 d!2255013))

(declare-fun b_lambda!278679 () Bool)

(assert (= b_lambda!278665 (or d!2254735 b_lambda!278679)))

(declare-fun bs!1906798 () Bool)

(declare-fun d!2255015 () Bool)

(assert (= bs!1906798 (and d!2255015 d!2254735)))

(assert (=> bs!1906798 (= (dynLambda!28759 lambda!444566 (h!76860 (exprs!8092 ct2!328))) (validRegex!9543 (h!76860 (exprs!8092 ct2!328))))))

(declare-fun m!7933004 () Bool)

(assert (=> bs!1906798 m!7933004))

(assert (=> b!7253106 d!2255015))

(declare-fun b_lambda!278681 () Bool)

(assert (= b_lambda!278647 (or b!7252522 b_lambda!278681)))

(assert (=> d!2254829 d!2254759))

(declare-fun b_lambda!278683 () Bool)

(assert (= b_lambda!278657 (or d!2254681 b_lambda!278683)))

(declare-fun bs!1906799 () Bool)

(declare-fun d!2255017 () Bool)

(assert (= bs!1906799 (and d!2255017 d!2254681)))

(assert (=> bs!1906799 (= (dynLambda!28754 lambda!444548 (h!76862 lt!2585676)) (not (dynLambda!28754 lambda!444514 (h!76862 lt!2585676))))))

(declare-fun b_lambda!278695 () Bool)

(assert (=> (not b_lambda!278695) (not bs!1906799)))

(declare-fun m!7933006 () Bool)

(assert (=> bs!1906799 m!7933006))

(assert (=> b!7252999 d!2255017))

(declare-fun b_lambda!278685 () Bool)

(assert (= b_lambda!278653 (or b!7252520 b_lambda!278685)))

(declare-fun bs!1906800 () Bool)

(declare-fun d!2255019 () Bool)

(assert (= bs!1906800 (and d!2255019 b!7252520)))

(assert (=> bs!1906800 (= (dynLambda!28759 lambda!444513 (h!76860 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328)))) (validRegex!9543 (h!76860 (++!16566 (exprs!8092 lt!2585682) (exprs!8092 ct2!328)))))))

(declare-fun m!7933008 () Bool)

(assert (=> bs!1906800 m!7933008))

(assert (=> b!7252894 d!2255019))

(declare-fun b_lambda!278687 () Bool)

(assert (= b_lambda!278669 (or b!7252520 b_lambda!278687)))

(declare-fun bs!1906801 () Bool)

(declare-fun d!2255021 () Bool)

(assert (= bs!1906801 (and d!2255021 b!7252520)))

(assert (=> bs!1906801 (= (dynLambda!28759 lambda!444513 (h!76860 (exprs!8092 ct1!232))) (validRegex!9543 (h!76860 (exprs!8092 ct1!232))))))

(assert (=> bs!1906801 m!7932998))

(assert (=> b!7253122 d!2255021))

(declare-fun b_lambda!278689 () Bool)

(assert (= b_lambda!278663 (or d!2254725 b_lambda!278689)))

(declare-fun bs!1906802 () Bool)

(declare-fun d!2255023 () Bool)

(assert (= bs!1906802 (and d!2255023 d!2254725)))

(assert (=> bs!1906802 (= (dynLambda!28759 lambda!444564 (h!76860 (exprs!8092 lt!2585683))) (validRegex!9543 (h!76860 (exprs!8092 lt!2585683))))))

(declare-fun m!7933010 () Bool)

(assert (=> bs!1906802 m!7933010))

(assert (=> b!7253055 d!2255023))

(declare-fun b_lambda!278691 () Bool)

(assert (= b_lambda!278651 (or b!7252527 b_lambda!278691)))

(declare-fun bs!1906803 () Bool)

(declare-fun d!2255025 () Bool)

(assert (= bs!1906803 (and d!2255025 b!7252527)))

(assert (=> bs!1906803 (= (dynLambda!28754 lambda!444514 lt!2585839) (matchZipper!3562 (set.insert lt!2585839 (as set.empty (Set Context!15184))) (t!384595 s1!1971)))))

(declare-fun m!7933012 () Bool)

(assert (=> bs!1906803 m!7933012))

(assert (=> bs!1906803 m!7933012))

(declare-fun m!7933014 () Bool)

(assert (=> bs!1906803 m!7933014))

(assert (=> d!2254833 d!2255025))

(declare-fun b_lambda!278693 () Bool)

(assert (= b_lambda!278649 (or b!7252527 b_lambda!278693)))

(declare-fun bs!1906804 () Bool)

(declare-fun d!2255027 () Bool)

(assert (= bs!1906804 (and d!2255027 b!7252527)))

(assert (=> bs!1906804 (= (dynLambda!28754 lambda!444514 (h!76862 (toList!11481 lt!2585677))) (matchZipper!3562 (set.insert (h!76862 (toList!11481 lt!2585677)) (as set.empty (Set Context!15184))) (t!384595 s1!1971)))))

(declare-fun m!7933016 () Bool)

(assert (=> bs!1906804 m!7933016))

(assert (=> bs!1906804 m!7933016))

(declare-fun m!7933018 () Bool)

(assert (=> bs!1906804 m!7933018))

(assert (=> b!7252889 d!2255027))

(push 1)

(assert (not b!7252963))

(assert (not d!2254877))

(assert (not b!7253121))

(assert (not b!7252965))

(assert (not b!7253019))

(assert (not b!7253149))

(assert (not b!7252930))

(assert (not d!2254901))

(assert (not b!7253053))

(assert (not b!7252907))

(assert (not d!2254969))

(assert (not d!2254891))

(assert (not d!2254851))

(assert (not bs!1906802))

(assert (not bs!1906796))

(assert (not b!7253123))

(assert (not bm!660760))

(assert (not bm!660730))

(assert (not b_lambda!278633))

(assert (not bm!660718))

(assert (not bs!1906801))

(assert (not b!7252905))

(assert (not b!7252886))

(assert (not d!2254881))

(assert (not bs!1906795))

(assert (not b!7252932))

(assert (not b_lambda!278677))

(assert (not b!7253095))

(assert (not b!7253143))

(assert (not bm!660728))

(assert (not b!7253029))

(assert (not b!7253113))

(assert (not d!2254865))

(assert (not b!7253054))

(assert (not b!7252895))

(assert (not bs!1906800))

(assert (not bm!660736))

(assert (not b!7253021))

(assert (not b!7253118))

(assert (not b_lambda!278671))

(assert (not bm!660734))

(assert (not d!2254921))

(assert (not b!7252908))

(assert (not b_lambda!278689))

(assert (not b!7252869))

(assert (not b!7253103))

(assert (not d!2255003))

(assert (not b!7252968))

(assert (not bm!660722))

(assert (not bs!1906797))

(assert (not b_lambda!278629))

(assert (not d!2254973))

(assert (not b!7253046))

(assert (not d!2254995))

(assert (not b!7253119))

(assert (not b!7252934))

(assert (not b!7252914))

(assert (not b!7253150))

(assert (not b!7253023))

(assert (not b!7252870))

(assert (not b_lambda!278675))

(assert (not bs!1906798))

(assert (not b!7252936))

(assert (not setNonEmpty!53584))

(assert (not b!7252888))

(assert (not b_lambda!278687))

(assert (not b!7253034))

(assert (not d!2254831))

(assert (not b!7253102))

(assert (not d!2254861))

(assert (not bm!660716))

(assert (not b!7252909))

(assert (not b!7252939))

(assert (not b!7252945))

(assert (not b!7253082))

(assert (not bm!660717))

(assert (not b!7253141))

(assert (not d!2254983))

(assert (not b!7252884))

(assert (not d!2254985))

(assert (not b!7252940))

(assert (not d!2254919))

(assert (not b_lambda!278685))

(assert (not b!7253127))

(assert (not d!2254951))

(assert (not d!2254935))

(assert (not bm!660765))

(assert (not b!7253032))

(assert (not b!7253146))

(assert (not b!7253111))

(assert (not d!2254883))

(assert (not b!7252994))

(assert (not b_lambda!278681))

(assert (not bm!660753))

(assert (not bm!660738))

(assert (not b!7253017))

(assert (not d!2254825))

(assert (not bm!660710))

(assert (not b!7253142))

(assert (not b!7253056))

(assert (not bm!660761))

(assert (not bm!660749))

(assert (not b!7253024))

(assert (not b!7253129))

(assert (not bm!660755))

(assert (not b!7252961))

(assert (not d!2254833))

(assert (not d!2254949))

(assert (not b!7253005))

(assert (not b!7252922))

(assert (not b!7252992))

(assert (not setNonEmpty!53583))

(assert (not d!2254879))

(assert (not d!2254975))

(assert (not b_lambda!278695))

(assert (not d!2254933))

(assert (not d!2254869))

(assert (not b!7253112))

(assert (not b_lambda!278673))

(assert (not b_lambda!278679))

(assert (not bm!660711))

(assert (not bm!660750))

(assert (not b!7252923))

(assert (not b!7253025))

(assert (not b!7252954))

(assert (not d!2254837))

(assert (not b!7252953))

(assert (not b!7252903))

(assert (not d!2254853))

(assert (not b!7252984))

(assert (not bm!660741))

(assert (not d!2254893))

(assert (not b!7253030))

(assert (not b!7253147))

(assert (not bm!660735))

(assert (not b!7252955))

(assert (not bm!660729))

(assert (not d!2254855))

(assert (not bm!660759))

(assert (not b!7253105))

(assert (not d!2254889))

(assert (not bm!660764))

(assert (not d!2254885))

(assert (not b!7253090))

(assert (not bm!660724))

(assert (not bm!660763))

(assert (not d!2254997))

(assert (not b!7253144))

(assert (not d!2254829))

(assert (not bm!660743))

(assert (not bm!660723))

(assert (not d!2254971))

(assert (not bm!660754))

(assert (not bm!660712))

(assert (not b!7253114))

(assert (not d!2254953))

(assert (not b!7252946))

(assert (not b!7253107))

(assert (not b!7253104))

(assert (not bs!1906803))

(assert (not b_lambda!278631))

(assert (not b!7252897))

(assert (not b_lambda!278683))

(assert (not b!7253047))

(assert (not b_lambda!278693))

(assert tp_is_empty!46769)

(assert (not b!7253128))

(assert (not b!7252937))

(assert (not b!7253000))

(assert (not bm!660742))

(assert (not bs!1906804))

(assert (not b!7253039))

(assert (not b!7252861))

(assert (not b!7253148))

(assert (not b!7252973))

(assert (not b_lambda!278691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

