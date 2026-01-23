; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748614 () Bool)

(assert start!748614)

(declare-fun b!7932443 () Bool)

(declare-fun e!4680975 () Bool)

(declare-fun tp!2359004 () Bool)

(assert (=> b!7932443 (= e!4680975 tp!2359004)))

(declare-fun tp!2359002 () Bool)

(declare-fun tp!2359003 () Bool)

(declare-fun b!7932444 () Bool)

(declare-fun e!4680978 () Bool)

(declare-datatypes ((T!145832 0))(
  ( (T!145833 (val!32064 Int)) )
))
(declare-datatypes ((List!74576 0))(
  ( (Nil!74452) (Cons!74452 (h!80900 T!145832) (t!390221 List!74576)) )
))
(declare-datatypes ((IArray!31873 0))(
  ( (IArray!31874 (innerList!15994 List!74576)) )
))
(declare-datatypes ((Conc!15906 0))(
  ( (Node!15906 (left!56879 Conc!15906) (right!57209 Conc!15906) (csize!32042 Int) (cheight!16117 Int)) (Leaf!30240 (xs!19298 IArray!31873) (csize!32043 Int)) (Empty!15906) )
))
(declare-fun t!4440 () Conc!15906)

(declare-fun inv!95741 (Conc!15906) Bool)

(assert (=> b!7932444 (= e!4680978 (and (inv!95741 (left!56879 t!4440)) tp!2359002 (inv!95741 (right!57209 t!4440)) tp!2359003))))

(declare-fun b!7932445 () Bool)

(declare-fun res!3147169 () Bool)

(declare-fun e!4680977 () Bool)

(assert (=> b!7932445 (=> (not res!3147169) (not e!4680977))))

(get-info :version)

(assert (=> b!7932445 (= res!3147169 (and (not ((_ is Empty!15906) t!4440)) ((_ is Node!15906) t!4440)))))

(declare-fun b!7932446 () Bool)

(declare-fun inv!95742 (IArray!31873) Bool)

(assert (=> b!7932446 (= e!4680978 (and (inv!95742 (xs!19298 t!4440)) e!4680975))))

(declare-fun b!7932447 () Bool)

(declare-fun e!4680976 () Bool)

(assert (=> b!7932447 (= e!4680977 e!4680976)))

(declare-fun res!3147170 () Bool)

(assert (=> b!7932447 (=> (not res!3147170) (not e!4680976))))

(declare-fun lt!2694506 () Conc!15906)

(declare-fun height!2221 (Conc!15906) Int)

(assert (=> b!7932447 (= res!3147170 (> (height!2221 lt!2694506) (+ 1 (height!2221 (left!56879 t!4440)))))))

(declare-fun v!5484 () T!145832)

(declare-fun append!1152 (Conc!15906 T!145832) Conc!15906)

(assert (=> b!7932447 (= lt!2694506 (append!1152 (right!57209 t!4440) v!5484))))

(declare-fun b!7932448 () Bool)

(assert (=> b!7932448 (= e!4680976 (not ((_ is Node!15906) lt!2694506)))))

(declare-fun res!3147168 () Bool)

(assert (=> start!748614 (=> (not res!3147168) (not e!4680977))))

(declare-fun isBalanced!4532 (Conc!15906) Bool)

(assert (=> start!748614 (= res!3147168 (isBalanced!4532 t!4440))))

(assert (=> start!748614 e!4680977))

(assert (=> start!748614 (and (inv!95741 t!4440) e!4680978)))

(declare-fun tp_is_empty!53237 () Bool)

(assert (=> start!748614 tp_is_empty!53237))

(assert (= (and start!748614 res!3147168) b!7932445))

(assert (= (and b!7932445 res!3147169) b!7932447))

(assert (= (and b!7932447 res!3147170) b!7932448))

(assert (= (and start!748614 ((_ is Node!15906) t!4440)) b!7932444))

(assert (= b!7932446 b!7932443))

(assert (= (and start!748614 ((_ is Leaf!30240) t!4440)) b!7932446))

(declare-fun m!8318812 () Bool)

(assert (=> b!7932444 m!8318812))

(declare-fun m!8318814 () Bool)

(assert (=> b!7932444 m!8318814))

(declare-fun m!8318816 () Bool)

(assert (=> b!7932446 m!8318816))

(declare-fun m!8318818 () Bool)

(assert (=> b!7932447 m!8318818))

(declare-fun m!8318820 () Bool)

(assert (=> b!7932447 m!8318820))

(declare-fun m!8318822 () Bool)

(assert (=> b!7932447 m!8318822))

(declare-fun m!8318824 () Bool)

(assert (=> start!748614 m!8318824))

(declare-fun m!8318826 () Bool)

(assert (=> start!748614 m!8318826))

(check-sat (not b!7932443) (not b!7932444) (not start!748614) tp_is_empty!53237 (not b!7932446) (not b!7932447))
(check-sat)
(get-model)

(declare-fun d!2371420 () Bool)

(declare-fun c!1457231 () Bool)

(assert (=> d!2371420 (= c!1457231 ((_ is Node!15906) (left!56879 t!4440)))))

(declare-fun e!4680983 () Bool)

(assert (=> d!2371420 (= (inv!95741 (left!56879 t!4440)) e!4680983)))

(declare-fun b!7932455 () Bool)

(declare-fun inv!95743 (Conc!15906) Bool)

(assert (=> b!7932455 (= e!4680983 (inv!95743 (left!56879 t!4440)))))

(declare-fun b!7932456 () Bool)

(declare-fun e!4680984 () Bool)

(assert (=> b!7932456 (= e!4680983 e!4680984)))

(declare-fun res!3147173 () Bool)

(assert (=> b!7932456 (= res!3147173 (not ((_ is Leaf!30240) (left!56879 t!4440))))))

(assert (=> b!7932456 (=> res!3147173 e!4680984)))

(declare-fun b!7932457 () Bool)

(declare-fun inv!95744 (Conc!15906) Bool)

(assert (=> b!7932457 (= e!4680984 (inv!95744 (left!56879 t!4440)))))

(assert (= (and d!2371420 c!1457231) b!7932455))

(assert (= (and d!2371420 (not c!1457231)) b!7932456))

(assert (= (and b!7932456 (not res!3147173)) b!7932457))

(declare-fun m!8318828 () Bool)

(assert (=> b!7932455 m!8318828))

(declare-fun m!8318830 () Bool)

(assert (=> b!7932457 m!8318830))

(assert (=> b!7932444 d!2371420))

(declare-fun d!2371424 () Bool)

(declare-fun c!1457232 () Bool)

(assert (=> d!2371424 (= c!1457232 ((_ is Node!15906) (right!57209 t!4440)))))

(declare-fun e!4680985 () Bool)

(assert (=> d!2371424 (= (inv!95741 (right!57209 t!4440)) e!4680985)))

(declare-fun b!7932458 () Bool)

(assert (=> b!7932458 (= e!4680985 (inv!95743 (right!57209 t!4440)))))

(declare-fun b!7932459 () Bool)

(declare-fun e!4680986 () Bool)

(assert (=> b!7932459 (= e!4680985 e!4680986)))

(declare-fun res!3147174 () Bool)

(assert (=> b!7932459 (= res!3147174 (not ((_ is Leaf!30240) (right!57209 t!4440))))))

(assert (=> b!7932459 (=> res!3147174 e!4680986)))

(declare-fun b!7932460 () Bool)

(assert (=> b!7932460 (= e!4680986 (inv!95744 (right!57209 t!4440)))))

(assert (= (and d!2371424 c!1457232) b!7932458))

(assert (= (and d!2371424 (not c!1457232)) b!7932459))

(assert (= (and b!7932459 (not res!3147174)) b!7932460))

(declare-fun m!8318832 () Bool)

(assert (=> b!7932458 m!8318832))

(declare-fun m!8318834 () Bool)

(assert (=> b!7932460 m!8318834))

(assert (=> b!7932444 d!2371424))

(declare-fun d!2371426 () Bool)

(declare-fun size!43258 (List!74576) Int)

(assert (=> d!2371426 (= (inv!95742 (xs!19298 t!4440)) (<= (size!43258 (innerList!15994 (xs!19298 t!4440))) 2147483647))))

(declare-fun bs!1969027 () Bool)

(assert (= bs!1969027 d!2371426))

(declare-fun m!8318836 () Bool)

(assert (=> bs!1969027 m!8318836))

(assert (=> b!7932446 d!2371426))

(declare-fun d!2371428 () Bool)

(assert (=> d!2371428 (= (height!2221 lt!2694506) (ite ((_ is Empty!15906) lt!2694506) 0 (ite ((_ is Leaf!30240) lt!2694506) 1 (cheight!16117 lt!2694506))))))

(assert (=> b!7932447 d!2371428))

(declare-fun d!2371434 () Bool)

(assert (=> d!2371434 (= (height!2221 (left!56879 t!4440)) (ite ((_ is Empty!15906) (left!56879 t!4440)) 0 (ite ((_ is Leaf!30240) (left!56879 t!4440)) 1 (cheight!16117 (left!56879 t!4440)))))))

(assert (=> b!7932447 d!2371434))

(declare-fun b!7932513 () Bool)

(declare-fun e!4681012 () Conc!15906)

(declare-fun call!735463 () Conc!15906)

(assert (=> b!7932513 (= e!4681012 call!735463)))

(declare-fun lt!2694585 () List!74576)

(declare-fun call!735456 () List!74576)

(assert (=> b!7932513 (= lt!2694585 call!735456)))

(declare-fun lt!2694579 () List!74576)

(declare-fun lt!2694591 () Conc!15906)

(declare-fun list!19420 (Conc!15906) List!74576)

(assert (=> b!7932513 (= lt!2694579 (list!19420 (left!56879 lt!2694591)))))

(declare-fun lt!2694595 () List!74576)

(assert (=> b!7932513 (= lt!2694595 (list!19420 (right!57209 lt!2694591)))))

(declare-datatypes ((Unit!169571 0))(
  ( (Unit!169572) )
))
(declare-fun lt!2694580 () Unit!169571)

(declare-fun lemmaConcatAssociativity!3165 (List!74576 List!74576 List!74576) Unit!169571)

(assert (=> b!7932513 (= lt!2694580 (lemmaConcatAssociativity!3165 lt!2694585 lt!2694579 lt!2694595))))

(declare-fun call!735464 () List!74576)

(declare-fun call!735461 () List!74576)

(declare-fun ++!18262 (List!74576 List!74576) List!74576)

(assert (=> b!7932513 (= (++!18262 call!735461 lt!2694595) (++!18262 lt!2694585 call!735464))))

(declare-fun lt!2694589 () Unit!169571)

(assert (=> b!7932513 (= lt!2694589 lt!2694580)))

(declare-fun lt!2694583 () List!74576)

(assert (=> b!7932513 (= lt!2694583 call!735456)))

(declare-fun lt!2694593 () List!74576)

(declare-fun call!735458 () List!74576)

(assert (=> b!7932513 (= lt!2694593 call!735458)))

(declare-fun lt!2694590 () List!74576)

(assert (=> b!7932513 (= lt!2694590 (Cons!74452 v!5484 Nil!74452))))

(declare-fun lt!2694594 () Unit!169571)

(declare-fun call!735462 () Unit!169571)

(assert (=> b!7932513 (= lt!2694594 call!735462)))

(declare-fun call!735459 () List!74576)

(declare-fun call!735457 () List!74576)

(assert (=> b!7932513 (= (++!18262 call!735457 lt!2694590) (++!18262 lt!2694583 call!735459))))

(declare-fun lt!2694581 () Unit!169571)

(assert (=> b!7932513 (= lt!2694581 lt!2694594)))

(declare-fun c!1457253 () Bool)

(declare-fun lt!2694582 () List!74576)

(declare-fun lt!2694584 () List!74576)

(declare-fun bm!735451 () Bool)

(assert (=> bm!735451 (= call!735464 (++!18262 (ite c!1457253 lt!2694584 lt!2694579) (ite c!1457253 lt!2694582 lt!2694595)))))

(declare-fun lt!2694592 () List!74576)

(declare-fun bm!735452 () Bool)

(assert (=> bm!735452 (= call!735461 (++!18262 (ite c!1457253 lt!2694582 lt!2694585) (ite c!1457253 lt!2694592 lt!2694579)))))

(declare-fun bm!735453 () Bool)

(declare-fun call!735460 () IArray!31873)

(declare-fun fill!286 (Int T!145832) IArray!31873)

(assert (=> bm!735453 (= call!735460 (fill!286 1 v!5484))))

(declare-fun b!7932514 () Bool)

(declare-fun e!4681013 () Bool)

(declare-fun lt!2694586 () Conc!15906)

(declare-fun $colon+!319 (List!74576 T!145832) List!74576)

(assert (=> b!7932514 (= e!4681013 (= (list!19420 lt!2694586) ($colon+!319 (list!19420 (right!57209 t!4440)) v!5484)))))

(declare-fun bm!735454 () Bool)

(assert (=> bm!735454 (= call!735462 (lemmaConcatAssociativity!3165 (ite c!1457253 lt!2694584 lt!2694583) (ite c!1457253 lt!2694582 lt!2694593) (ite c!1457253 lt!2694592 lt!2694590)))))

(declare-fun bm!735455 () Bool)

(assert (=> bm!735455 (= call!735458 (list!19420 (right!57209 (right!57209 t!4440))))))

(declare-fun b!7932515 () Bool)

(declare-fun e!4681011 () Conc!15906)

(declare-fun e!4681015 () Conc!15906)

(assert (=> b!7932515 (= e!4681011 e!4681015)))

(declare-fun c!1457255 () Bool)

(assert (=> b!7932515 (= c!1457255 ((_ is Node!15906) (right!57209 t!4440)))))

(declare-fun bm!735456 () Bool)

(assert (=> bm!735456 (= call!735459 (++!18262 (ite c!1457253 lt!2694584 lt!2694593) (ite c!1457253 call!735461 lt!2694590)))))

(declare-fun b!7932516 () Bool)

(declare-fun e!4681016 () Conc!15906)

(assert (=> b!7932516 (= e!4681016 (right!57209 lt!2694591))))

(declare-fun b!7932517 () Bool)

(declare-fun res!3147188 () Bool)

(assert (=> b!7932517 (=> (not res!3147188) (not e!4681013))))

(assert (=> b!7932517 (= res!3147188 (<= (height!2221 lt!2694586) (+ (height!2221 (right!57209 t!4440)) 1)))))

(declare-fun b!7932518 () Bool)

(declare-fun e!4681014 () Conc!15906)

(assert (=> b!7932518 (= e!4681014 call!735463)))

(declare-fun bm!735450 () Bool)

(assert (=> bm!735450 (= call!735456 (list!19420 (left!56879 (right!57209 t!4440))))))

(declare-fun d!2371436 () Bool)

(assert (=> d!2371436 e!4681013))

(declare-fun res!3147187 () Bool)

(assert (=> d!2371436 (=> (not res!3147187) (not e!4681013))))

(assert (=> d!2371436 (= res!3147187 (isBalanced!4532 lt!2694586))))

(assert (=> d!2371436 (= lt!2694586 e!4681011)))

(declare-fun c!1457254 () Bool)

(assert (=> d!2371436 (= c!1457254 ((_ is Empty!15906) (right!57209 t!4440)))))

(assert (=> d!2371436 (isBalanced!4532 (right!57209 t!4440))))

(assert (=> d!2371436 (= (append!1152 (right!57209 t!4440) v!5484) lt!2694586)))

(declare-fun b!7932519 () Bool)

(assert (=> b!7932519 (= c!1457253 (<= (height!2221 lt!2694591) (+ (height!2221 (left!56879 (right!57209 t!4440))) 1)))))

(assert (=> b!7932519 (= lt!2694591 (append!1152 (right!57209 (right!57209 t!4440)) v!5484))))

(assert (=> b!7932519 (= e!4681015 e!4681012)))

(declare-fun b!7932520 () Bool)

(declare-fun call!735455 () Conc!15906)

(assert (=> b!7932520 (= e!4681012 call!735455)))

(assert (=> b!7932520 (= lt!2694584 call!735456)))

(assert (=> b!7932520 (= lt!2694582 call!735458)))

(assert (=> b!7932520 (= lt!2694592 (Cons!74452 v!5484 Nil!74452))))

(declare-fun lt!2694588 () Unit!169571)

(assert (=> b!7932520 (= lt!2694588 call!735462)))

(assert (=> b!7932520 (= call!735457 call!735459)))

(declare-fun lt!2694596 () Unit!169571)

(assert (=> b!7932520 (= lt!2694596 lt!2694588)))

(declare-fun bm!735457 () Bool)

(declare-fun c!1457257 () Bool)

(assert (=> bm!735457 (= c!1457257 c!1457255)))

(declare-fun <>!427 (Conc!15906 Conc!15906) Conc!15906)

(assert (=> bm!735457 (= call!735463 (<>!427 (ite c!1457255 call!735455 (right!57209 t!4440)) e!4681016))))

(declare-fun bm!735458 () Bool)

(assert (=> bm!735458 (= call!735455 (<>!427 (left!56879 (right!57209 t!4440)) (ite c!1457253 lt!2694591 (left!56879 lt!2694591))))))

(declare-fun b!7932521 () Bool)

(assert (=> b!7932521 (= e!4681016 (Leaf!30240 call!735460 1))))

(declare-fun b!7932522 () Bool)

(assert (=> b!7932522 (= e!4681011 (Leaf!30240 call!735460 1))))

(declare-fun b!7932523 () Bool)

(declare-fun res!3147189 () Bool)

(assert (=> b!7932523 (=> (not res!3147189) (not e!4681013))))

(assert (=> b!7932523 (= res!3147189 (<= (height!2221 (right!57209 t!4440)) (height!2221 lt!2694586)))))

(declare-fun b!7932524 () Bool)

(declare-fun c!1457256 () Bool)

(assert (=> b!7932524 (= c!1457256 (< (csize!32043 (right!57209 t!4440)) 512))))

(assert (=> b!7932524 (= e!4681015 e!4681014)))

(declare-fun bm!735459 () Bool)

(assert (=> bm!735459 (= call!735457 (++!18262 (ite c!1457253 call!735464 lt!2694583) (ite c!1457253 lt!2694592 lt!2694593)))))

(declare-fun b!7932525 () Bool)

(declare-fun append!1154 (IArray!31873 T!145832) IArray!31873)

(assert (=> b!7932525 (= e!4681014 (Leaf!30240 (append!1154 (xs!19298 (right!57209 t!4440)) v!5484) (+ (csize!32043 (right!57209 t!4440)) 1)))))

(declare-fun lt!2694587 () List!74576)

(declare-fun list!19423 (IArray!31873) List!74576)

(assert (=> b!7932525 (= lt!2694587 ($colon+!319 (list!19423 (xs!19298 (right!57209 t!4440))) v!5484))))

(assert (= (and d!2371436 c!1457254) b!7932522))

(assert (= (and d!2371436 (not c!1457254)) b!7932515))

(assert (= (and b!7932515 c!1457255) b!7932519))

(assert (= (and b!7932515 (not c!1457255)) b!7932524))

(assert (= (and b!7932519 c!1457253) b!7932520))

(assert (= (and b!7932519 (not c!1457253)) b!7932513))

(assert (= (or b!7932520 b!7932513) bm!735451))

(assert (= (or b!7932520 b!7932513) bm!735452))

(assert (= (or b!7932520 b!7932513) bm!735454))

(assert (= (or b!7932520 b!7932513) bm!735455))

(assert (= (or b!7932520 b!7932513) bm!735458))

(assert (= (or b!7932520 b!7932513) bm!735450))

(assert (= (or b!7932520 b!7932513) bm!735456))

(assert (= (or b!7932520 b!7932513) bm!735459))

(assert (= (and b!7932524 c!1457256) b!7932525))

(assert (= (and b!7932524 (not c!1457256)) b!7932518))

(assert (= (or b!7932513 b!7932518) bm!735457))

(assert (= (and bm!735457 c!1457257) b!7932516))

(assert (= (and bm!735457 (not c!1457257)) b!7932521))

(assert (= (or b!7932522 b!7932521) bm!735453))

(assert (= (and d!2371436 res!3147187) b!7932523))

(assert (= (and b!7932523 res!3147189) b!7932517))

(assert (= (and b!7932517 res!3147188) b!7932514))

(declare-fun m!8318838 () Bool)

(assert (=> bm!735453 m!8318838))

(declare-fun m!8318840 () Bool)

(assert (=> b!7932513 m!8318840))

(declare-fun m!8318842 () Bool)

(assert (=> b!7932513 m!8318842))

(declare-fun m!8318844 () Bool)

(assert (=> b!7932513 m!8318844))

(declare-fun m!8318846 () Bool)

(assert (=> b!7932513 m!8318846))

(declare-fun m!8318848 () Bool)

(assert (=> b!7932513 m!8318848))

(declare-fun m!8318850 () Bool)

(assert (=> b!7932513 m!8318850))

(declare-fun m!8318852 () Bool)

(assert (=> b!7932513 m!8318852))

(declare-fun m!8318854 () Bool)

(assert (=> b!7932519 m!8318854))

(declare-fun m!8318856 () Bool)

(assert (=> b!7932519 m!8318856))

(declare-fun m!8318858 () Bool)

(assert (=> b!7932519 m!8318858))

(declare-fun m!8318860 () Bool)

(assert (=> bm!735451 m!8318860))

(declare-fun m!8318862 () Bool)

(assert (=> bm!735452 m!8318862))

(declare-fun m!8318864 () Bool)

(assert (=> b!7932525 m!8318864))

(declare-fun m!8318866 () Bool)

(assert (=> b!7932525 m!8318866))

(assert (=> b!7932525 m!8318866))

(declare-fun m!8318868 () Bool)

(assert (=> b!7932525 m!8318868))

(declare-fun m!8318870 () Bool)

(assert (=> bm!735457 m!8318870))

(declare-fun m!8318872 () Bool)

(assert (=> bm!735450 m!8318872))

(declare-fun m!8318874 () Bool)

(assert (=> b!7932517 m!8318874))

(declare-fun m!8318876 () Bool)

(assert (=> b!7932517 m!8318876))

(declare-fun m!8318878 () Bool)

(assert (=> bm!735459 m!8318878))

(declare-fun m!8318880 () Bool)

(assert (=> bm!735455 m!8318880))

(assert (=> b!7932523 m!8318876))

(assert (=> b!7932523 m!8318874))

(declare-fun m!8318882 () Bool)

(assert (=> bm!735458 m!8318882))

(declare-fun m!8318884 () Bool)

(assert (=> bm!735454 m!8318884))

(declare-fun m!8318886 () Bool)

(assert (=> bm!735456 m!8318886))

(declare-fun m!8318888 () Bool)

(assert (=> b!7932514 m!8318888))

(declare-fun m!8318890 () Bool)

(assert (=> b!7932514 m!8318890))

(assert (=> b!7932514 m!8318890))

(declare-fun m!8318892 () Bool)

(assert (=> b!7932514 m!8318892))

(declare-fun m!8318894 () Bool)

(assert (=> d!2371436 m!8318894))

(declare-fun m!8318896 () Bool)

(assert (=> d!2371436 m!8318896))

(assert (=> b!7932447 d!2371436))

(declare-fun b!7932555 () Bool)

(declare-fun res!3147207 () Bool)

(declare-fun e!4681029 () Bool)

(assert (=> b!7932555 (=> (not res!3147207) (not e!4681029))))

(assert (=> b!7932555 (= res!3147207 (isBalanced!4532 (left!56879 t!4440)))))

(declare-fun d!2371438 () Bool)

(declare-fun res!3147209 () Bool)

(declare-fun e!4681030 () Bool)

(assert (=> d!2371438 (=> res!3147209 e!4681030)))

(assert (=> d!2371438 (= res!3147209 (not ((_ is Node!15906) t!4440)))))

(assert (=> d!2371438 (= (isBalanced!4532 t!4440) e!4681030)))

(declare-fun b!7932556 () Bool)

(assert (=> b!7932556 (= e!4681030 e!4681029)))

(declare-fun res!3147206 () Bool)

(assert (=> b!7932556 (=> (not res!3147206) (not e!4681029))))

(assert (=> b!7932556 (= res!3147206 (<= (- 1) (- (height!2221 (left!56879 t!4440)) (height!2221 (right!57209 t!4440)))))))

(declare-fun b!7932557 () Bool)

(declare-fun res!3147210 () Bool)

(assert (=> b!7932557 (=> (not res!3147210) (not e!4681029))))

(declare-fun isEmpty!42783 (Conc!15906) Bool)

(assert (=> b!7932557 (= res!3147210 (not (isEmpty!42783 (left!56879 t!4440))))))

(declare-fun b!7932558 () Bool)

(declare-fun res!3147208 () Bool)

(assert (=> b!7932558 (=> (not res!3147208) (not e!4681029))))

(assert (=> b!7932558 (= res!3147208 (isBalanced!4532 (right!57209 t!4440)))))

(declare-fun b!7932559 () Bool)

(assert (=> b!7932559 (= e!4681029 (not (isEmpty!42783 (right!57209 t!4440))))))

(declare-fun b!7932560 () Bool)

(declare-fun res!3147205 () Bool)

(assert (=> b!7932560 (=> (not res!3147205) (not e!4681029))))

(assert (=> b!7932560 (= res!3147205 (<= (- (height!2221 (left!56879 t!4440)) (height!2221 (right!57209 t!4440))) 1))))

(assert (= (and d!2371438 (not res!3147209)) b!7932556))

(assert (= (and b!7932556 res!3147206) b!7932560))

(assert (= (and b!7932560 res!3147205) b!7932555))

(assert (= (and b!7932555 res!3147207) b!7932558))

(assert (= (and b!7932558 res!3147208) b!7932557))

(assert (= (and b!7932557 res!3147210) b!7932559))

(declare-fun m!8318958 () Bool)

(assert (=> b!7932557 m!8318958))

(assert (=> b!7932560 m!8318820))

(assert (=> b!7932560 m!8318876))

(assert (=> b!7932556 m!8318820))

(assert (=> b!7932556 m!8318876))

(declare-fun m!8318960 () Bool)

(assert (=> b!7932555 m!8318960))

(declare-fun m!8318962 () Bool)

(assert (=> b!7932559 m!8318962))

(assert (=> b!7932558 m!8318896))

(assert (=> start!748614 d!2371438))

(declare-fun d!2371442 () Bool)

(declare-fun c!1457265 () Bool)

(assert (=> d!2371442 (= c!1457265 ((_ is Node!15906) t!4440))))

(declare-fun e!4681033 () Bool)

(assert (=> d!2371442 (= (inv!95741 t!4440) e!4681033)))

(declare-fun b!7932563 () Bool)

(assert (=> b!7932563 (= e!4681033 (inv!95743 t!4440))))

(declare-fun b!7932564 () Bool)

(declare-fun e!4681034 () Bool)

(assert (=> b!7932564 (= e!4681033 e!4681034)))

(declare-fun res!3147213 () Bool)

(assert (=> b!7932564 (= res!3147213 (not ((_ is Leaf!30240) t!4440)))))

(assert (=> b!7932564 (=> res!3147213 e!4681034)))

(declare-fun b!7932565 () Bool)

(assert (=> b!7932565 (= e!4681034 (inv!95744 t!4440))))

(assert (= (and d!2371442 c!1457265) b!7932563))

(assert (= (and d!2371442 (not c!1457265)) b!7932564))

(assert (= (and b!7932564 (not res!3147213)) b!7932565))

(declare-fun m!8318964 () Bool)

(assert (=> b!7932563 m!8318964))

(declare-fun m!8318966 () Bool)

(assert (=> b!7932565 m!8318966))

(assert (=> start!748614 d!2371442))

(declare-fun e!4681043 () Bool)

(declare-fun b!7932580 () Bool)

(declare-fun tp!2359011 () Bool)

(declare-fun tp!2359012 () Bool)

(assert (=> b!7932580 (= e!4681043 (and (inv!95741 (left!56879 (left!56879 t!4440))) tp!2359011 (inv!95741 (right!57209 (left!56879 t!4440))) tp!2359012))))

(declare-fun b!7932582 () Bool)

(declare-fun e!4681044 () Bool)

(declare-fun tp!2359013 () Bool)

(assert (=> b!7932582 (= e!4681044 tp!2359013)))

(declare-fun b!7932581 () Bool)

(assert (=> b!7932581 (= e!4681043 (and (inv!95742 (xs!19298 (left!56879 t!4440))) e!4681044))))

(assert (=> b!7932444 (= tp!2359002 (and (inv!95741 (left!56879 t!4440)) e!4681043))))

(assert (= (and b!7932444 ((_ is Node!15906) (left!56879 t!4440))) b!7932580))

(assert (= b!7932581 b!7932582))

(assert (= (and b!7932444 ((_ is Leaf!30240) (left!56879 t!4440))) b!7932581))

(declare-fun m!8318976 () Bool)

(assert (=> b!7932580 m!8318976))

(declare-fun m!8318978 () Bool)

(assert (=> b!7932580 m!8318978))

(declare-fun m!8318980 () Bool)

(assert (=> b!7932581 m!8318980))

(assert (=> b!7932444 m!8318812))

(declare-fun e!4681045 () Bool)

(declare-fun tp!2359015 () Bool)

(declare-fun b!7932583 () Bool)

(declare-fun tp!2359014 () Bool)

(assert (=> b!7932583 (= e!4681045 (and (inv!95741 (left!56879 (right!57209 t!4440))) tp!2359014 (inv!95741 (right!57209 (right!57209 t!4440))) tp!2359015))))

(declare-fun b!7932585 () Bool)

(declare-fun e!4681046 () Bool)

(declare-fun tp!2359016 () Bool)

(assert (=> b!7932585 (= e!4681046 tp!2359016)))

(declare-fun b!7932584 () Bool)

(assert (=> b!7932584 (= e!4681045 (and (inv!95742 (xs!19298 (right!57209 t!4440))) e!4681046))))

(assert (=> b!7932444 (= tp!2359003 (and (inv!95741 (right!57209 t!4440)) e!4681045))))

(assert (= (and b!7932444 ((_ is Node!15906) (right!57209 t!4440))) b!7932583))

(assert (= b!7932584 b!7932585))

(assert (= (and b!7932444 ((_ is Leaf!30240) (right!57209 t!4440))) b!7932584))

(declare-fun m!8318982 () Bool)

(assert (=> b!7932583 m!8318982))

(declare-fun m!8318984 () Bool)

(assert (=> b!7932583 m!8318984))

(declare-fun m!8318986 () Bool)

(assert (=> b!7932584 m!8318986))

(assert (=> b!7932444 m!8318814))

(declare-fun b!7932590 () Bool)

(declare-fun e!4681049 () Bool)

(declare-fun tp!2359019 () Bool)

(assert (=> b!7932590 (= e!4681049 (and tp_is_empty!53237 tp!2359019))))

(assert (=> b!7932443 (= tp!2359004 e!4681049)))

(assert (= (and b!7932443 ((_ is Cons!74452) (innerList!15994 (xs!19298 t!4440)))) b!7932590))

(check-sat (not b!7932580) (not b!7932458) (not b!7932556) (not bm!735453) (not b!7932560) (not b!7932585) (not d!2371436) (not b!7932513) (not b!7932555) (not bm!735456) (not b!7932523) (not b!7932590) (not b!7932584) (not bm!735452) (not b!7932460) (not b!7932559) (not b!7932581) (not b!7932514) (not b!7932519) (not b!7932558) (not b!7932457) (not bm!735458) (not b!7932517) (not b!7932565) (not b!7932563) (not bm!735455) (not bm!735454) (not b!7932583) (not bm!735451) (not b!7932525) (not bm!735457) (not b!7932455) (not bm!735459) (not b!7932444) (not bm!735450) (not b!7932557) (not b!7932582) tp_is_empty!53237 (not d!2371426))
(check-sat)
(get-model)

(declare-fun d!2371452 () Bool)

(declare-fun c!1457269 () Bool)

(assert (=> d!2371452 (= c!1457269 ((_ is Node!15906) (left!56879 (right!57209 t!4440))))))

(declare-fun e!4681069 () Bool)

(assert (=> d!2371452 (= (inv!95741 (left!56879 (right!57209 t!4440))) e!4681069)))

(declare-fun b!7932631 () Bool)

(assert (=> b!7932631 (= e!4681069 (inv!95743 (left!56879 (right!57209 t!4440))))))

(declare-fun b!7932632 () Bool)

(declare-fun e!4681070 () Bool)

(assert (=> b!7932632 (= e!4681069 e!4681070)))

(declare-fun res!3147235 () Bool)

(assert (=> b!7932632 (= res!3147235 (not ((_ is Leaf!30240) (left!56879 (right!57209 t!4440)))))))

(assert (=> b!7932632 (=> res!3147235 e!4681070)))

(declare-fun b!7932633 () Bool)

(assert (=> b!7932633 (= e!4681070 (inv!95744 (left!56879 (right!57209 t!4440))))))

(assert (= (and d!2371452 c!1457269) b!7932631))

(assert (= (and d!2371452 (not c!1457269)) b!7932632))

(assert (= (and b!7932632 (not res!3147235)) b!7932633))

(declare-fun m!8319012 () Bool)

(assert (=> b!7932631 m!8319012))

(declare-fun m!8319014 () Bool)

(assert (=> b!7932633 m!8319014))

(assert (=> b!7932583 d!2371452))

(declare-fun d!2371454 () Bool)

(declare-fun c!1457270 () Bool)

(assert (=> d!2371454 (= c!1457270 ((_ is Node!15906) (right!57209 (right!57209 t!4440))))))

(declare-fun e!4681071 () Bool)

(assert (=> d!2371454 (= (inv!95741 (right!57209 (right!57209 t!4440))) e!4681071)))

(declare-fun b!7932634 () Bool)

(assert (=> b!7932634 (= e!4681071 (inv!95743 (right!57209 (right!57209 t!4440))))))

(declare-fun b!7932635 () Bool)

(declare-fun e!4681072 () Bool)

(assert (=> b!7932635 (= e!4681071 e!4681072)))

(declare-fun res!3147236 () Bool)

(assert (=> b!7932635 (= res!3147236 (not ((_ is Leaf!30240) (right!57209 (right!57209 t!4440)))))))

(assert (=> b!7932635 (=> res!3147236 e!4681072)))

(declare-fun b!7932636 () Bool)

(assert (=> b!7932636 (= e!4681072 (inv!95744 (right!57209 (right!57209 t!4440))))))

(assert (= (and d!2371454 c!1457270) b!7932634))

(assert (= (and d!2371454 (not c!1457270)) b!7932635))

(assert (= (and b!7932635 (not res!3147236)) b!7932636))

(declare-fun m!8319016 () Bool)

(assert (=> b!7932634 m!8319016))

(declare-fun m!8319018 () Bool)

(assert (=> b!7932636 m!8319018))

(assert (=> b!7932583 d!2371454))

(declare-fun d!2371456 () Bool)

(assert (=> d!2371456 (= (inv!95742 (xs!19298 (right!57209 t!4440))) (<= (size!43258 (innerList!15994 (xs!19298 (right!57209 t!4440)))) 2147483647))))

(declare-fun bs!1969029 () Bool)

(assert (= bs!1969029 d!2371456))

(declare-fun m!8319020 () Bool)

(assert (=> bs!1969029 m!8319020))

(assert (=> b!7932584 d!2371456))

(declare-fun d!2371458 () Bool)

(assert (=> d!2371458 (= (height!2221 (right!57209 t!4440)) (ite ((_ is Empty!15906) (right!57209 t!4440)) 0 (ite ((_ is Leaf!30240) (right!57209 t!4440)) 1 (cheight!16117 (right!57209 t!4440)))))))

(assert (=> b!7932523 d!2371458))

(declare-fun d!2371460 () Bool)

(assert (=> d!2371460 (= (height!2221 lt!2694586) (ite ((_ is Empty!15906) lt!2694586) 0 (ite ((_ is Leaf!30240) lt!2694586) 1 (cheight!16117 lt!2694586))))))

(assert (=> b!7932523 d!2371460))

(declare-fun b!7932645 () Bool)

(declare-fun e!4681077 () List!74576)

(assert (=> b!7932645 (= e!4681077 Nil!74452)))

(declare-fun d!2371462 () Bool)

(declare-fun c!1457275 () Bool)

(assert (=> d!2371462 (= c!1457275 ((_ is Empty!15906) (left!56879 (right!57209 t!4440))))))

(assert (=> d!2371462 (= (list!19420 (left!56879 (right!57209 t!4440))) e!4681077)))

(declare-fun b!7932647 () Bool)

(declare-fun e!4681078 () List!74576)

(assert (=> b!7932647 (= e!4681078 (list!19423 (xs!19298 (left!56879 (right!57209 t!4440)))))))

(declare-fun b!7932646 () Bool)

(assert (=> b!7932646 (= e!4681077 e!4681078)))

(declare-fun c!1457276 () Bool)

(assert (=> b!7932646 (= c!1457276 ((_ is Leaf!30240) (left!56879 (right!57209 t!4440))))))

(declare-fun b!7932648 () Bool)

(assert (=> b!7932648 (= e!4681078 (++!18262 (list!19420 (left!56879 (left!56879 (right!57209 t!4440)))) (list!19420 (right!57209 (left!56879 (right!57209 t!4440))))))))

(assert (= (and d!2371462 c!1457275) b!7932645))

(assert (= (and d!2371462 (not c!1457275)) b!7932646))

(assert (= (and b!7932646 c!1457276) b!7932647))

(assert (= (and b!7932646 (not c!1457276)) b!7932648))

(declare-fun m!8319022 () Bool)

(assert (=> b!7932647 m!8319022))

(declare-fun m!8319024 () Bool)

(assert (=> b!7932648 m!8319024))

(declare-fun m!8319026 () Bool)

(assert (=> b!7932648 m!8319026))

(assert (=> b!7932648 m!8319024))

(assert (=> b!7932648 m!8319026))

(declare-fun m!8319028 () Bool)

(assert (=> b!7932648 m!8319028))

(assert (=> bm!735450 d!2371462))

(declare-fun d!2371464 () Bool)

(declare-fun e!4681083 () Bool)

(assert (=> d!2371464 e!4681083))

(declare-fun res!3147242 () Bool)

(assert (=> d!2371464 (=> (not res!3147242) (not e!4681083))))

(declare-fun lt!2694617 () List!74576)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15786 (List!74576) (InoxSet T!145832))

(assert (=> d!2371464 (= res!3147242 (= (content!15786 lt!2694617) ((_ map or) (content!15786 (ite c!1457253 call!735464 lt!2694583)) (content!15786 (ite c!1457253 lt!2694592 lt!2694593)))))))

(declare-fun e!4681084 () List!74576)

(assert (=> d!2371464 (= lt!2694617 e!4681084)))

(declare-fun c!1457279 () Bool)

(assert (=> d!2371464 (= c!1457279 ((_ is Nil!74452) (ite c!1457253 call!735464 lt!2694583)))))

(assert (=> d!2371464 (= (++!18262 (ite c!1457253 call!735464 lt!2694583) (ite c!1457253 lt!2694592 lt!2694593)) lt!2694617)))

(declare-fun b!7932659 () Bool)

(declare-fun res!3147241 () Bool)

(assert (=> b!7932659 (=> (not res!3147241) (not e!4681083))))

(assert (=> b!7932659 (= res!3147241 (= (size!43258 lt!2694617) (+ (size!43258 (ite c!1457253 call!735464 lt!2694583)) (size!43258 (ite c!1457253 lt!2694592 lt!2694593)))))))

(declare-fun b!7932660 () Bool)

(assert (=> b!7932660 (= e!4681083 (or (not (= (ite c!1457253 lt!2694592 lt!2694593) Nil!74452)) (= lt!2694617 (ite c!1457253 call!735464 lt!2694583))))))

(declare-fun b!7932658 () Bool)

(assert (=> b!7932658 (= e!4681084 (Cons!74452 (h!80900 (ite c!1457253 call!735464 lt!2694583)) (++!18262 (t!390221 (ite c!1457253 call!735464 lt!2694583)) (ite c!1457253 lt!2694592 lt!2694593))))))

(declare-fun b!7932657 () Bool)

(assert (=> b!7932657 (= e!4681084 (ite c!1457253 lt!2694592 lt!2694593))))

(assert (= (and d!2371464 c!1457279) b!7932657))

(assert (= (and d!2371464 (not c!1457279)) b!7932658))

(assert (= (and d!2371464 res!3147242) b!7932659))

(assert (= (and b!7932659 res!3147241) b!7932660))

(declare-fun m!8319030 () Bool)

(assert (=> d!2371464 m!8319030))

(declare-fun m!8319032 () Bool)

(assert (=> d!2371464 m!8319032))

(declare-fun m!8319034 () Bool)

(assert (=> d!2371464 m!8319034))

(declare-fun m!8319036 () Bool)

(assert (=> b!7932659 m!8319036))

(declare-fun m!8319038 () Bool)

(assert (=> b!7932659 m!8319038))

(declare-fun m!8319040 () Bool)

(assert (=> b!7932659 m!8319040))

(declare-fun m!8319042 () Bool)

(assert (=> b!7932658 m!8319042))

(assert (=> bm!735459 d!2371464))

(declare-fun d!2371466 () Bool)

(assert (=> d!2371466 (= (++!18262 (++!18262 lt!2694585 lt!2694579) lt!2694595) (++!18262 lt!2694585 (++!18262 lt!2694579 lt!2694595)))))

(declare-fun lt!2694620 () Unit!169571)

(declare-fun choose!59841 (List!74576 List!74576 List!74576) Unit!169571)

(assert (=> d!2371466 (= lt!2694620 (choose!59841 lt!2694585 lt!2694579 lt!2694595))))

(assert (=> d!2371466 (= (lemmaConcatAssociativity!3165 lt!2694585 lt!2694579 lt!2694595) lt!2694620)))

(declare-fun bs!1969030 () Bool)

(assert (= bs!1969030 d!2371466))

(declare-fun m!8319044 () Bool)

(assert (=> bs!1969030 m!8319044))

(declare-fun m!8319046 () Bool)

(assert (=> bs!1969030 m!8319046))

(assert (=> bs!1969030 m!8319044))

(declare-fun m!8319048 () Bool)

(assert (=> bs!1969030 m!8319048))

(declare-fun m!8319050 () Bool)

(assert (=> bs!1969030 m!8319050))

(declare-fun m!8319052 () Bool)

(assert (=> bs!1969030 m!8319052))

(assert (=> bs!1969030 m!8319050))

(assert (=> b!7932513 d!2371466))

(declare-fun d!2371468 () Bool)

(declare-fun e!4681085 () Bool)

(assert (=> d!2371468 e!4681085))

(declare-fun res!3147244 () Bool)

(assert (=> d!2371468 (=> (not res!3147244) (not e!4681085))))

(declare-fun lt!2694621 () List!74576)

(assert (=> d!2371468 (= res!3147244 (= (content!15786 lt!2694621) ((_ map or) (content!15786 lt!2694583) (content!15786 call!735459))))))

(declare-fun e!4681086 () List!74576)

(assert (=> d!2371468 (= lt!2694621 e!4681086)))

(declare-fun c!1457280 () Bool)

(assert (=> d!2371468 (= c!1457280 ((_ is Nil!74452) lt!2694583))))

(assert (=> d!2371468 (= (++!18262 lt!2694583 call!735459) lt!2694621)))

(declare-fun b!7932663 () Bool)

(declare-fun res!3147243 () Bool)

(assert (=> b!7932663 (=> (not res!3147243) (not e!4681085))))

(assert (=> b!7932663 (= res!3147243 (= (size!43258 lt!2694621) (+ (size!43258 lt!2694583) (size!43258 call!735459))))))

(declare-fun b!7932664 () Bool)

(assert (=> b!7932664 (= e!4681085 (or (not (= call!735459 Nil!74452)) (= lt!2694621 lt!2694583)))))

(declare-fun b!7932662 () Bool)

(assert (=> b!7932662 (= e!4681086 (Cons!74452 (h!80900 lt!2694583) (++!18262 (t!390221 lt!2694583) call!735459)))))

(declare-fun b!7932661 () Bool)

(assert (=> b!7932661 (= e!4681086 call!735459)))

(assert (= (and d!2371468 c!1457280) b!7932661))

(assert (= (and d!2371468 (not c!1457280)) b!7932662))

(assert (= (and d!2371468 res!3147244) b!7932663))

(assert (= (and b!7932663 res!3147243) b!7932664))

(declare-fun m!8319054 () Bool)

(assert (=> d!2371468 m!8319054))

(declare-fun m!8319056 () Bool)

(assert (=> d!2371468 m!8319056))

(declare-fun m!8319058 () Bool)

(assert (=> d!2371468 m!8319058))

(declare-fun m!8319060 () Bool)

(assert (=> b!7932663 m!8319060))

(declare-fun m!8319062 () Bool)

(assert (=> b!7932663 m!8319062))

(declare-fun m!8319064 () Bool)

(assert (=> b!7932663 m!8319064))

(declare-fun m!8319066 () Bool)

(assert (=> b!7932662 m!8319066))

(assert (=> b!7932513 d!2371468))

(declare-fun b!7932665 () Bool)

(declare-fun e!4681087 () List!74576)

(assert (=> b!7932665 (= e!4681087 Nil!74452)))

(declare-fun d!2371470 () Bool)

(declare-fun c!1457281 () Bool)

(assert (=> d!2371470 (= c!1457281 ((_ is Empty!15906) (right!57209 lt!2694591)))))

(assert (=> d!2371470 (= (list!19420 (right!57209 lt!2694591)) e!4681087)))

(declare-fun b!7932667 () Bool)

(declare-fun e!4681088 () List!74576)

(assert (=> b!7932667 (= e!4681088 (list!19423 (xs!19298 (right!57209 lt!2694591))))))

(declare-fun b!7932666 () Bool)

(assert (=> b!7932666 (= e!4681087 e!4681088)))

(declare-fun c!1457282 () Bool)

(assert (=> b!7932666 (= c!1457282 ((_ is Leaf!30240) (right!57209 lt!2694591)))))

(declare-fun b!7932668 () Bool)

(assert (=> b!7932668 (= e!4681088 (++!18262 (list!19420 (left!56879 (right!57209 lt!2694591))) (list!19420 (right!57209 (right!57209 lt!2694591)))))))

(assert (= (and d!2371470 c!1457281) b!7932665))

(assert (= (and d!2371470 (not c!1457281)) b!7932666))

(assert (= (and b!7932666 c!1457282) b!7932667))

(assert (= (and b!7932666 (not c!1457282)) b!7932668))

(declare-fun m!8319068 () Bool)

(assert (=> b!7932667 m!8319068))

(declare-fun m!8319070 () Bool)

(assert (=> b!7932668 m!8319070))

(declare-fun m!8319072 () Bool)

(assert (=> b!7932668 m!8319072))

(assert (=> b!7932668 m!8319070))

(assert (=> b!7932668 m!8319072))

(declare-fun m!8319074 () Bool)

(assert (=> b!7932668 m!8319074))

(assert (=> b!7932513 d!2371470))

(declare-fun b!7932669 () Bool)

(declare-fun e!4681089 () List!74576)

(assert (=> b!7932669 (= e!4681089 Nil!74452)))

(declare-fun d!2371472 () Bool)

(declare-fun c!1457283 () Bool)

(assert (=> d!2371472 (= c!1457283 ((_ is Empty!15906) (left!56879 lt!2694591)))))

(assert (=> d!2371472 (= (list!19420 (left!56879 lt!2694591)) e!4681089)))

(declare-fun b!7932671 () Bool)

(declare-fun e!4681090 () List!74576)

(assert (=> b!7932671 (= e!4681090 (list!19423 (xs!19298 (left!56879 lt!2694591))))))

(declare-fun b!7932670 () Bool)

(assert (=> b!7932670 (= e!4681089 e!4681090)))

(declare-fun c!1457284 () Bool)

(assert (=> b!7932670 (= c!1457284 ((_ is Leaf!30240) (left!56879 lt!2694591)))))

(declare-fun b!7932672 () Bool)

(assert (=> b!7932672 (= e!4681090 (++!18262 (list!19420 (left!56879 (left!56879 lt!2694591))) (list!19420 (right!57209 (left!56879 lt!2694591)))))))

(assert (= (and d!2371472 c!1457283) b!7932669))

(assert (= (and d!2371472 (not c!1457283)) b!7932670))

(assert (= (and b!7932670 c!1457284) b!7932671))

(assert (= (and b!7932670 (not c!1457284)) b!7932672))

(declare-fun m!8319076 () Bool)

(assert (=> b!7932671 m!8319076))

(declare-fun m!8319078 () Bool)

(assert (=> b!7932672 m!8319078))

(declare-fun m!8319080 () Bool)

(assert (=> b!7932672 m!8319080))

(assert (=> b!7932672 m!8319078))

(assert (=> b!7932672 m!8319080))

(declare-fun m!8319082 () Bool)

(assert (=> b!7932672 m!8319082))

(assert (=> b!7932513 d!2371472))

(declare-fun d!2371474 () Bool)

(declare-fun e!4681091 () Bool)

(assert (=> d!2371474 e!4681091))

(declare-fun res!3147246 () Bool)

(assert (=> d!2371474 (=> (not res!3147246) (not e!4681091))))

(declare-fun lt!2694622 () List!74576)

(assert (=> d!2371474 (= res!3147246 (= (content!15786 lt!2694622) ((_ map or) (content!15786 lt!2694585) (content!15786 call!735464))))))

(declare-fun e!4681092 () List!74576)

(assert (=> d!2371474 (= lt!2694622 e!4681092)))

(declare-fun c!1457285 () Bool)

(assert (=> d!2371474 (= c!1457285 ((_ is Nil!74452) lt!2694585))))

(assert (=> d!2371474 (= (++!18262 lt!2694585 call!735464) lt!2694622)))

(declare-fun b!7932675 () Bool)

(declare-fun res!3147245 () Bool)

(assert (=> b!7932675 (=> (not res!3147245) (not e!4681091))))

(assert (=> b!7932675 (= res!3147245 (= (size!43258 lt!2694622) (+ (size!43258 lt!2694585) (size!43258 call!735464))))))

(declare-fun b!7932676 () Bool)

(assert (=> b!7932676 (= e!4681091 (or (not (= call!735464 Nil!74452)) (= lt!2694622 lt!2694585)))))

(declare-fun b!7932674 () Bool)

(assert (=> b!7932674 (= e!4681092 (Cons!74452 (h!80900 lt!2694585) (++!18262 (t!390221 lt!2694585) call!735464)))))

(declare-fun b!7932673 () Bool)

(assert (=> b!7932673 (= e!4681092 call!735464)))

(assert (= (and d!2371474 c!1457285) b!7932673))

(assert (= (and d!2371474 (not c!1457285)) b!7932674))

(assert (= (and d!2371474 res!3147246) b!7932675))

(assert (= (and b!7932675 res!3147245) b!7932676))

(declare-fun m!8319084 () Bool)

(assert (=> d!2371474 m!8319084))

(declare-fun m!8319086 () Bool)

(assert (=> d!2371474 m!8319086))

(declare-fun m!8319088 () Bool)

(assert (=> d!2371474 m!8319088))

(declare-fun m!8319090 () Bool)

(assert (=> b!7932675 m!8319090))

(declare-fun m!8319092 () Bool)

(assert (=> b!7932675 m!8319092))

(declare-fun m!8319094 () Bool)

(assert (=> b!7932675 m!8319094))

(declare-fun m!8319096 () Bool)

(assert (=> b!7932674 m!8319096))

(assert (=> b!7932513 d!2371474))

(declare-fun d!2371476 () Bool)

(declare-fun e!4681093 () Bool)

(assert (=> d!2371476 e!4681093))

(declare-fun res!3147248 () Bool)

(assert (=> d!2371476 (=> (not res!3147248) (not e!4681093))))

(declare-fun lt!2694623 () List!74576)

(assert (=> d!2371476 (= res!3147248 (= (content!15786 lt!2694623) ((_ map or) (content!15786 call!735461) (content!15786 lt!2694595))))))

(declare-fun e!4681094 () List!74576)

(assert (=> d!2371476 (= lt!2694623 e!4681094)))

(declare-fun c!1457286 () Bool)

(assert (=> d!2371476 (= c!1457286 ((_ is Nil!74452) call!735461))))

(assert (=> d!2371476 (= (++!18262 call!735461 lt!2694595) lt!2694623)))

(declare-fun b!7932679 () Bool)

(declare-fun res!3147247 () Bool)

(assert (=> b!7932679 (=> (not res!3147247) (not e!4681093))))

(assert (=> b!7932679 (= res!3147247 (= (size!43258 lt!2694623) (+ (size!43258 call!735461) (size!43258 lt!2694595))))))

(declare-fun b!7932680 () Bool)

(assert (=> b!7932680 (= e!4681093 (or (not (= lt!2694595 Nil!74452)) (= lt!2694623 call!735461)))))

(declare-fun b!7932678 () Bool)

(assert (=> b!7932678 (= e!4681094 (Cons!74452 (h!80900 call!735461) (++!18262 (t!390221 call!735461) lt!2694595)))))

(declare-fun b!7932677 () Bool)

(assert (=> b!7932677 (= e!4681094 lt!2694595)))

(assert (= (and d!2371476 c!1457286) b!7932677))

(assert (= (and d!2371476 (not c!1457286)) b!7932678))

(assert (= (and d!2371476 res!3147248) b!7932679))

(assert (= (and b!7932679 res!3147247) b!7932680))

(declare-fun m!8319098 () Bool)

(assert (=> d!2371476 m!8319098))

(declare-fun m!8319100 () Bool)

(assert (=> d!2371476 m!8319100))

(declare-fun m!8319102 () Bool)

(assert (=> d!2371476 m!8319102))

(declare-fun m!8319104 () Bool)

(assert (=> b!7932679 m!8319104))

(declare-fun m!8319106 () Bool)

(assert (=> b!7932679 m!8319106))

(declare-fun m!8319108 () Bool)

(assert (=> b!7932679 m!8319108))

(declare-fun m!8319110 () Bool)

(assert (=> b!7932678 m!8319110))

(assert (=> b!7932513 d!2371476))

(declare-fun d!2371478 () Bool)

(declare-fun e!4681095 () Bool)

(assert (=> d!2371478 e!4681095))

(declare-fun res!3147250 () Bool)

(assert (=> d!2371478 (=> (not res!3147250) (not e!4681095))))

(declare-fun lt!2694624 () List!74576)

(assert (=> d!2371478 (= res!3147250 (= (content!15786 lt!2694624) ((_ map or) (content!15786 call!735457) (content!15786 lt!2694590))))))

(declare-fun e!4681096 () List!74576)

(assert (=> d!2371478 (= lt!2694624 e!4681096)))

(declare-fun c!1457287 () Bool)

(assert (=> d!2371478 (= c!1457287 ((_ is Nil!74452) call!735457))))

(assert (=> d!2371478 (= (++!18262 call!735457 lt!2694590) lt!2694624)))

(declare-fun b!7932683 () Bool)

(declare-fun res!3147249 () Bool)

(assert (=> b!7932683 (=> (not res!3147249) (not e!4681095))))

(assert (=> b!7932683 (= res!3147249 (= (size!43258 lt!2694624) (+ (size!43258 call!735457) (size!43258 lt!2694590))))))

(declare-fun b!7932684 () Bool)

(assert (=> b!7932684 (= e!4681095 (or (not (= lt!2694590 Nil!74452)) (= lt!2694624 call!735457)))))

(declare-fun b!7932682 () Bool)

(assert (=> b!7932682 (= e!4681096 (Cons!74452 (h!80900 call!735457) (++!18262 (t!390221 call!735457) lt!2694590)))))

(declare-fun b!7932681 () Bool)

(assert (=> b!7932681 (= e!4681096 lt!2694590)))

(assert (= (and d!2371478 c!1457287) b!7932681))

(assert (= (and d!2371478 (not c!1457287)) b!7932682))

(assert (= (and d!2371478 res!3147250) b!7932683))

(assert (= (and b!7932683 res!3147249) b!7932684))

(declare-fun m!8319112 () Bool)

(assert (=> d!2371478 m!8319112))

(declare-fun m!8319114 () Bool)

(assert (=> d!2371478 m!8319114))

(declare-fun m!8319116 () Bool)

(assert (=> d!2371478 m!8319116))

(declare-fun m!8319118 () Bool)

(assert (=> b!7932683 m!8319118))

(declare-fun m!8319120 () Bool)

(assert (=> b!7932683 m!8319120))

(declare-fun m!8319122 () Bool)

(assert (=> b!7932683 m!8319122))

(declare-fun m!8319124 () Bool)

(assert (=> b!7932682 m!8319124))

(assert (=> b!7932513 d!2371478))

(declare-fun d!2371480 () Bool)

(declare-fun lt!2694627 () IArray!31873)

(assert (=> d!2371480 (= lt!2694627 (IArray!31874 ($colon+!319 (list!19423 (xs!19298 (right!57209 t!4440))) v!5484)))))

(declare-fun choose!59842 (IArray!31873 T!145832) IArray!31873)

(assert (=> d!2371480 (= lt!2694627 (choose!59842 (xs!19298 (right!57209 t!4440)) v!5484))))

(declare-fun size!43261 (IArray!31873) Int)

(assert (=> d!2371480 (<= (+ (size!43261 (xs!19298 (right!57209 t!4440))) 1) 2147483647)))

(assert (=> d!2371480 (= (append!1154 (xs!19298 (right!57209 t!4440)) v!5484) lt!2694627)))

(declare-fun bs!1969031 () Bool)

(assert (= bs!1969031 d!2371480))

(assert (=> bs!1969031 m!8318866))

(assert (=> bs!1969031 m!8318866))

(assert (=> bs!1969031 m!8318868))

(declare-fun m!8319126 () Bool)

(assert (=> bs!1969031 m!8319126))

(declare-fun m!8319128 () Bool)

(assert (=> bs!1969031 m!8319128))

(assert (=> b!7932525 d!2371480))

(declare-fun b!7932716 () Bool)

(declare-fun e!4681110 () List!74576)

(assert (=> b!7932716 (= e!4681110 (Cons!74452 v!5484 (list!19423 (xs!19298 (right!57209 t!4440)))))))

(declare-fun b!7932717 () Bool)

(declare-fun res!3147276 () Bool)

(declare-fun e!4681111 () Bool)

(assert (=> b!7932717 (=> (not res!3147276) (not e!4681111))))

(declare-fun e!4681109 () Bool)

(assert (=> b!7932717 (= res!3147276 e!4681109)))

(declare-fun c!1457293 () Bool)

(declare-fun isize!122 (List!74576) (_ BitVec 32))

(assert (=> b!7932717 (= c!1457293 (bvslt (isize!122 (list!19423 (xs!19298 (right!57209 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7932718 () Bool)

(declare-fun call!735480 () (_ BitVec 32))

(declare-fun call!735479 () (_ BitVec 32))

(assert (=> b!7932718 (= e!4681109 (= call!735480 (bvadd call!735479 #b00000000000000000000000000000001)))))

(declare-fun b!7932719 () Bool)

(declare-fun lt!2694630 () List!74576)

(assert (=> b!7932719 (= e!4681111 (= lt!2694630 (++!18262 (list!19423 (xs!19298 (right!57209 t!4440))) (Cons!74452 v!5484 Nil!74452))))))

(declare-fun bm!735474 () Bool)

(assert (=> bm!735474 (= call!735480 (isize!122 lt!2694630))))

(declare-fun b!7932720 () Bool)

(assert (=> b!7932720 (= e!4681110 (Cons!74452 (h!80900 (list!19423 (xs!19298 (right!57209 t!4440)))) ($colon+!319 (t!390221 (list!19423 (xs!19298 (right!57209 t!4440)))) v!5484)))))

(declare-fun b!7932721 () Bool)

(declare-fun res!3147277 () Bool)

(assert (=> b!7932721 (=> (not res!3147277) (not e!4681111))))

(assert (=> b!7932721 (= res!3147277 (= (size!43258 lt!2694630) (+ (size!43258 (list!19423 (xs!19298 (right!57209 t!4440)))) 1)))))

(declare-fun d!2371484 () Bool)

(assert (=> d!2371484 e!4681111))

(declare-fun res!3147274 () Bool)

(assert (=> d!2371484 (=> (not res!3147274) (not e!4681111))))

(assert (=> d!2371484 (= res!3147274 ((_ is Cons!74452) lt!2694630))))

(assert (=> d!2371484 (= lt!2694630 e!4681110)))

(declare-fun c!1457292 () Bool)

(assert (=> d!2371484 (= c!1457292 ((_ is Nil!74452) (list!19423 (xs!19298 (right!57209 t!4440)))))))

(assert (=> d!2371484 (= ($colon+!319 (list!19423 (xs!19298 (right!57209 t!4440))) v!5484) lt!2694630)))

(declare-fun b!7932722 () Bool)

(assert (=> b!7932722 (= e!4681109 (= call!735480 call!735479))))

(declare-fun b!7932723 () Bool)

(declare-fun res!3147275 () Bool)

(assert (=> b!7932723 (=> (not res!3147275) (not e!4681111))))

(assert (=> b!7932723 (= res!3147275 (= (content!15786 lt!2694630) ((_ map or) (content!15786 (list!19423 (xs!19298 (right!57209 t!4440)))) (store ((as const (Array T!145832 Bool)) false) v!5484 true))))))

(declare-fun bm!735475 () Bool)

(assert (=> bm!735475 (= call!735479 (isize!122 (list!19423 (xs!19298 (right!57209 t!4440)))))))

(assert (= (and d!2371484 c!1457292) b!7932716))

(assert (= (and d!2371484 (not c!1457292)) b!7932720))

(assert (= (and d!2371484 res!3147274) b!7932721))

(assert (= (and b!7932721 res!3147277) b!7932717))

(assert (= (and b!7932717 c!1457293) b!7932718))

(assert (= (and b!7932717 (not c!1457293)) b!7932722))

(assert (= (or b!7932718 b!7932722) bm!735475))

(assert (= (or b!7932718 b!7932722) bm!735474))

(assert (= (and b!7932717 res!3147276) b!7932723))

(assert (= (and b!7932723 res!3147275) b!7932719))

(assert (=> b!7932717 m!8318866))

(declare-fun m!8319140 () Bool)

(assert (=> b!7932717 m!8319140))

(assert (=> b!7932719 m!8318866))

(declare-fun m!8319142 () Bool)

(assert (=> b!7932719 m!8319142))

(declare-fun m!8319144 () Bool)

(assert (=> b!7932723 m!8319144))

(assert (=> b!7932723 m!8318866))

(declare-fun m!8319146 () Bool)

(assert (=> b!7932723 m!8319146))

(declare-fun m!8319148 () Bool)

(assert (=> b!7932723 m!8319148))

(declare-fun m!8319150 () Bool)

(assert (=> b!7932720 m!8319150))

(declare-fun m!8319152 () Bool)

(assert (=> bm!735474 m!8319152))

(assert (=> bm!735475 m!8318866))

(assert (=> bm!735475 m!8319140))

(declare-fun m!8319154 () Bool)

(assert (=> b!7932721 m!8319154))

(assert (=> b!7932721 m!8318866))

(declare-fun m!8319156 () Bool)

(assert (=> b!7932721 m!8319156))

(assert (=> b!7932525 d!2371484))

(declare-fun d!2371490 () Bool)

(assert (=> d!2371490 (= (list!19423 (xs!19298 (right!57209 t!4440))) (innerList!15994 (xs!19298 (right!57209 t!4440))))))

(assert (=> b!7932525 d!2371490))

(assert (=> b!7932444 d!2371420))

(assert (=> b!7932444 d!2371424))

(declare-fun d!2371492 () Bool)

(declare-fun res!3147288 () Bool)

(declare-fun e!4681118 () Bool)

(assert (=> d!2371492 (=> (not res!3147288) (not e!4681118))))

(declare-fun size!43262 (Conc!15906) Int)

(assert (=> d!2371492 (= res!3147288 (= (csize!32042 (right!57209 t!4440)) (+ (size!43262 (left!56879 (right!57209 t!4440))) (size!43262 (right!57209 (right!57209 t!4440))))))))

(assert (=> d!2371492 (= (inv!95743 (right!57209 t!4440)) e!4681118)))

(declare-fun b!7932738 () Bool)

(declare-fun res!3147289 () Bool)

(assert (=> b!7932738 (=> (not res!3147289) (not e!4681118))))

(assert (=> b!7932738 (= res!3147289 (and (not (= (left!56879 (right!57209 t!4440)) Empty!15906)) (not (= (right!57209 (right!57209 t!4440)) Empty!15906))))))

(declare-fun b!7932739 () Bool)

(declare-fun res!3147290 () Bool)

(assert (=> b!7932739 (=> (not res!3147290) (not e!4681118))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7932739 (= res!3147290 (= (cheight!16117 (right!57209 t!4440)) (+ (max!0 (height!2221 (left!56879 (right!57209 t!4440))) (height!2221 (right!57209 (right!57209 t!4440)))) 1)))))

(declare-fun b!7932740 () Bool)

(assert (=> b!7932740 (= e!4681118 (<= 0 (cheight!16117 (right!57209 t!4440))))))

(assert (= (and d!2371492 res!3147288) b!7932738))

(assert (= (and b!7932738 res!3147289) b!7932739))

(assert (= (and b!7932739 res!3147290) b!7932740))

(declare-fun m!8319158 () Bool)

(assert (=> d!2371492 m!8319158))

(declare-fun m!8319160 () Bool)

(assert (=> d!2371492 m!8319160))

(assert (=> b!7932739 m!8318856))

(declare-fun m!8319162 () Bool)

(assert (=> b!7932739 m!8319162))

(assert (=> b!7932739 m!8318856))

(assert (=> b!7932739 m!8319162))

(declare-fun m!8319164 () Bool)

(assert (=> b!7932739 m!8319164))

(assert (=> b!7932458 d!2371492))

(declare-fun d!2371494 () Bool)

(declare-fun res!3147297 () Bool)

(declare-fun e!4681123 () Bool)

(assert (=> d!2371494 (=> (not res!3147297) (not e!4681123))))

(assert (=> d!2371494 (= res!3147297 (<= (size!43258 (list!19423 (xs!19298 (right!57209 t!4440)))) 512))))

(assert (=> d!2371494 (= (inv!95744 (right!57209 t!4440)) e!4681123)))

(declare-fun b!7932749 () Bool)

(declare-fun res!3147298 () Bool)

(assert (=> b!7932749 (=> (not res!3147298) (not e!4681123))))

(assert (=> b!7932749 (= res!3147298 (= (csize!32043 (right!57209 t!4440)) (size!43258 (list!19423 (xs!19298 (right!57209 t!4440))))))))

(declare-fun b!7932750 () Bool)

(assert (=> b!7932750 (= e!4681123 (and (> (csize!32043 (right!57209 t!4440)) 0) (<= (csize!32043 (right!57209 t!4440)) 512)))))

(assert (= (and d!2371494 res!3147297) b!7932749))

(assert (= (and b!7932749 res!3147298) b!7932750))

(assert (=> d!2371494 m!8318866))

(assert (=> d!2371494 m!8318866))

(assert (=> d!2371494 m!8319156))

(assert (=> b!7932749 m!8318866))

(assert (=> b!7932749 m!8318866))

(assert (=> b!7932749 m!8319156))

(assert (=> b!7932460 d!2371494))

(declare-fun d!2371498 () Bool)

(declare-fun e!4681124 () Bool)

(assert (=> d!2371498 e!4681124))

(declare-fun res!3147300 () Bool)

(assert (=> d!2371498 (=> (not res!3147300) (not e!4681124))))

(declare-fun lt!2694634 () List!74576)

(assert (=> d!2371498 (= res!3147300 (= (content!15786 lt!2694634) ((_ map or) (content!15786 (ite c!1457253 lt!2694584 lt!2694579)) (content!15786 (ite c!1457253 lt!2694582 lt!2694595)))))))

(declare-fun e!4681125 () List!74576)

(assert (=> d!2371498 (= lt!2694634 e!4681125)))

(declare-fun c!1457297 () Bool)

(assert (=> d!2371498 (= c!1457297 ((_ is Nil!74452) (ite c!1457253 lt!2694584 lt!2694579)))))

(assert (=> d!2371498 (= (++!18262 (ite c!1457253 lt!2694584 lt!2694579) (ite c!1457253 lt!2694582 lt!2694595)) lt!2694634)))

(declare-fun b!7932753 () Bool)

(declare-fun res!3147299 () Bool)

(assert (=> b!7932753 (=> (not res!3147299) (not e!4681124))))

(assert (=> b!7932753 (= res!3147299 (= (size!43258 lt!2694634) (+ (size!43258 (ite c!1457253 lt!2694584 lt!2694579)) (size!43258 (ite c!1457253 lt!2694582 lt!2694595)))))))

(declare-fun b!7932754 () Bool)

(assert (=> b!7932754 (= e!4681124 (or (not (= (ite c!1457253 lt!2694582 lt!2694595) Nil!74452)) (= lt!2694634 (ite c!1457253 lt!2694584 lt!2694579))))))

(declare-fun b!7932752 () Bool)

(assert (=> b!7932752 (= e!4681125 (Cons!74452 (h!80900 (ite c!1457253 lt!2694584 lt!2694579)) (++!18262 (t!390221 (ite c!1457253 lt!2694584 lt!2694579)) (ite c!1457253 lt!2694582 lt!2694595))))))

(declare-fun b!7932751 () Bool)

(assert (=> b!7932751 (= e!4681125 (ite c!1457253 lt!2694582 lt!2694595))))

(assert (= (and d!2371498 c!1457297) b!7932751))

(assert (= (and d!2371498 (not c!1457297)) b!7932752))

(assert (= (and d!2371498 res!3147300) b!7932753))

(assert (= (and b!7932753 res!3147299) b!7932754))

(declare-fun m!8319180 () Bool)

(assert (=> d!2371498 m!8319180))

(declare-fun m!8319182 () Bool)

(assert (=> d!2371498 m!8319182))

(declare-fun m!8319184 () Bool)

(assert (=> d!2371498 m!8319184))

(declare-fun m!8319186 () Bool)

(assert (=> b!7932753 m!8319186))

(declare-fun m!8319188 () Bool)

(assert (=> b!7932753 m!8319188))

(declare-fun m!8319190 () Bool)

(assert (=> b!7932753 m!8319190))

(declare-fun m!8319192 () Bool)

(assert (=> b!7932752 m!8319192))

(assert (=> bm!735451 d!2371498))

(declare-fun d!2371500 () Bool)

(declare-fun lt!2694639 () IArray!31873)

(declare-fun fill!288 (Int T!145832) List!74576)

(assert (=> d!2371500 (= lt!2694639 (IArray!31874 (fill!288 1 v!5484)))))

(declare-fun choose!59843 (Int T!145832) IArray!31873)

(assert (=> d!2371500 (= lt!2694639 (choose!59843 1 v!5484))))

(assert (=> d!2371500 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2371500 (= (fill!286 1 v!5484) lt!2694639)))

(declare-fun bs!1969032 () Bool)

(assert (= bs!1969032 d!2371500))

(declare-fun m!8319194 () Bool)

(assert (=> bs!1969032 m!8319194))

(declare-fun m!8319196 () Bool)

(assert (=> bs!1969032 m!8319196))

(assert (=> bm!735453 d!2371500))

(declare-fun d!2371502 () Bool)

(declare-fun e!4681130 () Bool)

(assert (=> d!2371502 e!4681130))

(declare-fun res!3147302 () Bool)

(assert (=> d!2371502 (=> (not res!3147302) (not e!4681130))))

(declare-fun lt!2694640 () List!74576)

(assert (=> d!2371502 (= res!3147302 (= (content!15786 lt!2694640) ((_ map or) (content!15786 (ite c!1457253 lt!2694582 lt!2694585)) (content!15786 (ite c!1457253 lt!2694592 lt!2694579)))))))

(declare-fun e!4681131 () List!74576)

(assert (=> d!2371502 (= lt!2694640 e!4681131)))

(declare-fun c!1457302 () Bool)

(assert (=> d!2371502 (= c!1457302 ((_ is Nil!74452) (ite c!1457253 lt!2694582 lt!2694585)))))

(assert (=> d!2371502 (= (++!18262 (ite c!1457253 lt!2694582 lt!2694585) (ite c!1457253 lt!2694592 lt!2694579)) lt!2694640)))

(declare-fun b!7932765 () Bool)

(declare-fun res!3147301 () Bool)

(assert (=> b!7932765 (=> (not res!3147301) (not e!4681130))))

(assert (=> b!7932765 (= res!3147301 (= (size!43258 lt!2694640) (+ (size!43258 (ite c!1457253 lt!2694582 lt!2694585)) (size!43258 (ite c!1457253 lt!2694592 lt!2694579)))))))

(declare-fun b!7932766 () Bool)

(assert (=> b!7932766 (= e!4681130 (or (not (= (ite c!1457253 lt!2694592 lt!2694579) Nil!74452)) (= lt!2694640 (ite c!1457253 lt!2694582 lt!2694585))))))

(declare-fun b!7932764 () Bool)

(assert (=> b!7932764 (= e!4681131 (Cons!74452 (h!80900 (ite c!1457253 lt!2694582 lt!2694585)) (++!18262 (t!390221 (ite c!1457253 lt!2694582 lt!2694585)) (ite c!1457253 lt!2694592 lt!2694579))))))

(declare-fun b!7932763 () Bool)

(assert (=> b!7932763 (= e!4681131 (ite c!1457253 lt!2694592 lt!2694579))))

(assert (= (and d!2371502 c!1457302) b!7932763))

(assert (= (and d!2371502 (not c!1457302)) b!7932764))

(assert (= (and d!2371502 res!3147302) b!7932765))

(assert (= (and b!7932765 res!3147301) b!7932766))

(declare-fun m!8319198 () Bool)

(assert (=> d!2371502 m!8319198))

(declare-fun m!8319200 () Bool)

(assert (=> d!2371502 m!8319200))

(declare-fun m!8319202 () Bool)

(assert (=> d!2371502 m!8319202))

(declare-fun m!8319204 () Bool)

(assert (=> b!7932765 m!8319204))

(declare-fun m!8319206 () Bool)

(assert (=> b!7932765 m!8319206))

(declare-fun m!8319208 () Bool)

(assert (=> b!7932765 m!8319208))

(declare-fun m!8319210 () Bool)

(assert (=> b!7932764 m!8319210))

(assert (=> bm!735452 d!2371502))

(declare-fun b!7932767 () Bool)

(declare-fun e!4681132 () List!74576)

(assert (=> b!7932767 (= e!4681132 Nil!74452)))

(declare-fun d!2371504 () Bool)

(declare-fun c!1457303 () Bool)

(assert (=> d!2371504 (= c!1457303 ((_ is Empty!15906) lt!2694586))))

(assert (=> d!2371504 (= (list!19420 lt!2694586) e!4681132)))

(declare-fun b!7932769 () Bool)

(declare-fun e!4681133 () List!74576)

(assert (=> b!7932769 (= e!4681133 (list!19423 (xs!19298 lt!2694586)))))

(declare-fun b!7932768 () Bool)

(assert (=> b!7932768 (= e!4681132 e!4681133)))

(declare-fun c!1457304 () Bool)

(assert (=> b!7932768 (= c!1457304 ((_ is Leaf!30240) lt!2694586))))

(declare-fun b!7932770 () Bool)

(assert (=> b!7932770 (= e!4681133 (++!18262 (list!19420 (left!56879 lt!2694586)) (list!19420 (right!57209 lt!2694586))))))

(assert (= (and d!2371504 c!1457303) b!7932767))

(assert (= (and d!2371504 (not c!1457303)) b!7932768))

(assert (= (and b!7932768 c!1457304) b!7932769))

(assert (= (and b!7932768 (not c!1457304)) b!7932770))

(declare-fun m!8319212 () Bool)

(assert (=> b!7932769 m!8319212))

(declare-fun m!8319214 () Bool)

(assert (=> b!7932770 m!8319214))

(declare-fun m!8319216 () Bool)

(assert (=> b!7932770 m!8319216))

(assert (=> b!7932770 m!8319214))

(assert (=> b!7932770 m!8319216))

(declare-fun m!8319218 () Bool)

(assert (=> b!7932770 m!8319218))

(assert (=> b!7932514 d!2371504))

(declare-fun b!7932771 () Bool)

(declare-fun e!4681135 () List!74576)

(assert (=> b!7932771 (= e!4681135 (Cons!74452 v!5484 (list!19420 (right!57209 t!4440))))))

(declare-fun b!7932772 () Bool)

(declare-fun res!3147305 () Bool)

(declare-fun e!4681136 () Bool)

(assert (=> b!7932772 (=> (not res!3147305) (not e!4681136))))

(declare-fun e!4681134 () Bool)

(assert (=> b!7932772 (= res!3147305 e!4681134)))

(declare-fun c!1457306 () Bool)

(assert (=> b!7932772 (= c!1457306 (bvslt (isize!122 (list!19420 (right!57209 t!4440))) #b01111111111111111111111111111111))))

(declare-fun b!7932773 () Bool)

(declare-fun call!735482 () (_ BitVec 32))

(declare-fun call!735481 () (_ BitVec 32))

(assert (=> b!7932773 (= e!4681134 (= call!735482 (bvadd call!735481 #b00000000000000000000000000000001)))))

(declare-fun lt!2694641 () List!74576)

(declare-fun b!7932774 () Bool)

(assert (=> b!7932774 (= e!4681136 (= lt!2694641 (++!18262 (list!19420 (right!57209 t!4440)) (Cons!74452 v!5484 Nil!74452))))))

(declare-fun bm!735476 () Bool)

(assert (=> bm!735476 (= call!735482 (isize!122 lt!2694641))))

(declare-fun b!7932775 () Bool)

(assert (=> b!7932775 (= e!4681135 (Cons!74452 (h!80900 (list!19420 (right!57209 t!4440))) ($colon+!319 (t!390221 (list!19420 (right!57209 t!4440))) v!5484)))))

(declare-fun b!7932776 () Bool)

(declare-fun res!3147306 () Bool)

(assert (=> b!7932776 (=> (not res!3147306) (not e!4681136))))

(assert (=> b!7932776 (= res!3147306 (= (size!43258 lt!2694641) (+ (size!43258 (list!19420 (right!57209 t!4440))) 1)))))

(declare-fun d!2371506 () Bool)

(assert (=> d!2371506 e!4681136))

(declare-fun res!3147303 () Bool)

(assert (=> d!2371506 (=> (not res!3147303) (not e!4681136))))

(assert (=> d!2371506 (= res!3147303 ((_ is Cons!74452) lt!2694641))))

(assert (=> d!2371506 (= lt!2694641 e!4681135)))

(declare-fun c!1457305 () Bool)

(assert (=> d!2371506 (= c!1457305 ((_ is Nil!74452) (list!19420 (right!57209 t!4440))))))

(assert (=> d!2371506 (= ($colon+!319 (list!19420 (right!57209 t!4440)) v!5484) lt!2694641)))

(declare-fun b!7932777 () Bool)

(assert (=> b!7932777 (= e!4681134 (= call!735482 call!735481))))

(declare-fun b!7932778 () Bool)

(declare-fun res!3147304 () Bool)

(assert (=> b!7932778 (=> (not res!3147304) (not e!4681136))))

(assert (=> b!7932778 (= res!3147304 (= (content!15786 lt!2694641) ((_ map or) (content!15786 (list!19420 (right!57209 t!4440))) (store ((as const (Array T!145832 Bool)) false) v!5484 true))))))

(declare-fun bm!735477 () Bool)

(assert (=> bm!735477 (= call!735481 (isize!122 (list!19420 (right!57209 t!4440))))))

(assert (= (and d!2371506 c!1457305) b!7932771))

(assert (= (and d!2371506 (not c!1457305)) b!7932775))

(assert (= (and d!2371506 res!3147303) b!7932776))

(assert (= (and b!7932776 res!3147306) b!7932772))

(assert (= (and b!7932772 c!1457306) b!7932773))

(assert (= (and b!7932772 (not c!1457306)) b!7932777))

(assert (= (or b!7932773 b!7932777) bm!735477))

(assert (= (or b!7932773 b!7932777) bm!735476))

(assert (= (and b!7932772 res!3147305) b!7932778))

(assert (= (and b!7932778 res!3147304) b!7932774))

(assert (=> b!7932772 m!8318890))

(declare-fun m!8319220 () Bool)

(assert (=> b!7932772 m!8319220))

(assert (=> b!7932774 m!8318890))

(declare-fun m!8319222 () Bool)

(assert (=> b!7932774 m!8319222))

(declare-fun m!8319224 () Bool)

(assert (=> b!7932778 m!8319224))

(assert (=> b!7932778 m!8318890))

(declare-fun m!8319226 () Bool)

(assert (=> b!7932778 m!8319226))

(assert (=> b!7932778 m!8319148))

(declare-fun m!8319228 () Bool)

(assert (=> b!7932775 m!8319228))

(declare-fun m!8319230 () Bool)

(assert (=> bm!735476 m!8319230))

(assert (=> bm!735477 m!8318890))

(assert (=> bm!735477 m!8319220))

(declare-fun m!8319232 () Bool)

(assert (=> b!7932776 m!8319232))

(assert (=> b!7932776 m!8318890))

(declare-fun m!8319234 () Bool)

(assert (=> b!7932776 m!8319234))

(assert (=> b!7932514 d!2371506))

(declare-fun b!7932779 () Bool)

(declare-fun e!4681137 () List!74576)

(assert (=> b!7932779 (= e!4681137 Nil!74452)))

(declare-fun d!2371508 () Bool)

(declare-fun c!1457307 () Bool)

(assert (=> d!2371508 (= c!1457307 ((_ is Empty!15906) (right!57209 t!4440)))))

(assert (=> d!2371508 (= (list!19420 (right!57209 t!4440)) e!4681137)))

(declare-fun b!7932781 () Bool)

(declare-fun e!4681138 () List!74576)

(assert (=> b!7932781 (= e!4681138 (list!19423 (xs!19298 (right!57209 t!4440))))))

(declare-fun b!7932780 () Bool)

(assert (=> b!7932780 (= e!4681137 e!4681138)))

(declare-fun c!1457308 () Bool)

(assert (=> b!7932780 (= c!1457308 ((_ is Leaf!30240) (right!57209 t!4440)))))

(declare-fun b!7932782 () Bool)

(assert (=> b!7932782 (= e!4681138 (++!18262 (list!19420 (left!56879 (right!57209 t!4440))) (list!19420 (right!57209 (right!57209 t!4440)))))))

(assert (= (and d!2371508 c!1457307) b!7932779))

(assert (= (and d!2371508 (not c!1457307)) b!7932780))

(assert (= (and b!7932780 c!1457308) b!7932781))

(assert (= (and b!7932780 (not c!1457308)) b!7932782))

(assert (=> b!7932781 m!8318866))

(assert (=> b!7932782 m!8318872))

(assert (=> b!7932782 m!8318880))

(assert (=> b!7932782 m!8318872))

(assert (=> b!7932782 m!8318880))

(declare-fun m!8319236 () Bool)

(assert (=> b!7932782 m!8319236))

(assert (=> b!7932514 d!2371508))

(declare-fun d!2371510 () Bool)

(declare-fun c!1457309 () Bool)

(assert (=> d!2371510 (= c!1457309 ((_ is Node!15906) (left!56879 (left!56879 t!4440))))))

(declare-fun e!4681139 () Bool)

(assert (=> d!2371510 (= (inv!95741 (left!56879 (left!56879 t!4440))) e!4681139)))

(declare-fun b!7932783 () Bool)

(assert (=> b!7932783 (= e!4681139 (inv!95743 (left!56879 (left!56879 t!4440))))))

(declare-fun b!7932784 () Bool)

(declare-fun e!4681140 () Bool)

(assert (=> b!7932784 (= e!4681139 e!4681140)))

(declare-fun res!3147307 () Bool)

(assert (=> b!7932784 (= res!3147307 (not ((_ is Leaf!30240) (left!56879 (left!56879 t!4440)))))))

(assert (=> b!7932784 (=> res!3147307 e!4681140)))

(declare-fun b!7932785 () Bool)

(assert (=> b!7932785 (= e!4681140 (inv!95744 (left!56879 (left!56879 t!4440))))))

(assert (= (and d!2371510 c!1457309) b!7932783))

(assert (= (and d!2371510 (not c!1457309)) b!7932784))

(assert (= (and b!7932784 (not res!3147307)) b!7932785))

(declare-fun m!8319238 () Bool)

(assert (=> b!7932783 m!8319238))

(declare-fun m!8319240 () Bool)

(assert (=> b!7932785 m!8319240))

(assert (=> b!7932580 d!2371510))

(declare-fun d!2371512 () Bool)

(declare-fun c!1457312 () Bool)

(assert (=> d!2371512 (= c!1457312 ((_ is Node!15906) (right!57209 (left!56879 t!4440))))))

(declare-fun e!4681143 () Bool)

(assert (=> d!2371512 (= (inv!95741 (right!57209 (left!56879 t!4440))) e!4681143)))

(declare-fun b!7932790 () Bool)

(assert (=> b!7932790 (= e!4681143 (inv!95743 (right!57209 (left!56879 t!4440))))))

(declare-fun b!7932791 () Bool)

(declare-fun e!4681144 () Bool)

(assert (=> b!7932791 (= e!4681143 e!4681144)))

(declare-fun res!3147308 () Bool)

(assert (=> b!7932791 (= res!3147308 (not ((_ is Leaf!30240) (right!57209 (left!56879 t!4440)))))))

(assert (=> b!7932791 (=> res!3147308 e!4681144)))

(declare-fun b!7932792 () Bool)

(assert (=> b!7932792 (= e!4681144 (inv!95744 (right!57209 (left!56879 t!4440))))))

(assert (= (and d!2371512 c!1457312) b!7932790))

(assert (= (and d!2371512 (not c!1457312)) b!7932791))

(assert (= (and b!7932791 (not res!3147308)) b!7932792))

(declare-fun m!8319242 () Bool)

(assert (=> b!7932790 m!8319242))

(declare-fun m!8319244 () Bool)

(assert (=> b!7932792 m!8319244))

(assert (=> b!7932580 d!2371512))

(declare-fun d!2371514 () Bool)

(declare-fun res!3147309 () Bool)

(declare-fun e!4681145 () Bool)

(assert (=> d!2371514 (=> (not res!3147309) (not e!4681145))))

(assert (=> d!2371514 (= res!3147309 (= (csize!32042 (left!56879 t!4440)) (+ (size!43262 (left!56879 (left!56879 t!4440))) (size!43262 (right!57209 (left!56879 t!4440))))))))

(assert (=> d!2371514 (= (inv!95743 (left!56879 t!4440)) e!4681145)))

(declare-fun b!7932793 () Bool)

(declare-fun res!3147310 () Bool)

(assert (=> b!7932793 (=> (not res!3147310) (not e!4681145))))

(assert (=> b!7932793 (= res!3147310 (and (not (= (left!56879 (left!56879 t!4440)) Empty!15906)) (not (= (right!57209 (left!56879 t!4440)) Empty!15906))))))

(declare-fun b!7932794 () Bool)

(declare-fun res!3147311 () Bool)

(assert (=> b!7932794 (=> (not res!3147311) (not e!4681145))))

(assert (=> b!7932794 (= res!3147311 (= (cheight!16117 (left!56879 t!4440)) (+ (max!0 (height!2221 (left!56879 (left!56879 t!4440))) (height!2221 (right!57209 (left!56879 t!4440)))) 1)))))

(declare-fun b!7932795 () Bool)

(assert (=> b!7932795 (= e!4681145 (<= 0 (cheight!16117 (left!56879 t!4440))))))

(assert (= (and d!2371514 res!3147309) b!7932793))

(assert (= (and b!7932793 res!3147310) b!7932794))

(assert (= (and b!7932794 res!3147311) b!7932795))

(declare-fun m!8319246 () Bool)

(assert (=> d!2371514 m!8319246))

(declare-fun m!8319250 () Bool)

(assert (=> d!2371514 m!8319250))

(declare-fun m!8319252 () Bool)

(assert (=> b!7932794 m!8319252))

(declare-fun m!8319254 () Bool)

(assert (=> b!7932794 m!8319254))

(assert (=> b!7932794 m!8319252))

(assert (=> b!7932794 m!8319254))

(declare-fun m!8319258 () Bool)

(assert (=> b!7932794 m!8319258))

(assert (=> b!7932455 d!2371514))

(declare-fun d!2371516 () Bool)

(assert (=> d!2371516 (= (++!18262 (++!18262 (ite c!1457253 lt!2694584 lt!2694583) (ite c!1457253 lt!2694582 lt!2694593)) (ite c!1457253 lt!2694592 lt!2694590)) (++!18262 (ite c!1457253 lt!2694584 lt!2694583) (++!18262 (ite c!1457253 lt!2694582 lt!2694593) (ite c!1457253 lt!2694592 lt!2694590))))))

(declare-fun lt!2694643 () Unit!169571)

(assert (=> d!2371516 (= lt!2694643 (choose!59841 (ite c!1457253 lt!2694584 lt!2694583) (ite c!1457253 lt!2694582 lt!2694593) (ite c!1457253 lt!2694592 lt!2694590)))))

(assert (=> d!2371516 (= (lemmaConcatAssociativity!3165 (ite c!1457253 lt!2694584 lt!2694583) (ite c!1457253 lt!2694582 lt!2694593) (ite c!1457253 lt!2694592 lt!2694590)) lt!2694643)))

(declare-fun bs!1969033 () Bool)

(assert (= bs!1969033 d!2371516))

(declare-fun m!8319270 () Bool)

(assert (=> bs!1969033 m!8319270))

(declare-fun m!8319272 () Bool)

(assert (=> bs!1969033 m!8319272))

(assert (=> bs!1969033 m!8319270))

(declare-fun m!8319274 () Bool)

(assert (=> bs!1969033 m!8319274))

(declare-fun m!8319276 () Bool)

(assert (=> bs!1969033 m!8319276))

(declare-fun m!8319278 () Bool)

(assert (=> bs!1969033 m!8319278))

(assert (=> bs!1969033 m!8319276))

(assert (=> bm!735454 d!2371516))

(declare-fun d!2371520 () Bool)

(assert (=> d!2371520 (= (inv!95742 (xs!19298 (left!56879 t!4440))) (<= (size!43258 (innerList!15994 (xs!19298 (left!56879 t!4440)))) 2147483647))))

(declare-fun bs!1969034 () Bool)

(assert (= bs!1969034 d!2371520))

(declare-fun m!8319280 () Bool)

(assert (=> bs!1969034 m!8319280))

(assert (=> b!7932581 d!2371520))

(declare-fun b!7932802 () Bool)

(declare-fun res!3147320 () Bool)

(declare-fun e!4681148 () Bool)

(assert (=> b!7932802 (=> (not res!3147320) (not e!4681148))))

(assert (=> b!7932802 (= res!3147320 (isBalanced!4532 (left!56879 (left!56879 t!4440))))))

(declare-fun d!2371522 () Bool)

(declare-fun res!3147322 () Bool)

(declare-fun e!4681149 () Bool)

(assert (=> d!2371522 (=> res!3147322 e!4681149)))

(assert (=> d!2371522 (= res!3147322 (not ((_ is Node!15906) (left!56879 t!4440))))))

(assert (=> d!2371522 (= (isBalanced!4532 (left!56879 t!4440)) e!4681149)))

(declare-fun b!7932803 () Bool)

(assert (=> b!7932803 (= e!4681149 e!4681148)))

(declare-fun res!3147319 () Bool)

(assert (=> b!7932803 (=> (not res!3147319) (not e!4681148))))

(assert (=> b!7932803 (= res!3147319 (<= (- 1) (- (height!2221 (left!56879 (left!56879 t!4440))) (height!2221 (right!57209 (left!56879 t!4440))))))))

(declare-fun b!7932804 () Bool)

(declare-fun res!3147323 () Bool)

(assert (=> b!7932804 (=> (not res!3147323) (not e!4681148))))

(assert (=> b!7932804 (= res!3147323 (not (isEmpty!42783 (left!56879 (left!56879 t!4440)))))))

(declare-fun b!7932805 () Bool)

(declare-fun res!3147321 () Bool)

(assert (=> b!7932805 (=> (not res!3147321) (not e!4681148))))

(assert (=> b!7932805 (= res!3147321 (isBalanced!4532 (right!57209 (left!56879 t!4440))))))

(declare-fun b!7932806 () Bool)

(assert (=> b!7932806 (= e!4681148 (not (isEmpty!42783 (right!57209 (left!56879 t!4440)))))))

(declare-fun b!7932807 () Bool)

(declare-fun res!3147318 () Bool)

(assert (=> b!7932807 (=> (not res!3147318) (not e!4681148))))

(assert (=> b!7932807 (= res!3147318 (<= (- (height!2221 (left!56879 (left!56879 t!4440))) (height!2221 (right!57209 (left!56879 t!4440)))) 1))))

(assert (= (and d!2371522 (not res!3147322)) b!7932803))

(assert (= (and b!7932803 res!3147319) b!7932807))

(assert (= (and b!7932807 res!3147318) b!7932802))

(assert (= (and b!7932802 res!3147320) b!7932805))

(assert (= (and b!7932805 res!3147321) b!7932804))

(assert (= (and b!7932804 res!3147323) b!7932806))

(declare-fun m!8319282 () Bool)

(assert (=> b!7932804 m!8319282))

(assert (=> b!7932807 m!8319252))

(assert (=> b!7932807 m!8319254))

(assert (=> b!7932803 m!8319252))

(assert (=> b!7932803 m!8319254))

(declare-fun m!8319284 () Bool)

(assert (=> b!7932802 m!8319284))

(declare-fun m!8319286 () Bool)

(assert (=> b!7932806 m!8319286))

(declare-fun m!8319290 () Bool)

(assert (=> b!7932805 m!8319290))

(assert (=> b!7932555 d!2371522))

(declare-fun d!2371524 () Bool)

(declare-fun lt!2694647 () Bool)

(declare-fun isEmpty!42786 (List!74576) Bool)

(assert (=> d!2371524 (= lt!2694647 (isEmpty!42786 (list!19420 (left!56879 t!4440))))))

(assert (=> d!2371524 (= lt!2694647 (= (size!43262 (left!56879 t!4440)) 0))))

(assert (=> d!2371524 (= (isEmpty!42783 (left!56879 t!4440)) lt!2694647)))

(declare-fun bs!1969035 () Bool)

(assert (= bs!1969035 d!2371524))

(declare-fun m!8319314 () Bool)

(assert (=> bs!1969035 m!8319314))

(assert (=> bs!1969035 m!8319314))

(declare-fun m!8319316 () Bool)

(assert (=> bs!1969035 m!8319316))

(declare-fun m!8319318 () Bool)

(assert (=> bs!1969035 m!8319318))

(assert (=> b!7932557 d!2371524))

(assert (=> b!7932556 d!2371434))

(assert (=> b!7932556 d!2371458))

(declare-fun b!7932812 () Bool)

(declare-fun e!4681152 () List!74576)

(assert (=> b!7932812 (= e!4681152 Nil!74452)))

(declare-fun d!2371530 () Bool)

(declare-fun c!1457314 () Bool)

(assert (=> d!2371530 (= c!1457314 ((_ is Empty!15906) (right!57209 (right!57209 t!4440))))))

(assert (=> d!2371530 (= (list!19420 (right!57209 (right!57209 t!4440))) e!4681152)))

(declare-fun b!7932814 () Bool)

(declare-fun e!4681153 () List!74576)

(assert (=> b!7932814 (= e!4681153 (list!19423 (xs!19298 (right!57209 (right!57209 t!4440)))))))

(declare-fun b!7932813 () Bool)

(assert (=> b!7932813 (= e!4681152 e!4681153)))

(declare-fun c!1457315 () Bool)

(assert (=> b!7932813 (= c!1457315 ((_ is Leaf!30240) (right!57209 (right!57209 t!4440))))))

(declare-fun b!7932815 () Bool)

(assert (=> b!7932815 (= e!4681153 (++!18262 (list!19420 (left!56879 (right!57209 (right!57209 t!4440)))) (list!19420 (right!57209 (right!57209 (right!57209 t!4440))))))))

(assert (= (and d!2371530 c!1457314) b!7932812))

(assert (= (and d!2371530 (not c!1457314)) b!7932813))

(assert (= (and b!7932813 c!1457315) b!7932814))

(assert (= (and b!7932813 (not c!1457315)) b!7932815))

(declare-fun m!8319320 () Bool)

(assert (=> b!7932814 m!8319320))

(declare-fun m!8319322 () Bool)

(assert (=> b!7932815 m!8319322))

(declare-fun m!8319324 () Bool)

(assert (=> b!7932815 m!8319324))

(assert (=> b!7932815 m!8319322))

(assert (=> b!7932815 m!8319324))

(declare-fun m!8319326 () Bool)

(assert (=> b!7932815 m!8319326))

(assert (=> bm!735455 d!2371530))

(declare-fun b!7932816 () Bool)

(declare-fun res!3147328 () Bool)

(declare-fun e!4681154 () Bool)

(assert (=> b!7932816 (=> (not res!3147328) (not e!4681154))))

(assert (=> b!7932816 (= res!3147328 (isBalanced!4532 (left!56879 (right!57209 t!4440))))))

(declare-fun d!2371532 () Bool)

(declare-fun res!3147330 () Bool)

(declare-fun e!4681155 () Bool)

(assert (=> d!2371532 (=> res!3147330 e!4681155)))

(assert (=> d!2371532 (= res!3147330 (not ((_ is Node!15906) (right!57209 t!4440))))))

(assert (=> d!2371532 (= (isBalanced!4532 (right!57209 t!4440)) e!4681155)))

(declare-fun b!7932817 () Bool)

(assert (=> b!7932817 (= e!4681155 e!4681154)))

(declare-fun res!3147327 () Bool)

(assert (=> b!7932817 (=> (not res!3147327) (not e!4681154))))

(assert (=> b!7932817 (= res!3147327 (<= (- 1) (- (height!2221 (left!56879 (right!57209 t!4440))) (height!2221 (right!57209 (right!57209 t!4440))))))))

(declare-fun b!7932818 () Bool)

(declare-fun res!3147331 () Bool)

(assert (=> b!7932818 (=> (not res!3147331) (not e!4681154))))

(assert (=> b!7932818 (= res!3147331 (not (isEmpty!42783 (left!56879 (right!57209 t!4440)))))))

(declare-fun b!7932819 () Bool)

(declare-fun res!3147329 () Bool)

(assert (=> b!7932819 (=> (not res!3147329) (not e!4681154))))

(assert (=> b!7932819 (= res!3147329 (isBalanced!4532 (right!57209 (right!57209 t!4440))))))

(declare-fun b!7932820 () Bool)

(assert (=> b!7932820 (= e!4681154 (not (isEmpty!42783 (right!57209 (right!57209 t!4440)))))))

(declare-fun b!7932821 () Bool)

(declare-fun res!3147326 () Bool)

(assert (=> b!7932821 (=> (not res!3147326) (not e!4681154))))

(assert (=> b!7932821 (= res!3147326 (<= (- (height!2221 (left!56879 (right!57209 t!4440))) (height!2221 (right!57209 (right!57209 t!4440)))) 1))))

(assert (= (and d!2371532 (not res!3147330)) b!7932817))

(assert (= (and b!7932817 res!3147327) b!7932821))

(assert (= (and b!7932821 res!3147326) b!7932816))

(assert (= (and b!7932816 res!3147328) b!7932819))

(assert (= (and b!7932819 res!3147329) b!7932818))

(assert (= (and b!7932818 res!3147331) b!7932820))

(declare-fun m!8319328 () Bool)

(assert (=> b!7932818 m!8319328))

(assert (=> b!7932821 m!8318856))

(assert (=> b!7932821 m!8319162))

(assert (=> b!7932817 m!8318856))

(assert (=> b!7932817 m!8319162))

(declare-fun m!8319330 () Bool)

(assert (=> b!7932816 m!8319330))

(declare-fun m!8319332 () Bool)

(assert (=> b!7932820 m!8319332))

(declare-fun m!8319334 () Bool)

(assert (=> b!7932819 m!8319334))

(assert (=> b!7932558 d!2371532))

(declare-fun b!7932826 () Bool)

(declare-fun res!3147334 () Bool)

(declare-fun e!4681158 () Bool)

(assert (=> b!7932826 (=> (not res!3147334) (not e!4681158))))

(assert (=> b!7932826 (= res!3147334 (isBalanced!4532 (left!56879 lt!2694586)))))

(declare-fun d!2371534 () Bool)

(declare-fun res!3147336 () Bool)

(declare-fun e!4681159 () Bool)

(assert (=> d!2371534 (=> res!3147336 e!4681159)))

(assert (=> d!2371534 (= res!3147336 (not ((_ is Node!15906) lt!2694586)))))

(assert (=> d!2371534 (= (isBalanced!4532 lt!2694586) e!4681159)))

(declare-fun b!7932827 () Bool)

(assert (=> b!7932827 (= e!4681159 e!4681158)))

(declare-fun res!3147333 () Bool)

(assert (=> b!7932827 (=> (not res!3147333) (not e!4681158))))

(assert (=> b!7932827 (= res!3147333 (<= (- 1) (- (height!2221 (left!56879 lt!2694586)) (height!2221 (right!57209 lt!2694586)))))))

(declare-fun b!7932828 () Bool)

(declare-fun res!3147337 () Bool)

(assert (=> b!7932828 (=> (not res!3147337) (not e!4681158))))

(assert (=> b!7932828 (= res!3147337 (not (isEmpty!42783 (left!56879 lt!2694586))))))

(declare-fun b!7932829 () Bool)

(declare-fun res!3147335 () Bool)

(assert (=> b!7932829 (=> (not res!3147335) (not e!4681158))))

(assert (=> b!7932829 (= res!3147335 (isBalanced!4532 (right!57209 lt!2694586)))))

(declare-fun b!7932830 () Bool)

(assert (=> b!7932830 (= e!4681158 (not (isEmpty!42783 (right!57209 lt!2694586))))))

(declare-fun b!7932831 () Bool)

(declare-fun res!3147332 () Bool)

(assert (=> b!7932831 (=> (not res!3147332) (not e!4681158))))

(assert (=> b!7932831 (= res!3147332 (<= (- (height!2221 (left!56879 lt!2694586)) (height!2221 (right!57209 lt!2694586))) 1))))

(assert (= (and d!2371534 (not res!3147336)) b!7932827))

(assert (= (and b!7932827 res!3147333) b!7932831))

(assert (= (and b!7932831 res!3147332) b!7932826))

(assert (= (and b!7932826 res!3147334) b!7932829))

(assert (= (and b!7932829 res!3147335) b!7932828))

(assert (= (and b!7932828 res!3147337) b!7932830))

(declare-fun m!8319336 () Bool)

(assert (=> b!7932828 m!8319336))

(declare-fun m!8319338 () Bool)

(assert (=> b!7932831 m!8319338))

(declare-fun m!8319340 () Bool)

(assert (=> b!7932831 m!8319340))

(assert (=> b!7932827 m!8319338))

(assert (=> b!7932827 m!8319340))

(declare-fun m!8319342 () Bool)

(assert (=> b!7932826 m!8319342))

(declare-fun m!8319344 () Bool)

(assert (=> b!7932830 m!8319344))

(declare-fun m!8319346 () Bool)

(assert (=> b!7932829 m!8319346))

(assert (=> d!2371436 d!2371534))

(assert (=> d!2371436 d!2371532))

(declare-fun d!2371536 () Bool)

(declare-fun e!4681162 () Bool)

(assert (=> d!2371536 e!4681162))

(declare-fun res!3147339 () Bool)

(assert (=> d!2371536 (=> (not res!3147339) (not e!4681162))))

(declare-fun lt!2694648 () List!74576)

(assert (=> d!2371536 (= res!3147339 (= (content!15786 lt!2694648) ((_ map or) (content!15786 (ite c!1457253 lt!2694584 lt!2694593)) (content!15786 (ite c!1457253 call!735461 lt!2694590)))))))

(declare-fun e!4681163 () List!74576)

(assert (=> d!2371536 (= lt!2694648 e!4681163)))

(declare-fun c!1457320 () Bool)

(assert (=> d!2371536 (= c!1457320 ((_ is Nil!74452) (ite c!1457253 lt!2694584 lt!2694593)))))

(assert (=> d!2371536 (= (++!18262 (ite c!1457253 lt!2694584 lt!2694593) (ite c!1457253 call!735461 lt!2694590)) lt!2694648)))

(declare-fun b!7932838 () Bool)

(declare-fun res!3147338 () Bool)

(assert (=> b!7932838 (=> (not res!3147338) (not e!4681162))))

(assert (=> b!7932838 (= res!3147338 (= (size!43258 lt!2694648) (+ (size!43258 (ite c!1457253 lt!2694584 lt!2694593)) (size!43258 (ite c!1457253 call!735461 lt!2694590)))))))

(declare-fun b!7932839 () Bool)

(assert (=> b!7932839 (= e!4681162 (or (not (= (ite c!1457253 call!735461 lt!2694590) Nil!74452)) (= lt!2694648 (ite c!1457253 lt!2694584 lt!2694593))))))

(declare-fun b!7932837 () Bool)

(assert (=> b!7932837 (= e!4681163 (Cons!74452 (h!80900 (ite c!1457253 lt!2694584 lt!2694593)) (++!18262 (t!390221 (ite c!1457253 lt!2694584 lt!2694593)) (ite c!1457253 call!735461 lt!2694590))))))

(declare-fun b!7932836 () Bool)

(assert (=> b!7932836 (= e!4681163 (ite c!1457253 call!735461 lt!2694590))))

(assert (= (and d!2371536 c!1457320) b!7932836))

(assert (= (and d!2371536 (not c!1457320)) b!7932837))

(assert (= (and d!2371536 res!3147339) b!7932838))

(assert (= (and b!7932838 res!3147338) b!7932839))

(declare-fun m!8319348 () Bool)

(assert (=> d!2371536 m!8319348))

(declare-fun m!8319350 () Bool)

(assert (=> d!2371536 m!8319350))

(declare-fun m!8319352 () Bool)

(assert (=> d!2371536 m!8319352))

(declare-fun m!8319354 () Bool)

(assert (=> b!7932838 m!8319354))

(declare-fun m!8319356 () Bool)

(assert (=> b!7932838 m!8319356))

(declare-fun m!8319358 () Bool)

(assert (=> b!7932838 m!8319358))

(declare-fun m!8319360 () Bool)

(assert (=> b!7932837 m!8319360))

(assert (=> bm!735456 d!2371536))

(declare-fun d!2371538 () Bool)

(declare-fun res!3147340 () Bool)

(declare-fun e!4681164 () Bool)

(assert (=> d!2371538 (=> (not res!3147340) (not e!4681164))))

(assert (=> d!2371538 (= res!3147340 (<= (size!43258 (list!19423 (xs!19298 (left!56879 t!4440)))) 512))))

(assert (=> d!2371538 (= (inv!95744 (left!56879 t!4440)) e!4681164)))

(declare-fun b!7932840 () Bool)

(declare-fun res!3147341 () Bool)

(assert (=> b!7932840 (=> (not res!3147341) (not e!4681164))))

(assert (=> b!7932840 (= res!3147341 (= (csize!32043 (left!56879 t!4440)) (size!43258 (list!19423 (xs!19298 (left!56879 t!4440))))))))

(declare-fun b!7932841 () Bool)

(assert (=> b!7932841 (= e!4681164 (and (> (csize!32043 (left!56879 t!4440)) 0) (<= (csize!32043 (left!56879 t!4440)) 512)))))

(assert (= (and d!2371538 res!3147340) b!7932840))

(assert (= (and b!7932840 res!3147341) b!7932841))

(declare-fun m!8319362 () Bool)

(assert (=> d!2371538 m!8319362))

(assert (=> d!2371538 m!8319362))

(declare-fun m!8319364 () Bool)

(assert (=> d!2371538 m!8319364))

(assert (=> b!7932840 m!8319362))

(assert (=> b!7932840 m!8319362))

(assert (=> b!7932840 m!8319364))

(assert (=> b!7932457 d!2371538))

(declare-fun d!2371540 () Bool)

(declare-fun lt!2694651 () Int)

(assert (=> d!2371540 (>= lt!2694651 0)))

(declare-fun e!4681169 () Int)

(assert (=> d!2371540 (= lt!2694651 e!4681169)))

(declare-fun c!1457325 () Bool)

(assert (=> d!2371540 (= c!1457325 ((_ is Nil!74452) (innerList!15994 (xs!19298 t!4440))))))

(assert (=> d!2371540 (= (size!43258 (innerList!15994 (xs!19298 t!4440))) lt!2694651)))

(declare-fun b!7932850 () Bool)

(assert (=> b!7932850 (= e!4681169 0)))

(declare-fun b!7932851 () Bool)

(assert (=> b!7932851 (= e!4681169 (+ 1 (size!43258 (t!390221 (innerList!15994 (xs!19298 t!4440))))))))

(assert (= (and d!2371540 c!1457325) b!7932850))

(assert (= (and d!2371540 (not c!1457325)) b!7932851))

(declare-fun m!8319374 () Bool)

(assert (=> b!7932851 m!8319374))

(assert (=> d!2371426 d!2371540))

(declare-fun d!2371544 () Bool)

(declare-fun res!3147342 () Bool)

(declare-fun e!4681170 () Bool)

(assert (=> d!2371544 (=> (not res!3147342) (not e!4681170))))

(assert (=> d!2371544 (= res!3147342 (= (csize!32042 t!4440) (+ (size!43262 (left!56879 t!4440)) (size!43262 (right!57209 t!4440)))))))

(assert (=> d!2371544 (= (inv!95743 t!4440) e!4681170)))

(declare-fun b!7932852 () Bool)

(declare-fun res!3147343 () Bool)

(assert (=> b!7932852 (=> (not res!3147343) (not e!4681170))))

(assert (=> b!7932852 (= res!3147343 (and (not (= (left!56879 t!4440) Empty!15906)) (not (= (right!57209 t!4440) Empty!15906))))))

(declare-fun b!7932853 () Bool)

(declare-fun res!3147344 () Bool)

(assert (=> b!7932853 (=> (not res!3147344) (not e!4681170))))

(assert (=> b!7932853 (= res!3147344 (= (cheight!16117 t!4440) (+ (max!0 (height!2221 (left!56879 t!4440)) (height!2221 (right!57209 t!4440))) 1)))))

(declare-fun b!7932854 () Bool)

(assert (=> b!7932854 (= e!4681170 (<= 0 (cheight!16117 t!4440)))))

(assert (= (and d!2371544 res!3147342) b!7932852))

(assert (= (and b!7932852 res!3147343) b!7932853))

(assert (= (and b!7932853 res!3147344) b!7932854))

(assert (=> d!2371544 m!8319318))

(declare-fun m!8319376 () Bool)

(assert (=> d!2371544 m!8319376))

(assert (=> b!7932853 m!8318820))

(assert (=> b!7932853 m!8318876))

(assert (=> b!7932853 m!8318820))

(assert (=> b!7932853 m!8318876))

(declare-fun m!8319378 () Bool)

(assert (=> b!7932853 m!8319378))

(assert (=> b!7932563 d!2371544))

(declare-fun d!2371546 () Bool)

(declare-fun res!3147345 () Bool)

(declare-fun e!4681171 () Bool)

(assert (=> d!2371546 (=> (not res!3147345) (not e!4681171))))

(assert (=> d!2371546 (= res!3147345 (<= (size!43258 (list!19423 (xs!19298 t!4440))) 512))))

(assert (=> d!2371546 (= (inv!95744 t!4440) e!4681171)))

(declare-fun b!7932855 () Bool)

(declare-fun res!3147346 () Bool)

(assert (=> b!7932855 (=> (not res!3147346) (not e!4681171))))

(assert (=> b!7932855 (= res!3147346 (= (csize!32043 t!4440) (size!43258 (list!19423 (xs!19298 t!4440)))))))

(declare-fun b!7932856 () Bool)

(assert (=> b!7932856 (= e!4681171 (and (> (csize!32043 t!4440) 0) (<= (csize!32043 t!4440) 512)))))

(assert (= (and d!2371546 res!3147345) b!7932855))

(assert (= (and b!7932855 res!3147346) b!7932856))

(declare-fun m!8319380 () Bool)

(assert (=> d!2371546 m!8319380))

(assert (=> d!2371546 m!8319380))

(declare-fun m!8319382 () Bool)

(assert (=> d!2371546 m!8319382))

(assert (=> b!7932855 m!8319380))

(assert (=> b!7932855 m!8319380))

(assert (=> b!7932855 m!8319382))

(assert (=> b!7932565 d!2371546))

(declare-fun d!2371548 () Bool)

(declare-fun lt!2694652 () Bool)

(assert (=> d!2371548 (= lt!2694652 (isEmpty!42786 (list!19420 (right!57209 t!4440))))))

(assert (=> d!2371548 (= lt!2694652 (= (size!43262 (right!57209 t!4440)) 0))))

(assert (=> d!2371548 (= (isEmpty!42783 (right!57209 t!4440)) lt!2694652)))

(declare-fun bs!1969036 () Bool)

(assert (= bs!1969036 d!2371548))

(assert (=> bs!1969036 m!8318890))

(assert (=> bs!1969036 m!8318890))

(declare-fun m!8319384 () Bool)

(assert (=> bs!1969036 m!8319384))

(assert (=> bs!1969036 m!8319376))

(assert (=> b!7932559 d!2371548))

(assert (=> b!7932560 d!2371434))

(assert (=> b!7932560 d!2371458))

(assert (=> b!7932517 d!2371460))

(assert (=> b!7932517 d!2371458))

(declare-fun d!2371550 () Bool)

(assert (=> d!2371550 (= (height!2221 lt!2694591) (ite ((_ is Empty!15906) lt!2694591) 0 (ite ((_ is Leaf!30240) lt!2694591) 1 (cheight!16117 lt!2694591))))))

(assert (=> b!7932519 d!2371550))

(declare-fun d!2371552 () Bool)

(assert (=> d!2371552 (= (height!2221 (left!56879 (right!57209 t!4440))) (ite ((_ is Empty!15906) (left!56879 (right!57209 t!4440))) 0 (ite ((_ is Leaf!30240) (left!56879 (right!57209 t!4440))) 1 (cheight!16117 (left!56879 (right!57209 t!4440))))))))

(assert (=> b!7932519 d!2371552))

(declare-fun b!7932857 () Bool)

(declare-fun e!4681173 () Conc!15906)

(declare-fun call!735491 () Conc!15906)

(assert (=> b!7932857 (= e!4681173 call!735491)))

(declare-fun lt!2694659 () List!74576)

(declare-fun call!735484 () List!74576)

(assert (=> b!7932857 (= lt!2694659 call!735484)))

(declare-fun lt!2694653 () List!74576)

(declare-fun lt!2694665 () Conc!15906)

(assert (=> b!7932857 (= lt!2694653 (list!19420 (left!56879 lt!2694665)))))

(declare-fun lt!2694669 () List!74576)

(assert (=> b!7932857 (= lt!2694669 (list!19420 (right!57209 lt!2694665)))))

(declare-fun lt!2694654 () Unit!169571)

(assert (=> b!7932857 (= lt!2694654 (lemmaConcatAssociativity!3165 lt!2694659 lt!2694653 lt!2694669))))

(declare-fun call!735489 () List!74576)

(declare-fun call!735492 () List!74576)

(assert (=> b!7932857 (= (++!18262 call!735489 lt!2694669) (++!18262 lt!2694659 call!735492))))

(declare-fun lt!2694663 () Unit!169571)

(assert (=> b!7932857 (= lt!2694663 lt!2694654)))

(declare-fun lt!2694657 () List!74576)

(assert (=> b!7932857 (= lt!2694657 call!735484)))

(declare-fun lt!2694667 () List!74576)

(declare-fun call!735486 () List!74576)

(assert (=> b!7932857 (= lt!2694667 call!735486)))

(declare-fun lt!2694664 () List!74576)

(assert (=> b!7932857 (= lt!2694664 (Cons!74452 v!5484 Nil!74452))))

(declare-fun lt!2694668 () Unit!169571)

(declare-fun call!735490 () Unit!169571)

(assert (=> b!7932857 (= lt!2694668 call!735490)))

(declare-fun call!735485 () List!74576)

(declare-fun call!735487 () List!74576)

(assert (=> b!7932857 (= (++!18262 call!735485 lt!2694664) (++!18262 lt!2694657 call!735487))))

(declare-fun lt!2694655 () Unit!169571)

(assert (=> b!7932857 (= lt!2694655 lt!2694668)))

(declare-fun bm!735479 () Bool)

(declare-fun lt!2694656 () List!74576)

(declare-fun lt!2694658 () List!74576)

(declare-fun c!1457326 () Bool)

(assert (=> bm!735479 (= call!735492 (++!18262 (ite c!1457326 lt!2694658 lt!2694653) (ite c!1457326 lt!2694656 lt!2694669)))))

(declare-fun bm!735480 () Bool)

(declare-fun lt!2694666 () List!74576)

(assert (=> bm!735480 (= call!735489 (++!18262 (ite c!1457326 lt!2694656 lt!2694659) (ite c!1457326 lt!2694666 lt!2694653)))))

(declare-fun bm!735481 () Bool)

(declare-fun call!735488 () IArray!31873)

(assert (=> bm!735481 (= call!735488 (fill!286 1 v!5484))))

(declare-fun lt!2694660 () Conc!15906)

(declare-fun e!4681174 () Bool)

(declare-fun b!7932858 () Bool)

(assert (=> b!7932858 (= e!4681174 (= (list!19420 lt!2694660) ($colon+!319 (list!19420 (right!57209 (right!57209 t!4440))) v!5484)))))

(declare-fun bm!735482 () Bool)

(assert (=> bm!735482 (= call!735490 (lemmaConcatAssociativity!3165 (ite c!1457326 lt!2694658 lt!2694657) (ite c!1457326 lt!2694656 lt!2694667) (ite c!1457326 lt!2694666 lt!2694664)))))

(declare-fun bm!735483 () Bool)

(assert (=> bm!735483 (= call!735486 (list!19420 (right!57209 (right!57209 (right!57209 t!4440)))))))

(declare-fun b!7932859 () Bool)

(declare-fun e!4681172 () Conc!15906)

(declare-fun e!4681176 () Conc!15906)

(assert (=> b!7932859 (= e!4681172 e!4681176)))

(declare-fun c!1457328 () Bool)

(assert (=> b!7932859 (= c!1457328 ((_ is Node!15906) (right!57209 (right!57209 t!4440))))))

(declare-fun bm!735484 () Bool)

(assert (=> bm!735484 (= call!735487 (++!18262 (ite c!1457326 lt!2694658 lt!2694667) (ite c!1457326 call!735489 lt!2694664)))))

(declare-fun b!7932860 () Bool)

(declare-fun e!4681177 () Conc!15906)

(assert (=> b!7932860 (= e!4681177 (right!57209 lt!2694665))))

(declare-fun b!7932861 () Bool)

(declare-fun res!3147348 () Bool)

(assert (=> b!7932861 (=> (not res!3147348) (not e!4681174))))

(assert (=> b!7932861 (= res!3147348 (<= (height!2221 lt!2694660) (+ (height!2221 (right!57209 (right!57209 t!4440))) 1)))))

(declare-fun b!7932862 () Bool)

(declare-fun e!4681175 () Conc!15906)

(assert (=> b!7932862 (= e!4681175 call!735491)))

(declare-fun bm!735478 () Bool)

(assert (=> bm!735478 (= call!735484 (list!19420 (left!56879 (right!57209 (right!57209 t!4440)))))))

(declare-fun d!2371554 () Bool)

(assert (=> d!2371554 e!4681174))

(declare-fun res!3147347 () Bool)

(assert (=> d!2371554 (=> (not res!3147347) (not e!4681174))))

(assert (=> d!2371554 (= res!3147347 (isBalanced!4532 lt!2694660))))

(assert (=> d!2371554 (= lt!2694660 e!4681172)))

(declare-fun c!1457327 () Bool)

(assert (=> d!2371554 (= c!1457327 ((_ is Empty!15906) (right!57209 (right!57209 t!4440))))))

(assert (=> d!2371554 (isBalanced!4532 (right!57209 (right!57209 t!4440)))))

(assert (=> d!2371554 (= (append!1152 (right!57209 (right!57209 t!4440)) v!5484) lt!2694660)))

(declare-fun b!7932863 () Bool)

(assert (=> b!7932863 (= c!1457326 (<= (height!2221 lt!2694665) (+ (height!2221 (left!56879 (right!57209 (right!57209 t!4440)))) 1)))))

(assert (=> b!7932863 (= lt!2694665 (append!1152 (right!57209 (right!57209 (right!57209 t!4440))) v!5484))))

(assert (=> b!7932863 (= e!4681176 e!4681173)))

(declare-fun b!7932864 () Bool)

(declare-fun call!735483 () Conc!15906)

(assert (=> b!7932864 (= e!4681173 call!735483)))

(assert (=> b!7932864 (= lt!2694658 call!735484)))

(assert (=> b!7932864 (= lt!2694656 call!735486)))

(assert (=> b!7932864 (= lt!2694666 (Cons!74452 v!5484 Nil!74452))))

(declare-fun lt!2694662 () Unit!169571)

(assert (=> b!7932864 (= lt!2694662 call!735490)))

(assert (=> b!7932864 (= call!735485 call!735487)))

(declare-fun lt!2694670 () Unit!169571)

(assert (=> b!7932864 (= lt!2694670 lt!2694662)))

(declare-fun bm!735485 () Bool)

(declare-fun c!1457330 () Bool)

(assert (=> bm!735485 (= c!1457330 c!1457328)))

(assert (=> bm!735485 (= call!735491 (<>!427 (ite c!1457328 call!735483 (right!57209 (right!57209 t!4440))) e!4681177))))

(declare-fun bm!735486 () Bool)

(assert (=> bm!735486 (= call!735483 (<>!427 (left!56879 (right!57209 (right!57209 t!4440))) (ite c!1457326 lt!2694665 (left!56879 lt!2694665))))))

(declare-fun b!7932865 () Bool)

(assert (=> b!7932865 (= e!4681177 (Leaf!30240 call!735488 1))))

(declare-fun b!7932866 () Bool)

(assert (=> b!7932866 (= e!4681172 (Leaf!30240 call!735488 1))))

(declare-fun b!7932867 () Bool)

(declare-fun res!3147349 () Bool)

(assert (=> b!7932867 (=> (not res!3147349) (not e!4681174))))

(assert (=> b!7932867 (= res!3147349 (<= (height!2221 (right!57209 (right!57209 t!4440))) (height!2221 lt!2694660)))))

(declare-fun b!7932868 () Bool)

(declare-fun c!1457329 () Bool)

(assert (=> b!7932868 (= c!1457329 (< (csize!32043 (right!57209 (right!57209 t!4440))) 512))))

(assert (=> b!7932868 (= e!4681176 e!4681175)))

(declare-fun bm!735487 () Bool)

(assert (=> bm!735487 (= call!735485 (++!18262 (ite c!1457326 call!735492 lt!2694657) (ite c!1457326 lt!2694666 lt!2694667)))))

(declare-fun b!7932869 () Bool)

(assert (=> b!7932869 (= e!4681175 (Leaf!30240 (append!1154 (xs!19298 (right!57209 (right!57209 t!4440))) v!5484) (+ (csize!32043 (right!57209 (right!57209 t!4440))) 1)))))

(declare-fun lt!2694661 () List!74576)

(assert (=> b!7932869 (= lt!2694661 ($colon+!319 (list!19423 (xs!19298 (right!57209 (right!57209 t!4440)))) v!5484))))

(assert (= (and d!2371554 c!1457327) b!7932866))

(assert (= (and d!2371554 (not c!1457327)) b!7932859))

(assert (= (and b!7932859 c!1457328) b!7932863))

(assert (= (and b!7932859 (not c!1457328)) b!7932868))

(assert (= (and b!7932863 c!1457326) b!7932864))

(assert (= (and b!7932863 (not c!1457326)) b!7932857))

(assert (= (or b!7932864 b!7932857) bm!735479))

(assert (= (or b!7932864 b!7932857) bm!735480))

(assert (= (or b!7932864 b!7932857) bm!735482))

(assert (= (or b!7932864 b!7932857) bm!735483))

(assert (= (or b!7932864 b!7932857) bm!735486))

(assert (= (or b!7932864 b!7932857) bm!735478))

(assert (= (or b!7932864 b!7932857) bm!735484))

(assert (= (or b!7932864 b!7932857) bm!735487))

(assert (= (and b!7932868 c!1457329) b!7932869))

(assert (= (and b!7932868 (not c!1457329)) b!7932862))

(assert (= (or b!7932857 b!7932862) bm!735485))

(assert (= (and bm!735485 c!1457330) b!7932860))

(assert (= (and bm!735485 (not c!1457330)) b!7932865))

(assert (= (or b!7932866 b!7932865) bm!735481))

(assert (= (and d!2371554 res!3147347) b!7932867))

(assert (= (and b!7932867 res!3147349) b!7932861))

(assert (= (and b!7932861 res!3147348) b!7932858))

(assert (=> bm!735481 m!8318838))

(declare-fun m!8319386 () Bool)

(assert (=> b!7932857 m!8319386))

(declare-fun m!8319388 () Bool)

(assert (=> b!7932857 m!8319388))

(declare-fun m!8319390 () Bool)

(assert (=> b!7932857 m!8319390))

(declare-fun m!8319392 () Bool)

(assert (=> b!7932857 m!8319392))

(declare-fun m!8319394 () Bool)

(assert (=> b!7932857 m!8319394))

(declare-fun m!8319396 () Bool)

(assert (=> b!7932857 m!8319396))

(declare-fun m!8319398 () Bool)

(assert (=> b!7932857 m!8319398))

(declare-fun m!8319400 () Bool)

(assert (=> b!7932863 m!8319400))

(declare-fun m!8319402 () Bool)

(assert (=> b!7932863 m!8319402))

(declare-fun m!8319404 () Bool)

(assert (=> b!7932863 m!8319404))

(declare-fun m!8319406 () Bool)

(assert (=> bm!735479 m!8319406))

(declare-fun m!8319408 () Bool)

(assert (=> bm!735480 m!8319408))

(declare-fun m!8319410 () Bool)

(assert (=> b!7932869 m!8319410))

(assert (=> b!7932869 m!8319320))

(assert (=> b!7932869 m!8319320))

(declare-fun m!8319412 () Bool)

(assert (=> b!7932869 m!8319412))

(declare-fun m!8319414 () Bool)

(assert (=> bm!735485 m!8319414))

(assert (=> bm!735478 m!8319322))

(declare-fun m!8319416 () Bool)

(assert (=> b!7932861 m!8319416))

(assert (=> b!7932861 m!8319162))

(declare-fun m!8319418 () Bool)

(assert (=> bm!735487 m!8319418))

(assert (=> bm!735483 m!8319324))

(assert (=> b!7932867 m!8319162))

(assert (=> b!7932867 m!8319416))

(declare-fun m!8319420 () Bool)

(assert (=> bm!735486 m!8319420))

(declare-fun m!8319422 () Bool)

(assert (=> bm!735482 m!8319422))

(declare-fun m!8319424 () Bool)

(assert (=> bm!735484 m!8319424))

(declare-fun m!8319426 () Bool)

(assert (=> b!7932858 m!8319426))

(assert (=> b!7932858 m!8318880))

(assert (=> b!7932858 m!8318880))

(declare-fun m!8319428 () Bool)

(assert (=> b!7932858 m!8319428))

(declare-fun m!8319430 () Bool)

(assert (=> d!2371554 m!8319430))

(assert (=> d!2371554 m!8319334))

(assert (=> b!7932519 d!2371554))

(declare-fun b!7932892 () Bool)

(declare-fun e!4681189 () Conc!15906)

(assert (=> b!7932892 (= e!4681189 (left!56879 (right!57209 t!4440)))))

(declare-fun b!7932893 () Bool)

(assert (=> b!7932893 (= e!4681189 (Node!15906 (left!56879 (right!57209 t!4440)) (ite c!1457253 lt!2694591 (left!56879 lt!2694591)) (+ (size!43262 (left!56879 (right!57209 t!4440))) (size!43262 (ite c!1457253 lt!2694591 (left!56879 lt!2694591)))) (+ (max!0 (height!2221 (left!56879 (right!57209 t!4440))) (height!2221 (ite c!1457253 lt!2694591 (left!56879 lt!2694591)))) 1)))))

(declare-fun lt!2694675 () Conc!15906)

(declare-fun d!2371556 () Bool)

(assert (=> d!2371556 (= (list!19420 lt!2694675) (++!18262 (list!19420 (left!56879 (right!57209 t!4440))) (list!19420 (ite c!1457253 lt!2694591 (left!56879 lt!2694591)))))))

(declare-fun e!4681188 () Conc!15906)

(assert (=> d!2371556 (= lt!2694675 e!4681188)))

(declare-fun c!1457340 () Bool)

(assert (=> d!2371556 (= c!1457340 (= (left!56879 (right!57209 t!4440)) Empty!15906))))

(assert (=> d!2371556 (= (<>!427 (left!56879 (right!57209 t!4440)) (ite c!1457253 lt!2694591 (left!56879 lt!2694591))) lt!2694675)))

(declare-fun b!7932890 () Bool)

(assert (=> b!7932890 (= e!4681188 (ite c!1457253 lt!2694591 (left!56879 lt!2694591)))))

(declare-fun b!7932891 () Bool)

(assert (=> b!7932891 (= e!4681188 e!4681189)))

(declare-fun c!1457339 () Bool)

(assert (=> b!7932891 (= c!1457339 (= (ite c!1457253 lt!2694591 (left!56879 lt!2694591)) Empty!15906))))

(assert (= (and d!2371556 c!1457340) b!7932890))

(assert (= (and d!2371556 (not c!1457340)) b!7932891))

(assert (= (and b!7932891 c!1457339) b!7932892))

(assert (= (and b!7932891 (not c!1457339)) b!7932893))

(assert (=> b!7932893 m!8319158))

(declare-fun m!8319432 () Bool)

(assert (=> b!7932893 m!8319432))

(assert (=> b!7932893 m!8318856))

(assert (=> b!7932893 m!8319432))

(declare-fun m!8319434 () Bool)

(assert (=> b!7932893 m!8319434))

(assert (=> b!7932893 m!8318856))

(declare-fun m!8319436 () Bool)

(assert (=> b!7932893 m!8319436))

(declare-fun m!8319438 () Bool)

(assert (=> d!2371556 m!8319438))

(assert (=> d!2371556 m!8318872))

(declare-fun m!8319440 () Bool)

(assert (=> d!2371556 m!8319440))

(assert (=> d!2371556 m!8318872))

(assert (=> d!2371556 m!8319440))

(declare-fun m!8319442 () Bool)

(assert (=> d!2371556 m!8319442))

(assert (=> bm!735458 d!2371556))

(declare-fun b!7932896 () Bool)

(declare-fun e!4681191 () Conc!15906)

(assert (=> b!7932896 (= e!4681191 (ite c!1457255 call!735455 (right!57209 t!4440)))))

(declare-fun b!7932897 () Bool)

(assert (=> b!7932897 (= e!4681191 (Node!15906 (ite c!1457255 call!735455 (right!57209 t!4440)) e!4681016 (+ (size!43262 (ite c!1457255 call!735455 (right!57209 t!4440))) (size!43262 e!4681016)) (+ (max!0 (height!2221 (ite c!1457255 call!735455 (right!57209 t!4440))) (height!2221 e!4681016)) 1)))))

(declare-fun lt!2694676 () Conc!15906)

(declare-fun d!2371558 () Bool)

(assert (=> d!2371558 (= (list!19420 lt!2694676) (++!18262 (list!19420 (ite c!1457255 call!735455 (right!57209 t!4440))) (list!19420 e!4681016)))))

(declare-fun e!4681190 () Conc!15906)

(assert (=> d!2371558 (= lt!2694676 e!4681190)))

(declare-fun c!1457342 () Bool)

(assert (=> d!2371558 (= c!1457342 (= (ite c!1457255 call!735455 (right!57209 t!4440)) Empty!15906))))

(assert (=> d!2371558 (= (<>!427 (ite c!1457255 call!735455 (right!57209 t!4440)) e!4681016) lt!2694676)))

(declare-fun b!7932894 () Bool)

(assert (=> b!7932894 (= e!4681190 e!4681016)))

(declare-fun b!7932895 () Bool)

(assert (=> b!7932895 (= e!4681190 e!4681191)))

(declare-fun c!1457341 () Bool)

(assert (=> b!7932895 (= c!1457341 (= e!4681016 Empty!15906))))

(assert (= (and d!2371558 c!1457342) b!7932894))

(assert (= (and d!2371558 (not c!1457342)) b!7932895))

(assert (= (and b!7932895 c!1457341) b!7932896))

(assert (= (and b!7932895 (not c!1457341)) b!7932897))

(declare-fun m!8319444 () Bool)

(assert (=> b!7932897 m!8319444))

(declare-fun m!8319446 () Bool)

(assert (=> b!7932897 m!8319446))

(declare-fun m!8319448 () Bool)

(assert (=> b!7932897 m!8319448))

(assert (=> b!7932897 m!8319446))

(declare-fun m!8319450 () Bool)

(assert (=> b!7932897 m!8319450))

(assert (=> b!7932897 m!8319448))

(declare-fun m!8319452 () Bool)

(assert (=> b!7932897 m!8319452))

(declare-fun m!8319454 () Bool)

(assert (=> d!2371558 m!8319454))

(declare-fun m!8319456 () Bool)

(assert (=> d!2371558 m!8319456))

(declare-fun m!8319458 () Bool)

(assert (=> d!2371558 m!8319458))

(assert (=> d!2371558 m!8319456))

(assert (=> d!2371558 m!8319458))

(declare-fun m!8319460 () Bool)

(assert (=> d!2371558 m!8319460))

(assert (=> bm!735457 d!2371558))

(declare-fun b!7932902 () Bool)

(declare-fun e!4681192 () Bool)

(declare-fun tp!2359035 () Bool)

(assert (=> b!7932902 (= e!4681192 (and tp_is_empty!53237 tp!2359035))))

(assert (=> b!7932582 (= tp!2359013 e!4681192)))

(assert (= (and b!7932582 ((_ is Cons!74452) (innerList!15994 (xs!19298 (left!56879 t!4440))))) b!7932902))

(declare-fun tp!2359037 () Bool)

(declare-fun tp!2359036 () Bool)

(declare-fun e!4681193 () Bool)

(declare-fun b!7932903 () Bool)

(assert (=> b!7932903 (= e!4681193 (and (inv!95741 (left!56879 (left!56879 (right!57209 t!4440)))) tp!2359036 (inv!95741 (right!57209 (left!56879 (right!57209 t!4440)))) tp!2359037))))

(declare-fun b!7932905 () Bool)

(declare-fun e!4681194 () Bool)

(declare-fun tp!2359038 () Bool)

(assert (=> b!7932905 (= e!4681194 tp!2359038)))

(declare-fun b!7932904 () Bool)

(assert (=> b!7932904 (= e!4681193 (and (inv!95742 (xs!19298 (left!56879 (right!57209 t!4440)))) e!4681194))))

(assert (=> b!7932583 (= tp!2359014 (and (inv!95741 (left!56879 (right!57209 t!4440))) e!4681193))))

(assert (= (and b!7932583 ((_ is Node!15906) (left!56879 (right!57209 t!4440)))) b!7932903))

(assert (= b!7932904 b!7932905))

(assert (= (and b!7932583 ((_ is Leaf!30240) (left!56879 (right!57209 t!4440)))) b!7932904))

(declare-fun m!8319462 () Bool)

(assert (=> b!7932903 m!8319462))

(declare-fun m!8319464 () Bool)

(assert (=> b!7932903 m!8319464))

(declare-fun m!8319466 () Bool)

(assert (=> b!7932904 m!8319466))

(assert (=> b!7932583 m!8318982))

(declare-fun tp!2359040 () Bool)

(declare-fun e!4681195 () Bool)

(declare-fun tp!2359039 () Bool)

(declare-fun b!7932906 () Bool)

(assert (=> b!7932906 (= e!4681195 (and (inv!95741 (left!56879 (right!57209 (right!57209 t!4440)))) tp!2359039 (inv!95741 (right!57209 (right!57209 (right!57209 t!4440)))) tp!2359040))))

(declare-fun b!7932908 () Bool)

(declare-fun e!4681196 () Bool)

(declare-fun tp!2359041 () Bool)

(assert (=> b!7932908 (= e!4681196 tp!2359041)))

(declare-fun b!7932907 () Bool)

(assert (=> b!7932907 (= e!4681195 (and (inv!95742 (xs!19298 (right!57209 (right!57209 t!4440)))) e!4681196))))

(assert (=> b!7932583 (= tp!2359015 (and (inv!95741 (right!57209 (right!57209 t!4440))) e!4681195))))

(assert (= (and b!7932583 ((_ is Node!15906) (right!57209 (right!57209 t!4440)))) b!7932906))

(assert (= b!7932907 b!7932908))

(assert (= (and b!7932583 ((_ is Leaf!30240) (right!57209 (right!57209 t!4440)))) b!7932907))

(declare-fun m!8319468 () Bool)

(assert (=> b!7932906 m!8319468))

(declare-fun m!8319470 () Bool)

(assert (=> b!7932906 m!8319470))

(declare-fun m!8319472 () Bool)

(assert (=> b!7932907 m!8319472))

(assert (=> b!7932583 m!8318984))

(declare-fun b!7932909 () Bool)

(declare-fun e!4681197 () Bool)

(declare-fun tp!2359042 () Bool)

(assert (=> b!7932909 (= e!4681197 (and tp_is_empty!53237 tp!2359042))))

(assert (=> b!7932590 (= tp!2359019 e!4681197)))

(assert (= (and b!7932590 ((_ is Cons!74452) (t!390221 (innerList!15994 (xs!19298 t!4440))))) b!7932909))

(declare-fun e!4681198 () Bool)

(declare-fun b!7932910 () Bool)

(declare-fun tp!2359044 () Bool)

(declare-fun tp!2359043 () Bool)

(assert (=> b!7932910 (= e!4681198 (and (inv!95741 (left!56879 (left!56879 (left!56879 t!4440)))) tp!2359043 (inv!95741 (right!57209 (left!56879 (left!56879 t!4440)))) tp!2359044))))

(declare-fun b!7932912 () Bool)

(declare-fun e!4681199 () Bool)

(declare-fun tp!2359045 () Bool)

(assert (=> b!7932912 (= e!4681199 tp!2359045)))

(declare-fun b!7932911 () Bool)

(assert (=> b!7932911 (= e!4681198 (and (inv!95742 (xs!19298 (left!56879 (left!56879 t!4440)))) e!4681199))))

(assert (=> b!7932580 (= tp!2359011 (and (inv!95741 (left!56879 (left!56879 t!4440))) e!4681198))))

(assert (= (and b!7932580 ((_ is Node!15906) (left!56879 (left!56879 t!4440)))) b!7932910))

(assert (= b!7932911 b!7932912))

(assert (= (and b!7932580 ((_ is Leaf!30240) (left!56879 (left!56879 t!4440)))) b!7932911))

(declare-fun m!8319474 () Bool)

(assert (=> b!7932910 m!8319474))

(declare-fun m!8319476 () Bool)

(assert (=> b!7932910 m!8319476))

(declare-fun m!8319478 () Bool)

(assert (=> b!7932911 m!8319478))

(assert (=> b!7932580 m!8318976))

(declare-fun tp!2359047 () Bool)

(declare-fun tp!2359046 () Bool)

(declare-fun b!7932913 () Bool)

(declare-fun e!4681200 () Bool)

(assert (=> b!7932913 (= e!4681200 (and (inv!95741 (left!56879 (right!57209 (left!56879 t!4440)))) tp!2359046 (inv!95741 (right!57209 (right!57209 (left!56879 t!4440)))) tp!2359047))))

(declare-fun b!7932915 () Bool)

(declare-fun e!4681201 () Bool)

(declare-fun tp!2359048 () Bool)

(assert (=> b!7932915 (= e!4681201 tp!2359048)))

(declare-fun b!7932914 () Bool)

(assert (=> b!7932914 (= e!4681200 (and (inv!95742 (xs!19298 (right!57209 (left!56879 t!4440)))) e!4681201))))

(assert (=> b!7932580 (= tp!2359012 (and (inv!95741 (right!57209 (left!56879 t!4440))) e!4681200))))

(assert (= (and b!7932580 ((_ is Node!15906) (right!57209 (left!56879 t!4440)))) b!7932913))

(assert (= b!7932914 b!7932915))

(assert (= (and b!7932580 ((_ is Leaf!30240) (right!57209 (left!56879 t!4440)))) b!7932914))

(declare-fun m!8319480 () Bool)

(assert (=> b!7932913 m!8319480))

(declare-fun m!8319482 () Bool)

(assert (=> b!7932913 m!8319482))

(declare-fun m!8319484 () Bool)

(assert (=> b!7932914 m!8319484))

(assert (=> b!7932580 m!8318978))

(declare-fun b!7932916 () Bool)

(declare-fun e!4681202 () Bool)

(declare-fun tp!2359049 () Bool)

(assert (=> b!7932916 (= e!4681202 (and tp_is_empty!53237 tp!2359049))))

(assert (=> b!7932585 (= tp!2359016 e!4681202)))

(assert (= (and b!7932585 ((_ is Cons!74452) (innerList!15994 (xs!19298 (right!57209 t!4440))))) b!7932916))

(check-sat (not b!7932783) (not b!7932855) (not bm!735484) (not b!7932778) (not b!7932648) (not b!7932915) (not b!7932721) (not b!7932580) (not b!7932682) (not d!2371516) (not d!2371464) (not b!7932903) (not b!7932821) (not b!7932739) (not d!2371514) (not b!7932818) (not bm!735476) (not d!2371494) (not b!7932679) (not b!7932858) (not d!2371538) (not b!7932893) (not b!7932814) (not d!2371476) (not b!7932806) (not b!7932634) (not b!7932647) (not b!7932678) (not b!7932772) (not b!7932633) (not bm!735475) (not bm!735483) (not b!7932907) (not b!7932828) (not b!7932826) (not b!7932774) (not b!7932662) (not d!2371466) (not d!2371520) (not d!2371500) (not b!7932861) (not b!7932769) (not b!7932897) (not d!2371556) (not b!7932904) (not d!2371524) (not b!7932820) (not b!7932819) (not b!7932869) (not b!7932720) (not b!7932902) (not b!7932674) (not b!7932790) (not b!7932752) (not bm!735480) (not d!2371558) (not b!7932658) (not bm!735481) (not b!7932723) (not b!7932853) (not b!7932906) (not d!2371492) (not d!2371536) (not d!2371498) (not b!7932781) (not b!7932583) (not d!2371544) (not b!7932805) (not b!7932719) (not b!7932663) (not b!7932765) (not d!2371548) (not bm!735487) (not bm!735474) (not b!7932909) (not b!7932671) (not b!7932914) (not b!7932807) (not b!7932667) (not b!7932838) (not b!7932911) (not b!7932672) (not b!7932857) (not d!2371554) (not b!7932851) (not b!7932792) (not b!7932815) (not b!7932803) (not b!7932831) (not b!7932717) (not d!2371456) (not b!7932636) (not bm!735479) (not b!7932764) (not bm!735477) (not b!7932905) (not b!7932776) (not b!7932753) (not d!2371502) (not d!2371546) (not b!7932827) (not b!7932631) (not d!2371480) (not d!2371478) (not b!7932804) (not b!7932840) (not b!7932668) (not b!7932775) (not b!7932837) (not b!7932770) (not b!7932863) (not bm!735485) (not b!7932916) (not b!7932802) (not b!7932683) (not bm!735486) (not b!7932817) (not b!7932816) (not b!7932908) (not d!2371468) (not b!7932782) (not b!7932829) (not bm!735482) (not b!7932830) (not d!2371474) (not b!7932785) (not b!7932913) (not b!7932867) (not b!7932749) (not b!7932794) tp_is_empty!53237 (not bm!735478) (not b!7932912) (not b!7932675) (not b!7932659) (not b!7932910))
(check-sat)
