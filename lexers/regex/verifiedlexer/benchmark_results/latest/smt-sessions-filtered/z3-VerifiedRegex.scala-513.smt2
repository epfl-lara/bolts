; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14210 () Bool)

(assert start!14210)

(declare-fun b!135899 () Bool)

(declare-fun e!78969 () Bool)

(declare-datatypes ((B!873 0))(
  ( (B!874 (val!922 Int)) )
))
(declare-datatypes ((List!2240 0))(
  ( (Nil!2234) (Cons!2234 (h!7631 B!873) (t!22826 List!2240)) )
))
(declare-fun l1!1230 () List!2240)

(declare-fun isEmpty!876 (List!2240) Bool)

(assert (=> b!135899 (= e!78969 (not (isEmpty!876 l1!1230)))))

(declare-fun b!135900 () Bool)

(declare-fun res!63730 () Bool)

(declare-fun e!78970 () Bool)

(assert (=> b!135900 (=> (not res!63730) (not e!78970))))

(declare-fun sub!16 () List!2240)

(get-info :version)

(assert (=> b!135900 (= res!63730 (not ((_ is Nil!2234) sub!16)))))

(declare-fun b!135901 () Bool)

(declare-fun e!78965 () Bool)

(declare-fun tp_is_empty!1517 () Bool)

(declare-fun tp!71052 () Bool)

(assert (=> b!135901 (= e!78965 (and tp_is_empty!1517 tp!71052))))

(declare-fun b!135902 () Bool)

(declare-fun res!63727 () Bool)

(declare-fun e!78967 () Bool)

(assert (=> b!135902 (=> (not res!63727) (not e!78967))))

(declare-fun lt!40811 () Bool)

(assert (=> b!135902 (= res!63727 (not lt!40811))))

(declare-fun b!135903 () Bool)

(declare-fun e!78968 () Bool)

(declare-fun tp!71051 () Bool)

(assert (=> b!135903 (= e!78968 (and tp_is_empty!1517 tp!71051))))

(declare-fun b!135905 () Bool)

(declare-fun l2!1199 () List!2240)

(declare-fun subseq!81 (List!2240 List!2240) Bool)

(declare-fun ++!508 (List!2240 List!2240) List!2240)

(declare-fun tail!302 (List!2240) List!2240)

(assert (=> b!135905 (= e!78967 (not (subseq!81 sub!16 (++!508 (tail!302 l1!1230) l2!1199))))))

(declare-fun b!135906 () Bool)

(declare-fun e!78971 () Bool)

(declare-fun lt!40812 () List!2240)

(assert (=> b!135906 (= e!78971 (not (subseq!81 (t!22826 sub!16) (t!22826 lt!40812))))))

(declare-fun b!135907 () Bool)

(declare-fun res!63728 () Bool)

(assert (=> b!135907 (=> (not res!63728) (not e!78967))))

(assert (=> b!135907 (= res!63728 e!78971)))

(declare-fun res!63729 () Bool)

(assert (=> b!135907 (=> res!63729 e!78971)))

(assert (=> b!135907 (= res!63729 (or lt!40811 (not (= (h!7631 sub!16) (h!7631 lt!40812)))))))

(declare-fun b!135908 () Bool)

(assert (=> b!135908 (= e!78970 e!78967)))

(declare-fun res!63724 () Bool)

(assert (=> b!135908 (=> (not res!63724) (not e!78967))))

(assert (=> b!135908 (= res!63724 e!78969)))

(declare-fun res!63726 () Bool)

(assert (=> b!135908 (=> res!63726 e!78969)))

(assert (=> b!135908 (= res!63726 lt!40811)))

(assert (=> b!135908 (= lt!40811 (not ((_ is Cons!2234) lt!40812)))))

(declare-fun b!135904 () Bool)

(declare-fun e!78966 () Bool)

(declare-fun tp!71050 () Bool)

(assert (=> b!135904 (= e!78966 (and tp_is_empty!1517 tp!71050))))

(declare-fun res!63725 () Bool)

(assert (=> start!14210 (=> (not res!63725) (not e!78970))))

(assert (=> start!14210 (= res!63725 (subseq!81 sub!16 lt!40812))))

(assert (=> start!14210 (= lt!40812 (++!508 l1!1230 l2!1199))))

(assert (=> start!14210 e!78970))

(assert (=> start!14210 e!78966))

(assert (=> start!14210 e!78965))

(assert (=> start!14210 e!78968))

(assert (= (and start!14210 res!63725) b!135900))

(assert (= (and b!135900 res!63730) b!135908))

(assert (= (and b!135908 (not res!63726)) b!135899))

(assert (= (and b!135908 res!63724) b!135907))

(assert (= (and b!135907 (not res!63729)) b!135906))

(assert (= (and b!135907 res!63728) b!135902))

(assert (= (and b!135902 res!63727) b!135905))

(assert (= (and start!14210 ((_ is Cons!2234) l1!1230)) b!135904))

(assert (= (and start!14210 ((_ is Cons!2234) l2!1199)) b!135901))

(assert (= (and start!14210 ((_ is Cons!2234) sub!16)) b!135903))

(declare-fun m!120583 () Bool)

(assert (=> b!135899 m!120583))

(declare-fun m!120585 () Bool)

(assert (=> b!135905 m!120585))

(assert (=> b!135905 m!120585))

(declare-fun m!120587 () Bool)

(assert (=> b!135905 m!120587))

(assert (=> b!135905 m!120587))

(declare-fun m!120589 () Bool)

(assert (=> b!135905 m!120589))

(declare-fun m!120591 () Bool)

(assert (=> b!135906 m!120591))

(declare-fun m!120593 () Bool)

(assert (=> start!14210 m!120593))

(declare-fun m!120595 () Bool)

(assert (=> start!14210 m!120595))

(check-sat (not b!135903) (not b!135905) (not b!135899) (not b!135901) (not b!135904) (not start!14210) (not b!135906) tp_is_empty!1517)
(check-sat)
(get-model)

(declare-fun d!32582 () Bool)

(declare-fun res!63754 () Bool)

(declare-fun e!78994 () Bool)

(assert (=> d!32582 (=> res!63754 e!78994)))

(assert (=> d!32582 (= res!63754 ((_ is Nil!2234) (t!22826 sub!16)))))

(assert (=> d!32582 (= (subseq!81 (t!22826 sub!16) (t!22826 lt!40812)) e!78994)))

(declare-fun b!135931 () Bool)

(declare-fun e!78993 () Bool)

(assert (=> b!135931 (= e!78993 (subseq!81 (t!22826 (t!22826 sub!16)) (t!22826 (t!22826 lt!40812))))))

(declare-fun b!135930 () Bool)

(declare-fun e!78995 () Bool)

(declare-fun e!78992 () Bool)

(assert (=> b!135930 (= e!78995 e!78992)))

(declare-fun res!63751 () Bool)

(assert (=> b!135930 (=> res!63751 e!78992)))

(assert (=> b!135930 (= res!63751 e!78993)))

(declare-fun res!63752 () Bool)

(assert (=> b!135930 (=> (not res!63752) (not e!78993))))

(assert (=> b!135930 (= res!63752 (= (h!7631 (t!22826 sub!16)) (h!7631 (t!22826 lt!40812))))))

(declare-fun b!135932 () Bool)

(assert (=> b!135932 (= e!78992 (subseq!81 (t!22826 sub!16) (t!22826 (t!22826 lt!40812))))))

(declare-fun b!135929 () Bool)

(assert (=> b!135929 (= e!78994 e!78995)))

(declare-fun res!63753 () Bool)

(assert (=> b!135929 (=> (not res!63753) (not e!78995))))

(assert (=> b!135929 (= res!63753 ((_ is Cons!2234) (t!22826 lt!40812)))))

(assert (= (and d!32582 (not res!63754)) b!135929))

(assert (= (and b!135929 res!63753) b!135930))

(assert (= (and b!135930 res!63752) b!135931))

(assert (= (and b!135930 (not res!63751)) b!135932))

(declare-fun m!120601 () Bool)

(assert (=> b!135931 m!120601))

(declare-fun m!120603 () Bool)

(assert (=> b!135932 m!120603))

(assert (=> b!135906 d!32582))

(declare-fun d!32586 () Bool)

(declare-fun res!63758 () Bool)

(declare-fun e!78998 () Bool)

(assert (=> d!32586 (=> res!63758 e!78998)))

(assert (=> d!32586 (= res!63758 ((_ is Nil!2234) sub!16))))

(assert (=> d!32586 (= (subseq!81 sub!16 lt!40812) e!78998)))

(declare-fun b!135935 () Bool)

(declare-fun e!78997 () Bool)

(assert (=> b!135935 (= e!78997 (subseq!81 (t!22826 sub!16) (t!22826 lt!40812)))))

(declare-fun b!135934 () Bool)

(declare-fun e!78999 () Bool)

(declare-fun e!78996 () Bool)

(assert (=> b!135934 (= e!78999 e!78996)))

(declare-fun res!63755 () Bool)

(assert (=> b!135934 (=> res!63755 e!78996)))

(assert (=> b!135934 (= res!63755 e!78997)))

(declare-fun res!63756 () Bool)

(assert (=> b!135934 (=> (not res!63756) (not e!78997))))

(assert (=> b!135934 (= res!63756 (= (h!7631 sub!16) (h!7631 lt!40812)))))

(declare-fun b!135936 () Bool)

(assert (=> b!135936 (= e!78996 (subseq!81 sub!16 (t!22826 lt!40812)))))

(declare-fun b!135933 () Bool)

(assert (=> b!135933 (= e!78998 e!78999)))

(declare-fun res!63757 () Bool)

(assert (=> b!135933 (=> (not res!63757) (not e!78999))))

(assert (=> b!135933 (= res!63757 ((_ is Cons!2234) lt!40812))))

(assert (= (and d!32586 (not res!63758)) b!135933))

(assert (= (and b!135933 res!63757) b!135934))

(assert (= (and b!135934 res!63756) b!135935))

(assert (= (and b!135934 (not res!63755)) b!135936))

(assert (=> b!135935 m!120591))

(declare-fun m!120605 () Bool)

(assert (=> b!135936 m!120605))

(assert (=> start!14210 d!32586))

(declare-fun d!32588 () Bool)

(declare-fun e!79023 () Bool)

(assert (=> d!32588 e!79023))

(declare-fun res!63780 () Bool)

(assert (=> d!32588 (=> (not res!63780) (not e!79023))))

(declare-fun lt!40819 () List!2240)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!335 (List!2240) (InoxSet B!873))

(assert (=> d!32588 (= res!63780 (= (content!335 lt!40819) ((_ map or) (content!335 l1!1230) (content!335 l2!1199))))))

(declare-fun e!79022 () List!2240)

(assert (=> d!32588 (= lt!40819 e!79022)))

(declare-fun c!28873 () Bool)

(assert (=> d!32588 (= c!28873 ((_ is Nil!2234) l1!1230))))

(assert (=> d!32588 (= (++!508 l1!1230 l2!1199) lt!40819)))

(declare-fun b!135975 () Bool)

(declare-fun res!63779 () Bool)

(assert (=> b!135975 (=> (not res!63779) (not e!79023))))

(declare-fun size!2023 (List!2240) Int)

(assert (=> b!135975 (= res!63779 (= (size!2023 lt!40819) (+ (size!2023 l1!1230) (size!2023 l2!1199))))))

(declare-fun b!135974 () Bool)

(assert (=> b!135974 (= e!79022 (Cons!2234 (h!7631 l1!1230) (++!508 (t!22826 l1!1230) l2!1199)))))

(declare-fun b!135973 () Bool)

(assert (=> b!135973 (= e!79022 l2!1199)))

(declare-fun b!135976 () Bool)

(assert (=> b!135976 (= e!79023 (or (not (= l2!1199 Nil!2234)) (= lt!40819 l1!1230)))))

(assert (= (and d!32588 c!28873) b!135973))

(assert (= (and d!32588 (not c!28873)) b!135974))

(assert (= (and d!32588 res!63780) b!135975))

(assert (= (and b!135975 res!63779) b!135976))

(declare-fun m!120637 () Bool)

(assert (=> d!32588 m!120637))

(declare-fun m!120639 () Bool)

(assert (=> d!32588 m!120639))

(declare-fun m!120641 () Bool)

(assert (=> d!32588 m!120641))

(declare-fun m!120643 () Bool)

(assert (=> b!135975 m!120643))

(declare-fun m!120645 () Bool)

(assert (=> b!135975 m!120645))

(declare-fun m!120647 () Bool)

(assert (=> b!135975 m!120647))

(declare-fun m!120649 () Bool)

(assert (=> b!135974 m!120649))

(assert (=> start!14210 d!32588))

(declare-fun d!32598 () Bool)

(assert (=> d!32598 (= (isEmpty!876 l1!1230) ((_ is Nil!2234) l1!1230))))

(assert (=> b!135899 d!32598))

(declare-fun d!32600 () Bool)

(declare-fun res!63784 () Bool)

(declare-fun e!79029 () Bool)

(assert (=> d!32600 (=> res!63784 e!79029)))

(assert (=> d!32600 (= res!63784 ((_ is Nil!2234) sub!16))))

(assert (=> d!32600 (= (subseq!81 sub!16 (++!508 (tail!302 l1!1230) l2!1199)) e!79029)))

(declare-fun e!79028 () Bool)

(declare-fun b!135982 () Bool)

(assert (=> b!135982 (= e!79028 (subseq!81 (t!22826 sub!16) (t!22826 (++!508 (tail!302 l1!1230) l2!1199))))))

(declare-fun b!135981 () Bool)

(declare-fun e!79030 () Bool)

(declare-fun e!79027 () Bool)

(assert (=> b!135981 (= e!79030 e!79027)))

(declare-fun res!63781 () Bool)

(assert (=> b!135981 (=> res!63781 e!79027)))

(assert (=> b!135981 (= res!63781 e!79028)))

(declare-fun res!63782 () Bool)

(assert (=> b!135981 (=> (not res!63782) (not e!79028))))

(assert (=> b!135981 (= res!63782 (= (h!7631 sub!16) (h!7631 (++!508 (tail!302 l1!1230) l2!1199))))))

(declare-fun b!135983 () Bool)

(assert (=> b!135983 (= e!79027 (subseq!81 sub!16 (t!22826 (++!508 (tail!302 l1!1230) l2!1199))))))

(declare-fun b!135980 () Bool)

(assert (=> b!135980 (= e!79029 e!79030)))

(declare-fun res!63783 () Bool)

(assert (=> b!135980 (=> (not res!63783) (not e!79030))))

(assert (=> b!135980 (= res!63783 ((_ is Cons!2234) (++!508 (tail!302 l1!1230) l2!1199)))))

(assert (= (and d!32600 (not res!63784)) b!135980))

(assert (= (and b!135980 res!63783) b!135981))

(assert (= (and b!135981 res!63782) b!135982))

(assert (= (and b!135981 (not res!63781)) b!135983))

(declare-fun m!120651 () Bool)

(assert (=> b!135982 m!120651))

(declare-fun m!120653 () Bool)

(assert (=> b!135983 m!120653))

(assert (=> b!135905 d!32600))

(declare-fun d!32602 () Bool)

(declare-fun e!79032 () Bool)

(assert (=> d!32602 e!79032))

(declare-fun res!63786 () Bool)

(assert (=> d!32602 (=> (not res!63786) (not e!79032))))

(declare-fun lt!40820 () List!2240)

(assert (=> d!32602 (= res!63786 (= (content!335 lt!40820) ((_ map or) (content!335 (tail!302 l1!1230)) (content!335 l2!1199))))))

(declare-fun e!79031 () List!2240)

(assert (=> d!32602 (= lt!40820 e!79031)))

(declare-fun c!28874 () Bool)

(assert (=> d!32602 (= c!28874 ((_ is Nil!2234) (tail!302 l1!1230)))))

(assert (=> d!32602 (= (++!508 (tail!302 l1!1230) l2!1199) lt!40820)))

(declare-fun b!135986 () Bool)

(declare-fun res!63785 () Bool)

(assert (=> b!135986 (=> (not res!63785) (not e!79032))))

(assert (=> b!135986 (= res!63785 (= (size!2023 lt!40820) (+ (size!2023 (tail!302 l1!1230)) (size!2023 l2!1199))))))

(declare-fun b!135985 () Bool)

(assert (=> b!135985 (= e!79031 (Cons!2234 (h!7631 (tail!302 l1!1230)) (++!508 (t!22826 (tail!302 l1!1230)) l2!1199)))))

(declare-fun b!135984 () Bool)

(assert (=> b!135984 (= e!79031 l2!1199)))

(declare-fun b!135987 () Bool)

(assert (=> b!135987 (= e!79032 (or (not (= l2!1199 Nil!2234)) (= lt!40820 (tail!302 l1!1230))))))

(assert (= (and d!32602 c!28874) b!135984))

(assert (= (and d!32602 (not c!28874)) b!135985))

(assert (= (and d!32602 res!63786) b!135986))

(assert (= (and b!135986 res!63785) b!135987))

(declare-fun m!120655 () Bool)

(assert (=> d!32602 m!120655))

(assert (=> d!32602 m!120585))

(declare-fun m!120657 () Bool)

(assert (=> d!32602 m!120657))

(assert (=> d!32602 m!120641))

(declare-fun m!120659 () Bool)

(assert (=> b!135986 m!120659))

(assert (=> b!135986 m!120585))

(declare-fun m!120661 () Bool)

(assert (=> b!135986 m!120661))

(assert (=> b!135986 m!120647))

(declare-fun m!120663 () Bool)

(assert (=> b!135985 m!120663))

(assert (=> b!135905 d!32602))

(declare-fun d!32604 () Bool)

(assert (=> d!32604 (= (tail!302 l1!1230) (t!22826 l1!1230))))

(assert (=> b!135905 d!32604))

(declare-fun b!135992 () Bool)

(declare-fun e!79035 () Bool)

(declare-fun tp!71060 () Bool)

(assert (=> b!135992 (= e!79035 (and tp_is_empty!1517 tp!71060))))

(assert (=> b!135901 (= tp!71052 e!79035)))

(assert (= (and b!135901 ((_ is Cons!2234) (t!22826 l2!1199))) b!135992))

(declare-fun b!135993 () Bool)

(declare-fun e!79036 () Bool)

(declare-fun tp!71061 () Bool)

(assert (=> b!135993 (= e!79036 (and tp_is_empty!1517 tp!71061))))

(assert (=> b!135903 (= tp!71051 e!79036)))

(assert (= (and b!135903 ((_ is Cons!2234) (t!22826 sub!16))) b!135993))

(declare-fun b!135994 () Bool)

(declare-fun e!79037 () Bool)

(declare-fun tp!71062 () Bool)

(assert (=> b!135994 (= e!79037 (and tp_is_empty!1517 tp!71062))))

(assert (=> b!135904 (= tp!71050 e!79037)))

(assert (= (and b!135904 ((_ is Cons!2234) (t!22826 l1!1230))) b!135994))

(check-sat (not b!135974) (not b!135993) (not b!135994) tp_is_empty!1517 (not b!135931) (not b!135983) (not b!135986) (not b!135975) (not d!32602) (not b!135936) (not b!135985) (not b!135935) (not d!32588) (not b!135932) (not b!135992) (not b!135982))
(check-sat)
