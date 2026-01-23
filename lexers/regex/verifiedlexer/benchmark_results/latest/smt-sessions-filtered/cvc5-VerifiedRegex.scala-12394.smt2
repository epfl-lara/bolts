; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693374 () Bool)

(assert start!693374)

(declare-fun b_free!133679 () Bool)

(declare-fun b_next!134469 () Bool)

(assert (=> start!693374 (= b_free!133679 (not b_next!134469))))

(declare-fun tp!1960895 () Bool)

(declare-fun b_and!350775 () Bool)

(assert (=> start!693374 (= tp!1960895 b_and!350775)))

(assert (=> start!693374 true))

(declare-datatypes ((B!3243 0))(
  ( (B!3244 (val!27911 Int)) )
))
(declare-datatypes ((List!68991 0))(
  ( (Nil!68867) (Cons!68867 (h!75315 B!3243) (t!382898 List!68991)) )
))
(declare-fun lt!2561778 () List!68991)

(declare-fun lt!2561775 () List!68991)

(declare-fun lambda!432847 () Int)

(declare-fun lambda!432846 () Int)

(assert (=> start!693374 (= (= lt!2561775 lt!2561778) (= lambda!432847 lambda!432846))))

(assert (=> start!693374 true))

(declare-fun setIsEmpty!50930 () Bool)

(declare-fun setRes!50930 () Bool)

(assert (=> setIsEmpty!50930 setRes!50930))

(declare-fun setNonEmpty!50930 () Bool)

(declare-fun tp!1960896 () Bool)

(declare-fun tp_is_empty!45325 () Bool)

(assert (=> setNonEmpty!50930 (= setRes!50930 (and tp!1960896 tp_is_empty!45325))))

(declare-datatypes ((A!585 0))(
  ( (A!586 (val!27912 Int)) )
))
(declare-fun s2!373 () (Set A!585))

(declare-fun setElem!50931 () A!585)

(declare-fun setRest!50930 () (Set A!585))

(assert (=> setNonEmpty!50930 (= s2!373 (set.union (set.insert setElem!50931 (as set.empty (Set A!585))) setRest!50930))))

(declare-fun setNonEmpty!50931 () Bool)

(declare-fun setRes!50931 () Bool)

(declare-fun tp!1960897 () Bool)

(assert (=> setNonEmpty!50931 (= setRes!50931 (and tp!1960897 tp_is_empty!45325))))

(declare-fun s1!402 () (Set A!585))

(declare-fun setElem!50930 () A!585)

(declare-fun setRest!50931 () (Set A!585))

(assert (=> setNonEmpty!50931 (= s1!402 (set.union (set.insert setElem!50930 (as set.empty (Set A!585))) setRest!50931))))

(declare-fun b!7121563 () Bool)

(declare-fun e!4279135 () Bool)

(declare-fun forall!16888 (List!68991 Int) Bool)

(assert (=> b!7121563 (= e!4279135 (forall!16888 lt!2561775 lambda!432846))))

(declare-fun b!7121564 () Bool)

(declare-fun res!2905332 () Bool)

(assert (=> b!7121564 (=> (not res!2905332) (not e!4279135))))

(assert (=> b!7121564 (= res!2905332 (forall!16888 lt!2561778 lambda!432847))))

(declare-datatypes ((Unit!162683 0))(
  ( (Unit!162684) )
))
(declare-fun lt!2561770 () Unit!162683)

(declare-fun forallContainsSubset!33 (List!68991 List!68991) Unit!162683)

(assert (=> start!693374 (= lt!2561770 (forallContainsSubset!33 lt!2561775 lt!2561778))))

(declare-fun lt!2561772 () Unit!162683)

(assert (=> start!693374 (= lt!2561772 (forallContainsSubset!33 lt!2561778 lt!2561775))))

(assert (=> start!693374 e!4279135))

(declare-fun res!2905331 () Bool)

(assert (=> start!693374 (=> (not res!2905331) (not e!4279135))))

(assert (=> start!693374 (= res!2905331 (forall!16888 lt!2561778 lambda!432847))))

(declare-fun f!483 () Int)

(declare-fun lt!2561776 () Unit!162683)

(declare-fun lemmaMapAssociativeToList1!9 ((Set A!585) (Set A!585) Int List!68991 List!68991) Unit!162683)

(assert (=> start!693374 (= lt!2561776 (lemmaMapAssociativeToList1!9 s1!402 s2!373 f!483 lt!2561778 lt!2561775))))

(assert (=> start!693374 (forall!16888 lt!2561775 lambda!432846)))

(declare-fun lt!2561771 () Unit!162683)

(declare-fun lemmaMapAssociativeToList2!11 ((Set A!585) (Set A!585) Int List!68991 List!68991) Unit!162683)

(assert (=> start!693374 (= lt!2561771 (lemmaMapAssociativeToList2!11 s1!402 s2!373 f!483 lt!2561778 lt!2561775))))

(declare-fun subseq!730 (List!68991 List!68991) Bool)

(assert (=> start!693374 (subseq!730 lt!2561775 lt!2561775)))

(declare-fun lt!2561769 () Unit!162683)

(declare-fun lemmaSubseqRefl!176 (List!68991) Unit!162683)

(assert (=> start!693374 (= lt!2561769 (lemmaSubseqRefl!176 lt!2561775))))

(assert (=> start!693374 (subseq!730 lt!2561778 lt!2561778)))

(declare-fun lt!2561774 () Unit!162683)

(assert (=> start!693374 (= lt!2561774 (lemmaSubseqRefl!176 lt!2561778))))

(declare-fun lt!2561773 () (Set B!3243))

(declare-fun toList!11094 ((Set B!3243)) List!68991)

(assert (=> start!693374 (= lt!2561775 (toList!11094 lt!2561773))))

(declare-fun map!16385 ((Set A!585) Int) (Set B!3243))

(assert (=> start!693374 (= lt!2561773 (map!16385 (set.union s1!402 s2!373) f!483))))

(declare-fun lt!2561777 () (Set B!3243))

(assert (=> start!693374 (= lt!2561778 (toList!11094 lt!2561777))))

(assert (=> start!693374 (= lt!2561777 (set.union (map!16385 s1!402 f!483) (map!16385 s2!373 f!483)))))

(assert (=> start!693374 (not (= lt!2561777 lt!2561773))))

(declare-fun condSetEmpty!50930 () Bool)

(assert (=> start!693374 (= condSetEmpty!50930 (= s1!402 (as set.empty (Set A!585))))))

(assert (=> start!693374 setRes!50931))

(assert (=> start!693374 tp!1960895))

(declare-fun condSetEmpty!50931 () Bool)

(assert (=> start!693374 (= condSetEmpty!50931 (= s2!373 (as set.empty (Set A!585))))))

(assert (=> start!693374 setRes!50930))

(declare-fun setIsEmpty!50931 () Bool)

(assert (=> setIsEmpty!50931 setRes!50931))

(assert (= (and start!693374 res!2905331) b!7121564))

(assert (= (and b!7121564 res!2905332) b!7121563))

(assert (= (and start!693374 condSetEmpty!50930) setIsEmpty!50931))

(assert (= (and start!693374 (not condSetEmpty!50930)) setNonEmpty!50931))

(assert (= (and start!693374 condSetEmpty!50931) setIsEmpty!50930))

(assert (= (and start!693374 (not condSetEmpty!50931)) setNonEmpty!50930))

(declare-fun m!7838660 () Bool)

(assert (=> b!7121563 m!7838660))

(declare-fun m!7838662 () Bool)

(assert (=> b!7121564 m!7838662))

(declare-fun m!7838664 () Bool)

(assert (=> start!693374 m!7838664))

(declare-fun m!7838666 () Bool)

(assert (=> start!693374 m!7838666))

(assert (=> start!693374 m!7838662))

(declare-fun m!7838668 () Bool)

(assert (=> start!693374 m!7838668))

(declare-fun m!7838670 () Bool)

(assert (=> start!693374 m!7838670))

(declare-fun m!7838672 () Bool)

(assert (=> start!693374 m!7838672))

(declare-fun m!7838674 () Bool)

(assert (=> start!693374 m!7838674))

(declare-fun m!7838676 () Bool)

(assert (=> start!693374 m!7838676))

(declare-fun m!7838678 () Bool)

(assert (=> start!693374 m!7838678))

(assert (=> start!693374 m!7838660))

(declare-fun m!7838680 () Bool)

(assert (=> start!693374 m!7838680))

(declare-fun m!7838682 () Bool)

(assert (=> start!693374 m!7838682))

(declare-fun m!7838684 () Bool)

(assert (=> start!693374 m!7838684))

(declare-fun m!7838686 () Bool)

(assert (=> start!693374 m!7838686))

(declare-fun m!7838688 () Bool)

(assert (=> start!693374 m!7838688))

(push 1)

(assert (not b!7121563))

(assert (not setNonEmpty!50930))

(assert tp_is_empty!45325)

(assert b_and!350775)

(assert (not setNonEmpty!50931))

(assert (not start!693374))

(assert (not b_next!134469))

(assert (not b!7121564))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350775)

(assert (not b_next!134469))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1885952 () Bool)

(declare-fun d!2222229 () Bool)

(assert (= bs!1885952 (and d!2222229 start!693374)))

(declare-fun lambda!432860 () Int)

(assert (=> bs!1885952 (= lambda!432860 lambda!432846)))

(assert (=> bs!1885952 (= (= lt!2561778 lt!2561775) (= lambda!432860 lambda!432847))))

(assert (=> d!2222229 true))

(assert (=> d!2222229 (forall!16888 lt!2561775 lambda!432860)))

(declare-fun lt!2561814 () Unit!162683)

(declare-fun choose!54966 ((Set A!585) (Set A!585) Int List!68991 List!68991) Unit!162683)

(assert (=> d!2222229 (= lt!2561814 (choose!54966 s1!402 s2!373 f!483 lt!2561778 lt!2561775))))

(assert (=> d!2222229 (= lt!2561778 (toList!11094 (set.union (map!16385 s1!402 f!483) (map!16385 s2!373 f!483))))))

(assert (=> d!2222229 (= (lemmaMapAssociativeToList2!11 s1!402 s2!373 f!483 lt!2561778 lt!2561775) lt!2561814)))

(declare-fun bs!1885953 () Bool)

(assert (= bs!1885953 d!2222229))

(assert (=> bs!1885953 m!7838688))

(declare-fun m!7838726 () Bool)

(assert (=> bs!1885953 m!7838726))

(declare-fun m!7838728 () Bool)

(assert (=> bs!1885953 m!7838728))

(declare-fun m!7838730 () Bool)

(assert (=> bs!1885953 m!7838730))

(assert (=> bs!1885953 m!7838664))

(assert (=> start!693374 d!2222229))

(declare-fun d!2222233 () Bool)

(declare-fun e!4279147 () Bool)

(assert (=> d!2222233 e!4279147))

(declare-fun res!2905347 () Bool)

(assert (=> d!2222233 (=> (not res!2905347) (not e!4279147))))

(declare-fun lt!2561817 () List!68991)

(declare-fun noDuplicate!2778 (List!68991) Bool)

(assert (=> d!2222233 (= res!2905347 (noDuplicate!2778 lt!2561817))))

(declare-fun choose!54967 ((Set B!3243)) List!68991)

(assert (=> d!2222233 (= lt!2561817 (choose!54967 lt!2561773))))

(assert (=> d!2222233 (= (toList!11094 lt!2561773) lt!2561817)))

(declare-fun b!7121583 () Bool)

(declare-fun content!14076 (List!68991) (Set B!3243))

(assert (=> b!7121583 (= e!4279147 (= (content!14076 lt!2561817) lt!2561773))))

(assert (= (and d!2222233 res!2905347) b!7121583))

(declare-fun m!7838734 () Bool)

(assert (=> d!2222233 m!7838734))

(declare-fun m!7838736 () Bool)

(assert (=> d!2222233 m!7838736))

(declare-fun m!7838738 () Bool)

(assert (=> b!7121583 m!7838738))

(assert (=> start!693374 d!2222233))

(declare-fun d!2222237 () Bool)

(declare-fun choose!54968 ((Set A!585) Int) (Set B!3243))

(assert (=> d!2222237 (= (map!16385 s1!402 f!483) (choose!54968 s1!402 f!483))))

(declare-fun bs!1885955 () Bool)

(assert (= bs!1885955 d!2222237))

(declare-fun m!7838740 () Bool)

(assert (=> bs!1885955 m!7838740))

(assert (=> start!693374 d!2222237))

(declare-fun bs!1885956 () Bool)

(declare-fun d!2222239 () Bool)

(assert (= bs!1885956 (and d!2222239 start!693374)))

(declare-fun lambda!432863 () Int)

(assert (=> bs!1885956 (= (= lt!2561775 lt!2561778) (= lambda!432863 lambda!432846))))

(assert (=> bs!1885956 (= lambda!432863 lambda!432847)))

(declare-fun bs!1885957 () Bool)

(assert (= bs!1885957 (and d!2222239 d!2222229)))

(assert (=> bs!1885957 (= (= lt!2561775 lt!2561778) (= lambda!432863 lambda!432860))))

(assert (=> d!2222239 true))

(assert (=> d!2222239 (set.subset (content!14076 lt!2561778) (content!14076 lt!2561775))))

(declare-fun lt!2561820 () Unit!162683)

(declare-fun choose!54969 (List!68991 List!68991) Unit!162683)

(assert (=> d!2222239 (= lt!2561820 (choose!54969 lt!2561778 lt!2561775))))

(assert (=> d!2222239 (forall!16888 lt!2561778 lambda!432863)))

(assert (=> d!2222239 (= (forallContainsSubset!33 lt!2561778 lt!2561775) lt!2561820)))

(declare-fun bs!1885958 () Bool)

(assert (= bs!1885958 d!2222239))

(declare-fun m!7838742 () Bool)

(assert (=> bs!1885958 m!7838742))

(declare-fun m!7838744 () Bool)

(assert (=> bs!1885958 m!7838744))

(declare-fun m!7838746 () Bool)

(assert (=> bs!1885958 m!7838746))

(declare-fun m!7838748 () Bool)

(assert (=> bs!1885958 m!7838748))

(assert (=> start!693374 d!2222239))

(declare-fun b!7121595 () Bool)

(declare-fun e!4279158 () Bool)

(assert (=> b!7121595 (= e!4279158 (subseq!730 lt!2561775 (t!382898 lt!2561775)))))

(declare-fun b!7121592 () Bool)

(declare-fun e!4279156 () Bool)

(declare-fun e!4279159 () Bool)

(assert (=> b!7121592 (= e!4279156 e!4279159)))

(declare-fun res!2905359 () Bool)

(assert (=> b!7121592 (=> (not res!2905359) (not e!4279159))))

(assert (=> b!7121592 (= res!2905359 (is-Cons!68867 lt!2561775))))

(declare-fun b!7121593 () Bool)

(assert (=> b!7121593 (= e!4279159 e!4279158)))

(declare-fun res!2905358 () Bool)

(assert (=> b!7121593 (=> res!2905358 e!4279158)))

(declare-fun e!4279157 () Bool)

(assert (=> b!7121593 (= res!2905358 e!4279157)))

(declare-fun res!2905357 () Bool)

(assert (=> b!7121593 (=> (not res!2905357) (not e!4279157))))

(assert (=> b!7121593 (= res!2905357 (= (h!75315 lt!2561775) (h!75315 lt!2561775)))))

(declare-fun b!7121594 () Bool)

(assert (=> b!7121594 (= e!4279157 (subseq!730 (t!382898 lt!2561775) (t!382898 lt!2561775)))))

(declare-fun d!2222241 () Bool)

(declare-fun res!2905356 () Bool)

(assert (=> d!2222241 (=> res!2905356 e!4279156)))

(assert (=> d!2222241 (= res!2905356 (is-Nil!68867 lt!2561775))))

(assert (=> d!2222241 (= (subseq!730 lt!2561775 lt!2561775) e!4279156)))

(assert (= (and d!2222241 (not res!2905356)) b!7121592))

(assert (= (and b!7121592 res!2905359) b!7121593))

(assert (= (and b!7121593 res!2905357) b!7121594))

(assert (= (and b!7121593 (not res!2905358)) b!7121595))

(declare-fun m!7838750 () Bool)

(assert (=> b!7121595 m!7838750))

(declare-fun m!7838752 () Bool)

(assert (=> b!7121594 m!7838752))

(assert (=> start!693374 d!2222241))

(declare-fun b!7121599 () Bool)

(declare-fun e!4279162 () Bool)

(assert (=> b!7121599 (= e!4279162 (subseq!730 lt!2561778 (t!382898 lt!2561778)))))

(declare-fun b!7121596 () Bool)

(declare-fun e!4279160 () Bool)

(declare-fun e!4279163 () Bool)

(assert (=> b!7121596 (= e!4279160 e!4279163)))

(declare-fun res!2905363 () Bool)

(assert (=> b!7121596 (=> (not res!2905363) (not e!4279163))))

(assert (=> b!7121596 (= res!2905363 (is-Cons!68867 lt!2561778))))

(declare-fun b!7121597 () Bool)

(assert (=> b!7121597 (= e!4279163 e!4279162)))

(declare-fun res!2905362 () Bool)

(assert (=> b!7121597 (=> res!2905362 e!4279162)))

(declare-fun e!4279161 () Bool)

(assert (=> b!7121597 (= res!2905362 e!4279161)))

(declare-fun res!2905361 () Bool)

(assert (=> b!7121597 (=> (not res!2905361) (not e!4279161))))

(assert (=> b!7121597 (= res!2905361 (= (h!75315 lt!2561778) (h!75315 lt!2561778)))))

(declare-fun b!7121598 () Bool)

(assert (=> b!7121598 (= e!4279161 (subseq!730 (t!382898 lt!2561778) (t!382898 lt!2561778)))))

(declare-fun d!2222243 () Bool)

(declare-fun res!2905360 () Bool)

(assert (=> d!2222243 (=> res!2905360 e!4279160)))

(assert (=> d!2222243 (= res!2905360 (is-Nil!68867 lt!2561778))))

(assert (=> d!2222243 (= (subseq!730 lt!2561778 lt!2561778) e!4279160)))

(assert (= (and d!2222243 (not res!2905360)) b!7121596))

(assert (= (and b!7121596 res!2905363) b!7121597))

(assert (= (and b!7121597 res!2905361) b!7121598))

(assert (= (and b!7121597 (not res!2905362)) b!7121599))

(declare-fun m!7838754 () Bool)

(assert (=> b!7121599 m!7838754))

(declare-fun m!7838756 () Bool)

(assert (=> b!7121598 m!7838756))

(assert (=> start!693374 d!2222243))

(declare-fun d!2222245 () Bool)

(declare-fun e!4279164 () Bool)

(assert (=> d!2222245 e!4279164))

(declare-fun res!2905364 () Bool)

(assert (=> d!2222245 (=> (not res!2905364) (not e!4279164))))

(declare-fun lt!2561824 () List!68991)

(assert (=> d!2222245 (= res!2905364 (noDuplicate!2778 lt!2561824))))

(assert (=> d!2222245 (= lt!2561824 (choose!54967 lt!2561777))))

(assert (=> d!2222245 (= (toList!11094 lt!2561777) lt!2561824)))

(declare-fun b!7121600 () Bool)

(assert (=> b!7121600 (= e!4279164 (= (content!14076 lt!2561824) lt!2561777))))

(assert (= (and d!2222245 res!2905364) b!7121600))

(declare-fun m!7838758 () Bool)

(assert (=> d!2222245 m!7838758))

(declare-fun m!7838760 () Bool)

(assert (=> d!2222245 m!7838760))

(declare-fun m!7838762 () Bool)

(assert (=> b!7121600 m!7838762))

(assert (=> start!693374 d!2222245))

(declare-fun d!2222247 () Bool)

(assert (=> d!2222247 (subseq!730 lt!2561775 lt!2561775)))

(declare-fun lt!2561827 () Unit!162683)

(declare-fun choose!54970 (List!68991) Unit!162683)

(assert (=> d!2222247 (= lt!2561827 (choose!54970 lt!2561775))))

(assert (=> d!2222247 (= (lemmaSubseqRefl!176 lt!2561775) lt!2561827)))

(declare-fun bs!1885962 () Bool)

(assert (= bs!1885962 d!2222247))

(assert (=> bs!1885962 m!7838672))

(declare-fun m!7838774 () Bool)

(assert (=> bs!1885962 m!7838774))

(assert (=> start!693374 d!2222247))

(declare-fun d!2222253 () Bool)

(assert (=> d!2222253 (= (map!16385 (set.union s1!402 s2!373) f!483) (choose!54968 (set.union s1!402 s2!373) f!483))))

(declare-fun bs!1885963 () Bool)

(assert (= bs!1885963 d!2222253))

(declare-fun m!7838776 () Bool)

(assert (=> bs!1885963 m!7838776))

(assert (=> start!693374 d!2222253))

(declare-fun d!2222255 () Bool)

(declare-fun res!2905369 () Bool)

(declare-fun e!4279169 () Bool)

(assert (=> d!2222255 (=> res!2905369 e!4279169)))

(assert (=> d!2222255 (= res!2905369 (is-Nil!68867 lt!2561778))))

(assert (=> d!2222255 (= (forall!16888 lt!2561778 lambda!432847) e!4279169)))

(declare-fun b!7121605 () Bool)

(declare-fun e!4279170 () Bool)

(assert (=> b!7121605 (= e!4279169 e!4279170)))

(declare-fun res!2905370 () Bool)

(assert (=> b!7121605 (=> (not res!2905370) (not e!4279170))))

(declare-fun dynLambda!28074 (Int B!3243) Bool)

(assert (=> b!7121605 (= res!2905370 (dynLambda!28074 lambda!432847 (h!75315 lt!2561778)))))

(declare-fun b!7121606 () Bool)

(assert (=> b!7121606 (= e!4279170 (forall!16888 (t!382898 lt!2561778) lambda!432847))))

(assert (= (and d!2222255 (not res!2905369)) b!7121605))

(assert (= (and b!7121605 res!2905370) b!7121606))

(declare-fun b_lambda!271675 () Bool)

(assert (=> (not b_lambda!271675) (not b!7121605)))

(declare-fun m!7838778 () Bool)

(assert (=> b!7121605 m!7838778))

(declare-fun m!7838780 () Bool)

(assert (=> b!7121606 m!7838780))

(assert (=> start!693374 d!2222255))

(declare-fun bs!1885964 () Bool)

(declare-fun d!2222257 () Bool)

(assert (= bs!1885964 (and d!2222257 start!693374)))

(declare-fun lambda!432867 () Int)

(assert (=> bs!1885964 (= lambda!432867 lambda!432846)))

(assert (=> bs!1885964 (= (= lt!2561778 lt!2561775) (= lambda!432867 lambda!432847))))

(declare-fun bs!1885965 () Bool)

(assert (= bs!1885965 (and d!2222257 d!2222229)))

(assert (=> bs!1885965 (= lambda!432867 lambda!432860)))

(declare-fun bs!1885966 () Bool)

(assert (= bs!1885966 (and d!2222257 d!2222239)))

(assert (=> bs!1885966 (= (= lt!2561778 lt!2561775) (= lambda!432867 lambda!432863))))

(assert (=> d!2222257 true))

(assert (=> d!2222257 (set.subset (content!14076 lt!2561775) (content!14076 lt!2561778))))

(declare-fun lt!2561828 () Unit!162683)

(assert (=> d!2222257 (= lt!2561828 (choose!54969 lt!2561775 lt!2561778))))

(assert (=> d!2222257 (forall!16888 lt!2561775 lambda!432867)))

(assert (=> d!2222257 (= (forallContainsSubset!33 lt!2561775 lt!2561778) lt!2561828)))

(declare-fun bs!1885967 () Bool)

(assert (= bs!1885967 d!2222257))

(assert (=> bs!1885967 m!7838744))

(assert (=> bs!1885967 m!7838742))

(declare-fun m!7838782 () Bool)

(assert (=> bs!1885967 m!7838782))

(declare-fun m!7838784 () Bool)

(assert (=> bs!1885967 m!7838784))

(assert (=> start!693374 d!2222257))

(declare-fun d!2222259 () Bool)

(assert (=> d!2222259 (= (map!16385 s2!373 f!483) (choose!54968 s2!373 f!483))))

(declare-fun bs!1885968 () Bool)

(assert (= bs!1885968 d!2222259))

(declare-fun m!7838786 () Bool)

(assert (=> bs!1885968 m!7838786))

(assert (=> start!693374 d!2222259))

(declare-fun bs!1885969 () Bool)

(declare-fun d!2222261 () Bool)

(assert (= bs!1885969 (and d!2222261 start!693374)))

(declare-fun lambda!432870 () Int)

(assert (=> bs!1885969 (= lambda!432870 lambda!432847)))

(declare-fun bs!1885970 () Bool)

(assert (= bs!1885970 (and d!2222261 d!2222229)))

(assert (=> bs!1885970 (= (= lt!2561775 lt!2561778) (= lambda!432870 lambda!432860))))

(declare-fun bs!1885971 () Bool)

(assert (= bs!1885971 (and d!2222261 d!2222239)))

(assert (=> bs!1885971 (= lambda!432870 lambda!432863)))

(assert (=> bs!1885969 (= (= lt!2561775 lt!2561778) (= lambda!432870 lambda!432846))))

(declare-fun bs!1885972 () Bool)

(assert (= bs!1885972 (and d!2222261 d!2222257)))

(assert (=> bs!1885972 (= (= lt!2561775 lt!2561778) (= lambda!432870 lambda!432867))))

(assert (=> d!2222261 true))

(assert (=> d!2222261 (forall!16888 lt!2561778 lambda!432870)))

(declare-fun lt!2561834 () Unit!162683)

(declare-fun choose!54972 ((Set A!585) (Set A!585) Int List!68991 List!68991) Unit!162683)

(assert (=> d!2222261 (= lt!2561834 (choose!54972 s1!402 s2!373 f!483 lt!2561778 lt!2561775))))

(assert (=> d!2222261 (subseq!730 lt!2561778 (toList!11094 (set.union (map!16385 s1!402 f!483) (map!16385 s2!373 f!483))))))

(assert (=> d!2222261 (= (lemmaMapAssociativeToList1!9 s1!402 s2!373 f!483 lt!2561778 lt!2561775) lt!2561834)))

(declare-fun bs!1885973 () Bool)

(assert (= bs!1885973 d!2222261))

(assert (=> bs!1885973 m!7838664))

(assert (=> bs!1885973 m!7838688))

(assert (=> bs!1885973 m!7838726))

(declare-fun m!7838798 () Bool)

(assert (=> bs!1885973 m!7838798))

(assert (=> bs!1885973 m!7838726))

(declare-fun m!7838800 () Bool)

(assert (=> bs!1885973 m!7838800))

(declare-fun m!7838802 () Bool)

(assert (=> bs!1885973 m!7838802))

(assert (=> start!693374 d!2222261))

(declare-fun d!2222267 () Bool)

(assert (=> d!2222267 (subseq!730 lt!2561778 lt!2561778)))

(declare-fun lt!2561835 () Unit!162683)

(assert (=> d!2222267 (= lt!2561835 (choose!54970 lt!2561778))))

(assert (=> d!2222267 (= (lemmaSubseqRefl!176 lt!2561778) lt!2561835)))

(declare-fun bs!1885974 () Bool)

(assert (= bs!1885974 d!2222267))

(assert (=> bs!1885974 m!7838670))

(declare-fun m!7838804 () Bool)

(assert (=> bs!1885974 m!7838804))

(assert (=> start!693374 d!2222267))

(declare-fun d!2222269 () Bool)

(declare-fun res!2905376 () Bool)

(declare-fun e!4279176 () Bool)

(assert (=> d!2222269 (=> res!2905376 e!4279176)))

(assert (=> d!2222269 (= res!2905376 (is-Nil!68867 lt!2561775))))

(assert (=> d!2222269 (= (forall!16888 lt!2561775 lambda!432846) e!4279176)))

(declare-fun b!7121612 () Bool)

(declare-fun e!4279177 () Bool)

(assert (=> b!7121612 (= e!4279176 e!4279177)))

(declare-fun res!2905377 () Bool)

(assert (=> b!7121612 (=> (not res!2905377) (not e!4279177))))

(assert (=> b!7121612 (= res!2905377 (dynLambda!28074 lambda!432846 (h!75315 lt!2561775)))))

(declare-fun b!7121613 () Bool)

(assert (=> b!7121613 (= e!4279177 (forall!16888 (t!382898 lt!2561775) lambda!432846))))

(assert (= (and d!2222269 (not res!2905376)) b!7121612))

(assert (= (and b!7121612 res!2905377) b!7121613))

(declare-fun b_lambda!271679 () Bool)

(assert (=> (not b_lambda!271679) (not b!7121612)))

(declare-fun m!7838806 () Bool)

(assert (=> b!7121612 m!7838806))

(declare-fun m!7838808 () Bool)

(assert (=> b!7121613 m!7838808))

(assert (=> start!693374 d!2222269))

(assert (=> b!7121564 d!2222255))

(assert (=> b!7121563 d!2222269))

(declare-fun condSetEmpty!50940 () Bool)

(assert (=> setNonEmpty!50930 (= condSetEmpty!50940 (= setRest!50930 (as set.empty (Set A!585))))))

(declare-fun setRes!50940 () Bool)

(assert (=> setNonEmpty!50930 (= tp!1960896 setRes!50940)))

(declare-fun setIsEmpty!50940 () Bool)

(assert (=> setIsEmpty!50940 setRes!50940))

(declare-fun setNonEmpty!50940 () Bool)

(declare-fun tp!1960909 () Bool)

(assert (=> setNonEmpty!50940 (= setRes!50940 (and tp!1960909 tp_is_empty!45325))))

(declare-fun setElem!50940 () A!585)

(declare-fun setRest!50940 () (Set A!585))

(assert (=> setNonEmpty!50940 (= setRest!50930 (set.union (set.insert setElem!50940 (as set.empty (Set A!585))) setRest!50940))))

(assert (= (and setNonEmpty!50930 condSetEmpty!50940) setIsEmpty!50940))

(assert (= (and setNonEmpty!50930 (not condSetEmpty!50940)) setNonEmpty!50940))

(declare-fun condSetEmpty!50941 () Bool)

(assert (=> setNonEmpty!50931 (= condSetEmpty!50941 (= setRest!50931 (as set.empty (Set A!585))))))

(declare-fun setRes!50941 () Bool)

(assert (=> setNonEmpty!50931 (= tp!1960897 setRes!50941)))

(declare-fun setIsEmpty!50941 () Bool)

(assert (=> setIsEmpty!50941 setRes!50941))

(declare-fun setNonEmpty!50941 () Bool)

(declare-fun tp!1960910 () Bool)

(assert (=> setNonEmpty!50941 (= setRes!50941 (and tp!1960910 tp_is_empty!45325))))

(declare-fun setElem!50941 () A!585)

(declare-fun setRest!50941 () (Set A!585))

(assert (=> setNonEmpty!50941 (= setRest!50931 (set.union (set.insert setElem!50941 (as set.empty (Set A!585))) setRest!50941))))

(assert (= (and setNonEmpty!50931 condSetEmpty!50941) setIsEmpty!50941))

(assert (= (and setNonEmpty!50931 (not condSetEmpty!50941)) setNonEmpty!50941))

(declare-fun b_lambda!271681 () Bool)

(assert (= b_lambda!271679 (or start!693374 b_lambda!271681)))

(declare-fun bs!1885975 () Bool)

(declare-fun d!2222271 () Bool)

(assert (= bs!1885975 (and d!2222271 start!693374)))

(declare-fun contains!20518 (List!68991 B!3243) Bool)

(assert (=> bs!1885975 (= (dynLambda!28074 lambda!432846 (h!75315 lt!2561775)) (contains!20518 lt!2561778 (h!75315 lt!2561775)))))

(declare-fun m!7838810 () Bool)

(assert (=> bs!1885975 m!7838810))

(assert (=> b!7121612 d!2222271))

(declare-fun b_lambda!271683 () Bool)

(assert (= b_lambda!271675 (or start!693374 b_lambda!271683)))

(declare-fun bs!1885976 () Bool)

(declare-fun d!2222273 () Bool)

(assert (= bs!1885976 (and d!2222273 start!693374)))

(assert (=> bs!1885976 (= (dynLambda!28074 lambda!432847 (h!75315 lt!2561778)) (contains!20518 lt!2561775 (h!75315 lt!2561778)))))

(declare-fun m!7838812 () Bool)

(assert (=> bs!1885976 m!7838812))

(assert (=> b!7121605 d!2222273))

(push 1)

(assert (not d!2222247))

(assert (not setNonEmpty!50940))

(assert (not b!7121598))

(assert (not bs!1885975))

(assert tp_is_empty!45325)

(assert b_and!350775)

(assert (not b!7121600))

(assert (not b!7121613))

(assert (not d!2222253))

(assert (not d!2222259))

(assert (not d!2222245))

(assert (not b_lambda!271681))

(assert (not b!7121583))

(assert (not b_next!134469))

(assert (not d!2222233))

(assert (not d!2222237))

(assert (not b!7121595))

(assert (not d!2222257))

(assert (not bs!1885976))

(assert (not b!7121599))

(assert (not b!7121594))

(assert (not d!2222261))

(assert (not d!2222229))

(assert (not b!7121606))

(assert (not d!2222267))

(assert (not setNonEmpty!50941))

(assert (not d!2222239))

(assert (not b_lambda!271683))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350775)

(assert (not b_next!134469))

(check-sat)

(pop 1)

