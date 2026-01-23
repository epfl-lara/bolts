; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14058 () Bool)

(assert start!14058)

(declare-fun b!134718 () Bool)

(declare-fun e!78099 () Bool)

(declare-datatypes ((B!837 0))(
  ( (B!838 (val!904 Int)) )
))
(declare-datatypes ((List!2222 0))(
  ( (Nil!2216) (Cons!2216 (h!7613 B!837) (t!22808 List!2222)) )
))
(declare-fun l1!1230 () List!2222)

(declare-fun isEmpty!862 (List!2222) Bool)

(assert (=> b!134718 (= e!78099 (not (isEmpty!862 l1!1230)))))

(declare-fun res!63014 () Bool)

(declare-fun e!78105 () Bool)

(assert (=> start!14058 (=> (not res!63014) (not e!78105))))

(declare-fun sub!16 () List!2222)

(declare-fun lt!40605 () List!2222)

(declare-fun subseq!63 (List!2222 List!2222) Bool)

(assert (=> start!14058 (= res!63014 (subseq!63 sub!16 lt!40605))))

(declare-fun l2!1199 () List!2222)

(declare-fun ++!490 (List!2222 List!2222) List!2222)

(assert (=> start!14058 (= lt!40605 (++!490 l1!1230 l2!1199))))

(assert (=> start!14058 e!78105))

(declare-fun e!78102 () Bool)

(assert (=> start!14058 e!78102))

(declare-fun e!78100 () Bool)

(assert (=> start!14058 e!78100))

(declare-fun e!78104 () Bool)

(assert (=> start!14058 e!78104))

(declare-fun b!134719 () Bool)

(declare-fun res!63013 () Bool)

(assert (=> b!134719 (=> (not res!63013) (not e!78105))))

(get-info :version)

(assert (=> b!134719 (= res!63013 (not ((_ is Nil!2216) sub!16)))))

(declare-fun b!134720 () Bool)

(declare-fun e!78101 () Bool)

(declare-fun lt!40606 () Bool)

(assert (=> b!134720 (= e!78101 (and (not lt!40606) (= l1!1230 Nil!2216)))))

(declare-fun b!134721 () Bool)

(assert (=> b!134721 (= e!78105 e!78101)))

(declare-fun res!63018 () Bool)

(assert (=> b!134721 (=> (not res!63018) (not e!78101))))

(assert (=> b!134721 (= res!63018 e!78099)))

(declare-fun res!63017 () Bool)

(assert (=> b!134721 (=> res!63017 e!78099)))

(assert (=> b!134721 (= res!63017 lt!40606)))

(assert (=> b!134721 (= lt!40606 (not ((_ is Cons!2216) lt!40605)))))

(declare-fun b!134722 () Bool)

(declare-fun res!63015 () Bool)

(assert (=> b!134722 (=> (not res!63015) (not e!78101))))

(declare-fun e!78103 () Bool)

(assert (=> b!134722 (= res!63015 e!78103)))

(declare-fun res!63016 () Bool)

(assert (=> b!134722 (=> res!63016 e!78103)))

(assert (=> b!134722 (= res!63016 (or lt!40606 (not (= (h!7613 sub!16) (h!7613 lt!40605)))))))

(declare-fun b!134723 () Bool)

(declare-fun tp_is_empty!1481 () Bool)

(declare-fun tp!70784 () Bool)

(assert (=> b!134723 (= e!78104 (and tp_is_empty!1481 tp!70784))))

(declare-fun b!134724 () Bool)

(declare-fun tp!70786 () Bool)

(assert (=> b!134724 (= e!78100 (and tp_is_empty!1481 tp!70786))))

(declare-fun b!134725 () Bool)

(declare-fun tp!70785 () Bool)

(assert (=> b!134725 (= e!78102 (and tp_is_empty!1481 tp!70785))))

(declare-fun b!134726 () Bool)

(assert (=> b!134726 (= e!78103 (not (subseq!63 (t!22808 sub!16) (t!22808 lt!40605))))))

(assert (= (and start!14058 res!63014) b!134719))

(assert (= (and b!134719 res!63013) b!134721))

(assert (= (and b!134721 (not res!63017)) b!134718))

(assert (= (and b!134721 res!63018) b!134722))

(assert (= (and b!134722 (not res!63016)) b!134726))

(assert (= (and b!134722 res!63015) b!134720))

(assert (= (and start!14058 ((_ is Cons!2216) l1!1230)) b!134725))

(assert (= (and start!14058 ((_ is Cons!2216) l2!1199)) b!134724))

(assert (= (and start!14058 ((_ is Cons!2216) sub!16)) b!134723))

(declare-fun m!119697 () Bool)

(assert (=> b!134718 m!119697))

(declare-fun m!119699 () Bool)

(assert (=> start!14058 m!119699))

(declare-fun m!119701 () Bool)

(assert (=> start!14058 m!119701))

(declare-fun m!119703 () Bool)

(assert (=> b!134726 m!119703))

(check-sat (not b!134726) tp_is_empty!1481 (not b!134725) (not b!134723) (not b!134724) (not start!14058) (not b!134718))
(check-sat)
(get-model)

(declare-fun b!134744 () Bool)

(declare-fun e!78123 () Bool)

(declare-fun e!78125 () Bool)

(assert (=> b!134744 (= e!78123 e!78125)))

(declare-fun res!63038 () Bool)

(assert (=> b!134744 (=> res!63038 e!78125)))

(declare-fun e!78122 () Bool)

(assert (=> b!134744 (= res!63038 e!78122)))

(declare-fun res!63036 () Bool)

(assert (=> b!134744 (=> (not res!63036) (not e!78122))))

(assert (=> b!134744 (= res!63036 (= (h!7613 (t!22808 sub!16)) (h!7613 (t!22808 lt!40605))))))

(declare-fun d!32345 () Bool)

(declare-fun res!63035 () Bool)

(declare-fun e!78124 () Bool)

(assert (=> d!32345 (=> res!63035 e!78124)))

(assert (=> d!32345 (= res!63035 ((_ is Nil!2216) (t!22808 sub!16)))))

(assert (=> d!32345 (= (subseq!63 (t!22808 sub!16) (t!22808 lt!40605)) e!78124)))

(declare-fun b!134746 () Bool)

(assert (=> b!134746 (= e!78125 (subseq!63 (t!22808 sub!16) (t!22808 (t!22808 lt!40605))))))

(declare-fun b!134745 () Bool)

(assert (=> b!134745 (= e!78122 (subseq!63 (t!22808 (t!22808 sub!16)) (t!22808 (t!22808 lt!40605))))))

(declare-fun b!134743 () Bool)

(assert (=> b!134743 (= e!78124 e!78123)))

(declare-fun res!63037 () Bool)

(assert (=> b!134743 (=> (not res!63037) (not e!78123))))

(assert (=> b!134743 (= res!63037 ((_ is Cons!2216) (t!22808 lt!40605)))))

(assert (= (and d!32345 (not res!63035)) b!134743))

(assert (= (and b!134743 res!63037) b!134744))

(assert (= (and b!134744 res!63036) b!134745))

(assert (= (and b!134744 (not res!63038)) b!134746))

(declare-fun m!119705 () Bool)

(assert (=> b!134746 m!119705))

(declare-fun m!119707 () Bool)

(assert (=> b!134745 m!119707))

(assert (=> b!134726 d!32345))

(declare-fun b!134748 () Bool)

(declare-fun e!78127 () Bool)

(declare-fun e!78129 () Bool)

(assert (=> b!134748 (= e!78127 e!78129)))

(declare-fun res!63042 () Bool)

(assert (=> b!134748 (=> res!63042 e!78129)))

(declare-fun e!78126 () Bool)

(assert (=> b!134748 (= res!63042 e!78126)))

(declare-fun res!63040 () Bool)

(assert (=> b!134748 (=> (not res!63040) (not e!78126))))

(assert (=> b!134748 (= res!63040 (= (h!7613 sub!16) (h!7613 lt!40605)))))

(declare-fun d!32349 () Bool)

(declare-fun res!63039 () Bool)

(declare-fun e!78128 () Bool)

(assert (=> d!32349 (=> res!63039 e!78128)))

(assert (=> d!32349 (= res!63039 ((_ is Nil!2216) sub!16))))

(assert (=> d!32349 (= (subseq!63 sub!16 lt!40605) e!78128)))

(declare-fun b!134750 () Bool)

(assert (=> b!134750 (= e!78129 (subseq!63 sub!16 (t!22808 lt!40605)))))

(declare-fun b!134749 () Bool)

(assert (=> b!134749 (= e!78126 (subseq!63 (t!22808 sub!16) (t!22808 lt!40605)))))

(declare-fun b!134747 () Bool)

(assert (=> b!134747 (= e!78128 e!78127)))

(declare-fun res!63041 () Bool)

(assert (=> b!134747 (=> (not res!63041) (not e!78127))))

(assert (=> b!134747 (= res!63041 ((_ is Cons!2216) lt!40605))))

(assert (= (and d!32349 (not res!63039)) b!134747))

(assert (= (and b!134747 res!63041) b!134748))

(assert (= (and b!134748 res!63040) b!134749))

(assert (= (and b!134748 (not res!63042)) b!134750))

(declare-fun m!119709 () Bool)

(assert (=> b!134750 m!119709))

(assert (=> b!134749 m!119703))

(assert (=> start!14058 d!32349))

(declare-fun e!78142 () Bool)

(declare-fun b!134774 () Bool)

(declare-fun lt!40611 () List!2222)

(assert (=> b!134774 (= e!78142 (or (not (= l2!1199 Nil!2216)) (= lt!40611 l1!1230)))))

(declare-fun b!134771 () Bool)

(declare-fun e!78143 () List!2222)

(assert (=> b!134771 (= e!78143 l2!1199)))

(declare-fun b!134773 () Bool)

(declare-fun res!63056 () Bool)

(assert (=> b!134773 (=> (not res!63056) (not e!78142))))

(declare-fun size!2006 (List!2222) Int)

(assert (=> b!134773 (= res!63056 (= (size!2006 lt!40611) (+ (size!2006 l1!1230) (size!2006 l2!1199))))))

(declare-fun b!134772 () Bool)

(assert (=> b!134772 (= e!78143 (Cons!2216 (h!7613 l1!1230) (++!490 (t!22808 l1!1230) l2!1199)))))

(declare-fun d!32351 () Bool)

(assert (=> d!32351 e!78142))

(declare-fun res!63055 () Bool)

(assert (=> d!32351 (=> (not res!63055) (not e!78142))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!319 (List!2222) (InoxSet B!837))

(assert (=> d!32351 (= res!63055 (= (content!319 lt!40611) ((_ map or) (content!319 l1!1230) (content!319 l2!1199))))))

(assert (=> d!32351 (= lt!40611 e!78143)))

(declare-fun c!28785 () Bool)

(assert (=> d!32351 (= c!28785 ((_ is Nil!2216) l1!1230))))

(assert (=> d!32351 (= (++!490 l1!1230 l2!1199) lt!40611)))

(assert (= (and d!32351 c!28785) b!134771))

(assert (= (and d!32351 (not c!28785)) b!134772))

(assert (= (and d!32351 res!63055) b!134773))

(assert (= (and b!134773 res!63056) b!134774))

(declare-fun m!119713 () Bool)

(assert (=> b!134773 m!119713))

(declare-fun m!119715 () Bool)

(assert (=> b!134773 m!119715))

(declare-fun m!119717 () Bool)

(assert (=> b!134773 m!119717))

(declare-fun m!119719 () Bool)

(assert (=> b!134772 m!119719))

(declare-fun m!119721 () Bool)

(assert (=> d!32351 m!119721))

(declare-fun m!119723 () Bool)

(assert (=> d!32351 m!119723))

(declare-fun m!119725 () Bool)

(assert (=> d!32351 m!119725))

(assert (=> start!14058 d!32351))

(declare-fun d!32355 () Bool)

(assert (=> d!32355 (= (isEmpty!862 l1!1230) ((_ is Nil!2216) l1!1230))))

(assert (=> b!134718 d!32355))

(declare-fun b!134787 () Bool)

(declare-fun e!78152 () Bool)

(declare-fun tp!70789 () Bool)

(assert (=> b!134787 (= e!78152 (and tp_is_empty!1481 tp!70789))))

(assert (=> b!134723 (= tp!70784 e!78152)))

(assert (= (and b!134723 ((_ is Cons!2216) (t!22808 sub!16))) b!134787))

(declare-fun b!134788 () Bool)

(declare-fun e!78153 () Bool)

(declare-fun tp!70790 () Bool)

(assert (=> b!134788 (= e!78153 (and tp_is_empty!1481 tp!70790))))

(assert (=> b!134724 (= tp!70786 e!78153)))

(assert (= (and b!134724 ((_ is Cons!2216) (t!22808 l2!1199))) b!134788))

(declare-fun b!134789 () Bool)

(declare-fun e!78154 () Bool)

(declare-fun tp!70791 () Bool)

(assert (=> b!134789 (= e!78154 (and tp_is_empty!1481 tp!70791))))

(assert (=> b!134725 (= tp!70785 e!78154)))

(assert (= (and b!134725 ((_ is Cons!2216) (t!22808 l1!1230))) b!134789))

(check-sat (not b!134750) tp_is_empty!1481 (not b!134746) (not b!134749) (not b!134788) (not b!134773) (not b!134772) (not b!134787) (not b!134745) (not b!134789) (not d!32351))
(check-sat)
