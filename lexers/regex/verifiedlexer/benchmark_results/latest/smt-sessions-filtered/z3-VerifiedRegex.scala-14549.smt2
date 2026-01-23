; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755140 () Bool)

(assert start!755140)

(declare-fun b!8022066 () Bool)

(declare-fun res!3172114 () Bool)

(declare-fun e!4725691 () Bool)

(assert (=> b!8022066 (=> (not res!3172114) (not e!4725691))))

(declare-datatypes ((B!4213 0))(
  ( (B!4214 (val!32496 Int)) )
))
(declare-datatypes ((List!75008 0))(
  ( (Nil!74884) (Cons!74884 (h!81332 B!4213) (t!390751 List!75008)) )
))
(declare-fun p1!179 () List!75008)

(declare-fun p2!179 () List!75008)

(assert (=> b!8022066 (= res!3172114 (= p1!179 p2!179))))

(declare-fun res!3172115 () Bool)

(assert (=> start!755140 (=> (not res!3172115) (not e!4725691))))

(declare-fun l!3411 () List!75008)

(declare-fun isPrefix!6815 (List!75008 List!75008) Bool)

(assert (=> start!755140 (= res!3172115 (isPrefix!6815 p1!179 l!3411))))

(assert (=> start!755140 e!4725691))

(declare-fun e!4725688 () Bool)

(assert (=> start!755140 e!4725688))

(declare-fun e!4725693 () Bool)

(assert (=> start!755140 e!4725693))

(declare-fun e!4725692 () Bool)

(assert (=> start!755140 e!4725692))

(declare-fun e!4725690 () Bool)

(assert (=> start!755140 e!4725690))

(declare-fun e!4725689 () Bool)

(assert (=> start!755140 e!4725689))

(declare-fun b!8022067 () Bool)

(declare-fun tp_is_empty!54101 () Bool)

(declare-fun tp!2400914 () Bool)

(assert (=> b!8022067 (= e!4725688 (and tp_is_empty!54101 tp!2400914))))

(declare-fun b!8022068 () Bool)

(declare-fun tp!2400913 () Bool)

(assert (=> b!8022068 (= e!4725690 (and tp_is_empty!54101 tp!2400913))))

(declare-fun b!8022069 () Bool)

(declare-fun tp!2400915 () Bool)

(assert (=> b!8022069 (= e!4725693 (and tp_is_empty!54101 tp!2400915))))

(declare-fun b!8022070 () Bool)

(declare-fun ListPrimitiveSize!501 (List!75008) Int)

(assert (=> b!8022070 (= e!4725691 (< (ListPrimitiveSize!501 p1!179) 0))))

(declare-fun b!8022071 () Bool)

(declare-fun tp!2400912 () Bool)

(assert (=> b!8022071 (= e!4725689 (and tp_is_empty!54101 tp!2400912))))

(declare-fun b!8022072 () Bool)

(declare-fun res!3172117 () Bool)

(assert (=> b!8022072 (=> (not res!3172117) (not e!4725691))))

(declare-fun s1!490 () List!75008)

(declare-fun ++!18552 (List!75008 List!75008) List!75008)

(assert (=> b!8022072 (= res!3172117 (= (++!18552 p1!179 s1!490) l!3411))))

(declare-fun b!8022073 () Bool)

(declare-fun res!3172116 () Bool)

(assert (=> b!8022073 (=> (not res!3172116) (not e!4725691))))

(declare-fun s2!455 () List!75008)

(assert (=> b!8022073 (= res!3172116 (= (++!18552 p2!179 s2!455) l!3411))))

(declare-fun b!8022074 () Bool)

(declare-fun tp!2400911 () Bool)

(assert (=> b!8022074 (= e!4725692 (and tp_is_empty!54101 tp!2400911))))

(declare-fun b!8022075 () Bool)

(declare-fun res!3172118 () Bool)

(assert (=> b!8022075 (=> (not res!3172118) (not e!4725691))))

(assert (=> b!8022075 (= res!3172118 (isPrefix!6815 p2!179 l!3411))))

(assert (= (and start!755140 res!3172115) b!8022075))

(assert (= (and b!8022075 res!3172118) b!8022072))

(assert (= (and b!8022072 res!3172117) b!8022073))

(assert (= (and b!8022073 res!3172116) b!8022066))

(assert (= (and b!8022066 res!3172114) b!8022070))

(get-info :version)

(assert (= (and start!755140 ((_ is Cons!74884) p2!179)) b!8022067))

(assert (= (and start!755140 ((_ is Cons!74884) s2!455)) b!8022069))

(assert (= (and start!755140 ((_ is Cons!74884) l!3411)) b!8022074))

(assert (= (and start!755140 ((_ is Cons!74884) p1!179)) b!8022068))

(assert (= (and start!755140 ((_ is Cons!74884) s1!490)) b!8022071))

(declare-fun m!8384788 () Bool)

(assert (=> b!8022072 m!8384788))

(declare-fun m!8384790 () Bool)

(assert (=> start!755140 m!8384790))

(declare-fun m!8384792 () Bool)

(assert (=> b!8022073 m!8384792))

(declare-fun m!8384794 () Bool)

(assert (=> b!8022070 m!8384794))

(declare-fun m!8384796 () Bool)

(assert (=> b!8022075 m!8384796))

(check-sat (not b!8022074) (not b!8022071) tp_is_empty!54101 (not b!8022069) (not b!8022073) (not b!8022072) (not b!8022067) (not b!8022068) (not start!755140) (not b!8022075) (not b!8022070))
(check-sat)
(get-model)

(declare-fun b!8022086 () Bool)

(declare-fun res!3172124 () Bool)

(declare-fun e!4725698 () Bool)

(assert (=> b!8022086 (=> (not res!3172124) (not e!4725698))))

(declare-fun lt!2720167 () List!75008)

(declare-fun size!43664 (List!75008) Int)

(assert (=> b!8022086 (= res!3172124 (= (size!43664 lt!2720167) (+ (size!43664 p1!179) (size!43664 s1!490))))))

(declare-fun b!8022085 () Bool)

(declare-fun e!4725699 () List!75008)

(assert (=> b!8022085 (= e!4725699 (Cons!74884 (h!81332 p1!179) (++!18552 (t!390751 p1!179) s1!490)))))

(declare-fun b!8022087 () Bool)

(assert (=> b!8022087 (= e!4725698 (or (not (= s1!490 Nil!74884)) (= lt!2720167 p1!179)))))

(declare-fun b!8022084 () Bool)

(assert (=> b!8022084 (= e!4725699 s1!490)))

(declare-fun d!2392124 () Bool)

(assert (=> d!2392124 e!4725698))

(declare-fun res!3172123 () Bool)

(assert (=> d!2392124 (=> (not res!3172123) (not e!4725698))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15940 (List!75008) (InoxSet B!4213))

(assert (=> d!2392124 (= res!3172123 (= (content!15940 lt!2720167) ((_ map or) (content!15940 p1!179) (content!15940 s1!490))))))

(assert (=> d!2392124 (= lt!2720167 e!4725699)))

(declare-fun c!1472178 () Bool)

(assert (=> d!2392124 (= c!1472178 ((_ is Nil!74884) p1!179))))

(assert (=> d!2392124 (= (++!18552 p1!179 s1!490) lt!2720167)))

(assert (= (and d!2392124 c!1472178) b!8022084))

(assert (= (and d!2392124 (not c!1472178)) b!8022085))

(assert (= (and d!2392124 res!3172123) b!8022086))

(assert (= (and b!8022086 res!3172124) b!8022087))

(declare-fun m!8384798 () Bool)

(assert (=> b!8022086 m!8384798))

(declare-fun m!8384800 () Bool)

(assert (=> b!8022086 m!8384800))

(declare-fun m!8384802 () Bool)

(assert (=> b!8022086 m!8384802))

(declare-fun m!8384804 () Bool)

(assert (=> b!8022085 m!8384804))

(declare-fun m!8384806 () Bool)

(assert (=> d!2392124 m!8384806))

(declare-fun m!8384808 () Bool)

(assert (=> d!2392124 m!8384808))

(declare-fun m!8384810 () Bool)

(assert (=> d!2392124 m!8384810))

(assert (=> b!8022072 d!2392124))

(declare-fun b!8022090 () Bool)

(declare-fun res!3172126 () Bool)

(declare-fun e!4725700 () Bool)

(assert (=> b!8022090 (=> (not res!3172126) (not e!4725700))))

(declare-fun lt!2720168 () List!75008)

(assert (=> b!8022090 (= res!3172126 (= (size!43664 lt!2720168) (+ (size!43664 p2!179) (size!43664 s2!455))))))

(declare-fun b!8022089 () Bool)

(declare-fun e!4725701 () List!75008)

(assert (=> b!8022089 (= e!4725701 (Cons!74884 (h!81332 p2!179) (++!18552 (t!390751 p2!179) s2!455)))))

(declare-fun b!8022091 () Bool)

(assert (=> b!8022091 (= e!4725700 (or (not (= s2!455 Nil!74884)) (= lt!2720168 p2!179)))))

(declare-fun b!8022088 () Bool)

(assert (=> b!8022088 (= e!4725701 s2!455)))

(declare-fun d!2392128 () Bool)

(assert (=> d!2392128 e!4725700))

(declare-fun res!3172125 () Bool)

(assert (=> d!2392128 (=> (not res!3172125) (not e!4725700))))

(assert (=> d!2392128 (= res!3172125 (= (content!15940 lt!2720168) ((_ map or) (content!15940 p2!179) (content!15940 s2!455))))))

(assert (=> d!2392128 (= lt!2720168 e!4725701)))

(declare-fun c!1472179 () Bool)

(assert (=> d!2392128 (= c!1472179 ((_ is Nil!74884) p2!179))))

(assert (=> d!2392128 (= (++!18552 p2!179 s2!455) lt!2720168)))

(assert (= (and d!2392128 c!1472179) b!8022088))

(assert (= (and d!2392128 (not c!1472179)) b!8022089))

(assert (= (and d!2392128 res!3172125) b!8022090))

(assert (= (and b!8022090 res!3172126) b!8022091))

(declare-fun m!8384812 () Bool)

(assert (=> b!8022090 m!8384812))

(declare-fun m!8384814 () Bool)

(assert (=> b!8022090 m!8384814))

(declare-fun m!8384816 () Bool)

(assert (=> b!8022090 m!8384816))

(declare-fun m!8384818 () Bool)

(assert (=> b!8022089 m!8384818))

(declare-fun m!8384820 () Bool)

(assert (=> d!2392128 m!8384820))

(declare-fun m!8384822 () Bool)

(assert (=> d!2392128 m!8384822))

(declare-fun m!8384824 () Bool)

(assert (=> d!2392128 m!8384824))

(assert (=> b!8022073 d!2392128))

(declare-fun d!2392130 () Bool)

(declare-fun lt!2720173 () Int)

(assert (=> d!2392130 (>= lt!2720173 0)))

(declare-fun e!4725706 () Int)

(assert (=> d!2392130 (= lt!2720173 e!4725706)))

(declare-fun c!1472184 () Bool)

(assert (=> d!2392130 (= c!1472184 ((_ is Nil!74884) p1!179))))

(assert (=> d!2392130 (= (ListPrimitiveSize!501 p1!179) lt!2720173)))

(declare-fun b!8022100 () Bool)

(assert (=> b!8022100 (= e!4725706 0)))

(declare-fun b!8022101 () Bool)

(assert (=> b!8022101 (= e!4725706 (+ 1 (ListPrimitiveSize!501 (t!390751 p1!179))))))

(assert (= (and d!2392130 c!1472184) b!8022100))

(assert (= (and d!2392130 (not c!1472184)) b!8022101))

(declare-fun m!8384826 () Bool)

(assert (=> b!8022101 m!8384826))

(assert (=> b!8022070 d!2392130))

(declare-fun b!8022117 () Bool)

(declare-fun e!4725716 () Bool)

(assert (=> b!8022117 (= e!4725716 (>= (size!43664 l!3411) (size!43664 p2!179)))))

(declare-fun b!8022114 () Bool)

(declare-fun e!4725717 () Bool)

(declare-fun e!4725715 () Bool)

(assert (=> b!8022114 (= e!4725717 e!4725715)))

(declare-fun res!3172140 () Bool)

(assert (=> b!8022114 (=> (not res!3172140) (not e!4725715))))

(assert (=> b!8022114 (= res!3172140 (not ((_ is Nil!74884) l!3411)))))

(declare-fun d!2392132 () Bool)

(assert (=> d!2392132 e!4725716))

(declare-fun res!3172142 () Bool)

(assert (=> d!2392132 (=> res!3172142 e!4725716)))

(declare-fun lt!2720176 () Bool)

(assert (=> d!2392132 (= res!3172142 (not lt!2720176))))

(assert (=> d!2392132 (= lt!2720176 e!4725717)))

(declare-fun res!3172141 () Bool)

(assert (=> d!2392132 (=> res!3172141 e!4725717)))

(assert (=> d!2392132 (= res!3172141 ((_ is Nil!74884) p2!179))))

(assert (=> d!2392132 (= (isPrefix!6815 p2!179 l!3411) lt!2720176)))

(declare-fun b!8022116 () Bool)

(declare-fun tail!15953 (List!75008) List!75008)

(assert (=> b!8022116 (= e!4725715 (isPrefix!6815 (tail!15953 p2!179) (tail!15953 l!3411)))))

(declare-fun b!8022115 () Bool)

(declare-fun res!3172139 () Bool)

(assert (=> b!8022115 (=> (not res!3172139) (not e!4725715))))

(declare-fun head!16416 (List!75008) B!4213)

(assert (=> b!8022115 (= res!3172139 (= (head!16416 p2!179) (head!16416 l!3411)))))

(assert (= (and d!2392132 (not res!3172141)) b!8022114))

(assert (= (and b!8022114 res!3172140) b!8022115))

(assert (= (and b!8022115 res!3172139) b!8022116))

(assert (= (and d!2392132 (not res!3172142)) b!8022117))

(declare-fun m!8384828 () Bool)

(assert (=> b!8022117 m!8384828))

(assert (=> b!8022117 m!8384814))

(declare-fun m!8384830 () Bool)

(assert (=> b!8022116 m!8384830))

(declare-fun m!8384832 () Bool)

(assert (=> b!8022116 m!8384832))

(assert (=> b!8022116 m!8384830))

(assert (=> b!8022116 m!8384832))

(declare-fun m!8384834 () Bool)

(assert (=> b!8022116 m!8384834))

(declare-fun m!8384836 () Bool)

(assert (=> b!8022115 m!8384836))

(declare-fun m!8384838 () Bool)

(assert (=> b!8022115 m!8384838))

(assert (=> b!8022075 d!2392132))

(declare-fun b!8022125 () Bool)

(declare-fun e!4725721 () Bool)

(assert (=> b!8022125 (= e!4725721 (>= (size!43664 l!3411) (size!43664 p1!179)))))

(declare-fun b!8022122 () Bool)

(declare-fun e!4725722 () Bool)

(declare-fun e!4725720 () Bool)

(assert (=> b!8022122 (= e!4725722 e!4725720)))

(declare-fun res!3172146 () Bool)

(assert (=> b!8022122 (=> (not res!3172146) (not e!4725720))))

(assert (=> b!8022122 (= res!3172146 (not ((_ is Nil!74884) l!3411)))))

(declare-fun d!2392134 () Bool)

(assert (=> d!2392134 e!4725721))

(declare-fun res!3172148 () Bool)

(assert (=> d!2392134 (=> res!3172148 e!4725721)))

(declare-fun lt!2720178 () Bool)

(assert (=> d!2392134 (= res!3172148 (not lt!2720178))))

(assert (=> d!2392134 (= lt!2720178 e!4725722)))

(declare-fun res!3172147 () Bool)

(assert (=> d!2392134 (=> res!3172147 e!4725722)))

(assert (=> d!2392134 (= res!3172147 ((_ is Nil!74884) p1!179))))

(assert (=> d!2392134 (= (isPrefix!6815 p1!179 l!3411) lt!2720178)))

(declare-fun b!8022124 () Bool)

(assert (=> b!8022124 (= e!4725720 (isPrefix!6815 (tail!15953 p1!179) (tail!15953 l!3411)))))

(declare-fun b!8022123 () Bool)

(declare-fun res!3172145 () Bool)

(assert (=> b!8022123 (=> (not res!3172145) (not e!4725720))))

(assert (=> b!8022123 (= res!3172145 (= (head!16416 p1!179) (head!16416 l!3411)))))

(assert (= (and d!2392134 (not res!3172147)) b!8022122))

(assert (= (and b!8022122 res!3172146) b!8022123))

(assert (= (and b!8022123 res!3172145) b!8022124))

(assert (= (and d!2392134 (not res!3172148)) b!8022125))

(assert (=> b!8022125 m!8384828))

(assert (=> b!8022125 m!8384800))

(declare-fun m!8384840 () Bool)

(assert (=> b!8022124 m!8384840))

(assert (=> b!8022124 m!8384832))

(assert (=> b!8022124 m!8384840))

(assert (=> b!8022124 m!8384832))

(declare-fun m!8384842 () Bool)

(assert (=> b!8022124 m!8384842))

(declare-fun m!8384844 () Bool)

(assert (=> b!8022123 m!8384844))

(assert (=> b!8022123 m!8384838))

(assert (=> start!755140 d!2392134))

(declare-fun b!8022130 () Bool)

(declare-fun e!4725725 () Bool)

(declare-fun tp!2400918 () Bool)

(assert (=> b!8022130 (= e!4725725 (and tp_is_empty!54101 tp!2400918))))

(assert (=> b!8022071 (= tp!2400912 e!4725725)))

(assert (= (and b!8022071 ((_ is Cons!74884) (t!390751 s1!490))) b!8022130))

(declare-fun b!8022135 () Bool)

(declare-fun e!4725728 () Bool)

(declare-fun tp!2400919 () Bool)

(assert (=> b!8022135 (= e!4725728 (and tp_is_empty!54101 tp!2400919))))

(assert (=> b!8022067 (= tp!2400914 e!4725728)))

(assert (= (and b!8022067 ((_ is Cons!74884) (t!390751 p2!179))) b!8022135))

(declare-fun b!8022136 () Bool)

(declare-fun e!4725729 () Bool)

(declare-fun tp!2400920 () Bool)

(assert (=> b!8022136 (= e!4725729 (and tp_is_empty!54101 tp!2400920))))

(assert (=> b!8022068 (= tp!2400913 e!4725729)))

(assert (= (and b!8022068 ((_ is Cons!74884) (t!390751 p1!179))) b!8022136))

(declare-fun b!8022137 () Bool)

(declare-fun e!4725730 () Bool)

(declare-fun tp!2400921 () Bool)

(assert (=> b!8022137 (= e!4725730 (and tp_is_empty!54101 tp!2400921))))

(assert (=> b!8022074 (= tp!2400911 e!4725730)))

(assert (= (and b!8022074 ((_ is Cons!74884) (t!390751 l!3411))) b!8022137))

(declare-fun b!8022138 () Bool)

(declare-fun e!4725731 () Bool)

(declare-fun tp!2400922 () Bool)

(assert (=> b!8022138 (= e!4725731 (and tp_is_empty!54101 tp!2400922))))

(assert (=> b!8022069 (= tp!2400915 e!4725731)))

(assert (= (and b!8022069 ((_ is Cons!74884) (t!390751 s2!455))) b!8022138))

(check-sat (not b!8022115) (not b!8022137) (not d!2392124) (not b!8022135) (not b!8022124) (not b!8022090) (not b!8022089) (not b!8022101) (not b!8022086) (not b!8022123) (not b!8022117) (not b!8022130) (not b!8022116) tp_is_empty!54101 (not b!8022136) (not b!8022125) (not b!8022085) (not d!2392128) (not b!8022138))
(check-sat)
