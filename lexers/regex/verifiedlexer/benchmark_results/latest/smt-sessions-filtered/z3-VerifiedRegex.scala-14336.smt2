; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748854 () Bool)

(assert start!748854)

(declare-fun b!7934827 () Bool)

(declare-fun res!3148133 () Bool)

(declare-fun e!4682179 () Bool)

(assert (=> b!7934827 (=> (not res!3148133) (not e!4682179))))

(declare-datatypes ((T!145874 0))(
  ( (T!145875 (val!32070 Int)) )
))
(declare-datatypes ((List!74582 0))(
  ( (Nil!74458) (Cons!74458 (h!80906 T!145874) (t!390263 List!74582)) )
))
(declare-datatypes ((IArray!31885 0))(
  ( (IArray!31886 (innerList!16000 List!74582)) )
))
(declare-datatypes ((Conc!15912 0))(
  ( (Node!15912 (left!56888 Conc!15912) (right!57218 Conc!15912) (csize!32054 Int) (cheight!16123 Int)) (Leaf!30249 (xs!19308 IArray!31885) (csize!32055 Int)) (Empty!15912) )
))
(declare-fun t!4440 () Conc!15912)

(get-info :version)

(assert (=> b!7934827 (= res!3148133 (and (not ((_ is Empty!15912) t!4440)) (not ((_ is Node!15912) t!4440)) (< (csize!32055 t!4440) 512)))))

(declare-fun res!3148134 () Bool)

(assert (=> start!748854 (=> (not res!3148134) (not e!4682179))))

(declare-fun isBalanced!4538 (Conc!15912) Bool)

(assert (=> start!748854 (= res!3148134 (isBalanced!4538 t!4440))))

(assert (=> start!748854 e!4682179))

(declare-fun e!4682182 () Bool)

(declare-fun inv!95774 (Conc!15912) Bool)

(assert (=> start!748854 (and (inv!95774 t!4440) e!4682182)))

(declare-fun tp_is_empty!53249 () Bool)

(assert (=> start!748854 tp_is_empty!53249))

(declare-fun b!7934828 () Bool)

(declare-fun e!4682181 () Bool)

(assert (=> b!7934828 (= e!4682179 e!4682181)))

(declare-fun res!3148130 () Bool)

(assert (=> b!7934828 (=> res!3148130 e!4682181)))

(declare-fun lt!2695142 () Conc!15912)

(assert (=> b!7934828 (= res!3148130 (not (isBalanced!4538 lt!2695142)))))

(declare-fun v!5484 () T!145874)

(declare-fun append!1162 (IArray!31885 T!145874) IArray!31885)

(assert (=> b!7934828 (= lt!2695142 (Leaf!30249 (append!1162 (xs!19308 t!4440) v!5484) (+ 1 (csize!32055 t!4440))))))

(declare-fun b!7934829 () Bool)

(declare-fun res!3148131 () Bool)

(assert (=> b!7934829 (=> (not res!3148131) (not e!4682179))))

(declare-fun size!43276 (List!74582) Int)

(declare-fun $colon+!325 (List!74582 T!145874) List!74582)

(declare-fun list!19434 (IArray!31885) List!74582)

(assert (=> b!7934829 (= res!3148131 (= (size!43276 ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484)) (+ 1 (csize!32055 t!4440))))))

(declare-fun b!7934830 () Bool)

(declare-fun e!4682180 () Bool)

(declare-fun inv!95775 (IArray!31885) Bool)

(assert (=> b!7934830 (= e!4682182 (and (inv!95775 (xs!19308 t!4440)) e!4682180))))

(declare-fun b!7934831 () Bool)

(declare-fun tp!2359370 () Bool)

(assert (=> b!7934831 (= e!4682180 tp!2359370)))

(declare-fun b!7934832 () Bool)

(declare-fun e!4682178 () Bool)

(declare-fun list!19435 (Conc!15912) List!74582)

(assert (=> b!7934832 (= e!4682178 (not (= (list!19435 lt!2695142) ($colon+!325 (list!19435 t!4440) v!5484))))))

(declare-fun b!7934833 () Bool)

(assert (=> b!7934833 (= e!4682181 e!4682178)))

(declare-fun res!3148132 () Bool)

(assert (=> b!7934833 (=> res!3148132 e!4682178)))

(declare-fun lt!2695144 () Int)

(declare-fun lt!2695143 () Int)

(assert (=> b!7934833 (= res!3148132 (or (> lt!2695144 lt!2695143) (> lt!2695143 (+ 1 lt!2695144))))))

(declare-fun height!2227 (Conc!15912) Int)

(assert (=> b!7934833 (= lt!2695143 (height!2227 lt!2695142))))

(assert (=> b!7934833 (= lt!2695144 (height!2227 t!4440))))

(declare-fun tp!2359368 () Bool)

(declare-fun b!7934834 () Bool)

(declare-fun tp!2359369 () Bool)

(assert (=> b!7934834 (= e!4682182 (and (inv!95774 (left!56888 t!4440)) tp!2359368 (inv!95774 (right!57218 t!4440)) tp!2359369))))

(assert (= (and start!748854 res!3148134) b!7934827))

(assert (= (and b!7934827 res!3148133) b!7934829))

(assert (= (and b!7934829 res!3148131) b!7934828))

(assert (= (and b!7934828 (not res!3148130)) b!7934833))

(assert (= (and b!7934833 (not res!3148132)) b!7934832))

(assert (= (and start!748854 ((_ is Node!15912) t!4440)) b!7934834))

(assert (= b!7934830 b!7934831))

(assert (= (and start!748854 ((_ is Leaf!30249) t!4440)) b!7934830))

(declare-fun m!8322498 () Bool)

(assert (=> b!7934834 m!8322498))

(declare-fun m!8322500 () Bool)

(assert (=> b!7934834 m!8322500))

(declare-fun m!8322502 () Bool)

(assert (=> start!748854 m!8322502))

(declare-fun m!8322504 () Bool)

(assert (=> start!748854 m!8322504))

(declare-fun m!8322506 () Bool)

(assert (=> b!7934832 m!8322506))

(declare-fun m!8322508 () Bool)

(assert (=> b!7934832 m!8322508))

(assert (=> b!7934832 m!8322508))

(declare-fun m!8322510 () Bool)

(assert (=> b!7934832 m!8322510))

(declare-fun m!8322512 () Bool)

(assert (=> b!7934833 m!8322512))

(declare-fun m!8322514 () Bool)

(assert (=> b!7934833 m!8322514))

(declare-fun m!8322516 () Bool)

(assert (=> b!7934829 m!8322516))

(assert (=> b!7934829 m!8322516))

(declare-fun m!8322518 () Bool)

(assert (=> b!7934829 m!8322518))

(assert (=> b!7934829 m!8322518))

(declare-fun m!8322520 () Bool)

(assert (=> b!7934829 m!8322520))

(declare-fun m!8322522 () Bool)

(assert (=> b!7934828 m!8322522))

(declare-fun m!8322524 () Bool)

(assert (=> b!7934828 m!8322524))

(declare-fun m!8322526 () Bool)

(assert (=> b!7934830 m!8322526))

(check-sat (not b!7934833) (not b!7934829) tp_is_empty!53249 (not b!7934834) (not b!7934828) (not b!7934831) (not b!7934830) (not start!748854) (not b!7934832))
(check-sat)
(get-model)

(declare-fun b!7934844 () Bool)

(declare-fun e!4682187 () List!74582)

(declare-fun e!4682188 () List!74582)

(assert (=> b!7934844 (= e!4682187 e!4682188)))

(declare-fun c!1457750 () Bool)

(assert (=> b!7934844 (= c!1457750 ((_ is Leaf!30249) lt!2695142))))

(declare-fun b!7934846 () Bool)

(declare-fun ++!18268 (List!74582 List!74582) List!74582)

(assert (=> b!7934846 (= e!4682188 (++!18268 (list!19435 (left!56888 lt!2695142)) (list!19435 (right!57218 lt!2695142))))))

(declare-fun b!7934843 () Bool)

(assert (=> b!7934843 (= e!4682187 Nil!74458)))

(declare-fun d!2372507 () Bool)

(declare-fun c!1457749 () Bool)

(assert (=> d!2372507 (= c!1457749 ((_ is Empty!15912) lt!2695142))))

(assert (=> d!2372507 (= (list!19435 lt!2695142) e!4682187)))

(declare-fun b!7934845 () Bool)

(assert (=> b!7934845 (= e!4682188 (list!19434 (xs!19308 lt!2695142)))))

(assert (= (and d!2372507 c!1457749) b!7934843))

(assert (= (and d!2372507 (not c!1457749)) b!7934844))

(assert (= (and b!7934844 c!1457750) b!7934845))

(assert (= (and b!7934844 (not c!1457750)) b!7934846))

(declare-fun m!8322528 () Bool)

(assert (=> b!7934846 m!8322528))

(declare-fun m!8322530 () Bool)

(assert (=> b!7934846 m!8322530))

(assert (=> b!7934846 m!8322528))

(assert (=> b!7934846 m!8322530))

(declare-fun m!8322532 () Bool)

(assert (=> b!7934846 m!8322532))

(declare-fun m!8322534 () Bool)

(assert (=> b!7934845 m!8322534))

(assert (=> b!7934832 d!2372507))

(declare-fun b!7934893 () Bool)

(declare-fun e!4682209 () List!74582)

(assert (=> b!7934893 (= e!4682209 (Cons!74458 (h!80906 (list!19435 t!4440)) ($colon+!325 (t!390263 (list!19435 t!4440)) v!5484)))))

(declare-fun bm!735634 () Bool)

(declare-fun call!735640 () (_ BitVec 32))

(declare-fun lt!2695147 () List!74582)

(declare-fun isize!128 (List!74582) (_ BitVec 32))

(assert (=> bm!735634 (= call!735640 (isize!128 lt!2695147))))

(declare-fun b!7934894 () Bool)

(declare-fun res!3148166 () Bool)

(declare-fun e!4682210 () Bool)

(assert (=> b!7934894 (=> (not res!3148166) (not e!4682210))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15792 (List!74582) (InoxSet T!145874))

(assert (=> b!7934894 (= res!3148166 (= (content!15792 lt!2695147) ((_ map or) (content!15792 (list!19435 t!4440)) (store ((as const (Array T!145874 Bool)) false) v!5484 true))))))

(declare-fun bm!735635 () Bool)

(declare-fun call!735639 () (_ BitVec 32))

(assert (=> bm!735635 (= call!735639 (isize!128 (list!19435 t!4440)))))

(declare-fun d!2372515 () Bool)

(assert (=> d!2372515 e!4682210))

(declare-fun res!3148167 () Bool)

(assert (=> d!2372515 (=> (not res!3148167) (not e!4682210))))

(assert (=> d!2372515 (= res!3148167 ((_ is Cons!74458) lt!2695147))))

(assert (=> d!2372515 (= lt!2695147 e!4682209)))

(declare-fun c!1457760 () Bool)

(assert (=> d!2372515 (= c!1457760 ((_ is Nil!74458) (list!19435 t!4440)))))

(assert (=> d!2372515 (= ($colon+!325 (list!19435 t!4440) v!5484) lt!2695147)))

(declare-fun b!7934895 () Bool)

(declare-fun res!3148165 () Bool)

(assert (=> b!7934895 (=> (not res!3148165) (not e!4682210))))

(assert (=> b!7934895 (= res!3148165 (= (size!43276 lt!2695147) (+ (size!43276 (list!19435 t!4440)) 1)))))

(declare-fun b!7934896 () Bool)

(declare-fun e!4682211 () Bool)

(assert (=> b!7934896 (= e!4682211 (= call!735640 (bvadd call!735639 #b00000000000000000000000000000001)))))

(declare-fun b!7934897 () Bool)

(assert (=> b!7934897 (= e!4682209 (Cons!74458 v!5484 (list!19435 t!4440)))))

(declare-fun b!7934898 () Bool)

(assert (=> b!7934898 (= e!4682211 (= call!735640 call!735639))))

(declare-fun b!7934899 () Bool)

(assert (=> b!7934899 (= e!4682210 (= lt!2695147 (++!18268 (list!19435 t!4440) (Cons!74458 v!5484 Nil!74458))))))

(declare-fun b!7934900 () Bool)

(declare-fun res!3148168 () Bool)

(assert (=> b!7934900 (=> (not res!3148168) (not e!4682210))))

(assert (=> b!7934900 (= res!3148168 e!4682211)))

(declare-fun c!1457759 () Bool)

(assert (=> b!7934900 (= c!1457759 (bvslt (isize!128 (list!19435 t!4440)) #b01111111111111111111111111111111))))

(assert (= (and d!2372515 c!1457760) b!7934897))

(assert (= (and d!2372515 (not c!1457760)) b!7934893))

(assert (= (and d!2372515 res!3148167) b!7934895))

(assert (= (and b!7934895 res!3148165) b!7934900))

(assert (= (and b!7934900 c!1457759) b!7934896))

(assert (= (and b!7934900 (not c!1457759)) b!7934898))

(assert (= (or b!7934896 b!7934898) bm!735634))

(assert (= (or b!7934896 b!7934898) bm!735635))

(assert (= (and b!7934900 res!3148168) b!7934894))

(assert (= (and b!7934894 res!3148166) b!7934899))

(declare-fun m!8322560 () Bool)

(assert (=> bm!735634 m!8322560))

(declare-fun m!8322562 () Bool)

(assert (=> b!7934895 m!8322562))

(assert (=> b!7934895 m!8322508))

(declare-fun m!8322564 () Bool)

(assert (=> b!7934895 m!8322564))

(assert (=> b!7934899 m!8322508))

(declare-fun m!8322566 () Bool)

(assert (=> b!7934899 m!8322566))

(declare-fun m!8322568 () Bool)

(assert (=> b!7934894 m!8322568))

(assert (=> b!7934894 m!8322508))

(declare-fun m!8322570 () Bool)

(assert (=> b!7934894 m!8322570))

(declare-fun m!8322572 () Bool)

(assert (=> b!7934894 m!8322572))

(assert (=> b!7934900 m!8322508))

(declare-fun m!8322574 () Bool)

(assert (=> b!7934900 m!8322574))

(assert (=> bm!735635 m!8322508))

(assert (=> bm!735635 m!8322574))

(declare-fun m!8322576 () Bool)

(assert (=> b!7934893 m!8322576))

(assert (=> b!7934832 d!2372515))

(declare-fun b!7934905 () Bool)

(declare-fun e!4682214 () List!74582)

(declare-fun e!4682215 () List!74582)

(assert (=> b!7934905 (= e!4682214 e!4682215)))

(declare-fun c!1457763 () Bool)

(assert (=> b!7934905 (= c!1457763 ((_ is Leaf!30249) t!4440))))

(declare-fun b!7934907 () Bool)

(assert (=> b!7934907 (= e!4682215 (++!18268 (list!19435 (left!56888 t!4440)) (list!19435 (right!57218 t!4440))))))

(declare-fun b!7934904 () Bool)

(assert (=> b!7934904 (= e!4682214 Nil!74458)))

(declare-fun d!2372525 () Bool)

(declare-fun c!1457762 () Bool)

(assert (=> d!2372525 (= c!1457762 ((_ is Empty!15912) t!4440))))

(assert (=> d!2372525 (= (list!19435 t!4440) e!4682214)))

(declare-fun b!7934906 () Bool)

(assert (=> b!7934906 (= e!4682215 (list!19434 (xs!19308 t!4440)))))

(assert (= (and d!2372525 c!1457762) b!7934904))

(assert (= (and d!2372525 (not c!1457762)) b!7934905))

(assert (= (and b!7934905 c!1457763) b!7934906))

(assert (= (and b!7934905 (not c!1457763)) b!7934907))

(declare-fun m!8322578 () Bool)

(assert (=> b!7934907 m!8322578))

(declare-fun m!8322580 () Bool)

(assert (=> b!7934907 m!8322580))

(assert (=> b!7934907 m!8322578))

(assert (=> b!7934907 m!8322580))

(declare-fun m!8322582 () Bool)

(assert (=> b!7934907 m!8322582))

(assert (=> b!7934906 m!8322516))

(assert (=> b!7934832 d!2372525))

(declare-fun d!2372527 () Bool)

(assert (=> d!2372527 (= (height!2227 lt!2695142) (ite ((_ is Empty!15912) lt!2695142) 0 (ite ((_ is Leaf!30249) lt!2695142) 1 (cheight!16123 lt!2695142))))))

(assert (=> b!7934833 d!2372527))

(declare-fun d!2372529 () Bool)

(assert (=> d!2372529 (= (height!2227 t!4440) (ite ((_ is Empty!15912) t!4440) 0 (ite ((_ is Leaf!30249) t!4440) 1 (cheight!16123 t!4440))))))

(assert (=> b!7934833 d!2372529))

(declare-fun b!7934932 () Bool)

(declare-fun res!3148183 () Bool)

(declare-fun e!4682227 () Bool)

(assert (=> b!7934932 (=> (not res!3148183) (not e!4682227))))

(assert (=> b!7934932 (= res!3148183 (isBalanced!4538 (left!56888 lt!2695142)))))

(declare-fun b!7934933 () Bool)

(declare-fun res!3148187 () Bool)

(assert (=> b!7934933 (=> (not res!3148187) (not e!4682227))))

(assert (=> b!7934933 (= res!3148187 (isBalanced!4538 (right!57218 lt!2695142)))))

(declare-fun b!7934934 () Bool)

(declare-fun res!3148186 () Bool)

(assert (=> b!7934934 (=> (not res!3148186) (not e!4682227))))

(assert (=> b!7934934 (= res!3148186 (<= (- (height!2227 (left!56888 lt!2695142)) (height!2227 (right!57218 lt!2695142))) 1))))

(declare-fun b!7934935 () Bool)

(declare-fun e!4682226 () Bool)

(assert (=> b!7934935 (= e!4682226 e!4682227)))

(declare-fun res!3148185 () Bool)

(assert (=> b!7934935 (=> (not res!3148185) (not e!4682227))))

(assert (=> b!7934935 (= res!3148185 (<= (- 1) (- (height!2227 (left!56888 lt!2695142)) (height!2227 (right!57218 lt!2695142)))))))

(declare-fun d!2372531 () Bool)

(declare-fun res!3148184 () Bool)

(assert (=> d!2372531 (=> res!3148184 e!4682226)))

(assert (=> d!2372531 (= res!3148184 (not ((_ is Node!15912) lt!2695142)))))

(assert (=> d!2372531 (= (isBalanced!4538 lt!2695142) e!4682226)))

(declare-fun b!7934936 () Bool)

(declare-fun isEmpty!42796 (Conc!15912) Bool)

(assert (=> b!7934936 (= e!4682227 (not (isEmpty!42796 (right!57218 lt!2695142))))))

(declare-fun b!7934937 () Bool)

(declare-fun res!3148182 () Bool)

(assert (=> b!7934937 (=> (not res!3148182) (not e!4682227))))

(assert (=> b!7934937 (= res!3148182 (not (isEmpty!42796 (left!56888 lt!2695142))))))

(assert (= (and d!2372531 (not res!3148184)) b!7934935))

(assert (= (and b!7934935 res!3148185) b!7934934))

(assert (= (and b!7934934 res!3148186) b!7934932))

(assert (= (and b!7934932 res!3148183) b!7934933))

(assert (= (and b!7934933 res!3148187) b!7934937))

(assert (= (and b!7934937 res!3148182) b!7934936))

(declare-fun m!8322592 () Bool)

(assert (=> b!7934935 m!8322592))

(declare-fun m!8322594 () Bool)

(assert (=> b!7934935 m!8322594))

(declare-fun m!8322596 () Bool)

(assert (=> b!7934937 m!8322596))

(assert (=> b!7934934 m!8322592))

(assert (=> b!7934934 m!8322594))

(declare-fun m!8322598 () Bool)

(assert (=> b!7934932 m!8322598))

(declare-fun m!8322600 () Bool)

(assert (=> b!7934936 m!8322600))

(declare-fun m!8322602 () Bool)

(assert (=> b!7934933 m!8322602))

(assert (=> b!7934828 d!2372531))

(declare-fun d!2372535 () Bool)

(declare-fun lt!2695152 () IArray!31885)

(assert (=> d!2372535 (= lt!2695152 (IArray!31886 ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484)))))

(declare-fun choose!59856 (IArray!31885 T!145874) IArray!31885)

(assert (=> d!2372535 (= lt!2695152 (choose!59856 (xs!19308 t!4440) v!5484))))

(declare-fun size!43277 (IArray!31885) Int)

(assert (=> d!2372535 (<= (+ (size!43277 (xs!19308 t!4440)) 1) 2147483647)))

(assert (=> d!2372535 (= (append!1162 (xs!19308 t!4440) v!5484) lt!2695152)))

(declare-fun bs!1969129 () Bool)

(assert (= bs!1969129 d!2372535))

(assert (=> bs!1969129 m!8322516))

(assert (=> bs!1969129 m!8322516))

(assert (=> bs!1969129 m!8322518))

(declare-fun m!8322604 () Bool)

(assert (=> bs!1969129 m!8322604))

(declare-fun m!8322606 () Bool)

(assert (=> bs!1969129 m!8322606))

(assert (=> b!7934828 d!2372535))

(declare-fun d!2372537 () Bool)

(declare-fun c!1457780 () Bool)

(assert (=> d!2372537 (= c!1457780 ((_ is Node!15912) (left!56888 t!4440)))))

(declare-fun e!4682243 () Bool)

(assert (=> d!2372537 (= (inv!95774 (left!56888 t!4440)) e!4682243)))

(declare-fun b!7934972 () Bool)

(declare-fun inv!95778 (Conc!15912) Bool)

(assert (=> b!7934972 (= e!4682243 (inv!95778 (left!56888 t!4440)))))

(declare-fun b!7934973 () Bool)

(declare-fun e!4682244 () Bool)

(assert (=> b!7934973 (= e!4682243 e!4682244)))

(declare-fun res!3148202 () Bool)

(assert (=> b!7934973 (= res!3148202 (not ((_ is Leaf!30249) (left!56888 t!4440))))))

(assert (=> b!7934973 (=> res!3148202 e!4682244)))

(declare-fun b!7934974 () Bool)

(declare-fun inv!95779 (Conc!15912) Bool)

(assert (=> b!7934974 (= e!4682244 (inv!95779 (left!56888 t!4440)))))

(assert (= (and d!2372537 c!1457780) b!7934972))

(assert (= (and d!2372537 (not c!1457780)) b!7934973))

(assert (= (and b!7934973 (not res!3148202)) b!7934974))

(declare-fun m!8322632 () Bool)

(assert (=> b!7934972 m!8322632))

(declare-fun m!8322634 () Bool)

(assert (=> b!7934974 m!8322634))

(assert (=> b!7934834 d!2372537))

(declare-fun d!2372543 () Bool)

(declare-fun c!1457781 () Bool)

(assert (=> d!2372543 (= c!1457781 ((_ is Node!15912) (right!57218 t!4440)))))

(declare-fun e!4682245 () Bool)

(assert (=> d!2372543 (= (inv!95774 (right!57218 t!4440)) e!4682245)))

(declare-fun b!7934975 () Bool)

(assert (=> b!7934975 (= e!4682245 (inv!95778 (right!57218 t!4440)))))

(declare-fun b!7934976 () Bool)

(declare-fun e!4682246 () Bool)

(assert (=> b!7934976 (= e!4682245 e!4682246)))

(declare-fun res!3148203 () Bool)

(assert (=> b!7934976 (= res!3148203 (not ((_ is Leaf!30249) (right!57218 t!4440))))))

(assert (=> b!7934976 (=> res!3148203 e!4682246)))

(declare-fun b!7934977 () Bool)

(assert (=> b!7934977 (= e!4682246 (inv!95779 (right!57218 t!4440)))))

(assert (= (and d!2372543 c!1457781) b!7934975))

(assert (= (and d!2372543 (not c!1457781)) b!7934976))

(assert (= (and b!7934976 (not res!3148203)) b!7934977))

(declare-fun m!8322636 () Bool)

(assert (=> b!7934975 m!8322636))

(declare-fun m!8322638 () Bool)

(assert (=> b!7934977 m!8322638))

(assert (=> b!7934834 d!2372543))

(declare-fun d!2372545 () Bool)

(declare-fun lt!2695158 () Int)

(assert (=> d!2372545 (>= lt!2695158 0)))

(declare-fun e!4682251 () Int)

(assert (=> d!2372545 (= lt!2695158 e!4682251)))

(declare-fun c!1457786 () Bool)

(assert (=> d!2372545 (= c!1457786 ((_ is Nil!74458) ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484)))))

(assert (=> d!2372545 (= (size!43276 ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484)) lt!2695158)))

(declare-fun b!7934986 () Bool)

(assert (=> b!7934986 (= e!4682251 0)))

(declare-fun b!7934987 () Bool)

(assert (=> b!7934987 (= e!4682251 (+ 1 (size!43276 (t!390263 ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484)))))))

(assert (= (and d!2372545 c!1457786) b!7934986))

(assert (= (and d!2372545 (not c!1457786)) b!7934987))

(declare-fun m!8322642 () Bool)

(assert (=> b!7934987 m!8322642))

(assert (=> b!7934829 d!2372545))

(declare-fun b!7934990 () Bool)

(declare-fun e!4682253 () List!74582)

(assert (=> b!7934990 (= e!4682253 (Cons!74458 (h!80906 (list!19434 (xs!19308 t!4440))) ($colon+!325 (t!390263 (list!19434 (xs!19308 t!4440))) v!5484)))))

(declare-fun bm!735642 () Bool)

(declare-fun call!735648 () (_ BitVec 32))

(declare-fun lt!2695160 () List!74582)

(assert (=> bm!735642 (= call!735648 (isize!128 lt!2695160))))

(declare-fun b!7934991 () Bool)

(declare-fun res!3148205 () Bool)

(declare-fun e!4682254 () Bool)

(assert (=> b!7934991 (=> (not res!3148205) (not e!4682254))))

(assert (=> b!7934991 (= res!3148205 (= (content!15792 lt!2695160) ((_ map or) (content!15792 (list!19434 (xs!19308 t!4440))) (store ((as const (Array T!145874 Bool)) false) v!5484 true))))))

(declare-fun bm!735643 () Bool)

(declare-fun call!735647 () (_ BitVec 32))

(assert (=> bm!735643 (= call!735647 (isize!128 (list!19434 (xs!19308 t!4440))))))

(declare-fun d!2372549 () Bool)

(assert (=> d!2372549 e!4682254))

(declare-fun res!3148206 () Bool)

(assert (=> d!2372549 (=> (not res!3148206) (not e!4682254))))

(assert (=> d!2372549 (= res!3148206 ((_ is Cons!74458) lt!2695160))))

(assert (=> d!2372549 (= lt!2695160 e!4682253)))

(declare-fun c!1457789 () Bool)

(assert (=> d!2372549 (= c!1457789 ((_ is Nil!74458) (list!19434 (xs!19308 t!4440))))))

(assert (=> d!2372549 (= ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484) lt!2695160)))

(declare-fun b!7934992 () Bool)

(declare-fun res!3148204 () Bool)

(assert (=> b!7934992 (=> (not res!3148204) (not e!4682254))))

(assert (=> b!7934992 (= res!3148204 (= (size!43276 lt!2695160) (+ (size!43276 (list!19434 (xs!19308 t!4440))) 1)))))

(declare-fun b!7934993 () Bool)

(declare-fun e!4682255 () Bool)

(assert (=> b!7934993 (= e!4682255 (= call!735648 (bvadd call!735647 #b00000000000000000000000000000001)))))

(declare-fun b!7934994 () Bool)

(assert (=> b!7934994 (= e!4682253 (Cons!74458 v!5484 (list!19434 (xs!19308 t!4440))))))

(declare-fun b!7934995 () Bool)

(assert (=> b!7934995 (= e!4682255 (= call!735648 call!735647))))

(declare-fun b!7934996 () Bool)

(assert (=> b!7934996 (= e!4682254 (= lt!2695160 (++!18268 (list!19434 (xs!19308 t!4440)) (Cons!74458 v!5484 Nil!74458))))))

(declare-fun b!7934997 () Bool)

(declare-fun res!3148207 () Bool)

(assert (=> b!7934997 (=> (not res!3148207) (not e!4682254))))

(assert (=> b!7934997 (= res!3148207 e!4682255)))

(declare-fun c!1457788 () Bool)

(assert (=> b!7934997 (= c!1457788 (bvslt (isize!128 (list!19434 (xs!19308 t!4440))) #b01111111111111111111111111111111))))

(assert (= (and d!2372549 c!1457789) b!7934994))

(assert (= (and d!2372549 (not c!1457789)) b!7934990))

(assert (= (and d!2372549 res!3148206) b!7934992))

(assert (= (and b!7934992 res!3148204) b!7934997))

(assert (= (and b!7934997 c!1457788) b!7934993))

(assert (= (and b!7934997 (not c!1457788)) b!7934995))

(assert (= (or b!7934993 b!7934995) bm!735642))

(assert (= (or b!7934993 b!7934995) bm!735643))

(assert (= (and b!7934997 res!3148207) b!7934991))

(assert (= (and b!7934991 res!3148205) b!7934996))

(declare-fun m!8322646 () Bool)

(assert (=> bm!735642 m!8322646))

(declare-fun m!8322648 () Bool)

(assert (=> b!7934992 m!8322648))

(assert (=> b!7934992 m!8322516))

(declare-fun m!8322650 () Bool)

(assert (=> b!7934992 m!8322650))

(assert (=> b!7934996 m!8322516))

(declare-fun m!8322652 () Bool)

(assert (=> b!7934996 m!8322652))

(declare-fun m!8322654 () Bool)

(assert (=> b!7934991 m!8322654))

(assert (=> b!7934991 m!8322516))

(declare-fun m!8322656 () Bool)

(assert (=> b!7934991 m!8322656))

(assert (=> b!7934991 m!8322572))

(assert (=> b!7934997 m!8322516))

(declare-fun m!8322658 () Bool)

(assert (=> b!7934997 m!8322658))

(assert (=> bm!735643 m!8322516))

(assert (=> bm!735643 m!8322658))

(declare-fun m!8322662 () Bool)

(assert (=> b!7934990 m!8322662))

(assert (=> b!7934829 d!2372549))

(declare-fun d!2372553 () Bool)

(assert (=> d!2372553 (= (list!19434 (xs!19308 t!4440)) (innerList!16000 (xs!19308 t!4440)))))

(assert (=> b!7934829 d!2372553))

(declare-fun b!7935006 () Bool)

(declare-fun res!3148213 () Bool)

(declare-fun e!4682260 () Bool)

(assert (=> b!7935006 (=> (not res!3148213) (not e!4682260))))

(assert (=> b!7935006 (= res!3148213 (isBalanced!4538 (left!56888 t!4440)))))

(declare-fun b!7935007 () Bool)

(declare-fun res!3148217 () Bool)

(assert (=> b!7935007 (=> (not res!3148217) (not e!4682260))))

(assert (=> b!7935007 (= res!3148217 (isBalanced!4538 (right!57218 t!4440)))))

(declare-fun b!7935008 () Bool)

(declare-fun res!3148216 () Bool)

(assert (=> b!7935008 (=> (not res!3148216) (not e!4682260))))

(assert (=> b!7935008 (= res!3148216 (<= (- (height!2227 (left!56888 t!4440)) (height!2227 (right!57218 t!4440))) 1))))

(declare-fun b!7935009 () Bool)

(declare-fun e!4682259 () Bool)

(assert (=> b!7935009 (= e!4682259 e!4682260)))

(declare-fun res!3148215 () Bool)

(assert (=> b!7935009 (=> (not res!3148215) (not e!4682260))))

(assert (=> b!7935009 (= res!3148215 (<= (- 1) (- (height!2227 (left!56888 t!4440)) (height!2227 (right!57218 t!4440)))))))

(declare-fun d!2372557 () Bool)

(declare-fun res!3148214 () Bool)

(assert (=> d!2372557 (=> res!3148214 e!4682259)))

(assert (=> d!2372557 (= res!3148214 (not ((_ is Node!15912) t!4440)))))

(assert (=> d!2372557 (= (isBalanced!4538 t!4440) e!4682259)))

(declare-fun b!7935010 () Bool)

(assert (=> b!7935010 (= e!4682260 (not (isEmpty!42796 (right!57218 t!4440))))))

(declare-fun b!7935011 () Bool)

(declare-fun res!3148212 () Bool)

(assert (=> b!7935011 (=> (not res!3148212) (not e!4682260))))

(assert (=> b!7935011 (= res!3148212 (not (isEmpty!42796 (left!56888 t!4440))))))

(assert (= (and d!2372557 (not res!3148214)) b!7935009))

(assert (= (and b!7935009 res!3148215) b!7935008))

(assert (= (and b!7935008 res!3148216) b!7935006))

(assert (= (and b!7935006 res!3148213) b!7935007))

(assert (= (and b!7935007 res!3148217) b!7935011))

(assert (= (and b!7935011 res!3148212) b!7935010))

(declare-fun m!8322678 () Bool)

(assert (=> b!7935009 m!8322678))

(declare-fun m!8322680 () Bool)

(assert (=> b!7935009 m!8322680))

(declare-fun m!8322682 () Bool)

(assert (=> b!7935011 m!8322682))

(assert (=> b!7935008 m!8322678))

(assert (=> b!7935008 m!8322680))

(declare-fun m!8322684 () Bool)

(assert (=> b!7935006 m!8322684))

(declare-fun m!8322686 () Bool)

(assert (=> b!7935010 m!8322686))

(declare-fun m!8322688 () Bool)

(assert (=> b!7935007 m!8322688))

(assert (=> start!748854 d!2372557))

(declare-fun d!2372561 () Bool)

(declare-fun c!1457792 () Bool)

(assert (=> d!2372561 (= c!1457792 ((_ is Node!15912) t!4440))))

(declare-fun e!4682263 () Bool)

(assert (=> d!2372561 (= (inv!95774 t!4440) e!4682263)))

(declare-fun b!7935018 () Bool)

(assert (=> b!7935018 (= e!4682263 (inv!95778 t!4440))))

(declare-fun b!7935019 () Bool)

(declare-fun e!4682264 () Bool)

(assert (=> b!7935019 (= e!4682263 e!4682264)))

(declare-fun res!3148224 () Bool)

(assert (=> b!7935019 (= res!3148224 (not ((_ is Leaf!30249) t!4440)))))

(assert (=> b!7935019 (=> res!3148224 e!4682264)))

(declare-fun b!7935020 () Bool)

(assert (=> b!7935020 (= e!4682264 (inv!95779 t!4440))))

(assert (= (and d!2372561 c!1457792) b!7935018))

(assert (= (and d!2372561 (not c!1457792)) b!7935019))

(assert (= (and b!7935019 (not res!3148224)) b!7935020))

(declare-fun m!8322702 () Bool)

(assert (=> b!7935018 m!8322702))

(declare-fun m!8322704 () Bool)

(assert (=> b!7935020 m!8322704))

(assert (=> start!748854 d!2372561))

(declare-fun d!2372565 () Bool)

(assert (=> d!2372565 (= (inv!95775 (xs!19308 t!4440)) (<= (size!43276 (innerList!16000 (xs!19308 t!4440))) 2147483647))))

(declare-fun bs!1969131 () Bool)

(assert (= bs!1969131 d!2372565))

(declare-fun m!8322706 () Bool)

(assert (=> bs!1969131 m!8322706))

(assert (=> b!7934830 d!2372565))

(declare-fun b!7935025 () Bool)

(declare-fun e!4682267 () Bool)

(declare-fun tp!2359373 () Bool)

(assert (=> b!7935025 (= e!4682267 (and tp_is_empty!53249 tp!2359373))))

(assert (=> b!7934831 (= tp!2359370 e!4682267)))

(assert (= (and b!7934831 ((_ is Cons!74458) (innerList!16000 (xs!19308 t!4440)))) b!7935025))

(declare-fun b!7935034 () Bool)

(declare-fun tp!2359381 () Bool)

(declare-fun tp!2359382 () Bool)

(declare-fun e!4682273 () Bool)

(assert (=> b!7935034 (= e!4682273 (and (inv!95774 (left!56888 (left!56888 t!4440))) tp!2359382 (inv!95774 (right!57218 (left!56888 t!4440))) tp!2359381))))

(declare-fun b!7935036 () Bool)

(declare-fun e!4682272 () Bool)

(declare-fun tp!2359380 () Bool)

(assert (=> b!7935036 (= e!4682272 tp!2359380)))

(declare-fun b!7935035 () Bool)

(assert (=> b!7935035 (= e!4682273 (and (inv!95775 (xs!19308 (left!56888 t!4440))) e!4682272))))

(assert (=> b!7934834 (= tp!2359368 (and (inv!95774 (left!56888 t!4440)) e!4682273))))

(assert (= (and b!7934834 ((_ is Node!15912) (left!56888 t!4440))) b!7935034))

(assert (= b!7935035 b!7935036))

(assert (= (and b!7934834 ((_ is Leaf!30249) (left!56888 t!4440))) b!7935035))

(declare-fun m!8322712 () Bool)

(assert (=> b!7935034 m!8322712))

(declare-fun m!8322714 () Bool)

(assert (=> b!7935034 m!8322714))

(declare-fun m!8322716 () Bool)

(assert (=> b!7935035 m!8322716))

(assert (=> b!7934834 m!8322498))

(declare-fun b!7935041 () Bool)

(declare-fun e!4682277 () Bool)

(declare-fun tp!2359386 () Bool)

(declare-fun tp!2359387 () Bool)

(assert (=> b!7935041 (= e!4682277 (and (inv!95774 (left!56888 (right!57218 t!4440))) tp!2359387 (inv!95774 (right!57218 (right!57218 t!4440))) tp!2359386))))

(declare-fun b!7935043 () Bool)

(declare-fun e!4682276 () Bool)

(declare-fun tp!2359385 () Bool)

(assert (=> b!7935043 (= e!4682276 tp!2359385)))

(declare-fun b!7935042 () Bool)

(assert (=> b!7935042 (= e!4682277 (and (inv!95775 (xs!19308 (right!57218 t!4440))) e!4682276))))

(assert (=> b!7934834 (= tp!2359369 (and (inv!95774 (right!57218 t!4440)) e!4682277))))

(assert (= (and b!7934834 ((_ is Node!15912) (right!57218 t!4440))) b!7935041))

(assert (= b!7935042 b!7935043))

(assert (= (and b!7934834 ((_ is Leaf!30249) (right!57218 t!4440))) b!7935042))

(declare-fun m!8322718 () Bool)

(assert (=> b!7935041 m!8322718))

(declare-fun m!8322720 () Bool)

(assert (=> b!7935041 m!8322720))

(declare-fun m!8322722 () Bool)

(assert (=> b!7935042 m!8322722))

(assert (=> b!7934834 m!8322500))

(check-sat (not b!7935011) (not b!7934845) tp_is_empty!53249 (not b!7934937) (not b!7935025) (not b!7934932) (not b!7935007) (not b!7934992) (not b!7934935) (not b!7935034) (not b!7934893) (not b!7934906) (not bm!735643) (not bm!735635) (not b!7935006) (not b!7934991) (not b!7935036) (not b!7935041) (not b!7934987) (not b!7934990) (not b!7934997) (not b!7935043) (not bm!735642) (not d!2372565) (not b!7935009) (not b!7935035) (not b!7934972) (not bm!735634) (not b!7934936) (not b!7934846) (not b!7934996) (not b!7935008) (not b!7935018) (not d!2372535) (not b!7934894) (not b!7934934) (not b!7934899) (not b!7934900) (not b!7935020) (not b!7934834) (not b!7934977) (not b!7935042) (not b!7934933) (not b!7934975) (not b!7935010) (not b!7934907) (not b!7934895) (not b!7934974))
(check-sat)
(get-model)

(declare-fun d!2372567 () Bool)

(declare-fun lt!2695167 () Bool)

(declare-fun isEmpty!42797 (List!74582) Bool)

(assert (=> d!2372567 (= lt!2695167 (isEmpty!42797 (list!19435 (right!57218 t!4440))))))

(declare-fun size!43279 (Conc!15912) Int)

(assert (=> d!2372567 (= lt!2695167 (= (size!43279 (right!57218 t!4440)) 0))))

(assert (=> d!2372567 (= (isEmpty!42796 (right!57218 t!4440)) lt!2695167)))

(declare-fun bs!1969133 () Bool)

(assert (= bs!1969133 d!2372567))

(assert (=> bs!1969133 m!8322580))

(assert (=> bs!1969133 m!8322580))

(declare-fun m!8322736 () Bool)

(assert (=> bs!1969133 m!8322736))

(declare-fun m!8322738 () Bool)

(assert (=> bs!1969133 m!8322738))

(assert (=> b!7935010 d!2372567))

(declare-fun b!7935067 () Bool)

(declare-fun e!4682291 () List!74582)

(assert (=> b!7935067 (= e!4682291 (list!19435 (right!57218 t!4440)))))

(declare-fun b!7935070 () Bool)

(declare-fun e!4682292 () Bool)

(declare-fun lt!2695170 () List!74582)

(assert (=> b!7935070 (= e!4682292 (or (not (= (list!19435 (right!57218 t!4440)) Nil!74458)) (= lt!2695170 (list!19435 (left!56888 t!4440)))))))

(declare-fun d!2372569 () Bool)

(assert (=> d!2372569 e!4682292))

(declare-fun res!3148230 () Bool)

(assert (=> d!2372569 (=> (not res!3148230) (not e!4682292))))

(assert (=> d!2372569 (= res!3148230 (= (content!15792 lt!2695170) ((_ map or) (content!15792 (list!19435 (left!56888 t!4440))) (content!15792 (list!19435 (right!57218 t!4440))))))))

(assert (=> d!2372569 (= lt!2695170 e!4682291)))

(declare-fun c!1457795 () Bool)

(assert (=> d!2372569 (= c!1457795 ((_ is Nil!74458) (list!19435 (left!56888 t!4440))))))

(assert (=> d!2372569 (= (++!18268 (list!19435 (left!56888 t!4440)) (list!19435 (right!57218 t!4440))) lt!2695170)))

(declare-fun b!7935069 () Bool)

(declare-fun res!3148229 () Bool)

(assert (=> b!7935069 (=> (not res!3148229) (not e!4682292))))

(assert (=> b!7935069 (= res!3148229 (= (size!43276 lt!2695170) (+ (size!43276 (list!19435 (left!56888 t!4440))) (size!43276 (list!19435 (right!57218 t!4440))))))))

(declare-fun b!7935068 () Bool)

(assert (=> b!7935068 (= e!4682291 (Cons!74458 (h!80906 (list!19435 (left!56888 t!4440))) (++!18268 (t!390263 (list!19435 (left!56888 t!4440))) (list!19435 (right!57218 t!4440)))))))

(assert (= (and d!2372569 c!1457795) b!7935067))

(assert (= (and d!2372569 (not c!1457795)) b!7935068))

(assert (= (and d!2372569 res!3148230) b!7935069))

(assert (= (and b!7935069 res!3148229) b!7935070))

(declare-fun m!8322740 () Bool)

(assert (=> d!2372569 m!8322740))

(assert (=> d!2372569 m!8322578))

(declare-fun m!8322742 () Bool)

(assert (=> d!2372569 m!8322742))

(assert (=> d!2372569 m!8322580))

(declare-fun m!8322744 () Bool)

(assert (=> d!2372569 m!8322744))

(declare-fun m!8322746 () Bool)

(assert (=> b!7935069 m!8322746))

(assert (=> b!7935069 m!8322578))

(declare-fun m!8322748 () Bool)

(assert (=> b!7935069 m!8322748))

(assert (=> b!7935069 m!8322580))

(declare-fun m!8322750 () Bool)

(assert (=> b!7935069 m!8322750))

(assert (=> b!7935068 m!8322580))

(declare-fun m!8322752 () Bool)

(assert (=> b!7935068 m!8322752))

(assert (=> b!7934907 d!2372569))

(declare-fun b!7935072 () Bool)

(declare-fun e!4682293 () List!74582)

(declare-fun e!4682294 () List!74582)

(assert (=> b!7935072 (= e!4682293 e!4682294)))

(declare-fun c!1457797 () Bool)

(assert (=> b!7935072 (= c!1457797 ((_ is Leaf!30249) (left!56888 t!4440)))))

(declare-fun b!7935074 () Bool)

(assert (=> b!7935074 (= e!4682294 (++!18268 (list!19435 (left!56888 (left!56888 t!4440))) (list!19435 (right!57218 (left!56888 t!4440)))))))

(declare-fun b!7935071 () Bool)

(assert (=> b!7935071 (= e!4682293 Nil!74458)))

(declare-fun d!2372571 () Bool)

(declare-fun c!1457796 () Bool)

(assert (=> d!2372571 (= c!1457796 ((_ is Empty!15912) (left!56888 t!4440)))))

(assert (=> d!2372571 (= (list!19435 (left!56888 t!4440)) e!4682293)))

(declare-fun b!7935073 () Bool)

(assert (=> b!7935073 (= e!4682294 (list!19434 (xs!19308 (left!56888 t!4440))))))

(assert (= (and d!2372571 c!1457796) b!7935071))

(assert (= (and d!2372571 (not c!1457796)) b!7935072))

(assert (= (and b!7935072 c!1457797) b!7935073))

(assert (= (and b!7935072 (not c!1457797)) b!7935074))

(declare-fun m!8322754 () Bool)

(assert (=> b!7935074 m!8322754))

(declare-fun m!8322756 () Bool)

(assert (=> b!7935074 m!8322756))

(assert (=> b!7935074 m!8322754))

(assert (=> b!7935074 m!8322756))

(declare-fun m!8322758 () Bool)

(assert (=> b!7935074 m!8322758))

(declare-fun m!8322760 () Bool)

(assert (=> b!7935073 m!8322760))

(assert (=> b!7934907 d!2372571))

(declare-fun b!7935076 () Bool)

(declare-fun e!4682295 () List!74582)

(declare-fun e!4682296 () List!74582)

(assert (=> b!7935076 (= e!4682295 e!4682296)))

(declare-fun c!1457799 () Bool)

(assert (=> b!7935076 (= c!1457799 ((_ is Leaf!30249) (right!57218 t!4440)))))

(declare-fun b!7935078 () Bool)

(assert (=> b!7935078 (= e!4682296 (++!18268 (list!19435 (left!56888 (right!57218 t!4440))) (list!19435 (right!57218 (right!57218 t!4440)))))))

(declare-fun b!7935075 () Bool)

(assert (=> b!7935075 (= e!4682295 Nil!74458)))

(declare-fun d!2372573 () Bool)

(declare-fun c!1457798 () Bool)

(assert (=> d!2372573 (= c!1457798 ((_ is Empty!15912) (right!57218 t!4440)))))

(assert (=> d!2372573 (= (list!19435 (right!57218 t!4440)) e!4682295)))

(declare-fun b!7935077 () Bool)

(assert (=> b!7935077 (= e!4682296 (list!19434 (xs!19308 (right!57218 t!4440))))))

(assert (= (and d!2372573 c!1457798) b!7935075))

(assert (= (and d!2372573 (not c!1457798)) b!7935076))

(assert (= (and b!7935076 c!1457799) b!7935077))

(assert (= (and b!7935076 (not c!1457799)) b!7935078))

(declare-fun m!8322762 () Bool)

(assert (=> b!7935078 m!8322762))

(declare-fun m!8322764 () Bool)

(assert (=> b!7935078 m!8322764))

(assert (=> b!7935078 m!8322762))

(assert (=> b!7935078 m!8322764))

(declare-fun m!8322766 () Bool)

(assert (=> b!7935078 m!8322766))

(declare-fun m!8322768 () Bool)

(assert (=> b!7935077 m!8322768))

(assert (=> b!7934907 d!2372573))

(declare-fun b!7935079 () Bool)

(declare-fun e!4682297 () List!74582)

(assert (=> b!7935079 (= e!4682297 (Cons!74458 (h!80906 (t!390263 (list!19435 t!4440))) ($colon+!325 (t!390263 (t!390263 (list!19435 t!4440))) v!5484)))))

(declare-fun bm!735646 () Bool)

(declare-fun call!735652 () (_ BitVec 32))

(declare-fun lt!2695171 () List!74582)

(assert (=> bm!735646 (= call!735652 (isize!128 lt!2695171))))

(declare-fun b!7935080 () Bool)

(declare-fun res!3148232 () Bool)

(declare-fun e!4682298 () Bool)

(assert (=> b!7935080 (=> (not res!3148232) (not e!4682298))))

(assert (=> b!7935080 (= res!3148232 (= (content!15792 lt!2695171) ((_ map or) (content!15792 (t!390263 (list!19435 t!4440))) (store ((as const (Array T!145874 Bool)) false) v!5484 true))))))

(declare-fun bm!735647 () Bool)

(declare-fun call!735651 () (_ BitVec 32))

(assert (=> bm!735647 (= call!735651 (isize!128 (t!390263 (list!19435 t!4440))))))

(declare-fun d!2372575 () Bool)

(assert (=> d!2372575 e!4682298))

(declare-fun res!3148233 () Bool)

(assert (=> d!2372575 (=> (not res!3148233) (not e!4682298))))

(assert (=> d!2372575 (= res!3148233 ((_ is Cons!74458) lt!2695171))))

(assert (=> d!2372575 (= lt!2695171 e!4682297)))

(declare-fun c!1457801 () Bool)

(assert (=> d!2372575 (= c!1457801 ((_ is Nil!74458) (t!390263 (list!19435 t!4440))))))

(assert (=> d!2372575 (= ($colon+!325 (t!390263 (list!19435 t!4440)) v!5484) lt!2695171)))

(declare-fun b!7935081 () Bool)

(declare-fun res!3148231 () Bool)

(assert (=> b!7935081 (=> (not res!3148231) (not e!4682298))))

(assert (=> b!7935081 (= res!3148231 (= (size!43276 lt!2695171) (+ (size!43276 (t!390263 (list!19435 t!4440))) 1)))))

(declare-fun b!7935082 () Bool)

(declare-fun e!4682299 () Bool)

(assert (=> b!7935082 (= e!4682299 (= call!735652 (bvadd call!735651 #b00000000000000000000000000000001)))))

(declare-fun b!7935083 () Bool)

(assert (=> b!7935083 (= e!4682297 (Cons!74458 v!5484 (t!390263 (list!19435 t!4440))))))

(declare-fun b!7935084 () Bool)

(assert (=> b!7935084 (= e!4682299 (= call!735652 call!735651))))

(declare-fun b!7935085 () Bool)

(assert (=> b!7935085 (= e!4682298 (= lt!2695171 (++!18268 (t!390263 (list!19435 t!4440)) (Cons!74458 v!5484 Nil!74458))))))

(declare-fun b!7935086 () Bool)

(declare-fun res!3148234 () Bool)

(assert (=> b!7935086 (=> (not res!3148234) (not e!4682298))))

(assert (=> b!7935086 (= res!3148234 e!4682299)))

(declare-fun c!1457800 () Bool)

(assert (=> b!7935086 (= c!1457800 (bvslt (isize!128 (t!390263 (list!19435 t!4440))) #b01111111111111111111111111111111))))

(assert (= (and d!2372575 c!1457801) b!7935083))

(assert (= (and d!2372575 (not c!1457801)) b!7935079))

(assert (= (and d!2372575 res!3148233) b!7935081))

(assert (= (and b!7935081 res!3148231) b!7935086))

(assert (= (and b!7935086 c!1457800) b!7935082))

(assert (= (and b!7935086 (not c!1457800)) b!7935084))

(assert (= (or b!7935082 b!7935084) bm!735646))

(assert (= (or b!7935082 b!7935084) bm!735647))

(assert (= (and b!7935086 res!3148234) b!7935080))

(assert (= (and b!7935080 res!3148232) b!7935085))

(declare-fun m!8322770 () Bool)

(assert (=> bm!735646 m!8322770))

(declare-fun m!8322772 () Bool)

(assert (=> b!7935081 m!8322772))

(declare-fun m!8322774 () Bool)

(assert (=> b!7935081 m!8322774))

(declare-fun m!8322776 () Bool)

(assert (=> b!7935085 m!8322776))

(declare-fun m!8322778 () Bool)

(assert (=> b!7935080 m!8322778))

(declare-fun m!8322780 () Bool)

(assert (=> b!7935080 m!8322780))

(assert (=> b!7935080 m!8322572))

(declare-fun m!8322782 () Bool)

(assert (=> b!7935086 m!8322782))

(assert (=> bm!735647 m!8322782))

(declare-fun m!8322784 () Bool)

(assert (=> b!7935079 m!8322784))

(assert (=> b!7934893 d!2372575))

(declare-fun d!2372577 () Bool)

(assert (=> d!2372577 (= (height!2227 (left!56888 t!4440)) (ite ((_ is Empty!15912) (left!56888 t!4440)) 0 (ite ((_ is Leaf!30249) (left!56888 t!4440)) 1 (cheight!16123 (left!56888 t!4440)))))))

(assert (=> b!7935009 d!2372577))

(declare-fun d!2372579 () Bool)

(assert (=> d!2372579 (= (height!2227 (right!57218 t!4440)) (ite ((_ is Empty!15912) (right!57218 t!4440)) 0 (ite ((_ is Leaf!30249) (right!57218 t!4440)) 1 (cheight!16123 (right!57218 t!4440)))))))

(assert (=> b!7935009 d!2372579))

(assert (=> b!7934906 d!2372553))

(assert (=> b!7935008 d!2372577))

(assert (=> b!7935008 d!2372579))

(declare-fun d!2372581 () Bool)

(declare-fun lt!2695176 () (_ BitVec 32))

(assert (=> d!2372581 (and (bvsle #b00000000000000000000000000000000 lt!2695176) (bvsle lt!2695176 #b01111111111111111111111111111111))))

(declare-fun e!4682302 () (_ BitVec 32))

(assert (=> d!2372581 (= lt!2695176 e!4682302)))

(declare-fun c!1457804 () Bool)

(assert (=> d!2372581 (= c!1457804 ((_ is Nil!74458) (list!19435 t!4440)))))

(assert (=> d!2372581 (= (isize!128 (list!19435 t!4440)) lt!2695176)))

(declare-fun b!7935091 () Bool)

(assert (=> b!7935091 (= e!4682302 #b00000000000000000000000000000000)))

(declare-fun b!7935092 () Bool)

(declare-fun lt!2695177 () (_ BitVec 32))

(assert (=> b!7935092 (= e!4682302 (ite (= lt!2695177 #b01111111111111111111111111111111) lt!2695177 (bvadd #b00000000000000000000000000000001 lt!2695177)))))

(assert (=> b!7935092 (= lt!2695177 (isize!128 (t!390263 (list!19435 t!4440))))))

(assert (= (and d!2372581 c!1457804) b!7935091))

(assert (= (and d!2372581 (not c!1457804)) b!7935092))

(assert (=> b!7935092 m!8322782))

(assert (=> bm!735635 d!2372581))

(assert (=> b!7934834 d!2372537))

(assert (=> b!7934834 d!2372543))

(declare-fun d!2372583 () Bool)

(declare-fun lt!2695178 () (_ BitVec 32))

(assert (=> d!2372583 (and (bvsle #b00000000000000000000000000000000 lt!2695178) (bvsle lt!2695178 #b01111111111111111111111111111111))))

(declare-fun e!4682303 () (_ BitVec 32))

(assert (=> d!2372583 (= lt!2695178 e!4682303)))

(declare-fun c!1457805 () Bool)

(assert (=> d!2372583 (= c!1457805 ((_ is Nil!74458) (list!19434 (xs!19308 t!4440))))))

(assert (=> d!2372583 (= (isize!128 (list!19434 (xs!19308 t!4440))) lt!2695178)))

(declare-fun b!7935093 () Bool)

(assert (=> b!7935093 (= e!4682303 #b00000000000000000000000000000000)))

(declare-fun b!7935094 () Bool)

(declare-fun lt!2695179 () (_ BitVec 32))

(assert (=> b!7935094 (= e!4682303 (ite (= lt!2695179 #b01111111111111111111111111111111) lt!2695179 (bvadd #b00000000000000000000000000000001 lt!2695179)))))

(assert (=> b!7935094 (= lt!2695179 (isize!128 (t!390263 (list!19434 (xs!19308 t!4440)))))))

(assert (= (and d!2372583 c!1457805) b!7935093))

(assert (= (and d!2372583 (not c!1457805)) b!7935094))

(declare-fun m!8322786 () Bool)

(assert (=> b!7935094 m!8322786))

(assert (=> b!7934997 d!2372583))

(declare-fun d!2372585 () Bool)

(declare-fun c!1457808 () Bool)

(assert (=> d!2372585 (= c!1457808 ((_ is Nil!74458) lt!2695147))))

(declare-fun e!4682306 () (InoxSet T!145874))

(assert (=> d!2372585 (= (content!15792 lt!2695147) e!4682306)))

(declare-fun b!7935099 () Bool)

(assert (=> b!7935099 (= e!4682306 ((as const (Array T!145874 Bool)) false))))

(declare-fun b!7935100 () Bool)

(assert (=> b!7935100 (= e!4682306 ((_ map or) (store ((as const (Array T!145874 Bool)) false) (h!80906 lt!2695147) true) (content!15792 (t!390263 lt!2695147))))))

(assert (= (and d!2372585 c!1457808) b!7935099))

(assert (= (and d!2372585 (not c!1457808)) b!7935100))

(declare-fun m!8322788 () Bool)

(assert (=> b!7935100 m!8322788))

(declare-fun m!8322790 () Bool)

(assert (=> b!7935100 m!8322790))

(assert (=> b!7934894 d!2372585))

(declare-fun d!2372587 () Bool)

(declare-fun c!1457809 () Bool)

(assert (=> d!2372587 (= c!1457809 ((_ is Nil!74458) (list!19435 t!4440)))))

(declare-fun e!4682307 () (InoxSet T!145874))

(assert (=> d!2372587 (= (content!15792 (list!19435 t!4440)) e!4682307)))

(declare-fun b!7935101 () Bool)

(assert (=> b!7935101 (= e!4682307 ((as const (Array T!145874 Bool)) false))))

(declare-fun b!7935102 () Bool)

(assert (=> b!7935102 (= e!4682307 ((_ map or) (store ((as const (Array T!145874 Bool)) false) (h!80906 (list!19435 t!4440)) true) (content!15792 (t!390263 (list!19435 t!4440)))))))

(assert (= (and d!2372587 c!1457809) b!7935101))

(assert (= (and d!2372587 (not c!1457809)) b!7935102))

(declare-fun m!8322792 () Bool)

(assert (=> b!7935102 m!8322792))

(assert (=> b!7935102 m!8322780))

(assert (=> b!7934894 d!2372587))

(declare-fun b!7935103 () Bool)

(declare-fun e!4682308 () List!74582)

(assert (=> b!7935103 (= e!4682308 (Cons!74458 v!5484 Nil!74458))))

(declare-fun lt!2695180 () List!74582)

(declare-fun e!4682309 () Bool)

(declare-fun b!7935106 () Bool)

(assert (=> b!7935106 (= e!4682309 (or (not (= (Cons!74458 v!5484 Nil!74458) Nil!74458)) (= lt!2695180 (list!19434 (xs!19308 t!4440)))))))

(declare-fun d!2372589 () Bool)

(assert (=> d!2372589 e!4682309))

(declare-fun res!3148236 () Bool)

(assert (=> d!2372589 (=> (not res!3148236) (not e!4682309))))

(assert (=> d!2372589 (= res!3148236 (= (content!15792 lt!2695180) ((_ map or) (content!15792 (list!19434 (xs!19308 t!4440))) (content!15792 (Cons!74458 v!5484 Nil!74458)))))))

(assert (=> d!2372589 (= lt!2695180 e!4682308)))

(declare-fun c!1457810 () Bool)

(assert (=> d!2372589 (= c!1457810 ((_ is Nil!74458) (list!19434 (xs!19308 t!4440))))))

(assert (=> d!2372589 (= (++!18268 (list!19434 (xs!19308 t!4440)) (Cons!74458 v!5484 Nil!74458)) lt!2695180)))

(declare-fun b!7935105 () Bool)

(declare-fun res!3148235 () Bool)

(assert (=> b!7935105 (=> (not res!3148235) (not e!4682309))))

(assert (=> b!7935105 (= res!3148235 (= (size!43276 lt!2695180) (+ (size!43276 (list!19434 (xs!19308 t!4440))) (size!43276 (Cons!74458 v!5484 Nil!74458)))))))

(declare-fun b!7935104 () Bool)

(assert (=> b!7935104 (= e!4682308 (Cons!74458 (h!80906 (list!19434 (xs!19308 t!4440))) (++!18268 (t!390263 (list!19434 (xs!19308 t!4440))) (Cons!74458 v!5484 Nil!74458))))))

(assert (= (and d!2372589 c!1457810) b!7935103))

(assert (= (and d!2372589 (not c!1457810)) b!7935104))

(assert (= (and d!2372589 res!3148236) b!7935105))

(assert (= (and b!7935105 res!3148235) b!7935106))

(declare-fun m!8322794 () Bool)

(assert (=> d!2372589 m!8322794))

(assert (=> d!2372589 m!8322516))

(assert (=> d!2372589 m!8322656))

(declare-fun m!8322796 () Bool)

(assert (=> d!2372589 m!8322796))

(declare-fun m!8322798 () Bool)

(assert (=> b!7935105 m!8322798))

(assert (=> b!7935105 m!8322516))

(assert (=> b!7935105 m!8322650))

(declare-fun m!8322800 () Bool)

(assert (=> b!7935105 m!8322800))

(declare-fun m!8322802 () Bool)

(assert (=> b!7935104 m!8322802))

(assert (=> b!7934996 d!2372589))

(declare-fun d!2372591 () Bool)

(declare-fun lt!2695181 () Bool)

(assert (=> d!2372591 (= lt!2695181 (isEmpty!42797 (list!19435 (left!56888 t!4440))))))

(assert (=> d!2372591 (= lt!2695181 (= (size!43279 (left!56888 t!4440)) 0))))

(assert (=> d!2372591 (= (isEmpty!42796 (left!56888 t!4440)) lt!2695181)))

(declare-fun bs!1969134 () Bool)

(assert (= bs!1969134 d!2372591))

(assert (=> bs!1969134 m!8322578))

(assert (=> bs!1969134 m!8322578))

(declare-fun m!8322804 () Bool)

(assert (=> bs!1969134 m!8322804))

(declare-fun m!8322806 () Bool)

(assert (=> bs!1969134 m!8322806))

(assert (=> b!7935011 d!2372591))

(declare-fun d!2372593 () Bool)

(declare-fun lt!2695182 () (_ BitVec 32))

(assert (=> d!2372593 (and (bvsle #b00000000000000000000000000000000 lt!2695182) (bvsle lt!2695182 #b01111111111111111111111111111111))))

(declare-fun e!4682310 () (_ BitVec 32))

(assert (=> d!2372593 (= lt!2695182 e!4682310)))

(declare-fun c!1457811 () Bool)

(assert (=> d!2372593 (= c!1457811 ((_ is Nil!74458) lt!2695147))))

(assert (=> d!2372593 (= (isize!128 lt!2695147) lt!2695182)))

(declare-fun b!7935107 () Bool)

(assert (=> b!7935107 (= e!4682310 #b00000000000000000000000000000000)))

(declare-fun b!7935108 () Bool)

(declare-fun lt!2695183 () (_ BitVec 32))

(assert (=> b!7935108 (= e!4682310 (ite (= lt!2695183 #b01111111111111111111111111111111) lt!2695183 (bvadd #b00000000000000000000000000000001 lt!2695183)))))

(assert (=> b!7935108 (= lt!2695183 (isize!128 (t!390263 lt!2695147)))))

(assert (= (and d!2372593 c!1457811) b!7935107))

(assert (= (and d!2372593 (not c!1457811)) b!7935108))

(declare-fun m!8322808 () Bool)

(assert (=> b!7935108 m!8322808))

(assert (=> bm!735634 d!2372593))

(declare-fun d!2372595 () Bool)

(declare-fun res!3148241 () Bool)

(declare-fun e!4682313 () Bool)

(assert (=> d!2372595 (=> (not res!3148241) (not e!4682313))))

(assert (=> d!2372595 (= res!3148241 (<= (size!43276 (list!19434 (xs!19308 (left!56888 t!4440)))) 512))))

(assert (=> d!2372595 (= (inv!95779 (left!56888 t!4440)) e!4682313)))

(declare-fun b!7935113 () Bool)

(declare-fun res!3148242 () Bool)

(assert (=> b!7935113 (=> (not res!3148242) (not e!4682313))))

(assert (=> b!7935113 (= res!3148242 (= (csize!32055 (left!56888 t!4440)) (size!43276 (list!19434 (xs!19308 (left!56888 t!4440))))))))

(declare-fun b!7935114 () Bool)

(assert (=> b!7935114 (= e!4682313 (and (> (csize!32055 (left!56888 t!4440)) 0) (<= (csize!32055 (left!56888 t!4440)) 512)))))

(assert (= (and d!2372595 res!3148241) b!7935113))

(assert (= (and b!7935113 res!3148242) b!7935114))

(assert (=> d!2372595 m!8322760))

(assert (=> d!2372595 m!8322760))

(declare-fun m!8322810 () Bool)

(assert (=> d!2372595 m!8322810))

(assert (=> b!7935113 m!8322760))

(assert (=> b!7935113 m!8322760))

(assert (=> b!7935113 m!8322810))

(assert (=> b!7934974 d!2372595))

(declare-fun d!2372597 () Bool)

(declare-fun lt!2695184 () (_ BitVec 32))

(assert (=> d!2372597 (and (bvsle #b00000000000000000000000000000000 lt!2695184) (bvsle lt!2695184 #b01111111111111111111111111111111))))

(declare-fun e!4682314 () (_ BitVec 32))

(assert (=> d!2372597 (= lt!2695184 e!4682314)))

(declare-fun c!1457812 () Bool)

(assert (=> d!2372597 (= c!1457812 ((_ is Nil!74458) lt!2695160))))

(assert (=> d!2372597 (= (isize!128 lt!2695160) lt!2695184)))

(declare-fun b!7935115 () Bool)

(assert (=> b!7935115 (= e!4682314 #b00000000000000000000000000000000)))

(declare-fun b!7935116 () Bool)

(declare-fun lt!2695185 () (_ BitVec 32))

(assert (=> b!7935116 (= e!4682314 (ite (= lt!2695185 #b01111111111111111111111111111111) lt!2695185 (bvadd #b00000000000000000000000000000001 lt!2695185)))))

(assert (=> b!7935116 (= lt!2695185 (isize!128 (t!390263 lt!2695160)))))

(assert (= (and d!2372597 c!1457812) b!7935115))

(assert (= (and d!2372597 (not c!1457812)) b!7935116))

(declare-fun m!8322812 () Bool)

(assert (=> b!7935116 m!8322812))

(assert (=> bm!735642 d!2372597))

(declare-fun d!2372599 () Bool)

(declare-fun lt!2695186 () Int)

(assert (=> d!2372599 (>= lt!2695186 0)))

(declare-fun e!4682315 () Int)

(assert (=> d!2372599 (= lt!2695186 e!4682315)))

(declare-fun c!1457813 () Bool)

(assert (=> d!2372599 (= c!1457813 ((_ is Nil!74458) (innerList!16000 (xs!19308 t!4440))))))

(assert (=> d!2372599 (= (size!43276 (innerList!16000 (xs!19308 t!4440))) lt!2695186)))

(declare-fun b!7935117 () Bool)

(assert (=> b!7935117 (= e!4682315 0)))

(declare-fun b!7935118 () Bool)

(assert (=> b!7935118 (= e!4682315 (+ 1 (size!43276 (t!390263 (innerList!16000 (xs!19308 t!4440))))))))

(assert (= (and d!2372599 c!1457813) b!7935117))

(assert (= (and d!2372599 (not c!1457813)) b!7935118))

(declare-fun m!8322814 () Bool)

(assert (=> b!7935118 m!8322814))

(assert (=> d!2372565 d!2372599))

(declare-fun b!7935119 () Bool)

(declare-fun e!4682316 () List!74582)

(assert (=> b!7935119 (= e!4682316 (Cons!74458 (h!80906 (t!390263 (list!19434 (xs!19308 t!4440)))) ($colon+!325 (t!390263 (t!390263 (list!19434 (xs!19308 t!4440)))) v!5484)))))

(declare-fun bm!735648 () Bool)

(declare-fun call!735654 () (_ BitVec 32))

(declare-fun lt!2695187 () List!74582)

(assert (=> bm!735648 (= call!735654 (isize!128 lt!2695187))))

(declare-fun b!7935120 () Bool)

(declare-fun res!3148244 () Bool)

(declare-fun e!4682317 () Bool)

(assert (=> b!7935120 (=> (not res!3148244) (not e!4682317))))

(assert (=> b!7935120 (= res!3148244 (= (content!15792 lt!2695187) ((_ map or) (content!15792 (t!390263 (list!19434 (xs!19308 t!4440)))) (store ((as const (Array T!145874 Bool)) false) v!5484 true))))))

(declare-fun bm!735649 () Bool)

(declare-fun call!735653 () (_ BitVec 32))

(assert (=> bm!735649 (= call!735653 (isize!128 (t!390263 (list!19434 (xs!19308 t!4440)))))))

(declare-fun d!2372601 () Bool)

(assert (=> d!2372601 e!4682317))

(declare-fun res!3148245 () Bool)

(assert (=> d!2372601 (=> (not res!3148245) (not e!4682317))))

(assert (=> d!2372601 (= res!3148245 ((_ is Cons!74458) lt!2695187))))

(assert (=> d!2372601 (= lt!2695187 e!4682316)))

(declare-fun c!1457815 () Bool)

(assert (=> d!2372601 (= c!1457815 ((_ is Nil!74458) (t!390263 (list!19434 (xs!19308 t!4440)))))))

(assert (=> d!2372601 (= ($colon+!325 (t!390263 (list!19434 (xs!19308 t!4440))) v!5484) lt!2695187)))

(declare-fun b!7935121 () Bool)

(declare-fun res!3148243 () Bool)

(assert (=> b!7935121 (=> (not res!3148243) (not e!4682317))))

(assert (=> b!7935121 (= res!3148243 (= (size!43276 lt!2695187) (+ (size!43276 (t!390263 (list!19434 (xs!19308 t!4440)))) 1)))))

(declare-fun b!7935122 () Bool)

(declare-fun e!4682318 () Bool)

(assert (=> b!7935122 (= e!4682318 (= call!735654 (bvadd call!735653 #b00000000000000000000000000000001)))))

(declare-fun b!7935123 () Bool)

(assert (=> b!7935123 (= e!4682316 (Cons!74458 v!5484 (t!390263 (list!19434 (xs!19308 t!4440)))))))

(declare-fun b!7935124 () Bool)

(assert (=> b!7935124 (= e!4682318 (= call!735654 call!735653))))

(declare-fun b!7935125 () Bool)

(assert (=> b!7935125 (= e!4682317 (= lt!2695187 (++!18268 (t!390263 (list!19434 (xs!19308 t!4440))) (Cons!74458 v!5484 Nil!74458))))))

(declare-fun b!7935126 () Bool)

(declare-fun res!3148246 () Bool)

(assert (=> b!7935126 (=> (not res!3148246) (not e!4682317))))

(assert (=> b!7935126 (= res!3148246 e!4682318)))

(declare-fun c!1457814 () Bool)

(assert (=> b!7935126 (= c!1457814 (bvslt (isize!128 (t!390263 (list!19434 (xs!19308 t!4440)))) #b01111111111111111111111111111111))))

(assert (= (and d!2372601 c!1457815) b!7935123))

(assert (= (and d!2372601 (not c!1457815)) b!7935119))

(assert (= (and d!2372601 res!3148245) b!7935121))

(assert (= (and b!7935121 res!3148243) b!7935126))

(assert (= (and b!7935126 c!1457814) b!7935122))

(assert (= (and b!7935126 (not c!1457814)) b!7935124))

(assert (= (or b!7935122 b!7935124) bm!735648))

(assert (= (or b!7935122 b!7935124) bm!735649))

(assert (= (and b!7935126 res!3148246) b!7935120))

(assert (= (and b!7935120 res!3148244) b!7935125))

(declare-fun m!8322816 () Bool)

(assert (=> bm!735648 m!8322816))

(declare-fun m!8322818 () Bool)

(assert (=> b!7935121 m!8322818))

(declare-fun m!8322820 () Bool)

(assert (=> b!7935121 m!8322820))

(assert (=> b!7935125 m!8322802))

(declare-fun m!8322822 () Bool)

(assert (=> b!7935120 m!8322822))

(declare-fun m!8322824 () Bool)

(assert (=> b!7935120 m!8322824))

(assert (=> b!7935120 m!8322572))

(assert (=> b!7935126 m!8322786))

(assert (=> bm!735649 m!8322786))

(declare-fun m!8322826 () Bool)

(assert (=> b!7935119 m!8322826))

(assert (=> b!7934990 d!2372601))

(declare-fun d!2372603 () Bool)

(declare-fun res!3148253 () Bool)

(declare-fun e!4682325 () Bool)

(assert (=> d!2372603 (=> (not res!3148253) (not e!4682325))))

(assert (=> d!2372603 (= res!3148253 (= (csize!32054 t!4440) (+ (size!43279 (left!56888 t!4440)) (size!43279 (right!57218 t!4440)))))))

(assert (=> d!2372603 (= (inv!95778 t!4440) e!4682325)))

(declare-fun b!7935141 () Bool)

(declare-fun res!3148254 () Bool)

(assert (=> b!7935141 (=> (not res!3148254) (not e!4682325))))

(assert (=> b!7935141 (= res!3148254 (and (not (= (left!56888 t!4440) Empty!15912)) (not (= (right!57218 t!4440) Empty!15912))))))

(declare-fun b!7935142 () Bool)

(declare-fun res!3148255 () Bool)

(assert (=> b!7935142 (=> (not res!3148255) (not e!4682325))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7935142 (= res!3148255 (= (cheight!16123 t!4440) (+ (max!0 (height!2227 (left!56888 t!4440)) (height!2227 (right!57218 t!4440))) 1)))))

(declare-fun b!7935143 () Bool)

(assert (=> b!7935143 (= e!4682325 (<= 0 (cheight!16123 t!4440)))))

(assert (= (and d!2372603 res!3148253) b!7935141))

(assert (= (and b!7935141 res!3148254) b!7935142))

(assert (= (and b!7935142 res!3148255) b!7935143))

(assert (=> d!2372603 m!8322806))

(assert (=> d!2372603 m!8322738))

(assert (=> b!7935142 m!8322678))

(assert (=> b!7935142 m!8322680))

(assert (=> b!7935142 m!8322678))

(assert (=> b!7935142 m!8322680))

(declare-fun m!8322838 () Bool)

(assert (=> b!7935142 m!8322838))

(assert (=> b!7935018 d!2372603))

(declare-fun d!2372613 () Bool)

(declare-fun lt!2695190 () Int)

(assert (=> d!2372613 (>= lt!2695190 0)))

(declare-fun e!4682328 () Int)

(assert (=> d!2372613 (= lt!2695190 e!4682328)))

(declare-fun c!1457822 () Bool)

(assert (=> d!2372613 (= c!1457822 ((_ is Nil!74458) (t!390263 ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484))))))

(assert (=> d!2372613 (= (size!43276 (t!390263 ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484))) lt!2695190)))

(declare-fun b!7935148 () Bool)

(assert (=> b!7935148 (= e!4682328 0)))

(declare-fun b!7935149 () Bool)

(assert (=> b!7935149 (= e!4682328 (+ 1 (size!43276 (t!390263 (t!390263 ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484))))))))

(assert (= (and d!2372613 c!1457822) b!7935148))

(assert (= (and d!2372613 (not c!1457822)) b!7935149))

(declare-fun m!8322844 () Bool)

(assert (=> b!7935149 m!8322844))

(assert (=> b!7934987 d!2372613))

(declare-fun d!2372617 () Bool)

(declare-fun res!3148256 () Bool)

(declare-fun e!4682329 () Bool)

(assert (=> d!2372617 (=> (not res!3148256) (not e!4682329))))

(assert (=> d!2372617 (= res!3148256 (= (csize!32054 (left!56888 t!4440)) (+ (size!43279 (left!56888 (left!56888 t!4440))) (size!43279 (right!57218 (left!56888 t!4440))))))))

(assert (=> d!2372617 (= (inv!95778 (left!56888 t!4440)) e!4682329)))

(declare-fun b!7935150 () Bool)

(declare-fun res!3148257 () Bool)

(assert (=> b!7935150 (=> (not res!3148257) (not e!4682329))))

(assert (=> b!7935150 (= res!3148257 (and (not (= (left!56888 (left!56888 t!4440)) Empty!15912)) (not (= (right!57218 (left!56888 t!4440)) Empty!15912))))))

(declare-fun b!7935151 () Bool)

(declare-fun res!3148258 () Bool)

(assert (=> b!7935151 (=> (not res!3148258) (not e!4682329))))

(assert (=> b!7935151 (= res!3148258 (= (cheight!16123 (left!56888 t!4440)) (+ (max!0 (height!2227 (left!56888 (left!56888 t!4440))) (height!2227 (right!57218 (left!56888 t!4440)))) 1)))))

(declare-fun b!7935152 () Bool)

(assert (=> b!7935152 (= e!4682329 (<= 0 (cheight!16123 (left!56888 t!4440))))))

(assert (= (and d!2372617 res!3148256) b!7935150))

(assert (= (and b!7935150 res!3148257) b!7935151))

(assert (= (and b!7935151 res!3148258) b!7935152))

(declare-fun m!8322846 () Bool)

(assert (=> d!2372617 m!8322846))

(declare-fun m!8322848 () Bool)

(assert (=> d!2372617 m!8322848))

(declare-fun m!8322850 () Bool)

(assert (=> b!7935151 m!8322850))

(declare-fun m!8322852 () Bool)

(assert (=> b!7935151 m!8322852))

(assert (=> b!7935151 m!8322850))

(assert (=> b!7935151 m!8322852))

(declare-fun m!8322854 () Bool)

(assert (=> b!7935151 m!8322854))

(assert (=> b!7934972 d!2372617))

(declare-fun d!2372621 () Bool)

(declare-fun lt!2695191 () Int)

(assert (=> d!2372621 (>= lt!2695191 0)))

(declare-fun e!4682330 () Int)

(assert (=> d!2372621 (= lt!2695191 e!4682330)))

(declare-fun c!1457823 () Bool)

(assert (=> d!2372621 (= c!1457823 ((_ is Nil!74458) lt!2695160))))

(assert (=> d!2372621 (= (size!43276 lt!2695160) lt!2695191)))

(declare-fun b!7935153 () Bool)

(assert (=> b!7935153 (= e!4682330 0)))

(declare-fun b!7935154 () Bool)

(assert (=> b!7935154 (= e!4682330 (+ 1 (size!43276 (t!390263 lt!2695160))))))

(assert (= (and d!2372621 c!1457823) b!7935153))

(assert (= (and d!2372621 (not c!1457823)) b!7935154))

(declare-fun m!8322856 () Bool)

(assert (=> b!7935154 m!8322856))

(assert (=> b!7934992 d!2372621))

(declare-fun d!2372623 () Bool)

(declare-fun lt!2695192 () Int)

(assert (=> d!2372623 (>= lt!2695192 0)))

(declare-fun e!4682331 () Int)

(assert (=> d!2372623 (= lt!2695192 e!4682331)))

(declare-fun c!1457824 () Bool)

(assert (=> d!2372623 (= c!1457824 ((_ is Nil!74458) (list!19434 (xs!19308 t!4440))))))

(assert (=> d!2372623 (= (size!43276 (list!19434 (xs!19308 t!4440))) lt!2695192)))

(declare-fun b!7935155 () Bool)

(assert (=> b!7935155 (= e!4682331 0)))

(declare-fun b!7935156 () Bool)

(assert (=> b!7935156 (= e!4682331 (+ 1 (size!43276 (t!390263 (list!19434 (xs!19308 t!4440))))))))

(assert (= (and d!2372623 c!1457824) b!7935155))

(assert (= (and d!2372623 (not c!1457824)) b!7935156))

(assert (=> b!7935156 m!8322820))

(assert (=> b!7934992 d!2372623))

(declare-fun b!7935157 () Bool)

(declare-fun res!3148260 () Bool)

(declare-fun e!4682333 () Bool)

(assert (=> b!7935157 (=> (not res!3148260) (not e!4682333))))

(assert (=> b!7935157 (= res!3148260 (isBalanced!4538 (left!56888 (right!57218 t!4440))))))

(declare-fun b!7935158 () Bool)

(declare-fun res!3148264 () Bool)

(assert (=> b!7935158 (=> (not res!3148264) (not e!4682333))))

(assert (=> b!7935158 (= res!3148264 (isBalanced!4538 (right!57218 (right!57218 t!4440))))))

(declare-fun b!7935159 () Bool)

(declare-fun res!3148263 () Bool)

(assert (=> b!7935159 (=> (not res!3148263) (not e!4682333))))

(assert (=> b!7935159 (= res!3148263 (<= (- (height!2227 (left!56888 (right!57218 t!4440))) (height!2227 (right!57218 (right!57218 t!4440)))) 1))))

(declare-fun b!7935160 () Bool)

(declare-fun e!4682332 () Bool)

(assert (=> b!7935160 (= e!4682332 e!4682333)))

(declare-fun res!3148262 () Bool)

(assert (=> b!7935160 (=> (not res!3148262) (not e!4682333))))

(assert (=> b!7935160 (= res!3148262 (<= (- 1) (- (height!2227 (left!56888 (right!57218 t!4440))) (height!2227 (right!57218 (right!57218 t!4440))))))))

(declare-fun d!2372625 () Bool)

(declare-fun res!3148261 () Bool)

(assert (=> d!2372625 (=> res!3148261 e!4682332)))

(assert (=> d!2372625 (= res!3148261 (not ((_ is Node!15912) (right!57218 t!4440))))))

(assert (=> d!2372625 (= (isBalanced!4538 (right!57218 t!4440)) e!4682332)))

(declare-fun b!7935161 () Bool)

(assert (=> b!7935161 (= e!4682333 (not (isEmpty!42796 (right!57218 (right!57218 t!4440)))))))

(declare-fun b!7935162 () Bool)

(declare-fun res!3148259 () Bool)

(assert (=> b!7935162 (=> (not res!3148259) (not e!4682333))))

(assert (=> b!7935162 (= res!3148259 (not (isEmpty!42796 (left!56888 (right!57218 t!4440)))))))

(assert (= (and d!2372625 (not res!3148261)) b!7935160))

(assert (= (and b!7935160 res!3148262) b!7935159))

(assert (= (and b!7935159 res!3148263) b!7935157))

(assert (= (and b!7935157 res!3148260) b!7935158))

(assert (= (and b!7935158 res!3148264) b!7935162))

(assert (= (and b!7935162 res!3148259) b!7935161))

(declare-fun m!8322858 () Bool)

(assert (=> b!7935160 m!8322858))

(declare-fun m!8322860 () Bool)

(assert (=> b!7935160 m!8322860))

(declare-fun m!8322862 () Bool)

(assert (=> b!7935162 m!8322862))

(assert (=> b!7935159 m!8322858))

(assert (=> b!7935159 m!8322860))

(declare-fun m!8322864 () Bool)

(assert (=> b!7935157 m!8322864))

(declare-fun m!8322866 () Bool)

(assert (=> b!7935161 m!8322866))

(declare-fun m!8322868 () Bool)

(assert (=> b!7935158 m!8322868))

(assert (=> b!7935007 d!2372625))

(declare-fun d!2372627 () Bool)

(assert (=> d!2372627 (= (inv!95775 (xs!19308 (right!57218 t!4440))) (<= (size!43276 (innerList!16000 (xs!19308 (right!57218 t!4440)))) 2147483647))))

(declare-fun bs!1969136 () Bool)

(assert (= bs!1969136 d!2372627))

(declare-fun m!8322870 () Bool)

(assert (=> bs!1969136 m!8322870))

(assert (=> b!7935042 d!2372627))

(assert (=> bm!735643 d!2372583))

(declare-fun d!2372629 () Bool)

(declare-fun res!3148265 () Bool)

(declare-fun e!4682334 () Bool)

(assert (=> d!2372629 (=> (not res!3148265) (not e!4682334))))

(assert (=> d!2372629 (= res!3148265 (<= (size!43276 (list!19434 (xs!19308 t!4440))) 512))))

(assert (=> d!2372629 (= (inv!95779 t!4440) e!4682334)))

(declare-fun b!7935163 () Bool)

(declare-fun res!3148266 () Bool)

(assert (=> b!7935163 (=> (not res!3148266) (not e!4682334))))

(assert (=> b!7935163 (= res!3148266 (= (csize!32055 t!4440) (size!43276 (list!19434 (xs!19308 t!4440)))))))

(declare-fun b!7935164 () Bool)

(assert (=> b!7935164 (= e!4682334 (and (> (csize!32055 t!4440) 0) (<= (csize!32055 t!4440) 512)))))

(assert (= (and d!2372629 res!3148265) b!7935163))

(assert (= (and b!7935163 res!3148266) b!7935164))

(assert (=> d!2372629 m!8322516))

(assert (=> d!2372629 m!8322516))

(assert (=> d!2372629 m!8322650))

(assert (=> b!7935163 m!8322516))

(assert (=> b!7935163 m!8322516))

(assert (=> b!7935163 m!8322650))

(assert (=> b!7935020 d!2372629))

(declare-fun b!7935165 () Bool)

(declare-fun res!3148268 () Bool)

(declare-fun e!4682336 () Bool)

(assert (=> b!7935165 (=> (not res!3148268) (not e!4682336))))

(assert (=> b!7935165 (= res!3148268 (isBalanced!4538 (left!56888 (left!56888 t!4440))))))

(declare-fun b!7935166 () Bool)

(declare-fun res!3148272 () Bool)

(assert (=> b!7935166 (=> (not res!3148272) (not e!4682336))))

(assert (=> b!7935166 (= res!3148272 (isBalanced!4538 (right!57218 (left!56888 t!4440))))))

(declare-fun b!7935167 () Bool)

(declare-fun res!3148271 () Bool)

(assert (=> b!7935167 (=> (not res!3148271) (not e!4682336))))

(assert (=> b!7935167 (= res!3148271 (<= (- (height!2227 (left!56888 (left!56888 t!4440))) (height!2227 (right!57218 (left!56888 t!4440)))) 1))))

(declare-fun b!7935168 () Bool)

(declare-fun e!4682335 () Bool)

(assert (=> b!7935168 (= e!4682335 e!4682336)))

(declare-fun res!3148270 () Bool)

(assert (=> b!7935168 (=> (not res!3148270) (not e!4682336))))

(assert (=> b!7935168 (= res!3148270 (<= (- 1) (- (height!2227 (left!56888 (left!56888 t!4440))) (height!2227 (right!57218 (left!56888 t!4440))))))))

(declare-fun d!2372631 () Bool)

(declare-fun res!3148269 () Bool)

(assert (=> d!2372631 (=> res!3148269 e!4682335)))

(assert (=> d!2372631 (= res!3148269 (not ((_ is Node!15912) (left!56888 t!4440))))))

(assert (=> d!2372631 (= (isBalanced!4538 (left!56888 t!4440)) e!4682335)))

(declare-fun b!7935169 () Bool)

(assert (=> b!7935169 (= e!4682336 (not (isEmpty!42796 (right!57218 (left!56888 t!4440)))))))

(declare-fun b!7935170 () Bool)

(declare-fun res!3148267 () Bool)

(assert (=> b!7935170 (=> (not res!3148267) (not e!4682336))))

(assert (=> b!7935170 (= res!3148267 (not (isEmpty!42796 (left!56888 (left!56888 t!4440)))))))

(assert (= (and d!2372631 (not res!3148269)) b!7935168))

(assert (= (and b!7935168 res!3148270) b!7935167))

(assert (= (and b!7935167 res!3148271) b!7935165))

(assert (= (and b!7935165 res!3148268) b!7935166))

(assert (= (and b!7935166 res!3148272) b!7935170))

(assert (= (and b!7935170 res!3148267) b!7935169))

(assert (=> b!7935168 m!8322850))

(assert (=> b!7935168 m!8322852))

(declare-fun m!8322872 () Bool)

(assert (=> b!7935170 m!8322872))

(assert (=> b!7935167 m!8322850))

(assert (=> b!7935167 m!8322852))

(declare-fun m!8322874 () Bool)

(assert (=> b!7935165 m!8322874))

(declare-fun m!8322876 () Bool)

(assert (=> b!7935169 m!8322876))

(declare-fun m!8322878 () Bool)

(assert (=> b!7935166 m!8322878))

(assert (=> b!7935006 d!2372631))

(declare-fun d!2372633 () Bool)

(declare-fun c!1457825 () Bool)

(assert (=> d!2372633 (= c!1457825 ((_ is Node!15912) (left!56888 (right!57218 t!4440))))))

(declare-fun e!4682337 () Bool)

(assert (=> d!2372633 (= (inv!95774 (left!56888 (right!57218 t!4440))) e!4682337)))

(declare-fun b!7935171 () Bool)

(assert (=> b!7935171 (= e!4682337 (inv!95778 (left!56888 (right!57218 t!4440))))))

(declare-fun b!7935172 () Bool)

(declare-fun e!4682338 () Bool)

(assert (=> b!7935172 (= e!4682337 e!4682338)))

(declare-fun res!3148273 () Bool)

(assert (=> b!7935172 (= res!3148273 (not ((_ is Leaf!30249) (left!56888 (right!57218 t!4440)))))))

(assert (=> b!7935172 (=> res!3148273 e!4682338)))

(declare-fun b!7935173 () Bool)

(assert (=> b!7935173 (= e!4682338 (inv!95779 (left!56888 (right!57218 t!4440))))))

(assert (= (and d!2372633 c!1457825) b!7935171))

(assert (= (and d!2372633 (not c!1457825)) b!7935172))

(assert (= (and b!7935172 (not res!3148273)) b!7935173))

(declare-fun m!8322880 () Bool)

(assert (=> b!7935171 m!8322880))

(declare-fun m!8322882 () Bool)

(assert (=> b!7935173 m!8322882))

(assert (=> b!7935041 d!2372633))

(declare-fun d!2372635 () Bool)

(declare-fun c!1457828 () Bool)

(assert (=> d!2372635 (= c!1457828 ((_ is Node!15912) (right!57218 (right!57218 t!4440))))))

(declare-fun e!4682341 () Bool)

(assert (=> d!2372635 (= (inv!95774 (right!57218 (right!57218 t!4440))) e!4682341)))

(declare-fun b!7935178 () Bool)

(assert (=> b!7935178 (= e!4682341 (inv!95778 (right!57218 (right!57218 t!4440))))))

(declare-fun b!7935179 () Bool)

(declare-fun e!4682342 () Bool)

(assert (=> b!7935179 (= e!4682341 e!4682342)))

(declare-fun res!3148274 () Bool)

(assert (=> b!7935179 (= res!3148274 (not ((_ is Leaf!30249) (right!57218 (right!57218 t!4440)))))))

(assert (=> b!7935179 (=> res!3148274 e!4682342)))

(declare-fun b!7935180 () Bool)

(assert (=> b!7935180 (= e!4682342 (inv!95779 (right!57218 (right!57218 t!4440))))))

(assert (= (and d!2372635 c!1457828) b!7935178))

(assert (= (and d!2372635 (not c!1457828)) b!7935179))

(assert (= (and b!7935179 (not res!3148274)) b!7935180))

(declare-fun m!8322884 () Bool)

(assert (=> b!7935178 m!8322884))

(declare-fun m!8322886 () Bool)

(assert (=> b!7935180 m!8322886))

(assert (=> b!7935041 d!2372635))

(declare-fun d!2372637 () Bool)

(declare-fun c!1457829 () Bool)

(assert (=> d!2372637 (= c!1457829 ((_ is Nil!74458) lt!2695160))))

(declare-fun e!4682343 () (InoxSet T!145874))

(assert (=> d!2372637 (= (content!15792 lt!2695160) e!4682343)))

(declare-fun b!7935181 () Bool)

(assert (=> b!7935181 (= e!4682343 ((as const (Array T!145874 Bool)) false))))

(declare-fun b!7935182 () Bool)

(assert (=> b!7935182 (= e!4682343 ((_ map or) (store ((as const (Array T!145874 Bool)) false) (h!80906 lt!2695160) true) (content!15792 (t!390263 lt!2695160))))))

(assert (= (and d!2372637 c!1457829) b!7935181))

(assert (= (and d!2372637 (not c!1457829)) b!7935182))

(declare-fun m!8322888 () Bool)

(assert (=> b!7935182 m!8322888))

(declare-fun m!8322890 () Bool)

(assert (=> b!7935182 m!8322890))

(assert (=> b!7934991 d!2372637))

(declare-fun d!2372639 () Bool)

(declare-fun c!1457830 () Bool)

(assert (=> d!2372639 (= c!1457830 ((_ is Nil!74458) (list!19434 (xs!19308 t!4440))))))

(declare-fun e!4682346 () (InoxSet T!145874))

(assert (=> d!2372639 (= (content!15792 (list!19434 (xs!19308 t!4440))) e!4682346)))

(declare-fun b!7935187 () Bool)

(assert (=> b!7935187 (= e!4682346 ((as const (Array T!145874 Bool)) false))))

(declare-fun b!7935188 () Bool)

(assert (=> b!7935188 (= e!4682346 ((_ map or) (store ((as const (Array T!145874 Bool)) false) (h!80906 (list!19434 (xs!19308 t!4440))) true) (content!15792 (t!390263 (list!19434 (xs!19308 t!4440))))))))

(assert (= (and d!2372639 c!1457830) b!7935187))

(assert (= (and d!2372639 (not c!1457830)) b!7935188))

(declare-fun m!8322892 () Bool)

(assert (=> b!7935188 m!8322892))

(assert (=> b!7935188 m!8322824))

(assert (=> b!7934991 d!2372639))

(declare-fun d!2372641 () Bool)

(assert (=> d!2372641 (= (list!19434 (xs!19308 lt!2695142)) (innerList!16000 (xs!19308 lt!2695142)))))

(assert (=> b!7934845 d!2372641))

(declare-fun d!2372643 () Bool)

(declare-fun lt!2695195 () Bool)

(assert (=> d!2372643 (= lt!2695195 (isEmpty!42797 (list!19435 (right!57218 lt!2695142))))))

(assert (=> d!2372643 (= lt!2695195 (= (size!43279 (right!57218 lt!2695142)) 0))))

(assert (=> d!2372643 (= (isEmpty!42796 (right!57218 lt!2695142)) lt!2695195)))

(declare-fun bs!1969137 () Bool)

(assert (= bs!1969137 d!2372643))

(assert (=> bs!1969137 m!8322530))

(assert (=> bs!1969137 m!8322530))

(declare-fun m!8322894 () Bool)

(assert (=> bs!1969137 m!8322894))

(declare-fun m!8322896 () Bool)

(assert (=> bs!1969137 m!8322896))

(assert (=> b!7934936 d!2372643))

(declare-fun d!2372645 () Bool)

(declare-fun res!3148279 () Bool)

(declare-fun e!4682347 () Bool)

(assert (=> d!2372645 (=> (not res!3148279) (not e!4682347))))

(assert (=> d!2372645 (= res!3148279 (= (csize!32054 (right!57218 t!4440)) (+ (size!43279 (left!56888 (right!57218 t!4440))) (size!43279 (right!57218 (right!57218 t!4440))))))))

(assert (=> d!2372645 (= (inv!95778 (right!57218 t!4440)) e!4682347)))

(declare-fun b!7935189 () Bool)

(declare-fun res!3148280 () Bool)

(assert (=> b!7935189 (=> (not res!3148280) (not e!4682347))))

(assert (=> b!7935189 (= res!3148280 (and (not (= (left!56888 (right!57218 t!4440)) Empty!15912)) (not (= (right!57218 (right!57218 t!4440)) Empty!15912))))))

(declare-fun b!7935190 () Bool)

(declare-fun res!3148281 () Bool)

(assert (=> b!7935190 (=> (not res!3148281) (not e!4682347))))

(assert (=> b!7935190 (= res!3148281 (= (cheight!16123 (right!57218 t!4440)) (+ (max!0 (height!2227 (left!56888 (right!57218 t!4440))) (height!2227 (right!57218 (right!57218 t!4440)))) 1)))))

(declare-fun b!7935191 () Bool)

(assert (=> b!7935191 (= e!4682347 (<= 0 (cheight!16123 (right!57218 t!4440))))))

(assert (= (and d!2372645 res!3148279) b!7935189))

(assert (= (and b!7935189 res!3148280) b!7935190))

(assert (= (and b!7935190 res!3148281) b!7935191))

(declare-fun m!8322898 () Bool)

(assert (=> d!2372645 m!8322898))

(declare-fun m!8322900 () Bool)

(assert (=> d!2372645 m!8322900))

(assert (=> b!7935190 m!8322858))

(assert (=> b!7935190 m!8322860))

(assert (=> b!7935190 m!8322858))

(assert (=> b!7935190 m!8322860))

(declare-fun m!8322902 () Bool)

(assert (=> b!7935190 m!8322902))

(assert (=> b!7934975 d!2372645))

(declare-fun d!2372647 () Bool)

(assert (=> d!2372647 (= (height!2227 (left!56888 lt!2695142)) (ite ((_ is Empty!15912) (left!56888 lt!2695142)) 0 (ite ((_ is Leaf!30249) (left!56888 lt!2695142)) 1 (cheight!16123 (left!56888 lt!2695142)))))))

(assert (=> b!7934935 d!2372647))

(declare-fun d!2372649 () Bool)

(assert (=> d!2372649 (= (height!2227 (right!57218 lt!2695142)) (ite ((_ is Empty!15912) (right!57218 lt!2695142)) 0 (ite ((_ is Leaf!30249) (right!57218 lt!2695142)) 1 (cheight!16123 (right!57218 lt!2695142)))))))

(assert (=> b!7934935 d!2372649))

(assert (=> b!7934900 d!2372581))

(declare-fun d!2372651 () Bool)

(declare-fun res!3148282 () Bool)

(declare-fun e!4682348 () Bool)

(assert (=> d!2372651 (=> (not res!3148282) (not e!4682348))))

(assert (=> d!2372651 (= res!3148282 (<= (size!43276 (list!19434 (xs!19308 (right!57218 t!4440)))) 512))))

(assert (=> d!2372651 (= (inv!95779 (right!57218 t!4440)) e!4682348)))

(declare-fun b!7935192 () Bool)

(declare-fun res!3148283 () Bool)

(assert (=> b!7935192 (=> (not res!3148283) (not e!4682348))))

(assert (=> b!7935192 (= res!3148283 (= (csize!32055 (right!57218 t!4440)) (size!43276 (list!19434 (xs!19308 (right!57218 t!4440))))))))

(declare-fun b!7935193 () Bool)

(assert (=> b!7935193 (= e!4682348 (and (> (csize!32055 (right!57218 t!4440)) 0) (<= (csize!32055 (right!57218 t!4440)) 512)))))

(assert (= (and d!2372651 res!3148282) b!7935192))

(assert (= (and b!7935192 res!3148283) b!7935193))

(assert (=> d!2372651 m!8322768))

(assert (=> d!2372651 m!8322768))

(declare-fun m!8322904 () Bool)

(assert (=> d!2372651 m!8322904))

(assert (=> b!7935192 m!8322768))

(assert (=> b!7935192 m!8322768))

(assert (=> b!7935192 m!8322904))

(assert (=> b!7934977 d!2372651))

(declare-fun b!7935194 () Bool)

(declare-fun e!4682349 () List!74582)

(assert (=> b!7935194 (= e!4682349 (list!19435 (right!57218 lt!2695142)))))

(declare-fun b!7935197 () Bool)

(declare-fun e!4682350 () Bool)

(declare-fun lt!2695196 () List!74582)

(assert (=> b!7935197 (= e!4682350 (or (not (= (list!19435 (right!57218 lt!2695142)) Nil!74458)) (= lt!2695196 (list!19435 (left!56888 lt!2695142)))))))

(declare-fun d!2372653 () Bool)

(assert (=> d!2372653 e!4682350))

(declare-fun res!3148285 () Bool)

(assert (=> d!2372653 (=> (not res!3148285) (not e!4682350))))

(assert (=> d!2372653 (= res!3148285 (= (content!15792 lt!2695196) ((_ map or) (content!15792 (list!19435 (left!56888 lt!2695142))) (content!15792 (list!19435 (right!57218 lt!2695142))))))))

(assert (=> d!2372653 (= lt!2695196 e!4682349)))

(declare-fun c!1457831 () Bool)

(assert (=> d!2372653 (= c!1457831 ((_ is Nil!74458) (list!19435 (left!56888 lt!2695142))))))

(assert (=> d!2372653 (= (++!18268 (list!19435 (left!56888 lt!2695142)) (list!19435 (right!57218 lt!2695142))) lt!2695196)))

(declare-fun b!7935196 () Bool)

(declare-fun res!3148284 () Bool)

(assert (=> b!7935196 (=> (not res!3148284) (not e!4682350))))

(assert (=> b!7935196 (= res!3148284 (= (size!43276 lt!2695196) (+ (size!43276 (list!19435 (left!56888 lt!2695142))) (size!43276 (list!19435 (right!57218 lt!2695142))))))))

(declare-fun b!7935195 () Bool)

(assert (=> b!7935195 (= e!4682349 (Cons!74458 (h!80906 (list!19435 (left!56888 lt!2695142))) (++!18268 (t!390263 (list!19435 (left!56888 lt!2695142))) (list!19435 (right!57218 lt!2695142)))))))

(assert (= (and d!2372653 c!1457831) b!7935194))

(assert (= (and d!2372653 (not c!1457831)) b!7935195))

(assert (= (and d!2372653 res!3148285) b!7935196))

(assert (= (and b!7935196 res!3148284) b!7935197))

(declare-fun m!8322906 () Bool)

(assert (=> d!2372653 m!8322906))

(assert (=> d!2372653 m!8322528))

(declare-fun m!8322908 () Bool)

(assert (=> d!2372653 m!8322908))

(assert (=> d!2372653 m!8322530))

(declare-fun m!8322910 () Bool)

(assert (=> d!2372653 m!8322910))

(declare-fun m!8322912 () Bool)

(assert (=> b!7935196 m!8322912))

(assert (=> b!7935196 m!8322528))

(declare-fun m!8322914 () Bool)

(assert (=> b!7935196 m!8322914))

(assert (=> b!7935196 m!8322530))

(declare-fun m!8322916 () Bool)

(assert (=> b!7935196 m!8322916))

(assert (=> b!7935195 m!8322530))

(declare-fun m!8322918 () Bool)

(assert (=> b!7935195 m!8322918))

(assert (=> b!7934846 d!2372653))

(declare-fun b!7935203 () Bool)

(declare-fun e!4682353 () List!74582)

(declare-fun e!4682354 () List!74582)

(assert (=> b!7935203 (= e!4682353 e!4682354)))

(declare-fun c!1457834 () Bool)

(assert (=> b!7935203 (= c!1457834 ((_ is Leaf!30249) (left!56888 lt!2695142)))))

(declare-fun b!7935205 () Bool)

(assert (=> b!7935205 (= e!4682354 (++!18268 (list!19435 (left!56888 (left!56888 lt!2695142))) (list!19435 (right!57218 (left!56888 lt!2695142)))))))

(declare-fun b!7935202 () Bool)

(assert (=> b!7935202 (= e!4682353 Nil!74458)))

(declare-fun d!2372655 () Bool)

(declare-fun c!1457833 () Bool)

(assert (=> d!2372655 (= c!1457833 ((_ is Empty!15912) (left!56888 lt!2695142)))))

(assert (=> d!2372655 (= (list!19435 (left!56888 lt!2695142)) e!4682353)))

(declare-fun b!7935204 () Bool)

(assert (=> b!7935204 (= e!4682354 (list!19434 (xs!19308 (left!56888 lt!2695142))))))

(assert (= (and d!2372655 c!1457833) b!7935202))

(assert (= (and d!2372655 (not c!1457833)) b!7935203))

(assert (= (and b!7935203 c!1457834) b!7935204))

(assert (= (and b!7935203 (not c!1457834)) b!7935205))

(declare-fun m!8322928 () Bool)

(assert (=> b!7935205 m!8322928))

(declare-fun m!8322932 () Bool)

(assert (=> b!7935205 m!8322932))

(assert (=> b!7935205 m!8322928))

(assert (=> b!7935205 m!8322932))

(declare-fun m!8322934 () Bool)

(assert (=> b!7935205 m!8322934))

(declare-fun m!8322936 () Bool)

(assert (=> b!7935204 m!8322936))

(assert (=> b!7934846 d!2372655))

(declare-fun b!7935211 () Bool)

(declare-fun e!4682357 () List!74582)

(declare-fun e!4682358 () List!74582)

(assert (=> b!7935211 (= e!4682357 e!4682358)))

(declare-fun c!1457837 () Bool)

(assert (=> b!7935211 (= c!1457837 ((_ is Leaf!30249) (right!57218 lt!2695142)))))

(declare-fun b!7935213 () Bool)

(assert (=> b!7935213 (= e!4682358 (++!18268 (list!19435 (left!56888 (right!57218 lt!2695142))) (list!19435 (right!57218 (right!57218 lt!2695142)))))))

(declare-fun b!7935209 () Bool)

(assert (=> b!7935209 (= e!4682357 Nil!74458)))

(declare-fun d!2372659 () Bool)

(declare-fun c!1457836 () Bool)

(assert (=> d!2372659 (= c!1457836 ((_ is Empty!15912) (right!57218 lt!2695142)))))

(assert (=> d!2372659 (= (list!19435 (right!57218 lt!2695142)) e!4682357)))

(declare-fun b!7935212 () Bool)

(assert (=> b!7935212 (= e!4682358 (list!19434 (xs!19308 (right!57218 lt!2695142))))))

(assert (= (and d!2372659 c!1457836) b!7935209))

(assert (= (and d!2372659 (not c!1457836)) b!7935211))

(assert (= (and b!7935211 c!1457837) b!7935212))

(assert (= (and b!7935211 (not c!1457837)) b!7935213))

(declare-fun m!8322938 () Bool)

(assert (=> b!7935213 m!8322938))

(declare-fun m!8322940 () Bool)

(assert (=> b!7935213 m!8322940))

(assert (=> b!7935213 m!8322938))

(assert (=> b!7935213 m!8322940))

(declare-fun m!8322942 () Bool)

(assert (=> b!7935213 m!8322942))

(declare-fun m!8322944 () Bool)

(assert (=> b!7935212 m!8322944))

(assert (=> b!7934846 d!2372659))

(declare-fun d!2372661 () Bool)

(declare-fun lt!2695199 () Bool)

(assert (=> d!2372661 (= lt!2695199 (isEmpty!42797 (list!19435 (left!56888 lt!2695142))))))

(assert (=> d!2372661 (= lt!2695199 (= (size!43279 (left!56888 lt!2695142)) 0))))

(assert (=> d!2372661 (= (isEmpty!42796 (left!56888 lt!2695142)) lt!2695199)))

(declare-fun bs!1969138 () Bool)

(assert (= bs!1969138 d!2372661))

(assert (=> bs!1969138 m!8322528))

(assert (=> bs!1969138 m!8322528))

(declare-fun m!8322954 () Bool)

(assert (=> bs!1969138 m!8322954))

(declare-fun m!8322958 () Bool)

(assert (=> bs!1969138 m!8322958))

(assert (=> b!7934937 d!2372661))

(assert (=> d!2372535 d!2372549))

(assert (=> d!2372535 d!2372553))

(declare-fun d!2372663 () Bool)

(declare-fun _$6!644 () IArray!31885)

(assert (=> d!2372663 (= _$6!644 (IArray!31886 ($colon+!325 (list!19434 (xs!19308 t!4440)) v!5484)))))

(declare-fun e!4682366 () Bool)

(assert (=> d!2372663 (and (inv!95775 _$6!644) e!4682366)))

(assert (=> d!2372663 (= (choose!59856 (xs!19308 t!4440) v!5484) _$6!644)))

(declare-fun b!7935226 () Bool)

(declare-fun tp!2359403 () Bool)

(assert (=> b!7935226 (= e!4682366 tp!2359403)))

(assert (= d!2372663 b!7935226))

(assert (=> d!2372663 m!8322516))

(assert (=> d!2372663 m!8322516))

(assert (=> d!2372663 m!8322518))

(declare-fun m!8322982 () Bool)

(assert (=> d!2372663 m!8322982))

(assert (=> d!2372535 d!2372663))

(declare-fun d!2372673 () Bool)

(declare-fun lt!2695205 () Int)

(assert (=> d!2372673 (= lt!2695205 (size!43276 (list!19434 (xs!19308 t!4440))))))

(declare-fun choose!59858 (IArray!31885) Int)

(assert (=> d!2372673 (= lt!2695205 (choose!59858 (xs!19308 t!4440)))))

(assert (=> d!2372673 (= (size!43277 (xs!19308 t!4440)) lt!2695205)))

(declare-fun bs!1969139 () Bool)

(assert (= bs!1969139 d!2372673))

(assert (=> bs!1969139 m!8322516))

(assert (=> bs!1969139 m!8322516))

(assert (=> bs!1969139 m!8322650))

(declare-fun m!8322984 () Bool)

(assert (=> bs!1969139 m!8322984))

(assert (=> d!2372535 d!2372673))

(declare-fun d!2372675 () Bool)

(declare-fun lt!2695208 () Int)

(assert (=> d!2372675 (>= lt!2695208 0)))

(declare-fun e!4682369 () Int)

(assert (=> d!2372675 (= lt!2695208 e!4682369)))

(declare-fun c!1457845 () Bool)

(assert (=> d!2372675 (= c!1457845 ((_ is Nil!74458) lt!2695147))))

(assert (=> d!2372675 (= (size!43276 lt!2695147) lt!2695208)))

(declare-fun b!7935231 () Bool)

(assert (=> b!7935231 (= e!4682369 0)))

(declare-fun b!7935232 () Bool)

(assert (=> b!7935232 (= e!4682369 (+ 1 (size!43276 (t!390263 lt!2695147))))))

(assert (= (and d!2372675 c!1457845) b!7935231))

(assert (= (and d!2372675 (not c!1457845)) b!7935232))

(declare-fun m!8322986 () Bool)

(assert (=> b!7935232 m!8322986))

(assert (=> b!7934895 d!2372675))

(declare-fun d!2372677 () Bool)

(declare-fun lt!2695209 () Int)

(assert (=> d!2372677 (>= lt!2695209 0)))

(declare-fun e!4682370 () Int)

(assert (=> d!2372677 (= lt!2695209 e!4682370)))

(declare-fun c!1457846 () Bool)

(assert (=> d!2372677 (= c!1457846 ((_ is Nil!74458) (list!19435 t!4440)))))

(assert (=> d!2372677 (= (size!43276 (list!19435 t!4440)) lt!2695209)))

(declare-fun b!7935233 () Bool)

(assert (=> b!7935233 (= e!4682370 0)))

(declare-fun b!7935234 () Bool)

(assert (=> b!7935234 (= e!4682370 (+ 1 (size!43276 (t!390263 (list!19435 t!4440)))))))

(assert (= (and d!2372677 c!1457846) b!7935233))

(assert (= (and d!2372677 (not c!1457846)) b!7935234))

(assert (=> b!7935234 m!8322774))

(assert (=> b!7934895 d!2372677))

(assert (=> b!7934934 d!2372647))

(assert (=> b!7934934 d!2372649))

(declare-fun b!7935235 () Bool)

(declare-fun e!4682371 () List!74582)

(assert (=> b!7935235 (= e!4682371 (Cons!74458 v!5484 Nil!74458))))

(declare-fun lt!2695210 () List!74582)

(declare-fun b!7935238 () Bool)

(declare-fun e!4682372 () Bool)

(assert (=> b!7935238 (= e!4682372 (or (not (= (Cons!74458 v!5484 Nil!74458) Nil!74458)) (= lt!2695210 (list!19435 t!4440))))))

(declare-fun d!2372679 () Bool)

(assert (=> d!2372679 e!4682372))

(declare-fun res!3148291 () Bool)

(assert (=> d!2372679 (=> (not res!3148291) (not e!4682372))))

(assert (=> d!2372679 (= res!3148291 (= (content!15792 lt!2695210) ((_ map or) (content!15792 (list!19435 t!4440)) (content!15792 (Cons!74458 v!5484 Nil!74458)))))))

(assert (=> d!2372679 (= lt!2695210 e!4682371)))

(declare-fun c!1457847 () Bool)

(assert (=> d!2372679 (= c!1457847 ((_ is Nil!74458) (list!19435 t!4440)))))

(assert (=> d!2372679 (= (++!18268 (list!19435 t!4440) (Cons!74458 v!5484 Nil!74458)) lt!2695210)))

(declare-fun b!7935237 () Bool)

(declare-fun res!3148290 () Bool)

(assert (=> b!7935237 (=> (not res!3148290) (not e!4682372))))

(assert (=> b!7935237 (= res!3148290 (= (size!43276 lt!2695210) (+ (size!43276 (list!19435 t!4440)) (size!43276 (Cons!74458 v!5484 Nil!74458)))))))

(declare-fun b!7935236 () Bool)

(assert (=> b!7935236 (= e!4682371 (Cons!74458 (h!80906 (list!19435 t!4440)) (++!18268 (t!390263 (list!19435 t!4440)) (Cons!74458 v!5484 Nil!74458))))))

(assert (= (and d!2372679 c!1457847) b!7935235))

(assert (= (and d!2372679 (not c!1457847)) b!7935236))

(assert (= (and d!2372679 res!3148291) b!7935237))

(assert (= (and b!7935237 res!3148290) b!7935238))

(declare-fun m!8322988 () Bool)

(assert (=> d!2372679 m!8322988))

(assert (=> d!2372679 m!8322508))

(assert (=> d!2372679 m!8322570))

(assert (=> d!2372679 m!8322796))

(declare-fun m!8322990 () Bool)

(assert (=> b!7935237 m!8322990))

(assert (=> b!7935237 m!8322508))

(assert (=> b!7935237 m!8322564))

(assert (=> b!7935237 m!8322800))

(assert (=> b!7935236 m!8322776))

(assert (=> b!7934899 d!2372679))

(declare-fun d!2372681 () Bool)

(assert (=> d!2372681 (= (inv!95775 (xs!19308 (left!56888 t!4440))) (<= (size!43276 (innerList!16000 (xs!19308 (left!56888 t!4440)))) 2147483647))))

(declare-fun bs!1969140 () Bool)

(assert (= bs!1969140 d!2372681))

(declare-fun m!8322992 () Bool)

(assert (=> bs!1969140 m!8322992))

(assert (=> b!7935035 d!2372681))

(declare-fun b!7935241 () Bool)

(declare-fun res!3148293 () Bool)

(declare-fun e!4682375 () Bool)

(assert (=> b!7935241 (=> (not res!3148293) (not e!4682375))))

(assert (=> b!7935241 (= res!3148293 (isBalanced!4538 (left!56888 (right!57218 lt!2695142))))))

(declare-fun b!7935242 () Bool)

(declare-fun res!3148297 () Bool)

(assert (=> b!7935242 (=> (not res!3148297) (not e!4682375))))

(assert (=> b!7935242 (= res!3148297 (isBalanced!4538 (right!57218 (right!57218 lt!2695142))))))

(declare-fun b!7935243 () Bool)

(declare-fun res!3148296 () Bool)

(assert (=> b!7935243 (=> (not res!3148296) (not e!4682375))))

(assert (=> b!7935243 (= res!3148296 (<= (- (height!2227 (left!56888 (right!57218 lt!2695142))) (height!2227 (right!57218 (right!57218 lt!2695142)))) 1))))

(declare-fun b!7935244 () Bool)

(declare-fun e!4682374 () Bool)

(assert (=> b!7935244 (= e!4682374 e!4682375)))

(declare-fun res!3148295 () Bool)

(assert (=> b!7935244 (=> (not res!3148295) (not e!4682375))))

(assert (=> b!7935244 (= res!3148295 (<= (- 1) (- (height!2227 (left!56888 (right!57218 lt!2695142))) (height!2227 (right!57218 (right!57218 lt!2695142))))))))

(declare-fun d!2372683 () Bool)

(declare-fun res!3148294 () Bool)

(assert (=> d!2372683 (=> res!3148294 e!4682374)))

(assert (=> d!2372683 (= res!3148294 (not ((_ is Node!15912) (right!57218 lt!2695142))))))

(assert (=> d!2372683 (= (isBalanced!4538 (right!57218 lt!2695142)) e!4682374)))

(declare-fun b!7935245 () Bool)

(assert (=> b!7935245 (= e!4682375 (not (isEmpty!42796 (right!57218 (right!57218 lt!2695142)))))))

(declare-fun b!7935246 () Bool)

(declare-fun res!3148292 () Bool)

(assert (=> b!7935246 (=> (not res!3148292) (not e!4682375))))

(assert (=> b!7935246 (= res!3148292 (not (isEmpty!42796 (left!56888 (right!57218 lt!2695142)))))))

(assert (= (and d!2372683 (not res!3148294)) b!7935244))

(assert (= (and b!7935244 res!3148295) b!7935243))

(assert (= (and b!7935243 res!3148296) b!7935241))

(assert (= (and b!7935241 res!3148293) b!7935242))

(assert (= (and b!7935242 res!3148297) b!7935246))

(assert (= (and b!7935246 res!3148292) b!7935245))

(declare-fun m!8322996 () Bool)

(assert (=> b!7935244 m!8322996))

(declare-fun m!8322998 () Bool)

(assert (=> b!7935244 m!8322998))

(declare-fun m!8323000 () Bool)

(assert (=> b!7935246 m!8323000))

(assert (=> b!7935243 m!8322996))

(assert (=> b!7935243 m!8322998))

(declare-fun m!8323006 () Bool)

(assert (=> b!7935241 m!8323006))

(declare-fun m!8323008 () Bool)

(assert (=> b!7935245 m!8323008))

(declare-fun m!8323010 () Bool)

(assert (=> b!7935242 m!8323010))

(assert (=> b!7934933 d!2372683))

(declare-fun d!2372689 () Bool)

(declare-fun c!1457851 () Bool)

(assert (=> d!2372689 (= c!1457851 ((_ is Node!15912) (left!56888 (left!56888 t!4440))))))

(declare-fun e!4682380 () Bool)

(assert (=> d!2372689 (= (inv!95774 (left!56888 (left!56888 t!4440))) e!4682380)))

(declare-fun b!7935253 () Bool)

(assert (=> b!7935253 (= e!4682380 (inv!95778 (left!56888 (left!56888 t!4440))))))

(declare-fun b!7935254 () Bool)

(declare-fun e!4682381 () Bool)

(assert (=> b!7935254 (= e!4682380 e!4682381)))

(declare-fun res!3148300 () Bool)

(assert (=> b!7935254 (= res!3148300 (not ((_ is Leaf!30249) (left!56888 (left!56888 t!4440)))))))

(assert (=> b!7935254 (=> res!3148300 e!4682381)))

(declare-fun b!7935255 () Bool)

(assert (=> b!7935255 (= e!4682381 (inv!95779 (left!56888 (left!56888 t!4440))))))

(assert (= (and d!2372689 c!1457851) b!7935253))

(assert (= (and d!2372689 (not c!1457851)) b!7935254))

(assert (= (and b!7935254 (not res!3148300)) b!7935255))

(declare-fun m!8323016 () Bool)

(assert (=> b!7935253 m!8323016))

(declare-fun m!8323018 () Bool)

(assert (=> b!7935255 m!8323018))

(assert (=> b!7935034 d!2372689))

(declare-fun d!2372693 () Bool)

(declare-fun c!1457854 () Bool)

(assert (=> d!2372693 (= c!1457854 ((_ is Node!15912) (right!57218 (left!56888 t!4440))))))

(declare-fun e!4682384 () Bool)

(assert (=> d!2372693 (= (inv!95774 (right!57218 (left!56888 t!4440))) e!4682384)))

(declare-fun b!7935259 () Bool)

(assert (=> b!7935259 (= e!4682384 (inv!95778 (right!57218 (left!56888 t!4440))))))

(declare-fun b!7935261 () Bool)

(declare-fun e!4682386 () Bool)

(assert (=> b!7935261 (= e!4682384 e!4682386)))

(declare-fun res!3148305 () Bool)

(assert (=> b!7935261 (= res!3148305 (not ((_ is Leaf!30249) (right!57218 (left!56888 t!4440)))))))

(assert (=> b!7935261 (=> res!3148305 e!4682386)))

(declare-fun b!7935263 () Bool)

(assert (=> b!7935263 (= e!4682386 (inv!95779 (right!57218 (left!56888 t!4440))))))

(assert (= (and d!2372693 c!1457854) b!7935259))

(assert (= (and d!2372693 (not c!1457854)) b!7935261))

(assert (= (and b!7935261 (not res!3148305)) b!7935263))

(declare-fun m!8323020 () Bool)

(assert (=> b!7935259 m!8323020))

(declare-fun m!8323022 () Bool)

(assert (=> b!7935263 m!8323022))

(assert (=> b!7935034 d!2372693))

(declare-fun b!7935267 () Bool)

(declare-fun res!3148307 () Bool)

(declare-fun e!4682388 () Bool)

(assert (=> b!7935267 (=> (not res!3148307) (not e!4682388))))

(assert (=> b!7935267 (= res!3148307 (isBalanced!4538 (left!56888 (left!56888 lt!2695142))))))

(declare-fun b!7935268 () Bool)

(declare-fun res!3148311 () Bool)

(assert (=> b!7935268 (=> (not res!3148311) (not e!4682388))))

(assert (=> b!7935268 (= res!3148311 (isBalanced!4538 (right!57218 (left!56888 lt!2695142))))))

(declare-fun b!7935269 () Bool)

(declare-fun res!3148310 () Bool)

(assert (=> b!7935269 (=> (not res!3148310) (not e!4682388))))

(assert (=> b!7935269 (= res!3148310 (<= (- (height!2227 (left!56888 (left!56888 lt!2695142))) (height!2227 (right!57218 (left!56888 lt!2695142)))) 1))))

(declare-fun b!7935270 () Bool)

(declare-fun e!4682387 () Bool)

(assert (=> b!7935270 (= e!4682387 e!4682388)))

(declare-fun res!3148309 () Bool)

(assert (=> b!7935270 (=> (not res!3148309) (not e!4682388))))

(assert (=> b!7935270 (= res!3148309 (<= (- 1) (- (height!2227 (left!56888 (left!56888 lt!2695142))) (height!2227 (right!57218 (left!56888 lt!2695142))))))))

(declare-fun d!2372695 () Bool)

(declare-fun res!3148308 () Bool)

(assert (=> d!2372695 (=> res!3148308 e!4682387)))

(assert (=> d!2372695 (= res!3148308 (not ((_ is Node!15912) (left!56888 lt!2695142))))))

(assert (=> d!2372695 (= (isBalanced!4538 (left!56888 lt!2695142)) e!4682387)))

(declare-fun b!7935271 () Bool)

(assert (=> b!7935271 (= e!4682388 (not (isEmpty!42796 (right!57218 (left!56888 lt!2695142)))))))

(declare-fun b!7935272 () Bool)

(declare-fun res!3148306 () Bool)

(assert (=> b!7935272 (=> (not res!3148306) (not e!4682388))))

(assert (=> b!7935272 (= res!3148306 (not (isEmpty!42796 (left!56888 (left!56888 lt!2695142)))))))

(assert (= (and d!2372695 (not res!3148308)) b!7935270))

(assert (= (and b!7935270 res!3148309) b!7935269))

(assert (= (and b!7935269 res!3148310) b!7935267))

(assert (= (and b!7935267 res!3148307) b!7935268))

(assert (= (and b!7935268 res!3148311) b!7935272))

(assert (= (and b!7935272 res!3148306) b!7935271))

(declare-fun m!8323024 () Bool)

(assert (=> b!7935270 m!8323024))

(declare-fun m!8323026 () Bool)

(assert (=> b!7935270 m!8323026))

(declare-fun m!8323028 () Bool)

(assert (=> b!7935272 m!8323028))

(assert (=> b!7935269 m!8323024))

(assert (=> b!7935269 m!8323026))

(declare-fun m!8323030 () Bool)

(assert (=> b!7935267 m!8323030))

(declare-fun m!8323034 () Bool)

(assert (=> b!7935271 m!8323034))

(declare-fun m!8323036 () Bool)

(assert (=> b!7935268 m!8323036))

(assert (=> b!7934932 d!2372695))

(declare-fun b!7935273 () Bool)

(declare-fun e!4682389 () Bool)

(declare-fun tp!2359404 () Bool)

(assert (=> b!7935273 (= e!4682389 (and tp_is_empty!53249 tp!2359404))))

(assert (=> b!7935025 (= tp!2359373 e!4682389)))

(assert (= (and b!7935025 ((_ is Cons!74458) (t!390263 (innerList!16000 (xs!19308 t!4440))))) b!7935273))

(declare-fun b!7935274 () Bool)

(declare-fun e!4682390 () Bool)

(declare-fun tp!2359405 () Bool)

(assert (=> b!7935274 (= e!4682390 (and tp_is_empty!53249 tp!2359405))))

(assert (=> b!7935036 (= tp!2359380 e!4682390)))

(assert (= (and b!7935036 ((_ is Cons!74458) (innerList!16000 (xs!19308 (left!56888 t!4440))))) b!7935274))

(declare-fun b!7935275 () Bool)

(declare-fun e!4682391 () Bool)

(declare-fun tp!2359406 () Bool)

(assert (=> b!7935275 (= e!4682391 (and tp_is_empty!53249 tp!2359406))))

(assert (=> b!7935043 (= tp!2359385 e!4682391)))

(assert (= (and b!7935043 ((_ is Cons!74458) (innerList!16000 (xs!19308 (right!57218 t!4440))))) b!7935275))

(declare-fun tp!2359408 () Bool)

(declare-fun tp!2359409 () Bool)

(declare-fun b!7935278 () Bool)

(declare-fun e!4682394 () Bool)

(assert (=> b!7935278 (= e!4682394 (and (inv!95774 (left!56888 (left!56888 (right!57218 t!4440)))) tp!2359409 (inv!95774 (right!57218 (left!56888 (right!57218 t!4440)))) tp!2359408))))

(declare-fun b!7935280 () Bool)

(declare-fun e!4682393 () Bool)

(declare-fun tp!2359407 () Bool)

(assert (=> b!7935280 (= e!4682393 tp!2359407)))

(declare-fun b!7935279 () Bool)

(assert (=> b!7935279 (= e!4682394 (and (inv!95775 (xs!19308 (left!56888 (right!57218 t!4440)))) e!4682393))))

(assert (=> b!7935041 (= tp!2359387 (and (inv!95774 (left!56888 (right!57218 t!4440))) e!4682394))))

(assert (= (and b!7935041 ((_ is Node!15912) (left!56888 (right!57218 t!4440)))) b!7935278))

(assert (= b!7935279 b!7935280))

(assert (= (and b!7935041 ((_ is Leaf!30249) (left!56888 (right!57218 t!4440)))) b!7935279))

(declare-fun m!8323048 () Bool)

(assert (=> b!7935278 m!8323048))

(declare-fun m!8323050 () Bool)

(assert (=> b!7935278 m!8323050))

(declare-fun m!8323052 () Bool)

(assert (=> b!7935279 m!8323052))

(assert (=> b!7935041 m!8322718))

(declare-fun e!4682398 () Bool)

(declare-fun tp!2359412 () Bool)

(declare-fun tp!2359411 () Bool)

(declare-fun b!7935287 () Bool)

(assert (=> b!7935287 (= e!4682398 (and (inv!95774 (left!56888 (right!57218 (right!57218 t!4440)))) tp!2359412 (inv!95774 (right!57218 (right!57218 (right!57218 t!4440)))) tp!2359411))))

(declare-fun b!7935289 () Bool)

(declare-fun e!4682397 () Bool)

(declare-fun tp!2359410 () Bool)

(assert (=> b!7935289 (= e!4682397 tp!2359410)))

(declare-fun b!7935288 () Bool)

(assert (=> b!7935288 (= e!4682398 (and (inv!95775 (xs!19308 (right!57218 (right!57218 t!4440)))) e!4682397))))

(assert (=> b!7935041 (= tp!2359386 (and (inv!95774 (right!57218 (right!57218 t!4440))) e!4682398))))

(assert (= (and b!7935041 ((_ is Node!15912) (right!57218 (right!57218 t!4440)))) b!7935287))

(assert (= b!7935288 b!7935289))

(assert (= (and b!7935041 ((_ is Leaf!30249) (right!57218 (right!57218 t!4440)))) b!7935288))

(declare-fun m!8323054 () Bool)

(assert (=> b!7935287 m!8323054))

(declare-fun m!8323056 () Bool)

(assert (=> b!7935287 m!8323056))

(declare-fun m!8323058 () Bool)

(assert (=> b!7935288 m!8323058))

(assert (=> b!7935041 m!8322720))

(declare-fun b!7935290 () Bool)

(declare-fun tp!2359415 () Bool)

(declare-fun tp!2359414 () Bool)

(declare-fun e!4682400 () Bool)

(assert (=> b!7935290 (= e!4682400 (and (inv!95774 (left!56888 (left!56888 (left!56888 t!4440)))) tp!2359415 (inv!95774 (right!57218 (left!56888 (left!56888 t!4440)))) tp!2359414))))

(declare-fun b!7935292 () Bool)

(declare-fun e!4682399 () Bool)

(declare-fun tp!2359413 () Bool)

(assert (=> b!7935292 (= e!4682399 tp!2359413)))

(declare-fun b!7935291 () Bool)

(assert (=> b!7935291 (= e!4682400 (and (inv!95775 (xs!19308 (left!56888 (left!56888 t!4440)))) e!4682399))))

(assert (=> b!7935034 (= tp!2359382 (and (inv!95774 (left!56888 (left!56888 t!4440))) e!4682400))))

(assert (= (and b!7935034 ((_ is Node!15912) (left!56888 (left!56888 t!4440)))) b!7935290))

(assert (= b!7935291 b!7935292))

(assert (= (and b!7935034 ((_ is Leaf!30249) (left!56888 (left!56888 t!4440)))) b!7935291))

(declare-fun m!8323064 () Bool)

(assert (=> b!7935290 m!8323064))

(declare-fun m!8323068 () Bool)

(assert (=> b!7935290 m!8323068))

(declare-fun m!8323072 () Bool)

(assert (=> b!7935291 m!8323072))

(assert (=> b!7935034 m!8322712))

(declare-fun tp!2359418 () Bool)

(declare-fun b!7935293 () Bool)

(declare-fun tp!2359417 () Bool)

(declare-fun e!4682402 () Bool)

(assert (=> b!7935293 (= e!4682402 (and (inv!95774 (left!56888 (right!57218 (left!56888 t!4440)))) tp!2359418 (inv!95774 (right!57218 (right!57218 (left!56888 t!4440)))) tp!2359417))))

(declare-fun b!7935295 () Bool)

(declare-fun e!4682401 () Bool)

(declare-fun tp!2359416 () Bool)

(assert (=> b!7935295 (= e!4682401 tp!2359416)))

(declare-fun b!7935294 () Bool)

(assert (=> b!7935294 (= e!4682402 (and (inv!95775 (xs!19308 (right!57218 (left!56888 t!4440)))) e!4682401))))

(assert (=> b!7935034 (= tp!2359381 (and (inv!95774 (right!57218 (left!56888 t!4440))) e!4682402))))

(assert (= (and b!7935034 ((_ is Node!15912) (right!57218 (left!56888 t!4440)))) b!7935293))

(assert (= b!7935294 b!7935295))

(assert (= (and b!7935034 ((_ is Leaf!30249) (right!57218 (left!56888 t!4440)))) b!7935294))

(declare-fun m!8323078 () Bool)

(assert (=> b!7935293 m!8323078))

(declare-fun m!8323080 () Bool)

(assert (=> b!7935293 m!8323080))

(declare-fun m!8323082 () Bool)

(assert (=> b!7935294 m!8323082))

(assert (=> b!7935034 m!8322714))

(check-sat (not b!7935161) (not b!7935213) (not b!7935274) (not b!7935077) (not bm!735647) (not b!7935078) (not b!7935119) (not b!7935157) (not b!7935163) (not b!7935272) (not d!2372627) (not b!7935151) (not b!7935034) (not b!7935156) (not b!7935234) (not b!7935120) (not b!7935267) (not b!7935271) (not b!7935178) (not b!7935269) (not d!2372663) (not b!7935167) (not b!7935273) (not b!7935142) (not d!2372653) (not b!7935180) (not d!2372661) (not b!7935268) (not b!7935204) (not b!7935236) (not b!7935162) (not b!7935243) (not b!7935041) (not b!7935293) (not b!7935154) (not bm!735646) (not b!7935192) (not b!7935126) (not b!7935290) (not b!7935205) (not b!7935280) (not b!7935246) (not d!2372643) (not b!7935166) (not d!2372645) (not d!2372629) (not b!7935190) (not b!7935073) (not b!7935232) (not b!7935242) (not b!7935255) (not b!7935081) (not b!7935244) (not b!7935118) (not b!7935168) (not b!7935169) (not b!7935102) (not b!7935287) (not d!2372567) (not b!7935108) (not b!7935196) (not b!7935100) (not b!7935113) (not b!7935086) (not d!2372673) (not bm!735648) tp_is_empty!53249 (not b!7935092) (not d!2372651) (not b!7935105) (not b!7935159) (not d!2372681) (not b!7935253) (not b!7935237) (not b!7935270) (not b!7935149) (not b!7935116) (not b!7935165) (not b!7935171) (not bm!735649) (not b!7935104) (not b!7935245) (not d!2372617) (not b!7935259) (not d!2372603) (not b!7935079) (not d!2372595) (not b!7935241) (not b!7935085) (not b!7935291) (not b!7935173) (not b!7935275) (not b!7935069) (not b!7935170) (not b!7935068) (not d!2372679) (not b!7935263) (not b!7935158) (not b!7935289) (not b!7935125) (not b!7935182) (not b!7935295) (not b!7935278) (not b!7935226) (not b!7935279) (not b!7935160) (not b!7935121) (not b!7935212) (not d!2372569) (not b!7935292) (not b!7935288) (not b!7935294) (not d!2372591) (not b!7935080) (not b!7935074) (not b!7935094) (not d!2372589) (not b!7935188) (not b!7935195))
(check-sat)
