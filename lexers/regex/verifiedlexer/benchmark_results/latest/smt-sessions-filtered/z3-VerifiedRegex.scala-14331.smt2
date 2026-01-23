; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748390 () Bool)

(assert start!748390)

(declare-fun b!7926625 () Bool)

(declare-fun res!3145454 () Bool)

(declare-fun e!4678098 () Bool)

(assert (=> b!7926625 (=> (not res!3145454) (not e!4678098))))

(declare-datatypes ((T!145804 0))(
  ( (T!145805 (val!32060 Int)) )
))
(declare-datatypes ((List!74572 0))(
  ( (Nil!74448) (Cons!74448 (h!80896 T!145804) (t!390189 List!74572)) )
))
(declare-datatypes ((IArray!31865 0))(
  ( (IArray!31866 (innerList!15990 List!74572)) )
))
(declare-datatypes ((Conc!15902 0))(
  ( (Node!15902 (left!56873 Conc!15902) (right!57203 Conc!15902) (csize!32034 Int) (cheight!16113 Int)) (Leaf!30234 (xs!19290 IArray!31865) (csize!32035 Int)) (Empty!15902) )
))
(declare-fun t!4440 () Conc!15902)

(get-info :version)

(assert (=> b!7926625 (= res!3145454 (and (not ((_ is Empty!15902) t!4440)) ((_ is Node!15902) t!4440)))))

(declare-fun res!3145450 () Bool)

(assert (=> start!748390 (=> (not res!3145450) (not e!4678098))))

(declare-fun isBalanced!4528 (Conc!15902) Bool)

(assert (=> start!748390 (= res!3145450 (isBalanced!4528 t!4440))))

(assert (=> start!748390 e!4678098))

(declare-fun e!4678097 () Bool)

(declare-fun inv!95719 (Conc!15902) Bool)

(assert (=> start!748390 (and (inv!95719 t!4440) e!4678097)))

(declare-fun tp_is_empty!53229 () Bool)

(assert (=> start!748390 tp_is_empty!53229))

(declare-fun b!7926626 () Bool)

(declare-fun e!4678101 () Bool)

(declare-fun tp!2358698 () Bool)

(assert (=> b!7926626 (= e!4678101 tp!2358698)))

(declare-fun b!7926627 () Bool)

(declare-fun inv!95720 (IArray!31865) Bool)

(assert (=> b!7926627 (= e!4678097 (and (inv!95720 (xs!19290 t!4440)) e!4678101))))

(declare-fun tp!2358700 () Bool)

(declare-fun b!7926628 () Bool)

(declare-fun tp!2358699 () Bool)

(assert (=> b!7926628 (= e!4678097 (and (inv!95719 (left!56873 t!4440)) tp!2358699 (inv!95719 (right!57203 t!4440)) tp!2358700))))

(declare-fun b!7926629 () Bool)

(declare-fun v!5484 () T!145804)

(declare-fun e!4678100 () Bool)

(declare-fun lt!2692978 () Conc!15902)

(declare-fun list!19413 (Conc!15902) List!74572)

(declare-fun $colon+!315 (List!74572 T!145804) List!74572)

(assert (=> b!7926629 (= e!4678100 (= (list!19413 lt!2692978) ($colon+!315 (list!19413 t!4440) v!5484)))))

(declare-fun b!7926630 () Bool)

(declare-fun e!4678099 () Bool)

(declare-fun e!4678102 () Bool)

(assert (=> b!7926630 (= e!4678099 (not e!4678102))))

(declare-fun res!3145451 () Bool)

(assert (=> b!7926630 (=> (not res!3145451) (not e!4678102))))

(assert (=> b!7926630 (= res!3145451 (isBalanced!4528 lt!2692978))))

(declare-fun lt!2692975 () Conc!15902)

(declare-fun <>!424 (Conc!15902 Conc!15902) Conc!15902)

(assert (=> b!7926630 (= lt!2692978 (<>!424 (left!56873 t!4440) lt!2692975))))

(declare-fun lt!2692976 () List!74572)

(declare-fun lt!2692979 () List!74572)

(declare-fun lt!2692980 () List!74572)

(declare-fun ++!18259 (List!74572 List!74572) List!74572)

(assert (=> b!7926630 (= (++!18259 (++!18259 lt!2692976 lt!2692979) lt!2692980) (++!18259 lt!2692976 (++!18259 lt!2692979 lt!2692980)))))

(declare-datatypes ((Unit!169565 0))(
  ( (Unit!169566) )
))
(declare-fun lt!2692977 () Unit!169565)

(declare-fun lemmaConcatAssociativity!3162 (List!74572 List!74572 List!74572) Unit!169565)

(assert (=> b!7926630 (= lt!2692977 (lemmaConcatAssociativity!3162 lt!2692976 lt!2692979 lt!2692980))))

(assert (=> b!7926630 (= lt!2692980 (Cons!74448 v!5484 Nil!74448))))

(assert (=> b!7926630 (= lt!2692979 (list!19413 (right!57203 t!4440)))))

(assert (=> b!7926630 (= lt!2692976 (list!19413 (left!56873 t!4440)))))

(declare-fun b!7926631 () Bool)

(assert (=> b!7926631 (= e!4678102 e!4678100)))

(declare-fun res!3145453 () Bool)

(assert (=> b!7926631 (=> (not res!3145453) (not e!4678100))))

(declare-fun lt!2692982 () Int)

(declare-fun lt!2692981 () Int)

(assert (=> b!7926631 (= res!3145453 (and (<= lt!2692982 lt!2692981) (<= lt!2692981 (+ 1 lt!2692982))))))

(declare-fun height!2217 (Conc!15902) Int)

(assert (=> b!7926631 (= lt!2692981 (height!2217 lt!2692978))))

(assert (=> b!7926631 (= lt!2692982 (height!2217 t!4440))))

(declare-fun b!7926632 () Bool)

(assert (=> b!7926632 (= e!4678098 e!4678099)))

(declare-fun res!3145452 () Bool)

(assert (=> b!7926632 (=> (not res!3145452) (not e!4678099))))

(assert (=> b!7926632 (= res!3145452 (<= (height!2217 lt!2692975) (+ 1 (height!2217 (left!56873 t!4440)))))))

(declare-fun append!1144 (Conc!15902 T!145804) Conc!15902)

(assert (=> b!7926632 (= lt!2692975 (append!1144 (right!57203 t!4440) v!5484))))

(assert (= (and start!748390 res!3145450) b!7926625))

(assert (= (and b!7926625 res!3145454) b!7926632))

(assert (= (and b!7926632 res!3145452) b!7926630))

(assert (= (and b!7926630 res!3145451) b!7926631))

(assert (= (and b!7926631 res!3145453) b!7926629))

(assert (= (and start!748390 ((_ is Node!15902) t!4440)) b!7926628))

(assert (= b!7926627 b!7926626))

(assert (= (and start!748390 ((_ is Leaf!30234) t!4440)) b!7926627))

(declare-fun m!8307820 () Bool)

(assert (=> b!7926628 m!8307820))

(declare-fun m!8307822 () Bool)

(assert (=> b!7926628 m!8307822))

(declare-fun m!8307824 () Bool)

(assert (=> b!7926632 m!8307824))

(declare-fun m!8307826 () Bool)

(assert (=> b!7926632 m!8307826))

(declare-fun m!8307828 () Bool)

(assert (=> b!7926632 m!8307828))

(declare-fun m!8307830 () Bool)

(assert (=> b!7926631 m!8307830))

(declare-fun m!8307832 () Bool)

(assert (=> b!7926631 m!8307832))

(declare-fun m!8307834 () Bool)

(assert (=> b!7926630 m!8307834))

(declare-fun m!8307836 () Bool)

(assert (=> b!7926630 m!8307836))

(declare-fun m!8307838 () Bool)

(assert (=> b!7926630 m!8307838))

(declare-fun m!8307840 () Bool)

(assert (=> b!7926630 m!8307840))

(declare-fun m!8307842 () Bool)

(assert (=> b!7926630 m!8307842))

(declare-fun m!8307844 () Bool)

(assert (=> b!7926630 m!8307844))

(declare-fun m!8307846 () Bool)

(assert (=> b!7926630 m!8307846))

(declare-fun m!8307848 () Bool)

(assert (=> b!7926630 m!8307848))

(assert (=> b!7926630 m!8307844))

(assert (=> b!7926630 m!8307836))

(declare-fun m!8307850 () Bool)

(assert (=> b!7926630 m!8307850))

(declare-fun m!8307852 () Bool)

(assert (=> b!7926629 m!8307852))

(declare-fun m!8307854 () Bool)

(assert (=> b!7926629 m!8307854))

(assert (=> b!7926629 m!8307854))

(declare-fun m!8307856 () Bool)

(assert (=> b!7926629 m!8307856))

(declare-fun m!8307858 () Bool)

(assert (=> b!7926627 m!8307858))

(declare-fun m!8307860 () Bool)

(assert (=> start!748390 m!8307860))

(declare-fun m!8307862 () Bool)

(assert (=> start!748390 m!8307862))

(check-sat (not b!7926630) tp_is_empty!53229 (not b!7926631) (not b!7926629) (not b!7926626) (not b!7926627) (not b!7926628) (not start!748390) (not b!7926632))
(check-sat)
(get-model)

(declare-fun b!7926663 () Bool)

(declare-fun e!4678114 () Bool)

(declare-fun e!4678113 () Bool)

(assert (=> b!7926663 (= e!4678114 e!4678113)))

(declare-fun res!3145486 () Bool)

(assert (=> b!7926663 (=> (not res!3145486) (not e!4678113))))

(assert (=> b!7926663 (= res!3145486 (<= (- 1) (- (height!2217 (left!56873 t!4440)) (height!2217 (right!57203 t!4440)))))))

(declare-fun b!7926665 () Bool)

(declare-fun res!3145489 () Bool)

(assert (=> b!7926665 (=> (not res!3145489) (not e!4678113))))

(declare-fun isEmpty!42776 (Conc!15902) Bool)

(assert (=> b!7926665 (= res!3145489 (not (isEmpty!42776 (left!56873 t!4440))))))

(declare-fun b!7926666 () Bool)

(declare-fun res!3145490 () Bool)

(assert (=> b!7926666 (=> (not res!3145490) (not e!4678113))))

(assert (=> b!7926666 (= res!3145490 (isBalanced!4528 (left!56873 t!4440)))))

(declare-fun b!7926667 () Bool)

(declare-fun res!3145485 () Bool)

(assert (=> b!7926667 (=> (not res!3145485) (not e!4678113))))

(assert (=> b!7926667 (= res!3145485 (isBalanced!4528 (right!57203 t!4440)))))

(declare-fun b!7926668 () Bool)

(assert (=> b!7926668 (= e!4678113 (not (isEmpty!42776 (right!57203 t!4440))))))

(declare-fun b!7926664 () Bool)

(declare-fun res!3145487 () Bool)

(assert (=> b!7926664 (=> (not res!3145487) (not e!4678113))))

(assert (=> b!7926664 (= res!3145487 (<= (- (height!2217 (left!56873 t!4440)) (height!2217 (right!57203 t!4440))) 1))))

(declare-fun d!2367464 () Bool)

(declare-fun res!3145488 () Bool)

(assert (=> d!2367464 (=> res!3145488 e!4678114)))

(assert (=> d!2367464 (= res!3145488 (not ((_ is Node!15902) t!4440)))))

(assert (=> d!2367464 (= (isBalanced!4528 t!4440) e!4678114)))

(assert (= (and d!2367464 (not res!3145488)) b!7926663))

(assert (= (and b!7926663 res!3145486) b!7926664))

(assert (= (and b!7926664 res!3145487) b!7926666))

(assert (= (and b!7926666 res!3145490) b!7926667))

(assert (= (and b!7926667 res!3145485) b!7926665))

(assert (= (and b!7926665 res!3145489) b!7926668))

(assert (=> b!7926664 m!8307826))

(declare-fun m!8307874 () Bool)

(assert (=> b!7926664 m!8307874))

(declare-fun m!8307876 () Bool)

(assert (=> b!7926667 m!8307876))

(declare-fun m!8307878 () Bool)

(assert (=> b!7926665 m!8307878))

(declare-fun m!8307880 () Bool)

(assert (=> b!7926666 m!8307880))

(declare-fun m!8307882 () Bool)

(assert (=> b!7926668 m!8307882))

(assert (=> b!7926663 m!8307826))

(assert (=> b!7926663 m!8307874))

(assert (=> start!748390 d!2367464))

(declare-fun d!2367470 () Bool)

(declare-fun c!1455350 () Bool)

(assert (=> d!2367470 (= c!1455350 ((_ is Node!15902) t!4440))))

(declare-fun e!4678131 () Bool)

(assert (=> d!2367470 (= (inv!95719 t!4440) e!4678131)))

(declare-fun b!7926696 () Bool)

(declare-fun inv!95723 (Conc!15902) Bool)

(assert (=> b!7926696 (= e!4678131 (inv!95723 t!4440))))

(declare-fun b!7926697 () Bool)

(declare-fun e!4678132 () Bool)

(assert (=> b!7926697 (= e!4678131 e!4678132)))

(declare-fun res!3145496 () Bool)

(assert (=> b!7926697 (= res!3145496 (not ((_ is Leaf!30234) t!4440)))))

(assert (=> b!7926697 (=> res!3145496 e!4678132)))

(declare-fun b!7926698 () Bool)

(declare-fun inv!95724 (Conc!15902) Bool)

(assert (=> b!7926698 (= e!4678132 (inv!95724 t!4440))))

(assert (= (and d!2367470 c!1455350) b!7926696))

(assert (= (and d!2367470 (not c!1455350)) b!7926697))

(assert (= (and b!7926697 (not res!3145496)) b!7926698))

(declare-fun m!8307898 () Bool)

(assert (=> b!7926696 m!8307898))

(declare-fun m!8307900 () Bool)

(assert (=> b!7926698 m!8307900))

(assert (=> start!748390 d!2367470))

(declare-fun d!2367478 () Bool)

(assert (=> d!2367478 (= (height!2217 lt!2692978) (ite ((_ is Empty!15902) lt!2692978) 0 (ite ((_ is Leaf!30234) lt!2692978) 1 (cheight!16113 lt!2692978))))))

(assert (=> b!7926631 d!2367478))

(declare-fun d!2367480 () Bool)

(assert (=> d!2367480 (= (height!2217 t!4440) (ite ((_ is Empty!15902) t!4440) 0 (ite ((_ is Leaf!30234) t!4440) 1 (cheight!16113 t!4440))))))

(assert (=> b!7926631 d!2367480))

(declare-fun d!2367482 () Bool)

(assert (=> d!2367482 (= (height!2217 lt!2692975) (ite ((_ is Empty!15902) lt!2692975) 0 (ite ((_ is Leaf!30234) lt!2692975) 1 (cheight!16113 lt!2692975))))))

(assert (=> b!7926632 d!2367482))

(declare-fun d!2367484 () Bool)

(assert (=> d!2367484 (= (height!2217 (left!56873 t!4440)) (ite ((_ is Empty!15902) (left!56873 t!4440)) 0 (ite ((_ is Leaf!30234) (left!56873 t!4440)) 1 (cheight!16113 (left!56873 t!4440)))))))

(assert (=> b!7926632 d!2367484))

(declare-fun b!7926867 () Bool)

(declare-fun e!4678214 () Conc!15902)

(declare-fun append!1146 (IArray!31865 T!145804) IArray!31865)

(assert (=> b!7926867 (= e!4678214 (Leaf!30234 (append!1146 (xs!19290 (right!57203 t!4440)) v!5484) (+ (csize!32035 (right!57203 t!4440)) 1)))))

(declare-fun lt!2693088 () List!74572)

(declare-fun list!19415 (IArray!31865) List!74572)

(assert (=> b!7926867 (= lt!2693088 ($colon+!315 (list!19415 (xs!19290 (right!57203 t!4440))) v!5484))))

(declare-fun b!7926868 () Bool)

(declare-fun res!3145544 () Bool)

(declare-fun e!4678217 () Bool)

(assert (=> b!7926868 (=> (not res!3145544) (not e!4678217))))

(declare-fun lt!2693102 () Conc!15902)

(assert (=> b!7926868 (= res!3145544 (<= (height!2217 (right!57203 t!4440)) (height!2217 lt!2693102)))))

(declare-fun bm!735178 () Bool)

(declare-fun lt!2693099 () List!74572)

(declare-fun lt!2693097 () List!74572)

(declare-fun c!1455404 () Bool)

(declare-fun lt!2693092 () List!74572)

(declare-fun call!735184 () List!74572)

(declare-fun lt!2693103 () List!74572)

(assert (=> bm!735178 (= call!735184 (++!18259 (ite c!1455404 lt!2693097 lt!2693092) (ite c!1455404 lt!2693099 lt!2693103)))))

(declare-fun b!7926869 () Bool)

(declare-fun call!735187 () Conc!15902)

(assert (=> b!7926869 (= e!4678214 call!735187)))

(declare-fun bm!735179 () Bool)

(declare-fun c!1455402 () Bool)

(declare-fun c!1455405 () Bool)

(assert (=> bm!735179 (= c!1455402 c!1455405)))

(declare-fun call!735183 () Conc!15902)

(declare-fun e!4678215 () Conc!15902)

(assert (=> bm!735179 (= call!735187 (<>!424 (ite c!1455405 call!735183 (right!57203 t!4440)) e!4678215))))

(declare-fun lt!2693100 () Conc!15902)

(declare-fun bm!735180 () Bool)

(declare-fun call!735192 () List!74572)

(assert (=> bm!735180 (= call!735192 (list!19413 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))))

(declare-fun b!7926871 () Bool)

(assert (=> b!7926871 (= e!4678215 (right!57203 lt!2693100))))

(declare-fun bm!735181 () Bool)

(declare-fun call!735189 () List!74572)

(assert (=> bm!735181 (= call!735189 (list!19413 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))))

(declare-fun call!735191 () List!74572)

(declare-fun bm!735182 () Bool)

(declare-fun lt!2693091 () List!74572)

(declare-fun lt!2693093 () List!74572)

(declare-fun lt!2693095 () List!74572)

(assert (=> bm!735182 (= call!735191 (++!18259 (ite c!1455404 lt!2693099 lt!2693091) (ite c!1455404 lt!2693093 lt!2693095)))))

(declare-fun bm!735183 () Bool)

(declare-fun lt!2693089 () List!74572)

(declare-fun call!735188 () List!74572)

(assert (=> bm!735183 (= call!735188 (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 call!735191 lt!2693092)))))

(declare-fun b!7926872 () Bool)

(assert (=> b!7926872 (= e!4678217 (= (list!19413 lt!2693102) ($colon+!315 (list!19413 (right!57203 t!4440)) v!5484)))))

(declare-fun call!735186 () List!74572)

(declare-fun bm!735184 () Bool)

(declare-fun lt!2693104 () List!74572)

(assert (=> bm!735184 (= call!735186 (++!18259 (ite c!1455404 call!735184 lt!2693095) (ite c!1455404 lt!2693093 lt!2693104)))))

(declare-fun bm!735185 () Bool)

(assert (=> bm!735185 (= call!735183 (<>!424 (left!56873 (right!57203 t!4440)) (ite c!1455404 lt!2693100 (left!56873 lt!2693100))))))

(declare-fun b!7926873 () Bool)

(declare-fun c!1455403 () Bool)

(assert (=> b!7926873 (= c!1455403 (< (csize!32035 (right!57203 t!4440)) 512))))

(declare-fun e!4678218 () Conc!15902)

(assert (=> b!7926873 (= e!4678218 e!4678214)))

(declare-fun b!7926874 () Bool)

(declare-fun e!4678213 () Conc!15902)

(assert (=> b!7926874 (= e!4678213 e!4678218)))

(assert (=> b!7926874 (= c!1455405 ((_ is Node!15902) (right!57203 t!4440)))))

(declare-fun bm!735186 () Bool)

(declare-fun call!735185 () IArray!31865)

(declare-fun fill!279 (Int T!145804) IArray!31865)

(assert (=> bm!735186 (= call!735185 (fill!279 1 v!5484))))

(declare-fun b!7926875 () Bool)

(declare-fun e!4678216 () Conc!15902)

(assert (=> b!7926875 (= e!4678216 call!735187)))

(assert (=> b!7926875 (= lt!2693089 call!735189)))

(assert (=> b!7926875 (= lt!2693092 (list!19413 (left!56873 lt!2693100)))))

(assert (=> b!7926875 (= lt!2693103 call!735192)))

(declare-fun lt!2693105 () Unit!169565)

(declare-fun call!735190 () Unit!169565)

(assert (=> b!7926875 (= lt!2693105 call!735190)))

(assert (=> b!7926875 (= (++!18259 call!735188 lt!2693103) (++!18259 lt!2693089 call!735184))))

(declare-fun lt!2693090 () Unit!169565)

(assert (=> b!7926875 (= lt!2693090 lt!2693105)))

(assert (=> b!7926875 (= lt!2693091 call!735189)))

(assert (=> b!7926875 (= lt!2693095 (list!19413 (right!57203 (right!57203 t!4440))))))

(assert (=> b!7926875 (= lt!2693104 (Cons!74448 v!5484 Nil!74448))))

(declare-fun lt!2693096 () Unit!169565)

(assert (=> b!7926875 (= lt!2693096 (lemmaConcatAssociativity!3162 lt!2693091 lt!2693095 lt!2693104))))

(assert (=> b!7926875 (= (++!18259 call!735191 lt!2693104) (++!18259 lt!2693091 call!735186))))

(declare-fun lt!2693098 () Unit!169565)

(assert (=> b!7926875 (= lt!2693098 lt!2693096)))

(declare-fun b!7926876 () Bool)

(assert (=> b!7926876 (= c!1455404 (<= (height!2217 lt!2693100) (+ (height!2217 (left!56873 (right!57203 t!4440))) 1)))))

(assert (=> b!7926876 (= lt!2693100 (append!1144 (right!57203 (right!57203 t!4440)) v!5484))))

(assert (=> b!7926876 (= e!4678218 e!4678216)))

(declare-fun b!7926877 () Bool)

(assert (=> b!7926877 (= e!4678213 (Leaf!30234 call!735185 1))))

(declare-fun bm!735187 () Bool)

(assert (=> bm!735187 (= call!735190 (lemmaConcatAssociativity!3162 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103)))))

(declare-fun b!7926870 () Bool)

(assert (=> b!7926870 (= e!4678216 call!735183)))

(assert (=> b!7926870 (= lt!2693097 call!735192)))

(assert (=> b!7926870 (= lt!2693099 call!735189)))

(assert (=> b!7926870 (= lt!2693093 (Cons!74448 v!5484 Nil!74448))))

(declare-fun lt!2693094 () Unit!169565)

(assert (=> b!7926870 (= lt!2693094 call!735190)))

(assert (=> b!7926870 (= call!735186 call!735188)))

(declare-fun lt!2693101 () Unit!169565)

(assert (=> b!7926870 (= lt!2693101 lt!2693094)))

(declare-fun d!2367486 () Bool)

(assert (=> d!2367486 e!4678217))

(declare-fun res!3145546 () Bool)

(assert (=> d!2367486 (=> (not res!3145546) (not e!4678217))))

(assert (=> d!2367486 (= res!3145546 (isBalanced!4528 lt!2693102))))

(assert (=> d!2367486 (= lt!2693102 e!4678213)))

(declare-fun c!1455406 () Bool)

(assert (=> d!2367486 (= c!1455406 ((_ is Empty!15902) (right!57203 t!4440)))))

(assert (=> d!2367486 (isBalanced!4528 (right!57203 t!4440))))

(assert (=> d!2367486 (= (append!1144 (right!57203 t!4440) v!5484) lt!2693102)))

(declare-fun b!7926878 () Bool)

(assert (=> b!7926878 (= e!4678215 (Leaf!30234 call!735185 1))))

(declare-fun b!7926879 () Bool)

(declare-fun res!3145545 () Bool)

(assert (=> b!7926879 (=> (not res!3145545) (not e!4678217))))

(assert (=> b!7926879 (= res!3145545 (<= (height!2217 lt!2693102) (+ (height!2217 (right!57203 t!4440)) 1)))))

(assert (= (and d!2367486 c!1455406) b!7926877))

(assert (= (and d!2367486 (not c!1455406)) b!7926874))

(assert (= (and b!7926874 c!1455405) b!7926876))

(assert (= (and b!7926874 (not c!1455405)) b!7926873))

(assert (= (and b!7926876 c!1455404) b!7926870))

(assert (= (and b!7926876 (not c!1455404)) b!7926875))

(assert (= (or b!7926870 b!7926875) bm!735187))

(assert (= (or b!7926870 b!7926875) bm!735182))

(assert (= (or b!7926870 b!7926875) bm!735181))

(assert (= (or b!7926870 b!7926875) bm!735178))

(assert (= (or b!7926870 b!7926875) bm!735180))

(assert (= (or b!7926870 b!7926875) bm!735185))

(assert (= (or b!7926870 b!7926875) bm!735184))

(assert (= (or b!7926870 b!7926875) bm!735183))

(assert (= (and b!7926873 c!1455403) b!7926867))

(assert (= (and b!7926873 (not c!1455403)) b!7926869))

(assert (= (or b!7926875 b!7926869) bm!735179))

(assert (= (and bm!735179 c!1455402) b!7926871))

(assert (= (and bm!735179 (not c!1455402)) b!7926878))

(assert (= (or b!7926877 b!7926878) bm!735186))

(assert (= (and d!2367486 res!3145546) b!7926868))

(assert (= (and b!7926868 res!3145544) b!7926879))

(assert (= (and b!7926879 res!3145545) b!7926872))

(declare-fun m!8308078 () Bool)

(assert (=> bm!735184 m!8308078))

(declare-fun m!8308080 () Bool)

(assert (=> bm!735183 m!8308080))

(declare-fun m!8308082 () Bool)

(assert (=> bm!735181 m!8308082))

(declare-fun m!8308084 () Bool)

(assert (=> b!7926867 m!8308084))

(declare-fun m!8308086 () Bool)

(assert (=> b!7926867 m!8308086))

(assert (=> b!7926867 m!8308086))

(declare-fun m!8308088 () Bool)

(assert (=> b!7926867 m!8308088))

(declare-fun m!8308090 () Bool)

(assert (=> d!2367486 m!8308090))

(assert (=> d!2367486 m!8307876))

(declare-fun m!8308092 () Bool)

(assert (=> b!7926875 m!8308092))

(declare-fun m!8308094 () Bool)

(assert (=> b!7926875 m!8308094))

(declare-fun m!8308096 () Bool)

(assert (=> b!7926875 m!8308096))

(declare-fun m!8308098 () Bool)

(assert (=> b!7926875 m!8308098))

(declare-fun m!8308100 () Bool)

(assert (=> b!7926875 m!8308100))

(declare-fun m!8308102 () Bool)

(assert (=> b!7926875 m!8308102))

(declare-fun m!8308104 () Bool)

(assert (=> b!7926875 m!8308104))

(declare-fun m!8308106 () Bool)

(assert (=> bm!735185 m!8308106))

(declare-fun m!8308108 () Bool)

(assert (=> bm!735186 m!8308108))

(declare-fun m!8308110 () Bool)

(assert (=> b!7926872 m!8308110))

(assert (=> b!7926872 m!8307842))

(assert (=> b!7926872 m!8307842))

(declare-fun m!8308112 () Bool)

(assert (=> b!7926872 m!8308112))

(declare-fun m!8308114 () Bool)

(assert (=> bm!735180 m!8308114))

(declare-fun m!8308116 () Bool)

(assert (=> bm!735179 m!8308116))

(declare-fun m!8308118 () Bool)

(assert (=> bm!735178 m!8308118))

(declare-fun m!8308120 () Bool)

(assert (=> b!7926876 m!8308120))

(declare-fun m!8308122 () Bool)

(assert (=> b!7926876 m!8308122))

(declare-fun m!8308124 () Bool)

(assert (=> b!7926876 m!8308124))

(declare-fun m!8308126 () Bool)

(assert (=> bm!735187 m!8308126))

(declare-fun m!8308128 () Bool)

(assert (=> bm!735182 m!8308128))

(declare-fun m!8308130 () Bool)

(assert (=> b!7926879 m!8308130))

(assert (=> b!7926879 m!8307874))

(assert (=> b!7926868 m!8307874))

(assert (=> b!7926868 m!8308130))

(assert (=> b!7926632 d!2367486))

(declare-fun d!2367522 () Bool)

(declare-fun size!43248 (List!74572) Int)

(assert (=> d!2367522 (= (inv!95720 (xs!19290 t!4440)) (<= (size!43248 (innerList!15990 (xs!19290 t!4440))) 2147483647))))

(declare-fun bs!1968835 () Bool)

(assert (= bs!1968835 d!2367522))

(declare-fun m!8308132 () Bool)

(assert (=> bs!1968835 m!8308132))

(assert (=> b!7926627 d!2367522))

(declare-fun d!2367524 () Bool)

(declare-fun c!1455407 () Bool)

(assert (=> d!2367524 (= c!1455407 ((_ is Node!15902) (left!56873 t!4440)))))

(declare-fun e!4678219 () Bool)

(assert (=> d!2367524 (= (inv!95719 (left!56873 t!4440)) e!4678219)))

(declare-fun b!7926880 () Bool)

(assert (=> b!7926880 (= e!4678219 (inv!95723 (left!56873 t!4440)))))

(declare-fun b!7926881 () Bool)

(declare-fun e!4678220 () Bool)

(assert (=> b!7926881 (= e!4678219 e!4678220)))

(declare-fun res!3145547 () Bool)

(assert (=> b!7926881 (= res!3145547 (not ((_ is Leaf!30234) (left!56873 t!4440))))))

(assert (=> b!7926881 (=> res!3145547 e!4678220)))

(declare-fun b!7926882 () Bool)

(assert (=> b!7926882 (= e!4678220 (inv!95724 (left!56873 t!4440)))))

(assert (= (and d!2367524 c!1455407) b!7926880))

(assert (= (and d!2367524 (not c!1455407)) b!7926881))

(assert (= (and b!7926881 (not res!3145547)) b!7926882))

(declare-fun m!8308134 () Bool)

(assert (=> b!7926880 m!8308134))

(declare-fun m!8308136 () Bool)

(assert (=> b!7926882 m!8308136))

(assert (=> b!7926628 d!2367524))

(declare-fun d!2367526 () Bool)

(declare-fun c!1455408 () Bool)

(assert (=> d!2367526 (= c!1455408 ((_ is Node!15902) (right!57203 t!4440)))))

(declare-fun e!4678221 () Bool)

(assert (=> d!2367526 (= (inv!95719 (right!57203 t!4440)) e!4678221)))

(declare-fun b!7926883 () Bool)

(assert (=> b!7926883 (= e!4678221 (inv!95723 (right!57203 t!4440)))))

(declare-fun b!7926884 () Bool)

(declare-fun e!4678222 () Bool)

(assert (=> b!7926884 (= e!4678221 e!4678222)))

(declare-fun res!3145548 () Bool)

(assert (=> b!7926884 (= res!3145548 (not ((_ is Leaf!30234) (right!57203 t!4440))))))

(assert (=> b!7926884 (=> res!3145548 e!4678222)))

(declare-fun b!7926885 () Bool)

(assert (=> b!7926885 (= e!4678222 (inv!95724 (right!57203 t!4440)))))

(assert (= (and d!2367526 c!1455408) b!7926883))

(assert (= (and d!2367526 (not c!1455408)) b!7926884))

(assert (= (and b!7926884 (not res!3145548)) b!7926885))

(declare-fun m!8308138 () Bool)

(assert (=> b!7926883 m!8308138))

(declare-fun m!8308140 () Bool)

(assert (=> b!7926885 m!8308140))

(assert (=> b!7926628 d!2367526))

(declare-fun b!7926897 () Bool)

(declare-fun e!4678228 () List!74572)

(assert (=> b!7926897 (= e!4678228 (++!18259 (list!19413 (left!56873 lt!2692978)) (list!19413 (right!57203 lt!2692978))))))

(declare-fun b!7926895 () Bool)

(declare-fun e!4678227 () List!74572)

(assert (=> b!7926895 (= e!4678227 e!4678228)))

(declare-fun c!1455414 () Bool)

(assert (=> b!7926895 (= c!1455414 ((_ is Leaf!30234) lt!2692978))))

(declare-fun b!7926896 () Bool)

(assert (=> b!7926896 (= e!4678228 (list!19415 (xs!19290 lt!2692978)))))

(declare-fun b!7926894 () Bool)

(assert (=> b!7926894 (= e!4678227 Nil!74448)))

(declare-fun d!2367528 () Bool)

(declare-fun c!1455413 () Bool)

(assert (=> d!2367528 (= c!1455413 ((_ is Empty!15902) lt!2692978))))

(assert (=> d!2367528 (= (list!19413 lt!2692978) e!4678227)))

(assert (= (and d!2367528 c!1455413) b!7926894))

(assert (= (and d!2367528 (not c!1455413)) b!7926895))

(assert (= (and b!7926895 c!1455414) b!7926896))

(assert (= (and b!7926895 (not c!1455414)) b!7926897))

(declare-fun m!8308142 () Bool)

(assert (=> b!7926897 m!8308142))

(declare-fun m!8308144 () Bool)

(assert (=> b!7926897 m!8308144))

(assert (=> b!7926897 m!8308142))

(assert (=> b!7926897 m!8308144))

(declare-fun m!8308146 () Bool)

(assert (=> b!7926897 m!8308146))

(declare-fun m!8308148 () Bool)

(assert (=> b!7926896 m!8308148))

(assert (=> b!7926629 d!2367528))

(declare-fun d!2367530 () Bool)

(declare-fun e!4678237 () Bool)

(assert (=> d!2367530 e!4678237))

(declare-fun res!3145559 () Bool)

(assert (=> d!2367530 (=> (not res!3145559) (not e!4678237))))

(declare-fun lt!2693108 () List!74572)

(assert (=> d!2367530 (= res!3145559 ((_ is Cons!74448) lt!2693108))))

(declare-fun e!4678236 () List!74572)

(assert (=> d!2367530 (= lt!2693108 e!4678236)))

(declare-fun c!1455419 () Bool)

(assert (=> d!2367530 (= c!1455419 ((_ is Nil!74448) (list!19413 t!4440)))))

(assert (=> d!2367530 (= ($colon+!315 (list!19413 t!4440) v!5484) lt!2693108)))

(declare-fun bm!735192 () Bool)

(declare-fun call!735197 () (_ BitVec 32))

(declare-fun isize!119 (List!74572) (_ BitVec 32))

(assert (=> bm!735192 (= call!735197 (isize!119 lt!2693108))))

(declare-fun bm!735193 () Bool)

(declare-fun call!735198 () (_ BitVec 32))

(assert (=> bm!735193 (= call!735198 (isize!119 (list!19413 t!4440)))))

(declare-fun b!7926914 () Bool)

(declare-fun e!4678235 () Bool)

(assert (=> b!7926914 (= e!4678235 (= call!735197 (bvadd call!735198 #b00000000000000000000000000000001)))))

(declare-fun b!7926915 () Bool)

(assert (=> b!7926915 (= e!4678236 (Cons!74448 (h!80896 (list!19413 t!4440)) ($colon+!315 (t!390189 (list!19413 t!4440)) v!5484)))))

(declare-fun b!7926916 () Bool)

(assert (=> b!7926916 (= e!4678235 (= call!735197 call!735198))))

(declare-fun b!7926917 () Bool)

(declare-fun res!3145560 () Bool)

(assert (=> b!7926917 (=> (not res!3145560) (not e!4678237))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15783 (List!74572) (InoxSet T!145804))

(assert (=> b!7926917 (= res!3145560 (= (content!15783 lt!2693108) ((_ map or) (content!15783 (list!19413 t!4440)) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun b!7926918 () Bool)

(declare-fun res!3145557 () Bool)

(assert (=> b!7926918 (=> (not res!3145557) (not e!4678237))))

(assert (=> b!7926918 (= res!3145557 e!4678235)))

(declare-fun c!1455420 () Bool)

(assert (=> b!7926918 (= c!1455420 (bvslt (isize!119 (list!19413 t!4440)) #b01111111111111111111111111111111))))

(declare-fun b!7926919 () Bool)

(assert (=> b!7926919 (= e!4678236 (Cons!74448 v!5484 (list!19413 t!4440)))))

(declare-fun b!7926920 () Bool)

(declare-fun res!3145558 () Bool)

(assert (=> b!7926920 (=> (not res!3145558) (not e!4678237))))

(assert (=> b!7926920 (= res!3145558 (= (size!43248 lt!2693108) (+ (size!43248 (list!19413 t!4440)) 1)))))

(declare-fun b!7926921 () Bool)

(assert (=> b!7926921 (= e!4678237 (= lt!2693108 (++!18259 (list!19413 t!4440) (Cons!74448 v!5484 Nil!74448))))))

(assert (= (and d!2367530 c!1455419) b!7926919))

(assert (= (and d!2367530 (not c!1455419)) b!7926915))

(assert (= (and d!2367530 res!3145559) b!7926920))

(assert (= (and b!7926920 res!3145558) b!7926918))

(assert (= (and b!7926918 c!1455420) b!7926914))

(assert (= (and b!7926918 (not c!1455420)) b!7926916))

(assert (= (or b!7926914 b!7926916) bm!735193))

(assert (= (or b!7926914 b!7926916) bm!735192))

(assert (= (and b!7926918 res!3145557) b!7926917))

(assert (= (and b!7926917 res!3145560) b!7926921))

(declare-fun m!8308150 () Bool)

(assert (=> bm!735192 m!8308150))

(declare-fun m!8308152 () Bool)

(assert (=> b!7926917 m!8308152))

(assert (=> b!7926917 m!8307854))

(declare-fun m!8308154 () Bool)

(assert (=> b!7926917 m!8308154))

(declare-fun m!8308156 () Bool)

(assert (=> b!7926917 m!8308156))

(assert (=> bm!735193 m!8307854))

(declare-fun m!8308158 () Bool)

(assert (=> bm!735193 m!8308158))

(assert (=> b!7926918 m!8307854))

(assert (=> b!7926918 m!8308158))

(assert (=> b!7926921 m!8307854))

(declare-fun m!8308160 () Bool)

(assert (=> b!7926921 m!8308160))

(declare-fun m!8308162 () Bool)

(assert (=> b!7926915 m!8308162))

(declare-fun m!8308164 () Bool)

(assert (=> b!7926920 m!8308164))

(assert (=> b!7926920 m!8307854))

(declare-fun m!8308166 () Bool)

(assert (=> b!7926920 m!8308166))

(assert (=> b!7926629 d!2367530))

(declare-fun b!7926925 () Bool)

(declare-fun e!4678239 () List!74572)

(assert (=> b!7926925 (= e!4678239 (++!18259 (list!19413 (left!56873 t!4440)) (list!19413 (right!57203 t!4440))))))

(declare-fun b!7926923 () Bool)

(declare-fun e!4678238 () List!74572)

(assert (=> b!7926923 (= e!4678238 e!4678239)))

(declare-fun c!1455422 () Bool)

(assert (=> b!7926923 (= c!1455422 ((_ is Leaf!30234) t!4440))))

(declare-fun b!7926924 () Bool)

(assert (=> b!7926924 (= e!4678239 (list!19415 (xs!19290 t!4440)))))

(declare-fun b!7926922 () Bool)

(assert (=> b!7926922 (= e!4678238 Nil!74448)))

(declare-fun d!2367532 () Bool)

(declare-fun c!1455421 () Bool)

(assert (=> d!2367532 (= c!1455421 ((_ is Empty!15902) t!4440))))

(assert (=> d!2367532 (= (list!19413 t!4440) e!4678238)))

(assert (= (and d!2367532 c!1455421) b!7926922))

(assert (= (and d!2367532 (not c!1455421)) b!7926923))

(assert (= (and b!7926923 c!1455422) b!7926924))

(assert (= (and b!7926923 (not c!1455422)) b!7926925))

(assert (=> b!7926925 m!8307838))

(assert (=> b!7926925 m!8307842))

(assert (=> b!7926925 m!8307838))

(assert (=> b!7926925 m!8307842))

(declare-fun m!8308168 () Bool)

(assert (=> b!7926925 m!8308168))

(declare-fun m!8308170 () Bool)

(assert (=> b!7926924 m!8308170))

(assert (=> b!7926629 d!2367532))

(declare-fun d!2367534 () Bool)

(assert (=> d!2367534 (= (++!18259 (++!18259 lt!2692976 lt!2692979) lt!2692980) (++!18259 lt!2692976 (++!18259 lt!2692979 lt!2692980)))))

(declare-fun lt!2693111 () Unit!169565)

(declare-fun choose!59826 (List!74572 List!74572 List!74572) Unit!169565)

(assert (=> d!2367534 (= lt!2693111 (choose!59826 lt!2692976 lt!2692979 lt!2692980))))

(assert (=> d!2367534 (= (lemmaConcatAssociativity!3162 lt!2692976 lt!2692979 lt!2692980) lt!2693111)))

(declare-fun bs!1968836 () Bool)

(assert (= bs!1968836 d!2367534))

(assert (=> bs!1968836 m!8307836))

(assert (=> bs!1968836 m!8307850))

(assert (=> bs!1968836 m!8307844))

(assert (=> bs!1968836 m!8307836))

(assert (=> bs!1968836 m!8307844))

(assert (=> bs!1968836 m!8307846))

(declare-fun m!8308172 () Bool)

(assert (=> bs!1968836 m!8308172))

(assert (=> b!7926630 d!2367534))

(declare-fun d!2367536 () Bool)

(declare-fun lt!2693114 () Conc!15902)

(assert (=> d!2367536 (= (list!19413 lt!2693114) (++!18259 (list!19413 (left!56873 t!4440)) (list!19413 lt!2692975)))))

(declare-fun e!4678245 () Conc!15902)

(assert (=> d!2367536 (= lt!2693114 e!4678245)))

(declare-fun c!1455427 () Bool)

(assert (=> d!2367536 (= c!1455427 (= (left!56873 t!4440) Empty!15902))))

(assert (=> d!2367536 (= (<>!424 (left!56873 t!4440) lt!2692975) lt!2693114)))

(declare-fun b!7926936 () Bool)

(declare-fun e!4678244 () Conc!15902)

(assert (=> b!7926936 (= e!4678244 (left!56873 t!4440))))

(declare-fun b!7926935 () Bool)

(assert (=> b!7926935 (= e!4678245 e!4678244)))

(declare-fun c!1455428 () Bool)

(assert (=> b!7926935 (= c!1455428 (= lt!2692975 Empty!15902))))

(declare-fun b!7926937 () Bool)

(declare-fun size!43249 (Conc!15902) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7926937 (= e!4678244 (Node!15902 (left!56873 t!4440) lt!2692975 (+ (size!43249 (left!56873 t!4440)) (size!43249 lt!2692975)) (+ (max!0 (height!2217 (left!56873 t!4440)) (height!2217 lt!2692975)) 1)))))

(declare-fun b!7926934 () Bool)

(assert (=> b!7926934 (= e!4678245 lt!2692975)))

(assert (= (and d!2367536 c!1455427) b!7926934))

(assert (= (and d!2367536 (not c!1455427)) b!7926935))

(assert (= (and b!7926935 c!1455428) b!7926936))

(assert (= (and b!7926935 (not c!1455428)) b!7926937))

(declare-fun m!8308174 () Bool)

(assert (=> d!2367536 m!8308174))

(assert (=> d!2367536 m!8307838))

(declare-fun m!8308176 () Bool)

(assert (=> d!2367536 m!8308176))

(assert (=> d!2367536 m!8307838))

(assert (=> d!2367536 m!8308176))

(declare-fun m!8308178 () Bool)

(assert (=> d!2367536 m!8308178))

(assert (=> b!7926937 m!8307826))

(assert (=> b!7926937 m!8307824))

(declare-fun m!8308180 () Bool)

(assert (=> b!7926937 m!8308180))

(declare-fun m!8308182 () Bool)

(assert (=> b!7926937 m!8308182))

(declare-fun m!8308184 () Bool)

(assert (=> b!7926937 m!8308184))

(assert (=> b!7926937 m!8307824))

(assert (=> b!7926937 m!8307826))

(assert (=> b!7926630 d!2367536))

(declare-fun b!7926946 () Bool)

(declare-fun e!4678250 () List!74572)

(assert (=> b!7926946 (= e!4678250 lt!2692980)))

(declare-fun e!4678251 () Bool)

(declare-fun lt!2693117 () List!74572)

(declare-fun b!7926949 () Bool)

(assert (=> b!7926949 (= e!4678251 (or (not (= lt!2692980 Nil!74448)) (= lt!2693117 (++!18259 lt!2692976 lt!2692979))))))

(declare-fun b!7926947 () Bool)

(assert (=> b!7926947 (= e!4678250 (Cons!74448 (h!80896 (++!18259 lt!2692976 lt!2692979)) (++!18259 (t!390189 (++!18259 lt!2692976 lt!2692979)) lt!2692980)))))

(declare-fun b!7926948 () Bool)

(declare-fun res!3145566 () Bool)

(assert (=> b!7926948 (=> (not res!3145566) (not e!4678251))))

(assert (=> b!7926948 (= res!3145566 (= (size!43248 lt!2693117) (+ (size!43248 (++!18259 lt!2692976 lt!2692979)) (size!43248 lt!2692980))))))

(declare-fun d!2367538 () Bool)

(assert (=> d!2367538 e!4678251))

(declare-fun res!3145565 () Bool)

(assert (=> d!2367538 (=> (not res!3145565) (not e!4678251))))

(assert (=> d!2367538 (= res!3145565 (= (content!15783 lt!2693117) ((_ map or) (content!15783 (++!18259 lt!2692976 lt!2692979)) (content!15783 lt!2692980))))))

(assert (=> d!2367538 (= lt!2693117 e!4678250)))

(declare-fun c!1455431 () Bool)

(assert (=> d!2367538 (= c!1455431 ((_ is Nil!74448) (++!18259 lt!2692976 lt!2692979)))))

(assert (=> d!2367538 (= (++!18259 (++!18259 lt!2692976 lt!2692979) lt!2692980) lt!2693117)))

(assert (= (and d!2367538 c!1455431) b!7926946))

(assert (= (and d!2367538 (not c!1455431)) b!7926947))

(assert (= (and d!2367538 res!3145565) b!7926948))

(assert (= (and b!7926948 res!3145566) b!7926949))

(declare-fun m!8308186 () Bool)

(assert (=> b!7926947 m!8308186))

(declare-fun m!8308188 () Bool)

(assert (=> b!7926948 m!8308188))

(assert (=> b!7926948 m!8307844))

(declare-fun m!8308190 () Bool)

(assert (=> b!7926948 m!8308190))

(declare-fun m!8308192 () Bool)

(assert (=> b!7926948 m!8308192))

(declare-fun m!8308194 () Bool)

(assert (=> d!2367538 m!8308194))

(assert (=> d!2367538 m!8307844))

(declare-fun m!8308196 () Bool)

(assert (=> d!2367538 m!8308196))

(declare-fun m!8308198 () Bool)

(assert (=> d!2367538 m!8308198))

(assert (=> b!7926630 d!2367538))

(declare-fun b!7926950 () Bool)

(declare-fun e!4678253 () Bool)

(declare-fun e!4678252 () Bool)

(assert (=> b!7926950 (= e!4678253 e!4678252)))

(declare-fun res!3145568 () Bool)

(assert (=> b!7926950 (=> (not res!3145568) (not e!4678252))))

(assert (=> b!7926950 (= res!3145568 (<= (- 1) (- (height!2217 (left!56873 lt!2692978)) (height!2217 (right!57203 lt!2692978)))))))

(declare-fun b!7926952 () Bool)

(declare-fun res!3145571 () Bool)

(assert (=> b!7926952 (=> (not res!3145571) (not e!4678252))))

(assert (=> b!7926952 (= res!3145571 (not (isEmpty!42776 (left!56873 lt!2692978))))))

(declare-fun b!7926953 () Bool)

(declare-fun res!3145572 () Bool)

(assert (=> b!7926953 (=> (not res!3145572) (not e!4678252))))

(assert (=> b!7926953 (= res!3145572 (isBalanced!4528 (left!56873 lt!2692978)))))

(declare-fun b!7926954 () Bool)

(declare-fun res!3145567 () Bool)

(assert (=> b!7926954 (=> (not res!3145567) (not e!4678252))))

(assert (=> b!7926954 (= res!3145567 (isBalanced!4528 (right!57203 lt!2692978)))))

(declare-fun b!7926955 () Bool)

(assert (=> b!7926955 (= e!4678252 (not (isEmpty!42776 (right!57203 lt!2692978))))))

(declare-fun b!7926951 () Bool)

(declare-fun res!3145569 () Bool)

(assert (=> b!7926951 (=> (not res!3145569) (not e!4678252))))

(assert (=> b!7926951 (= res!3145569 (<= (- (height!2217 (left!56873 lt!2692978)) (height!2217 (right!57203 lt!2692978))) 1))))

(declare-fun d!2367540 () Bool)

(declare-fun res!3145570 () Bool)

(assert (=> d!2367540 (=> res!3145570 e!4678253)))

(assert (=> d!2367540 (= res!3145570 (not ((_ is Node!15902) lt!2692978)))))

(assert (=> d!2367540 (= (isBalanced!4528 lt!2692978) e!4678253)))

(assert (= (and d!2367540 (not res!3145570)) b!7926950))

(assert (= (and b!7926950 res!3145568) b!7926951))

(assert (= (and b!7926951 res!3145569) b!7926953))

(assert (= (and b!7926953 res!3145572) b!7926954))

(assert (= (and b!7926954 res!3145567) b!7926952))

(assert (= (and b!7926952 res!3145571) b!7926955))

(declare-fun m!8308200 () Bool)

(assert (=> b!7926951 m!8308200))

(declare-fun m!8308202 () Bool)

(assert (=> b!7926951 m!8308202))

(declare-fun m!8308204 () Bool)

(assert (=> b!7926954 m!8308204))

(declare-fun m!8308206 () Bool)

(assert (=> b!7926952 m!8308206))

(declare-fun m!8308208 () Bool)

(assert (=> b!7926953 m!8308208))

(declare-fun m!8308210 () Bool)

(assert (=> b!7926955 m!8308210))

(assert (=> b!7926950 m!8308200))

(assert (=> b!7926950 m!8308202))

(assert (=> b!7926630 d!2367540))

(declare-fun b!7926959 () Bool)

(declare-fun e!4678255 () List!74572)

(assert (=> b!7926959 (= e!4678255 (++!18259 (list!19413 (left!56873 (left!56873 t!4440))) (list!19413 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7926957 () Bool)

(declare-fun e!4678254 () List!74572)

(assert (=> b!7926957 (= e!4678254 e!4678255)))

(declare-fun c!1455433 () Bool)

(assert (=> b!7926957 (= c!1455433 ((_ is Leaf!30234) (left!56873 t!4440)))))

(declare-fun b!7926958 () Bool)

(assert (=> b!7926958 (= e!4678255 (list!19415 (xs!19290 (left!56873 t!4440))))))

(declare-fun b!7926956 () Bool)

(assert (=> b!7926956 (= e!4678254 Nil!74448)))

(declare-fun d!2367542 () Bool)

(declare-fun c!1455432 () Bool)

(assert (=> d!2367542 (= c!1455432 ((_ is Empty!15902) (left!56873 t!4440)))))

(assert (=> d!2367542 (= (list!19413 (left!56873 t!4440)) e!4678254)))

(assert (= (and d!2367542 c!1455432) b!7926956))

(assert (= (and d!2367542 (not c!1455432)) b!7926957))

(assert (= (and b!7926957 c!1455433) b!7926958))

(assert (= (and b!7926957 (not c!1455433)) b!7926959))

(declare-fun m!8308212 () Bool)

(assert (=> b!7926959 m!8308212))

(declare-fun m!8308214 () Bool)

(assert (=> b!7926959 m!8308214))

(assert (=> b!7926959 m!8308212))

(assert (=> b!7926959 m!8308214))

(declare-fun m!8308216 () Bool)

(assert (=> b!7926959 m!8308216))

(declare-fun m!8308218 () Bool)

(assert (=> b!7926958 m!8308218))

(assert (=> b!7926630 d!2367542))

(declare-fun b!7926960 () Bool)

(declare-fun e!4678256 () List!74572)

(assert (=> b!7926960 (= e!4678256 lt!2692979)))

(declare-fun e!4678257 () Bool)

(declare-fun b!7926963 () Bool)

(declare-fun lt!2693118 () List!74572)

(assert (=> b!7926963 (= e!4678257 (or (not (= lt!2692979 Nil!74448)) (= lt!2693118 lt!2692976)))))

(declare-fun b!7926961 () Bool)

(assert (=> b!7926961 (= e!4678256 (Cons!74448 (h!80896 lt!2692976) (++!18259 (t!390189 lt!2692976) lt!2692979)))))

(declare-fun b!7926962 () Bool)

(declare-fun res!3145574 () Bool)

(assert (=> b!7926962 (=> (not res!3145574) (not e!4678257))))

(assert (=> b!7926962 (= res!3145574 (= (size!43248 lt!2693118) (+ (size!43248 lt!2692976) (size!43248 lt!2692979))))))

(declare-fun d!2367544 () Bool)

(assert (=> d!2367544 e!4678257))

(declare-fun res!3145573 () Bool)

(assert (=> d!2367544 (=> (not res!3145573) (not e!4678257))))

(assert (=> d!2367544 (= res!3145573 (= (content!15783 lt!2693118) ((_ map or) (content!15783 lt!2692976) (content!15783 lt!2692979))))))

(assert (=> d!2367544 (= lt!2693118 e!4678256)))

(declare-fun c!1455434 () Bool)

(assert (=> d!2367544 (= c!1455434 ((_ is Nil!74448) lt!2692976))))

(assert (=> d!2367544 (= (++!18259 lt!2692976 lt!2692979) lt!2693118)))

(assert (= (and d!2367544 c!1455434) b!7926960))

(assert (= (and d!2367544 (not c!1455434)) b!7926961))

(assert (= (and d!2367544 res!3145573) b!7926962))

(assert (= (and b!7926962 res!3145574) b!7926963))

(declare-fun m!8308220 () Bool)

(assert (=> b!7926961 m!8308220))

(declare-fun m!8308222 () Bool)

(assert (=> b!7926962 m!8308222))

(declare-fun m!8308224 () Bool)

(assert (=> b!7926962 m!8308224))

(declare-fun m!8308226 () Bool)

(assert (=> b!7926962 m!8308226))

(declare-fun m!8308228 () Bool)

(assert (=> d!2367544 m!8308228))

(declare-fun m!8308230 () Bool)

(assert (=> d!2367544 m!8308230))

(declare-fun m!8308232 () Bool)

(assert (=> d!2367544 m!8308232))

(assert (=> b!7926630 d!2367544))

(declare-fun b!7926967 () Bool)

(declare-fun e!4678259 () List!74572)

(assert (=> b!7926967 (= e!4678259 (++!18259 (list!19413 (left!56873 (right!57203 t!4440))) (list!19413 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7926965 () Bool)

(declare-fun e!4678258 () List!74572)

(assert (=> b!7926965 (= e!4678258 e!4678259)))

(declare-fun c!1455436 () Bool)

(assert (=> b!7926965 (= c!1455436 ((_ is Leaf!30234) (right!57203 t!4440)))))

(declare-fun b!7926966 () Bool)

(assert (=> b!7926966 (= e!4678259 (list!19415 (xs!19290 (right!57203 t!4440))))))

(declare-fun b!7926964 () Bool)

(assert (=> b!7926964 (= e!4678258 Nil!74448)))

(declare-fun d!2367546 () Bool)

(declare-fun c!1455435 () Bool)

(assert (=> d!2367546 (= c!1455435 ((_ is Empty!15902) (right!57203 t!4440)))))

(assert (=> d!2367546 (= (list!19413 (right!57203 t!4440)) e!4678258)))

(assert (= (and d!2367546 c!1455435) b!7926964))

(assert (= (and d!2367546 (not c!1455435)) b!7926965))

(assert (= (and b!7926965 c!1455436) b!7926966))

(assert (= (and b!7926965 (not c!1455436)) b!7926967))

(declare-fun m!8308234 () Bool)

(assert (=> b!7926967 m!8308234))

(assert (=> b!7926967 m!8308094))

(assert (=> b!7926967 m!8308234))

(assert (=> b!7926967 m!8308094))

(declare-fun m!8308236 () Bool)

(assert (=> b!7926967 m!8308236))

(assert (=> b!7926966 m!8308086))

(assert (=> b!7926630 d!2367546))

(declare-fun b!7926968 () Bool)

(declare-fun e!4678260 () List!74572)

(assert (=> b!7926968 (= e!4678260 lt!2692980)))

(declare-fun lt!2693119 () List!74572)

(declare-fun b!7926971 () Bool)

(declare-fun e!4678261 () Bool)

(assert (=> b!7926971 (= e!4678261 (or (not (= lt!2692980 Nil!74448)) (= lt!2693119 lt!2692979)))))

(declare-fun b!7926969 () Bool)

(assert (=> b!7926969 (= e!4678260 (Cons!74448 (h!80896 lt!2692979) (++!18259 (t!390189 lt!2692979) lt!2692980)))))

(declare-fun b!7926970 () Bool)

(declare-fun res!3145576 () Bool)

(assert (=> b!7926970 (=> (not res!3145576) (not e!4678261))))

(assert (=> b!7926970 (= res!3145576 (= (size!43248 lt!2693119) (+ (size!43248 lt!2692979) (size!43248 lt!2692980))))))

(declare-fun d!2367548 () Bool)

(assert (=> d!2367548 e!4678261))

(declare-fun res!3145575 () Bool)

(assert (=> d!2367548 (=> (not res!3145575) (not e!4678261))))

(assert (=> d!2367548 (= res!3145575 (= (content!15783 lt!2693119) ((_ map or) (content!15783 lt!2692979) (content!15783 lt!2692980))))))

(assert (=> d!2367548 (= lt!2693119 e!4678260)))

(declare-fun c!1455437 () Bool)

(assert (=> d!2367548 (= c!1455437 ((_ is Nil!74448) lt!2692979))))

(assert (=> d!2367548 (= (++!18259 lt!2692979 lt!2692980) lt!2693119)))

(assert (= (and d!2367548 c!1455437) b!7926968))

(assert (= (and d!2367548 (not c!1455437)) b!7926969))

(assert (= (and d!2367548 res!3145575) b!7926970))

(assert (= (and b!7926970 res!3145576) b!7926971))

(declare-fun m!8308238 () Bool)

(assert (=> b!7926969 m!8308238))

(declare-fun m!8308240 () Bool)

(assert (=> b!7926970 m!8308240))

(assert (=> b!7926970 m!8308226))

(assert (=> b!7926970 m!8308192))

(declare-fun m!8308242 () Bool)

(assert (=> d!2367548 m!8308242))

(assert (=> d!2367548 m!8308232))

(assert (=> d!2367548 m!8308198))

(assert (=> b!7926630 d!2367548))

(declare-fun b!7926972 () Bool)

(declare-fun e!4678262 () List!74572)

(assert (=> b!7926972 (= e!4678262 (++!18259 lt!2692979 lt!2692980))))

(declare-fun e!4678263 () Bool)

(declare-fun lt!2693120 () List!74572)

(declare-fun b!7926975 () Bool)

(assert (=> b!7926975 (= e!4678263 (or (not (= (++!18259 lt!2692979 lt!2692980) Nil!74448)) (= lt!2693120 lt!2692976)))))

(declare-fun b!7926973 () Bool)

(assert (=> b!7926973 (= e!4678262 (Cons!74448 (h!80896 lt!2692976) (++!18259 (t!390189 lt!2692976) (++!18259 lt!2692979 lt!2692980))))))

(declare-fun b!7926974 () Bool)

(declare-fun res!3145578 () Bool)

(assert (=> b!7926974 (=> (not res!3145578) (not e!4678263))))

(assert (=> b!7926974 (= res!3145578 (= (size!43248 lt!2693120) (+ (size!43248 lt!2692976) (size!43248 (++!18259 lt!2692979 lt!2692980)))))))

(declare-fun d!2367550 () Bool)

(assert (=> d!2367550 e!4678263))

(declare-fun res!3145577 () Bool)

(assert (=> d!2367550 (=> (not res!3145577) (not e!4678263))))

(assert (=> d!2367550 (= res!3145577 (= (content!15783 lt!2693120) ((_ map or) (content!15783 lt!2692976) (content!15783 (++!18259 lt!2692979 lt!2692980)))))))

(assert (=> d!2367550 (= lt!2693120 e!4678262)))

(declare-fun c!1455438 () Bool)

(assert (=> d!2367550 (= c!1455438 ((_ is Nil!74448) lt!2692976))))

(assert (=> d!2367550 (= (++!18259 lt!2692976 (++!18259 lt!2692979 lt!2692980)) lt!2693120)))

(assert (= (and d!2367550 c!1455438) b!7926972))

(assert (= (and d!2367550 (not c!1455438)) b!7926973))

(assert (= (and d!2367550 res!3145577) b!7926974))

(assert (= (and b!7926974 res!3145578) b!7926975))

(assert (=> b!7926973 m!8307836))

(declare-fun m!8308244 () Bool)

(assert (=> b!7926973 m!8308244))

(declare-fun m!8308246 () Bool)

(assert (=> b!7926974 m!8308246))

(assert (=> b!7926974 m!8308224))

(assert (=> b!7926974 m!8307836))

(declare-fun m!8308248 () Bool)

(assert (=> b!7926974 m!8308248))

(declare-fun m!8308250 () Bool)

(assert (=> d!2367550 m!8308250))

(assert (=> d!2367550 m!8308230))

(assert (=> d!2367550 m!8307836))

(declare-fun m!8308252 () Bool)

(assert (=> d!2367550 m!8308252))

(assert (=> b!7926630 d!2367550))

(declare-fun b!7926980 () Bool)

(declare-fun e!4678266 () Bool)

(declare-fun tp!2358718 () Bool)

(assert (=> b!7926980 (= e!4678266 (and tp_is_empty!53229 tp!2358718))))

(assert (=> b!7926626 (= tp!2358698 e!4678266)))

(assert (= (and b!7926626 ((_ is Cons!74448) (innerList!15990 (xs!19290 t!4440)))) b!7926980))

(declare-fun tp!2358725 () Bool)

(declare-fun b!7926989 () Bool)

(declare-fun e!4678272 () Bool)

(declare-fun tp!2358726 () Bool)

(assert (=> b!7926989 (= e!4678272 (and (inv!95719 (left!56873 (left!56873 t!4440))) tp!2358726 (inv!95719 (right!57203 (left!56873 t!4440))) tp!2358725))))

(declare-fun b!7926991 () Bool)

(declare-fun e!4678271 () Bool)

(declare-fun tp!2358727 () Bool)

(assert (=> b!7926991 (= e!4678271 tp!2358727)))

(declare-fun b!7926990 () Bool)

(assert (=> b!7926990 (= e!4678272 (and (inv!95720 (xs!19290 (left!56873 t!4440))) e!4678271))))

(assert (=> b!7926628 (= tp!2358699 (and (inv!95719 (left!56873 t!4440)) e!4678272))))

(assert (= (and b!7926628 ((_ is Node!15902) (left!56873 t!4440))) b!7926989))

(assert (= b!7926990 b!7926991))

(assert (= (and b!7926628 ((_ is Leaf!30234) (left!56873 t!4440))) b!7926990))

(declare-fun m!8308254 () Bool)

(assert (=> b!7926989 m!8308254))

(declare-fun m!8308256 () Bool)

(assert (=> b!7926989 m!8308256))

(declare-fun m!8308258 () Bool)

(assert (=> b!7926990 m!8308258))

(assert (=> b!7926628 m!8307820))

(declare-fun tp!2358728 () Bool)

(declare-fun tp!2358729 () Bool)

(declare-fun b!7926992 () Bool)

(declare-fun e!4678274 () Bool)

(assert (=> b!7926992 (= e!4678274 (and (inv!95719 (left!56873 (right!57203 t!4440))) tp!2358729 (inv!95719 (right!57203 (right!57203 t!4440))) tp!2358728))))

(declare-fun b!7926994 () Bool)

(declare-fun e!4678273 () Bool)

(declare-fun tp!2358730 () Bool)

(assert (=> b!7926994 (= e!4678273 tp!2358730)))

(declare-fun b!7926993 () Bool)

(assert (=> b!7926993 (= e!4678274 (and (inv!95720 (xs!19290 (right!57203 t!4440))) e!4678273))))

(assert (=> b!7926628 (= tp!2358700 (and (inv!95719 (right!57203 t!4440)) e!4678274))))

(assert (= (and b!7926628 ((_ is Node!15902) (right!57203 t!4440))) b!7926992))

(assert (= b!7926993 b!7926994))

(assert (= (and b!7926628 ((_ is Leaf!30234) (right!57203 t!4440))) b!7926993))

(declare-fun m!8308260 () Bool)

(assert (=> b!7926992 m!8308260))

(declare-fun m!8308262 () Bool)

(assert (=> b!7926992 m!8308262))

(declare-fun m!8308264 () Bool)

(assert (=> b!7926993 m!8308264))

(assert (=> b!7926628 m!8307822))

(check-sat (not b!7926969) (not b!7926989) (not b!7926990) (not b!7926925) (not d!2367536) (not b!7926918) (not bm!735186) (not b!7926994) (not bm!735184) (not bm!735180) (not b!7926665) (not d!2367548) (not b!7926961) (not b!7926950) (not b!7926959) (not b!7926991) (not b!7926883) (not b!7926668) (not b!7926696) (not bm!735179) (not bm!735183) (not b!7926974) (not b!7926951) (not b!7926882) (not b!7926880) tp_is_empty!53229 (not d!2367522) (not d!2367486) (not b!7926947) (not b!7926872) (not b!7926980) (not b!7926663) (not bm!735193) (not b!7926917) (not b!7926958) (not b!7926896) (not d!2367534) (not b!7926953) (not b!7926924) (not bm!735187) (not b!7926937) (not b!7926992) (not b!7926962) (not b!7926948) (not d!2367538) (not bm!735182) (not b!7926875) (not b!7926966) (not b!7926920) (not bm!735181) (not b!7926667) (not b!7926868) (not b!7926954) (not b!7926955) (not b!7926967) (not b!7926885) (not b!7926698) (not b!7926915) (not b!7926666) (not bm!735178) (not d!2367544) (not b!7926973) (not b!7926628) (not b!7926897) (not bm!735192) (not b!7926952) (not d!2367550) (not b!7926993) (not b!7926921) (not b!7926876) (not bm!735185) (not b!7926867) (not b!7926664) (not b!7926879) (not b!7926970))
(check-sat)
(get-model)

(declare-fun d!2367554 () Bool)

(assert (=> d!2367554 (= (height!2217 lt!2693100) (ite ((_ is Empty!15902) lt!2693100) 0 (ite ((_ is Leaf!30234) lt!2693100) 1 (cheight!16113 lt!2693100))))))

(assert (=> b!7926876 d!2367554))

(declare-fun d!2367558 () Bool)

(assert (=> d!2367558 (= (height!2217 (left!56873 (right!57203 t!4440))) (ite ((_ is Empty!15902) (left!56873 (right!57203 t!4440))) 0 (ite ((_ is Leaf!30234) (left!56873 (right!57203 t!4440))) 1 (cheight!16113 (left!56873 (right!57203 t!4440))))))))

(assert (=> b!7926876 d!2367558))

(declare-fun b!7926999 () Bool)

(declare-fun e!4678278 () Conc!15902)

(assert (=> b!7926999 (= e!4678278 (Leaf!30234 (append!1146 (xs!19290 (right!57203 (right!57203 t!4440))) v!5484) (+ (csize!32035 (right!57203 (right!57203 t!4440))) 1)))))

(declare-fun lt!2693121 () List!74572)

(assert (=> b!7926999 (= lt!2693121 ($colon+!315 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440)))) v!5484))))

(declare-fun b!7927000 () Bool)

(declare-fun res!3145579 () Bool)

(declare-fun e!4678281 () Bool)

(assert (=> b!7927000 (=> (not res!3145579) (not e!4678281))))

(declare-fun lt!2693135 () Conc!15902)

(assert (=> b!7927000 (= res!3145579 (<= (height!2217 (right!57203 (right!57203 t!4440))) (height!2217 lt!2693135)))))

(declare-fun lt!2693132 () List!74572)

(declare-fun call!735200 () List!74572)

(declare-fun c!1455443 () Bool)

(declare-fun lt!2693125 () List!74572)

(declare-fun lt!2693130 () List!74572)

(declare-fun bm!735194 () Bool)

(declare-fun lt!2693136 () List!74572)

(assert (=> bm!735194 (= call!735200 (++!18259 (ite c!1455443 lt!2693130 lt!2693125) (ite c!1455443 lt!2693132 lt!2693136)))))

(declare-fun b!7927001 () Bool)

(declare-fun call!735203 () Conc!15902)

(assert (=> b!7927001 (= e!4678278 call!735203)))

(declare-fun bm!735195 () Bool)

(declare-fun c!1455441 () Bool)

(declare-fun c!1455444 () Bool)

(assert (=> bm!735195 (= c!1455441 c!1455444)))

(declare-fun call!735199 () Conc!15902)

(declare-fun e!4678279 () Conc!15902)

(assert (=> bm!735195 (= call!735203 (<>!424 (ite c!1455444 call!735199 (right!57203 (right!57203 t!4440))) e!4678279))))

(declare-fun bm!735196 () Bool)

(declare-fun call!735208 () List!74572)

(declare-fun lt!2693133 () Conc!15902)

(assert (=> bm!735196 (= call!735208 (list!19413 (ite c!1455443 (left!56873 (right!57203 (right!57203 t!4440))) (right!57203 lt!2693133))))))

(declare-fun b!7927003 () Bool)

(assert (=> b!7927003 (= e!4678279 (right!57203 lt!2693133))))

(declare-fun bm!735197 () Bool)

(declare-fun call!735205 () List!74572)

(assert (=> bm!735197 (= call!735205 (list!19413 (ite c!1455443 (right!57203 (right!57203 (right!57203 t!4440))) (left!56873 (right!57203 (right!57203 t!4440))))))))

(declare-fun call!735207 () List!74572)

(declare-fun lt!2693124 () List!74572)

(declare-fun lt!2693126 () List!74572)

(declare-fun lt!2693128 () List!74572)

(declare-fun bm!735198 () Bool)

(assert (=> bm!735198 (= call!735207 (++!18259 (ite c!1455443 lt!2693132 lt!2693124) (ite c!1455443 lt!2693126 lt!2693128)))))

(declare-fun lt!2693122 () List!74572)

(declare-fun call!735204 () List!74572)

(declare-fun bm!735199 () Bool)

(assert (=> bm!735199 (= call!735204 (++!18259 (ite c!1455443 lt!2693130 lt!2693122) (ite c!1455443 call!735207 lt!2693125)))))

(declare-fun b!7927004 () Bool)

(assert (=> b!7927004 (= e!4678281 (= (list!19413 lt!2693135) ($colon+!315 (list!19413 (right!57203 (right!57203 t!4440))) v!5484)))))

(declare-fun bm!735200 () Bool)

(declare-fun call!735202 () List!74572)

(declare-fun lt!2693137 () List!74572)

(assert (=> bm!735200 (= call!735202 (++!18259 (ite c!1455443 call!735200 lt!2693128) (ite c!1455443 lt!2693126 lt!2693137)))))

(declare-fun bm!735201 () Bool)

(assert (=> bm!735201 (= call!735199 (<>!424 (left!56873 (right!57203 (right!57203 t!4440))) (ite c!1455443 lt!2693133 (left!56873 lt!2693133))))))

(declare-fun b!7927005 () Bool)

(declare-fun c!1455442 () Bool)

(assert (=> b!7927005 (= c!1455442 (< (csize!32035 (right!57203 (right!57203 t!4440))) 512))))

(declare-fun e!4678282 () Conc!15902)

(assert (=> b!7927005 (= e!4678282 e!4678278)))

(declare-fun b!7927006 () Bool)

(declare-fun e!4678277 () Conc!15902)

(assert (=> b!7927006 (= e!4678277 e!4678282)))

(assert (=> b!7927006 (= c!1455444 ((_ is Node!15902) (right!57203 (right!57203 t!4440))))))

(declare-fun bm!735202 () Bool)

(declare-fun call!735201 () IArray!31865)

(assert (=> bm!735202 (= call!735201 (fill!279 1 v!5484))))

(declare-fun b!7927007 () Bool)

(declare-fun e!4678280 () Conc!15902)

(assert (=> b!7927007 (= e!4678280 call!735203)))

(assert (=> b!7927007 (= lt!2693122 call!735205)))

(assert (=> b!7927007 (= lt!2693125 (list!19413 (left!56873 lt!2693133)))))

(assert (=> b!7927007 (= lt!2693136 call!735208)))

(declare-fun lt!2693138 () Unit!169565)

(declare-fun call!735206 () Unit!169565)

(assert (=> b!7927007 (= lt!2693138 call!735206)))

(assert (=> b!7927007 (= (++!18259 call!735204 lt!2693136) (++!18259 lt!2693122 call!735200))))

(declare-fun lt!2693123 () Unit!169565)

(assert (=> b!7927007 (= lt!2693123 lt!2693138)))

(assert (=> b!7927007 (= lt!2693124 call!735205)))

(assert (=> b!7927007 (= lt!2693128 (list!19413 (right!57203 (right!57203 (right!57203 t!4440)))))))

(assert (=> b!7927007 (= lt!2693137 (Cons!74448 v!5484 Nil!74448))))

(declare-fun lt!2693129 () Unit!169565)

(assert (=> b!7927007 (= lt!2693129 (lemmaConcatAssociativity!3162 lt!2693124 lt!2693128 lt!2693137))))

(assert (=> b!7927007 (= (++!18259 call!735207 lt!2693137) (++!18259 lt!2693124 call!735202))))

(declare-fun lt!2693131 () Unit!169565)

(assert (=> b!7927007 (= lt!2693131 lt!2693129)))

(declare-fun b!7927008 () Bool)

(assert (=> b!7927008 (= c!1455443 (<= (height!2217 lt!2693133) (+ (height!2217 (left!56873 (right!57203 (right!57203 t!4440)))) 1)))))

(assert (=> b!7927008 (= lt!2693133 (append!1144 (right!57203 (right!57203 (right!57203 t!4440))) v!5484))))

(assert (=> b!7927008 (= e!4678282 e!4678280)))

(declare-fun b!7927009 () Bool)

(assert (=> b!7927009 (= e!4678277 (Leaf!30234 call!735201 1))))

(declare-fun bm!735203 () Bool)

(assert (=> bm!735203 (= call!735206 (lemmaConcatAssociativity!3162 (ite c!1455443 lt!2693130 lt!2693122) (ite c!1455443 lt!2693132 lt!2693125) (ite c!1455443 lt!2693126 lt!2693136)))))

(declare-fun b!7927002 () Bool)

(assert (=> b!7927002 (= e!4678280 call!735199)))

(assert (=> b!7927002 (= lt!2693130 call!735208)))

(assert (=> b!7927002 (= lt!2693132 call!735205)))

(assert (=> b!7927002 (= lt!2693126 (Cons!74448 v!5484 Nil!74448))))

(declare-fun lt!2693127 () Unit!169565)

(assert (=> b!7927002 (= lt!2693127 call!735206)))

(assert (=> b!7927002 (= call!735202 call!735204)))

(declare-fun lt!2693134 () Unit!169565)

(assert (=> b!7927002 (= lt!2693134 lt!2693127)))

(declare-fun d!2367560 () Bool)

(assert (=> d!2367560 e!4678281))

(declare-fun res!3145581 () Bool)

(assert (=> d!2367560 (=> (not res!3145581) (not e!4678281))))

(assert (=> d!2367560 (= res!3145581 (isBalanced!4528 lt!2693135))))

(assert (=> d!2367560 (= lt!2693135 e!4678277)))

(declare-fun c!1455445 () Bool)

(assert (=> d!2367560 (= c!1455445 ((_ is Empty!15902) (right!57203 (right!57203 t!4440))))))

(assert (=> d!2367560 (isBalanced!4528 (right!57203 (right!57203 t!4440)))))

(assert (=> d!2367560 (= (append!1144 (right!57203 (right!57203 t!4440)) v!5484) lt!2693135)))

(declare-fun b!7927010 () Bool)

(assert (=> b!7927010 (= e!4678279 (Leaf!30234 call!735201 1))))

(declare-fun b!7927011 () Bool)

(declare-fun res!3145580 () Bool)

(assert (=> b!7927011 (=> (not res!3145580) (not e!4678281))))

(assert (=> b!7927011 (= res!3145580 (<= (height!2217 lt!2693135) (+ (height!2217 (right!57203 (right!57203 t!4440))) 1)))))

(assert (= (and d!2367560 c!1455445) b!7927009))

(assert (= (and d!2367560 (not c!1455445)) b!7927006))

(assert (= (and b!7927006 c!1455444) b!7927008))

(assert (= (and b!7927006 (not c!1455444)) b!7927005))

(assert (= (and b!7927008 c!1455443) b!7927002))

(assert (= (and b!7927008 (not c!1455443)) b!7927007))

(assert (= (or b!7927002 b!7927007) bm!735203))

(assert (= (or b!7927002 b!7927007) bm!735198))

(assert (= (or b!7927002 b!7927007) bm!735197))

(assert (= (or b!7927002 b!7927007) bm!735194))

(assert (= (or b!7927002 b!7927007) bm!735196))

(assert (= (or b!7927002 b!7927007) bm!735201))

(assert (= (or b!7927002 b!7927007) bm!735200))

(assert (= (or b!7927002 b!7927007) bm!735199))

(assert (= (and b!7927005 c!1455442) b!7926999))

(assert (= (and b!7927005 (not c!1455442)) b!7927001))

(assert (= (or b!7927007 b!7927001) bm!735195))

(assert (= (and bm!735195 c!1455441) b!7927003))

(assert (= (and bm!735195 (not c!1455441)) b!7927010))

(assert (= (or b!7927009 b!7927010) bm!735202))

(assert (= (and d!2367560 res!3145581) b!7927000))

(assert (= (and b!7927000 res!3145579) b!7927011))

(assert (= (and b!7927011 res!3145580) b!7927004))

(declare-fun m!8308304 () Bool)

(assert (=> bm!735200 m!8308304))

(declare-fun m!8308306 () Bool)

(assert (=> bm!735199 m!8308306))

(declare-fun m!8308308 () Bool)

(assert (=> bm!735197 m!8308308))

(declare-fun m!8308310 () Bool)

(assert (=> b!7926999 m!8308310))

(declare-fun m!8308312 () Bool)

(assert (=> b!7926999 m!8308312))

(assert (=> b!7926999 m!8308312))

(declare-fun m!8308314 () Bool)

(assert (=> b!7926999 m!8308314))

(declare-fun m!8308316 () Bool)

(assert (=> d!2367560 m!8308316))

(declare-fun m!8308318 () Bool)

(assert (=> d!2367560 m!8308318))

(declare-fun m!8308320 () Bool)

(assert (=> b!7927007 m!8308320))

(declare-fun m!8308322 () Bool)

(assert (=> b!7927007 m!8308322))

(declare-fun m!8308324 () Bool)

(assert (=> b!7927007 m!8308324))

(declare-fun m!8308326 () Bool)

(assert (=> b!7927007 m!8308326))

(declare-fun m!8308328 () Bool)

(assert (=> b!7927007 m!8308328))

(declare-fun m!8308330 () Bool)

(assert (=> b!7927007 m!8308330))

(declare-fun m!8308332 () Bool)

(assert (=> b!7927007 m!8308332))

(declare-fun m!8308334 () Bool)

(assert (=> bm!735201 m!8308334))

(assert (=> bm!735202 m!8308108))

(declare-fun m!8308336 () Bool)

(assert (=> b!7927004 m!8308336))

(assert (=> b!7927004 m!8308094))

(assert (=> b!7927004 m!8308094))

(declare-fun m!8308342 () Bool)

(assert (=> b!7927004 m!8308342))

(declare-fun m!8308344 () Bool)

(assert (=> bm!735196 m!8308344))

(declare-fun m!8308346 () Bool)

(assert (=> bm!735195 m!8308346))

(declare-fun m!8308348 () Bool)

(assert (=> bm!735194 m!8308348))

(declare-fun m!8308350 () Bool)

(assert (=> b!7927008 m!8308350))

(declare-fun m!8308352 () Bool)

(assert (=> b!7927008 m!8308352))

(declare-fun m!8308354 () Bool)

(assert (=> b!7927008 m!8308354))

(declare-fun m!8308360 () Bool)

(assert (=> bm!735203 m!8308360))

(declare-fun m!8308366 () Bool)

(assert (=> bm!735198 m!8308366))

(declare-fun m!8308368 () Bool)

(assert (=> b!7927011 m!8308368))

(declare-fun m!8308370 () Bool)

(assert (=> b!7927011 m!8308370))

(assert (=> b!7927000 m!8308370))

(assert (=> b!7927000 m!8308368))

(assert (=> b!7926876 d!2367560))

(declare-fun b!7927036 () Bool)

(declare-fun e!4678294 () List!74572)

(assert (=> b!7927036 (= e!4678294 (list!19413 (right!57203 (right!57203 t!4440))))))

(declare-fun b!7927039 () Bool)

(declare-fun e!4678295 () Bool)

(declare-fun lt!2693144 () List!74572)

(assert (=> b!7927039 (= e!4678295 (or (not (= (list!19413 (right!57203 (right!57203 t!4440))) Nil!74448)) (= lt!2693144 (list!19413 (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7927037 () Bool)

(assert (=> b!7927037 (= e!4678294 (Cons!74448 (h!80896 (list!19413 (left!56873 (right!57203 t!4440)))) (++!18259 (t!390189 (list!19413 (left!56873 (right!57203 t!4440)))) (list!19413 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7927038 () Bool)

(declare-fun res!3145589 () Bool)

(assert (=> b!7927038 (=> (not res!3145589) (not e!4678295))))

(assert (=> b!7927038 (= res!3145589 (= (size!43248 lt!2693144) (+ (size!43248 (list!19413 (left!56873 (right!57203 t!4440)))) (size!43248 (list!19413 (right!57203 (right!57203 t!4440)))))))))

(declare-fun d!2367574 () Bool)

(assert (=> d!2367574 e!4678295))

(declare-fun res!3145588 () Bool)

(assert (=> d!2367574 (=> (not res!3145588) (not e!4678295))))

(assert (=> d!2367574 (= res!3145588 (= (content!15783 lt!2693144) ((_ map or) (content!15783 (list!19413 (left!56873 (right!57203 t!4440)))) (content!15783 (list!19413 (right!57203 (right!57203 t!4440)))))))))

(assert (=> d!2367574 (= lt!2693144 e!4678294)))

(declare-fun c!1455455 () Bool)

(assert (=> d!2367574 (= c!1455455 ((_ is Nil!74448) (list!19413 (left!56873 (right!57203 t!4440)))))))

(assert (=> d!2367574 (= (++!18259 (list!19413 (left!56873 (right!57203 t!4440))) (list!19413 (right!57203 (right!57203 t!4440)))) lt!2693144)))

(assert (= (and d!2367574 c!1455455) b!7927036))

(assert (= (and d!2367574 (not c!1455455)) b!7927037))

(assert (= (and d!2367574 res!3145588) b!7927038))

(assert (= (and b!7927038 res!3145589) b!7927039))

(assert (=> b!7927037 m!8308094))

(declare-fun m!8308388 () Bool)

(assert (=> b!7927037 m!8308388))

(declare-fun m!8308390 () Bool)

(assert (=> b!7927038 m!8308390))

(assert (=> b!7927038 m!8308234))

(declare-fun m!8308392 () Bool)

(assert (=> b!7927038 m!8308392))

(assert (=> b!7927038 m!8308094))

(declare-fun m!8308394 () Bool)

(assert (=> b!7927038 m!8308394))

(declare-fun m!8308396 () Bool)

(assert (=> d!2367574 m!8308396))

(assert (=> d!2367574 m!8308234))

(declare-fun m!8308398 () Bool)

(assert (=> d!2367574 m!8308398))

(assert (=> d!2367574 m!8308094))

(declare-fun m!8308400 () Bool)

(assert (=> d!2367574 m!8308400))

(assert (=> b!7926967 d!2367574))

(declare-fun b!7927049 () Bool)

(declare-fun e!4678299 () List!74572)

(assert (=> b!7927049 (= e!4678299 (++!18259 (list!19413 (left!56873 (left!56873 (right!57203 t!4440)))) (list!19413 (right!57203 (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7927047 () Bool)

(declare-fun e!4678298 () List!74572)

(assert (=> b!7927047 (= e!4678298 e!4678299)))

(declare-fun c!1455457 () Bool)

(assert (=> b!7927047 (= c!1455457 ((_ is Leaf!30234) (left!56873 (right!57203 t!4440))))))

(declare-fun b!7927048 () Bool)

(assert (=> b!7927048 (= e!4678299 (list!19415 (xs!19290 (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7927046 () Bool)

(assert (=> b!7927046 (= e!4678298 Nil!74448)))

(declare-fun d!2367578 () Bool)

(declare-fun c!1455456 () Bool)

(assert (=> d!2367578 (= c!1455456 ((_ is Empty!15902) (left!56873 (right!57203 t!4440))))))

(assert (=> d!2367578 (= (list!19413 (left!56873 (right!57203 t!4440))) e!4678298)))

(assert (= (and d!2367578 c!1455456) b!7927046))

(assert (= (and d!2367578 (not c!1455456)) b!7927047))

(assert (= (and b!7927047 c!1455457) b!7927048))

(assert (= (and b!7927047 (not c!1455457)) b!7927049))

(declare-fun m!8308414 () Bool)

(assert (=> b!7927049 m!8308414))

(declare-fun m!8308416 () Bool)

(assert (=> b!7927049 m!8308416))

(assert (=> b!7927049 m!8308414))

(assert (=> b!7927049 m!8308416))

(declare-fun m!8308418 () Bool)

(assert (=> b!7927049 m!8308418))

(declare-fun m!8308420 () Bool)

(assert (=> b!7927048 m!8308420))

(assert (=> b!7926967 d!2367578))

(declare-fun b!7927053 () Bool)

(declare-fun e!4678301 () List!74572)

(assert (=> b!7927053 (= e!4678301 (++!18259 (list!19413 (left!56873 (right!57203 (right!57203 t!4440)))) (list!19413 (right!57203 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7927051 () Bool)

(declare-fun e!4678300 () List!74572)

(assert (=> b!7927051 (= e!4678300 e!4678301)))

(declare-fun c!1455459 () Bool)

(assert (=> b!7927051 (= c!1455459 ((_ is Leaf!30234) (right!57203 (right!57203 t!4440))))))

(declare-fun b!7927052 () Bool)

(assert (=> b!7927052 (= e!4678301 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7927050 () Bool)

(assert (=> b!7927050 (= e!4678300 Nil!74448)))

(declare-fun d!2367582 () Bool)

(declare-fun c!1455458 () Bool)

(assert (=> d!2367582 (= c!1455458 ((_ is Empty!15902) (right!57203 (right!57203 t!4440))))))

(assert (=> d!2367582 (= (list!19413 (right!57203 (right!57203 t!4440))) e!4678300)))

(assert (= (and d!2367582 c!1455458) b!7927050))

(assert (= (and d!2367582 (not c!1455458)) b!7927051))

(assert (= (and b!7927051 c!1455459) b!7927052))

(assert (= (and b!7927051 (not c!1455459)) b!7927053))

(declare-fun m!8308422 () Bool)

(assert (=> b!7927053 m!8308422))

(assert (=> b!7927053 m!8308322))

(assert (=> b!7927053 m!8308422))

(assert (=> b!7927053 m!8308322))

(declare-fun m!8308424 () Bool)

(assert (=> b!7927053 m!8308424))

(assert (=> b!7927052 m!8308312))

(assert (=> b!7926967 d!2367582))

(declare-fun d!2367584 () Bool)

(declare-fun lt!2693153 () IArray!31865)

(declare-fun fill!280 (Int T!145804) List!74572)

(assert (=> d!2367584 (= lt!2693153 (IArray!31866 (fill!280 1 v!5484)))))

(declare-fun choose!59827 (Int T!145804) IArray!31865)

(assert (=> d!2367584 (= lt!2693153 (choose!59827 1 v!5484))))

(assert (=> d!2367584 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2367584 (= (fill!279 1 v!5484) lt!2693153)))

(declare-fun bs!1968839 () Bool)

(assert (= bs!1968839 d!2367584))

(declare-fun m!8308502 () Bool)

(assert (=> bs!1968839 m!8308502))

(declare-fun m!8308510 () Bool)

(assert (=> bs!1968839 m!8308510))

(assert (=> bm!735186 d!2367584))

(declare-fun b!7927096 () Bool)

(declare-fun e!4678323 () List!74572)

(assert (=> b!7927096 (= e!4678323 (list!19413 (right!57203 (left!56873 t!4440))))))

(declare-fun b!7927099 () Bool)

(declare-fun e!4678324 () Bool)

(declare-fun lt!2693154 () List!74572)

(assert (=> b!7927099 (= e!4678324 (or (not (= (list!19413 (right!57203 (left!56873 t!4440))) Nil!74448)) (= lt!2693154 (list!19413 (left!56873 (left!56873 t!4440))))))))

(declare-fun b!7927097 () Bool)

(assert (=> b!7927097 (= e!4678323 (Cons!74448 (h!80896 (list!19413 (left!56873 (left!56873 t!4440)))) (++!18259 (t!390189 (list!19413 (left!56873 (left!56873 t!4440)))) (list!19413 (right!57203 (left!56873 t!4440))))))))

(declare-fun b!7927098 () Bool)

(declare-fun res!3145607 () Bool)

(assert (=> b!7927098 (=> (not res!3145607) (not e!4678324))))

(assert (=> b!7927098 (= res!3145607 (= (size!43248 lt!2693154) (+ (size!43248 (list!19413 (left!56873 (left!56873 t!4440)))) (size!43248 (list!19413 (right!57203 (left!56873 t!4440)))))))))

(declare-fun d!2367614 () Bool)

(assert (=> d!2367614 e!4678324))

(declare-fun res!3145606 () Bool)

(assert (=> d!2367614 (=> (not res!3145606) (not e!4678324))))

(assert (=> d!2367614 (= res!3145606 (= (content!15783 lt!2693154) ((_ map or) (content!15783 (list!19413 (left!56873 (left!56873 t!4440)))) (content!15783 (list!19413 (right!57203 (left!56873 t!4440)))))))))

(assert (=> d!2367614 (= lt!2693154 e!4678323)))

(declare-fun c!1455476 () Bool)

(assert (=> d!2367614 (= c!1455476 ((_ is Nil!74448) (list!19413 (left!56873 (left!56873 t!4440)))))))

(assert (=> d!2367614 (= (++!18259 (list!19413 (left!56873 (left!56873 t!4440))) (list!19413 (right!57203 (left!56873 t!4440)))) lt!2693154)))

(assert (= (and d!2367614 c!1455476) b!7927096))

(assert (= (and d!2367614 (not c!1455476)) b!7927097))

(assert (= (and d!2367614 res!3145606) b!7927098))

(assert (= (and b!7927098 res!3145607) b!7927099))

(assert (=> b!7927097 m!8308214))

(declare-fun m!8308534 () Bool)

(assert (=> b!7927097 m!8308534))

(declare-fun m!8308536 () Bool)

(assert (=> b!7927098 m!8308536))

(assert (=> b!7927098 m!8308212))

(declare-fun m!8308538 () Bool)

(assert (=> b!7927098 m!8308538))

(assert (=> b!7927098 m!8308214))

(declare-fun m!8308540 () Bool)

(assert (=> b!7927098 m!8308540))

(declare-fun m!8308542 () Bool)

(assert (=> d!2367614 m!8308542))

(assert (=> d!2367614 m!8308212))

(declare-fun m!8308544 () Bool)

(assert (=> d!2367614 m!8308544))

(assert (=> d!2367614 m!8308214))

(declare-fun m!8308546 () Bool)

(assert (=> d!2367614 m!8308546))

(assert (=> b!7926959 d!2367614))

(declare-fun b!7927107 () Bool)

(declare-fun e!4678328 () List!74572)

(assert (=> b!7927107 (= e!4678328 (++!18259 (list!19413 (left!56873 (left!56873 (left!56873 t!4440)))) (list!19413 (right!57203 (left!56873 (left!56873 t!4440))))))))

(declare-fun b!7927105 () Bool)

(declare-fun e!4678327 () List!74572)

(assert (=> b!7927105 (= e!4678327 e!4678328)))

(declare-fun c!1455480 () Bool)

(assert (=> b!7927105 (= c!1455480 ((_ is Leaf!30234) (left!56873 (left!56873 t!4440))))))

(declare-fun b!7927106 () Bool)

(assert (=> b!7927106 (= e!4678328 (list!19415 (xs!19290 (left!56873 (left!56873 t!4440)))))))

(declare-fun b!7927104 () Bool)

(assert (=> b!7927104 (= e!4678327 Nil!74448)))

(declare-fun d!2367622 () Bool)

(declare-fun c!1455479 () Bool)

(assert (=> d!2367622 (= c!1455479 ((_ is Empty!15902) (left!56873 (left!56873 t!4440))))))

(assert (=> d!2367622 (= (list!19413 (left!56873 (left!56873 t!4440))) e!4678327)))

(assert (= (and d!2367622 c!1455479) b!7927104))

(assert (= (and d!2367622 (not c!1455479)) b!7927105))

(assert (= (and b!7927105 c!1455480) b!7927106))

(assert (= (and b!7927105 (not c!1455480)) b!7927107))

(declare-fun m!8308548 () Bool)

(assert (=> b!7927107 m!8308548))

(declare-fun m!8308550 () Bool)

(assert (=> b!7927107 m!8308550))

(assert (=> b!7927107 m!8308548))

(assert (=> b!7927107 m!8308550))

(declare-fun m!8308552 () Bool)

(assert (=> b!7927107 m!8308552))

(declare-fun m!8308554 () Bool)

(assert (=> b!7927106 m!8308554))

(assert (=> b!7926959 d!2367622))

(declare-fun b!7927115 () Bool)

(declare-fun e!4678332 () List!74572)

(assert (=> b!7927115 (= e!4678332 (++!18259 (list!19413 (left!56873 (right!57203 (left!56873 t!4440)))) (list!19413 (right!57203 (right!57203 (left!56873 t!4440))))))))

(declare-fun b!7927113 () Bool)

(declare-fun e!4678331 () List!74572)

(assert (=> b!7927113 (= e!4678331 e!4678332)))

(declare-fun c!1455484 () Bool)

(assert (=> b!7927113 (= c!1455484 ((_ is Leaf!30234) (right!57203 (left!56873 t!4440))))))

(declare-fun b!7927114 () Bool)

(assert (=> b!7927114 (= e!4678332 (list!19415 (xs!19290 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7927112 () Bool)

(assert (=> b!7927112 (= e!4678331 Nil!74448)))

(declare-fun d!2367624 () Bool)

(declare-fun c!1455483 () Bool)

(assert (=> d!2367624 (= c!1455483 ((_ is Empty!15902) (right!57203 (left!56873 t!4440))))))

(assert (=> d!2367624 (= (list!19413 (right!57203 (left!56873 t!4440))) e!4678331)))

(assert (= (and d!2367624 c!1455483) b!7927112))

(assert (= (and d!2367624 (not c!1455483)) b!7927113))

(assert (= (and b!7927113 c!1455484) b!7927114))

(assert (= (and b!7927113 (not c!1455484)) b!7927115))

(declare-fun m!8308556 () Bool)

(assert (=> b!7927115 m!8308556))

(declare-fun m!8308558 () Bool)

(assert (=> b!7927115 m!8308558))

(assert (=> b!7927115 m!8308556))

(assert (=> b!7927115 m!8308558))

(declare-fun m!8308560 () Bool)

(assert (=> b!7927115 m!8308560))

(declare-fun m!8308562 () Bool)

(assert (=> b!7927114 m!8308562))

(assert (=> b!7926959 d!2367624))

(declare-fun b!7927118 () Bool)

(declare-fun e!4678334 () List!74572)

(assert (=> b!7927118 (= e!4678334 (list!19413 (right!57203 t!4440)))))

(declare-fun b!7927121 () Bool)

(declare-fun e!4678335 () Bool)

(declare-fun lt!2693158 () List!74572)

(assert (=> b!7927121 (= e!4678335 (or (not (= (list!19413 (right!57203 t!4440)) Nil!74448)) (= lt!2693158 (list!19413 (left!56873 t!4440)))))))

(declare-fun b!7927119 () Bool)

(assert (=> b!7927119 (= e!4678334 (Cons!74448 (h!80896 (list!19413 (left!56873 t!4440))) (++!18259 (t!390189 (list!19413 (left!56873 t!4440))) (list!19413 (right!57203 t!4440)))))))

(declare-fun b!7927120 () Bool)

(declare-fun res!3145609 () Bool)

(assert (=> b!7927120 (=> (not res!3145609) (not e!4678335))))

(assert (=> b!7927120 (= res!3145609 (= (size!43248 lt!2693158) (+ (size!43248 (list!19413 (left!56873 t!4440))) (size!43248 (list!19413 (right!57203 t!4440))))))))

(declare-fun d!2367626 () Bool)

(assert (=> d!2367626 e!4678335))

(declare-fun res!3145608 () Bool)

(assert (=> d!2367626 (=> (not res!3145608) (not e!4678335))))

(assert (=> d!2367626 (= res!3145608 (= (content!15783 lt!2693158) ((_ map or) (content!15783 (list!19413 (left!56873 t!4440))) (content!15783 (list!19413 (right!57203 t!4440))))))))

(assert (=> d!2367626 (= lt!2693158 e!4678334)))

(declare-fun c!1455486 () Bool)

(assert (=> d!2367626 (= c!1455486 ((_ is Nil!74448) (list!19413 (left!56873 t!4440))))))

(assert (=> d!2367626 (= (++!18259 (list!19413 (left!56873 t!4440)) (list!19413 (right!57203 t!4440))) lt!2693158)))

(assert (= (and d!2367626 c!1455486) b!7927118))

(assert (= (and d!2367626 (not c!1455486)) b!7927119))

(assert (= (and d!2367626 res!3145608) b!7927120))

(assert (= (and b!7927120 res!3145609) b!7927121))

(assert (=> b!7927119 m!8307842))

(declare-fun m!8308570 () Bool)

(assert (=> b!7927119 m!8308570))

(declare-fun m!8308572 () Bool)

(assert (=> b!7927120 m!8308572))

(assert (=> b!7927120 m!8307838))

(declare-fun m!8308576 () Bool)

(assert (=> b!7927120 m!8308576))

(assert (=> b!7927120 m!8307842))

(declare-fun m!8308578 () Bool)

(assert (=> b!7927120 m!8308578))

(declare-fun m!8308582 () Bool)

(assert (=> d!2367626 m!8308582))

(assert (=> d!2367626 m!8307838))

(declare-fun m!8308584 () Bool)

(assert (=> d!2367626 m!8308584))

(assert (=> d!2367626 m!8307842))

(declare-fun m!8308586 () Bool)

(assert (=> d!2367626 m!8308586))

(assert (=> b!7926925 d!2367626))

(assert (=> b!7926925 d!2367542))

(assert (=> b!7926925 d!2367546))

(declare-fun b!7927129 () Bool)

(declare-fun e!4678341 () Bool)

(declare-fun e!4678340 () Bool)

(assert (=> b!7927129 (= e!4678341 e!4678340)))

(declare-fun res!3145612 () Bool)

(assert (=> b!7927129 (=> (not res!3145612) (not e!4678340))))

(assert (=> b!7927129 (= res!3145612 (<= (- 1) (- (height!2217 (left!56873 (right!57203 lt!2692978))) (height!2217 (right!57203 (right!57203 lt!2692978))))))))

(declare-fun b!7927131 () Bool)

(declare-fun res!3145615 () Bool)

(assert (=> b!7927131 (=> (not res!3145615) (not e!4678340))))

(assert (=> b!7927131 (= res!3145615 (not (isEmpty!42776 (left!56873 (right!57203 lt!2692978)))))))

(declare-fun b!7927132 () Bool)

(declare-fun res!3145616 () Bool)

(assert (=> b!7927132 (=> (not res!3145616) (not e!4678340))))

(assert (=> b!7927132 (= res!3145616 (isBalanced!4528 (left!56873 (right!57203 lt!2692978))))))

(declare-fun b!7927133 () Bool)

(declare-fun res!3145611 () Bool)

(assert (=> b!7927133 (=> (not res!3145611) (not e!4678340))))

(assert (=> b!7927133 (= res!3145611 (isBalanced!4528 (right!57203 (right!57203 lt!2692978))))))

(declare-fun b!7927134 () Bool)

(assert (=> b!7927134 (= e!4678340 (not (isEmpty!42776 (right!57203 (right!57203 lt!2692978)))))))

(declare-fun b!7927130 () Bool)

(declare-fun res!3145613 () Bool)

(assert (=> b!7927130 (=> (not res!3145613) (not e!4678340))))

(assert (=> b!7927130 (= res!3145613 (<= (- (height!2217 (left!56873 (right!57203 lt!2692978))) (height!2217 (right!57203 (right!57203 lt!2692978)))) 1))))

(declare-fun d!2367638 () Bool)

(declare-fun res!3145614 () Bool)

(assert (=> d!2367638 (=> res!3145614 e!4678341)))

(assert (=> d!2367638 (= res!3145614 (not ((_ is Node!15902) (right!57203 lt!2692978))))))

(assert (=> d!2367638 (= (isBalanced!4528 (right!57203 lt!2692978)) e!4678341)))

(assert (= (and d!2367638 (not res!3145614)) b!7927129))

(assert (= (and b!7927129 res!3145612) b!7927130))

(assert (= (and b!7927130 res!3145613) b!7927132))

(assert (= (and b!7927132 res!3145616) b!7927133))

(assert (= (and b!7927133 res!3145611) b!7927131))

(assert (= (and b!7927131 res!3145615) b!7927134))

(declare-fun m!8308596 () Bool)

(assert (=> b!7927130 m!8308596))

(declare-fun m!8308598 () Bool)

(assert (=> b!7927130 m!8308598))

(declare-fun m!8308600 () Bool)

(assert (=> b!7927133 m!8308600))

(declare-fun m!8308602 () Bool)

(assert (=> b!7927131 m!8308602))

(declare-fun m!8308604 () Bool)

(assert (=> b!7927132 m!8308604))

(declare-fun m!8308606 () Bool)

(assert (=> b!7927134 m!8308606))

(assert (=> b!7927129 m!8308596))

(assert (=> b!7927129 m!8308598))

(assert (=> b!7926954 d!2367638))

(declare-fun d!2367644 () Bool)

(declare-fun lt!2693172 () Int)

(assert (=> d!2367644 (>= lt!2693172 0)))

(declare-fun e!4678351 () Int)

(assert (=> d!2367644 (= lt!2693172 e!4678351)))

(declare-fun c!1455498 () Bool)

(assert (=> d!2367644 (= c!1455498 ((_ is Nil!74448) lt!2693118))))

(assert (=> d!2367644 (= (size!43248 lt!2693118) lt!2693172)))

(declare-fun b!7927152 () Bool)

(assert (=> b!7927152 (= e!4678351 0)))

(declare-fun b!7927153 () Bool)

(assert (=> b!7927153 (= e!4678351 (+ 1 (size!43248 (t!390189 lt!2693118))))))

(assert (= (and d!2367644 c!1455498) b!7927152))

(assert (= (and d!2367644 (not c!1455498)) b!7927153))

(declare-fun m!8308624 () Bool)

(assert (=> b!7927153 m!8308624))

(assert (=> b!7926962 d!2367644))

(declare-fun d!2367654 () Bool)

(declare-fun lt!2693173 () Int)

(assert (=> d!2367654 (>= lt!2693173 0)))

(declare-fun e!4678352 () Int)

(assert (=> d!2367654 (= lt!2693173 e!4678352)))

(declare-fun c!1455499 () Bool)

(assert (=> d!2367654 (= c!1455499 ((_ is Nil!74448) lt!2692976))))

(assert (=> d!2367654 (= (size!43248 lt!2692976) lt!2693173)))

(declare-fun b!7927154 () Bool)

(assert (=> b!7927154 (= e!4678352 0)))

(declare-fun b!7927155 () Bool)

(assert (=> b!7927155 (= e!4678352 (+ 1 (size!43248 (t!390189 lt!2692976))))))

(assert (= (and d!2367654 c!1455499) b!7927154))

(assert (= (and d!2367654 (not c!1455499)) b!7927155))

(declare-fun m!8308626 () Bool)

(assert (=> b!7927155 m!8308626))

(assert (=> b!7926962 d!2367654))

(declare-fun d!2367656 () Bool)

(declare-fun lt!2693174 () Int)

(assert (=> d!2367656 (>= lt!2693174 0)))

(declare-fun e!4678355 () Int)

(assert (=> d!2367656 (= lt!2693174 e!4678355)))

(declare-fun c!1455500 () Bool)

(assert (=> d!2367656 (= c!1455500 ((_ is Nil!74448) lt!2692979))))

(assert (=> d!2367656 (= (size!43248 lt!2692979) lt!2693174)))

(declare-fun b!7927160 () Bool)

(assert (=> b!7927160 (= e!4678355 0)))

(declare-fun b!7927161 () Bool)

(assert (=> b!7927161 (= e!4678355 (+ 1 (size!43248 (t!390189 lt!2692979))))))

(assert (= (and d!2367656 c!1455500) b!7927160))

(assert (= (and d!2367656 (not c!1455500)) b!7927161))

(declare-fun m!8308628 () Bool)

(assert (=> b!7927161 m!8308628))

(assert (=> b!7926962 d!2367656))

(declare-fun d!2367658 () Bool)

(assert (=> d!2367658 (= (inv!95720 (xs!19290 (right!57203 t!4440))) (<= (size!43248 (innerList!15990 (xs!19290 (right!57203 t!4440)))) 2147483647))))

(declare-fun bs!1968843 () Bool)

(assert (= bs!1968843 d!2367658))

(declare-fun m!8308630 () Bool)

(assert (=> bs!1968843 m!8308630))

(assert (=> b!7926993 d!2367658))

(declare-fun d!2367660 () Bool)

(declare-fun lt!2693177 () Bool)

(declare-fun isEmpty!42778 (List!74572) Bool)

(assert (=> d!2367660 (= lt!2693177 (isEmpty!42778 (list!19413 (left!56873 lt!2692978))))))

(assert (=> d!2367660 (= lt!2693177 (= (size!43249 (left!56873 lt!2692978)) 0))))

(assert (=> d!2367660 (= (isEmpty!42776 (left!56873 lt!2692978)) lt!2693177)))

(declare-fun bs!1968844 () Bool)

(assert (= bs!1968844 d!2367660))

(assert (=> bs!1968844 m!8308142))

(assert (=> bs!1968844 m!8308142))

(declare-fun m!8308634 () Bool)

(assert (=> bs!1968844 m!8308634))

(declare-fun m!8308636 () Bool)

(assert (=> bs!1968844 m!8308636))

(assert (=> b!7926952 d!2367660))

(declare-fun e!4678359 () List!74572)

(declare-fun b!7927170 () Bool)

(assert (=> b!7927170 (= e!4678359 (ite c!1455404 lt!2693093 lt!2693104))))

(declare-fun b!7927173 () Bool)

(declare-fun e!4678360 () Bool)

(declare-fun lt!2693178 () List!74572)

(assert (=> b!7927173 (= e!4678360 (or (not (= (ite c!1455404 lt!2693093 lt!2693104) Nil!74448)) (= lt!2693178 (ite c!1455404 call!735184 lt!2693095))))))

(declare-fun b!7927171 () Bool)

(assert (=> b!7927171 (= e!4678359 (Cons!74448 (h!80896 (ite c!1455404 call!735184 lt!2693095)) (++!18259 (t!390189 (ite c!1455404 call!735184 lt!2693095)) (ite c!1455404 lt!2693093 lt!2693104))))))

(declare-fun b!7927172 () Bool)

(declare-fun res!3145631 () Bool)

(assert (=> b!7927172 (=> (not res!3145631) (not e!4678360))))

(assert (=> b!7927172 (= res!3145631 (= (size!43248 lt!2693178) (+ (size!43248 (ite c!1455404 call!735184 lt!2693095)) (size!43248 (ite c!1455404 lt!2693093 lt!2693104)))))))

(declare-fun d!2367664 () Bool)

(assert (=> d!2367664 e!4678360))

(declare-fun res!3145630 () Bool)

(assert (=> d!2367664 (=> (not res!3145630) (not e!4678360))))

(assert (=> d!2367664 (= res!3145630 (= (content!15783 lt!2693178) ((_ map or) (content!15783 (ite c!1455404 call!735184 lt!2693095)) (content!15783 (ite c!1455404 lt!2693093 lt!2693104)))))))

(assert (=> d!2367664 (= lt!2693178 e!4678359)))

(declare-fun c!1455501 () Bool)

(assert (=> d!2367664 (= c!1455501 ((_ is Nil!74448) (ite c!1455404 call!735184 lt!2693095)))))

(assert (=> d!2367664 (= (++!18259 (ite c!1455404 call!735184 lt!2693095) (ite c!1455404 lt!2693093 lt!2693104)) lt!2693178)))

(assert (= (and d!2367664 c!1455501) b!7927170))

(assert (= (and d!2367664 (not c!1455501)) b!7927171))

(assert (= (and d!2367664 res!3145630) b!7927172))

(assert (= (and b!7927172 res!3145631) b!7927173))

(declare-fun m!8308638 () Bool)

(assert (=> b!7927171 m!8308638))

(declare-fun m!8308640 () Bool)

(assert (=> b!7927172 m!8308640))

(declare-fun m!8308642 () Bool)

(assert (=> b!7927172 m!8308642))

(declare-fun m!8308644 () Bool)

(assert (=> b!7927172 m!8308644))

(declare-fun m!8308646 () Bool)

(assert (=> d!2367664 m!8308646))

(declare-fun m!8308648 () Bool)

(assert (=> d!2367664 m!8308648))

(declare-fun m!8308650 () Bool)

(assert (=> d!2367664 m!8308650))

(assert (=> bm!735184 d!2367664))

(declare-fun b!7927177 () Bool)

(declare-fun e!4678363 () Bool)

(declare-fun e!4678362 () Bool)

(assert (=> b!7927177 (= e!4678363 e!4678362)))

(declare-fun res!3145636 () Bool)

(assert (=> b!7927177 (=> (not res!3145636) (not e!4678362))))

(assert (=> b!7927177 (= res!3145636 (<= (- 1) (- (height!2217 (left!56873 (right!57203 t!4440))) (height!2217 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7927179 () Bool)

(declare-fun res!3145639 () Bool)

(assert (=> b!7927179 (=> (not res!3145639) (not e!4678362))))

(assert (=> b!7927179 (= res!3145639 (not (isEmpty!42776 (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7927180 () Bool)

(declare-fun res!3145640 () Bool)

(assert (=> b!7927180 (=> (not res!3145640) (not e!4678362))))

(assert (=> b!7927180 (= res!3145640 (isBalanced!4528 (left!56873 (right!57203 t!4440))))))

(declare-fun b!7927181 () Bool)

(declare-fun res!3145635 () Bool)

(assert (=> b!7927181 (=> (not res!3145635) (not e!4678362))))

(assert (=> b!7927181 (= res!3145635 (isBalanced!4528 (right!57203 (right!57203 t!4440))))))

(declare-fun b!7927182 () Bool)

(assert (=> b!7927182 (= e!4678362 (not (isEmpty!42776 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7927178 () Bool)

(declare-fun res!3145637 () Bool)

(assert (=> b!7927178 (=> (not res!3145637) (not e!4678362))))

(assert (=> b!7927178 (= res!3145637 (<= (- (height!2217 (left!56873 (right!57203 t!4440))) (height!2217 (right!57203 (right!57203 t!4440)))) 1))))

(declare-fun d!2367666 () Bool)

(declare-fun res!3145638 () Bool)

(assert (=> d!2367666 (=> res!3145638 e!4678363)))

(assert (=> d!2367666 (= res!3145638 (not ((_ is Node!15902) (right!57203 t!4440))))))

(assert (=> d!2367666 (= (isBalanced!4528 (right!57203 t!4440)) e!4678363)))

(assert (= (and d!2367666 (not res!3145638)) b!7927177))

(assert (= (and b!7927177 res!3145636) b!7927178))

(assert (= (and b!7927178 res!3145637) b!7927180))

(assert (= (and b!7927180 res!3145640) b!7927181))

(assert (= (and b!7927181 res!3145635) b!7927179))

(assert (= (and b!7927179 res!3145639) b!7927182))

(assert (=> b!7927178 m!8308122))

(assert (=> b!7927178 m!8308370))

(assert (=> b!7927181 m!8308318))

(declare-fun m!8308670 () Bool)

(assert (=> b!7927179 m!8308670))

(declare-fun m!8308672 () Bool)

(assert (=> b!7927180 m!8308672))

(declare-fun m!8308674 () Bool)

(assert (=> b!7927182 m!8308674))

(assert (=> b!7927177 m!8308122))

(assert (=> b!7927177 m!8308370))

(assert (=> b!7926667 d!2367666))

(declare-fun d!2367676 () Bool)

(assert (=> d!2367676 (= (list!19415 (xs!19290 lt!2692978)) (innerList!15990 (xs!19290 lt!2692978)))))

(assert (=> b!7926896 d!2367676))

(declare-fun b!7927202 () Bool)

(declare-fun e!4678373 () List!74572)

(assert (=> b!7927202 (= e!4678373 (++!18259 (list!19413 (left!56873 lt!2693114)) (list!19413 (right!57203 lt!2693114))))))

(declare-fun b!7927200 () Bool)

(declare-fun e!4678371 () List!74572)

(assert (=> b!7927200 (= e!4678371 e!4678373)))

(declare-fun c!1455509 () Bool)

(assert (=> b!7927200 (= c!1455509 ((_ is Leaf!30234) lt!2693114))))

(declare-fun b!7927201 () Bool)

(assert (=> b!7927201 (= e!4678373 (list!19415 (xs!19290 lt!2693114)))))

(declare-fun b!7927199 () Bool)

(assert (=> b!7927199 (= e!4678371 Nil!74448)))

(declare-fun d!2367680 () Bool)

(declare-fun c!1455507 () Bool)

(assert (=> d!2367680 (= c!1455507 ((_ is Empty!15902) lt!2693114))))

(assert (=> d!2367680 (= (list!19413 lt!2693114) e!4678371)))

(assert (= (and d!2367680 c!1455507) b!7927199))

(assert (= (and d!2367680 (not c!1455507)) b!7927200))

(assert (= (and b!7927200 c!1455509) b!7927201))

(assert (= (and b!7927200 (not c!1455509)) b!7927202))

(declare-fun m!8308698 () Bool)

(assert (=> b!7927202 m!8308698))

(declare-fun m!8308700 () Bool)

(assert (=> b!7927202 m!8308700))

(assert (=> b!7927202 m!8308698))

(assert (=> b!7927202 m!8308700))

(declare-fun m!8308704 () Bool)

(assert (=> b!7927202 m!8308704))

(declare-fun m!8308710 () Bool)

(assert (=> b!7927201 m!8308710))

(assert (=> d!2367536 d!2367680))

(declare-fun b!7927211 () Bool)

(declare-fun e!4678378 () List!74572)

(assert (=> b!7927211 (= e!4678378 (list!19413 lt!2692975))))

(declare-fun lt!2693185 () List!74572)

(declare-fun e!4678379 () Bool)

(declare-fun b!7927214 () Bool)

(assert (=> b!7927214 (= e!4678379 (or (not (= (list!19413 lt!2692975) Nil!74448)) (= lt!2693185 (list!19413 (left!56873 t!4440)))))))

(declare-fun b!7927212 () Bool)

(assert (=> b!7927212 (= e!4678378 (Cons!74448 (h!80896 (list!19413 (left!56873 t!4440))) (++!18259 (t!390189 (list!19413 (left!56873 t!4440))) (list!19413 lt!2692975))))))

(declare-fun b!7927213 () Bool)

(declare-fun res!3145648 () Bool)

(assert (=> b!7927213 (=> (not res!3145648) (not e!4678379))))

(assert (=> b!7927213 (= res!3145648 (= (size!43248 lt!2693185) (+ (size!43248 (list!19413 (left!56873 t!4440))) (size!43248 (list!19413 lt!2692975)))))))

(declare-fun d!2367686 () Bool)

(assert (=> d!2367686 e!4678379))

(declare-fun res!3145647 () Bool)

(assert (=> d!2367686 (=> (not res!3145647) (not e!4678379))))

(assert (=> d!2367686 (= res!3145647 (= (content!15783 lt!2693185) ((_ map or) (content!15783 (list!19413 (left!56873 t!4440))) (content!15783 (list!19413 lt!2692975)))))))

(assert (=> d!2367686 (= lt!2693185 e!4678378)))

(declare-fun c!1455513 () Bool)

(assert (=> d!2367686 (= c!1455513 ((_ is Nil!74448) (list!19413 (left!56873 t!4440))))))

(assert (=> d!2367686 (= (++!18259 (list!19413 (left!56873 t!4440)) (list!19413 lt!2692975)) lt!2693185)))

(assert (= (and d!2367686 c!1455513) b!7927211))

(assert (= (and d!2367686 (not c!1455513)) b!7927212))

(assert (= (and d!2367686 res!3145647) b!7927213))

(assert (= (and b!7927213 res!3145648) b!7927214))

(assert (=> b!7927212 m!8308176))

(declare-fun m!8308728 () Bool)

(assert (=> b!7927212 m!8308728))

(declare-fun m!8308730 () Bool)

(assert (=> b!7927213 m!8308730))

(assert (=> b!7927213 m!8307838))

(assert (=> b!7927213 m!8308576))

(assert (=> b!7927213 m!8308176))

(declare-fun m!8308732 () Bool)

(assert (=> b!7927213 m!8308732))

(declare-fun m!8308734 () Bool)

(assert (=> d!2367686 m!8308734))

(assert (=> d!2367686 m!8307838))

(assert (=> d!2367686 m!8308584))

(assert (=> d!2367686 m!8308176))

(declare-fun m!8308740 () Bool)

(assert (=> d!2367686 m!8308740))

(assert (=> d!2367536 d!2367686))

(assert (=> d!2367536 d!2367542))

(declare-fun b!7927218 () Bool)

(declare-fun e!4678381 () List!74572)

(assert (=> b!7927218 (= e!4678381 (++!18259 (list!19413 (left!56873 lt!2692975)) (list!19413 (right!57203 lt!2692975))))))

(declare-fun b!7927216 () Bool)

(declare-fun e!4678380 () List!74572)

(assert (=> b!7927216 (= e!4678380 e!4678381)))

(declare-fun c!1455515 () Bool)

(assert (=> b!7927216 (= c!1455515 ((_ is Leaf!30234) lt!2692975))))

(declare-fun b!7927217 () Bool)

(assert (=> b!7927217 (= e!4678381 (list!19415 (xs!19290 lt!2692975)))))

(declare-fun b!7927215 () Bool)

(assert (=> b!7927215 (= e!4678380 Nil!74448)))

(declare-fun d!2367692 () Bool)

(declare-fun c!1455514 () Bool)

(assert (=> d!2367692 (= c!1455514 ((_ is Empty!15902) lt!2692975))))

(assert (=> d!2367692 (= (list!19413 lt!2692975) e!4678380)))

(assert (= (and d!2367692 c!1455514) b!7927215))

(assert (= (and d!2367692 (not c!1455514)) b!7927216))

(assert (= (and b!7927216 c!1455515) b!7927217))

(assert (= (and b!7927216 (not c!1455515)) b!7927218))

(declare-fun m!8308754 () Bool)

(assert (=> b!7927218 m!8308754))

(declare-fun m!8308762 () Bool)

(assert (=> b!7927218 m!8308762))

(assert (=> b!7927218 m!8308754))

(assert (=> b!7927218 m!8308762))

(declare-fun m!8308766 () Bool)

(assert (=> b!7927218 m!8308766))

(declare-fun m!8308768 () Bool)

(assert (=> b!7927217 m!8308768))

(assert (=> d!2367536 d!2367692))

(declare-fun d!2367698 () Bool)

(declare-fun lt!2693189 () Int)

(assert (=> d!2367698 (>= lt!2693189 0)))

(declare-fun e!4678386 () Int)

(assert (=> d!2367698 (= lt!2693189 e!4678386)))

(declare-fun c!1455518 () Bool)

(assert (=> d!2367698 (= c!1455518 ((_ is Nil!74448) lt!2693119))))

(assert (=> d!2367698 (= (size!43248 lt!2693119) lt!2693189)))

(declare-fun b!7927227 () Bool)

(assert (=> b!7927227 (= e!4678386 0)))

(declare-fun b!7927228 () Bool)

(assert (=> b!7927228 (= e!4678386 (+ 1 (size!43248 (t!390189 lt!2693119))))))

(assert (= (and d!2367698 c!1455518) b!7927227))

(assert (= (and d!2367698 (not c!1455518)) b!7927228))

(declare-fun m!8308784 () Bool)

(assert (=> b!7927228 m!8308784))

(assert (=> b!7926970 d!2367698))

(assert (=> b!7926970 d!2367656))

(declare-fun d!2367702 () Bool)

(declare-fun lt!2693191 () Int)

(assert (=> d!2367702 (>= lt!2693191 0)))

(declare-fun e!4678389 () Int)

(assert (=> d!2367702 (= lt!2693191 e!4678389)))

(declare-fun c!1455520 () Bool)

(assert (=> d!2367702 (= c!1455520 ((_ is Nil!74448) lt!2692980))))

(assert (=> d!2367702 (= (size!43248 lt!2692980) lt!2693191)))

(declare-fun b!7927233 () Bool)

(assert (=> b!7927233 (= e!4678389 0)))

(declare-fun b!7927234 () Bool)

(assert (=> b!7927234 (= e!4678389 (+ 1 (size!43248 (t!390189 lt!2692980))))))

(assert (= (and d!2367702 c!1455520) b!7927233))

(assert (= (and d!2367702 (not c!1455520)) b!7927234))

(declare-fun m!8308798 () Bool)

(assert (=> b!7927234 m!8308798))

(assert (=> b!7926970 d!2367702))

(declare-fun d!2367706 () Bool)

(assert (=> d!2367706 (= (height!2217 (left!56873 lt!2692978)) (ite ((_ is Empty!15902) (left!56873 lt!2692978)) 0 (ite ((_ is Leaf!30234) (left!56873 lt!2692978)) 1 (cheight!16113 (left!56873 lt!2692978)))))))

(assert (=> b!7926950 d!2367706))

(declare-fun d!2367708 () Bool)

(assert (=> d!2367708 (= (height!2217 (right!57203 lt!2692978)) (ite ((_ is Empty!15902) (right!57203 lt!2692978)) 0 (ite ((_ is Leaf!30234) (right!57203 lt!2692978)) 1 (cheight!16113 (right!57203 lt!2692978)))))))

(assert (=> b!7926950 d!2367708))

(declare-fun e!4678392 () List!74572)

(declare-fun b!7927239 () Bool)

(assert (=> b!7927239 (= e!4678392 (ite c!1455404 call!735191 lt!2693092))))

(declare-fun e!4678393 () Bool)

(declare-fun lt!2693193 () List!74572)

(declare-fun b!7927242 () Bool)

(assert (=> b!7927242 (= e!4678393 (or (not (= (ite c!1455404 call!735191 lt!2693092) Nil!74448)) (= lt!2693193 (ite c!1455404 lt!2693097 lt!2693089))))))

(declare-fun b!7927240 () Bool)

(assert (=> b!7927240 (= e!4678392 (Cons!74448 (h!80896 (ite c!1455404 lt!2693097 lt!2693089)) (++!18259 (t!390189 (ite c!1455404 lt!2693097 lt!2693089)) (ite c!1455404 call!735191 lt!2693092))))))

(declare-fun b!7927241 () Bool)

(declare-fun res!3145658 () Bool)

(assert (=> b!7927241 (=> (not res!3145658) (not e!4678393))))

(assert (=> b!7927241 (= res!3145658 (= (size!43248 lt!2693193) (+ (size!43248 (ite c!1455404 lt!2693097 lt!2693089)) (size!43248 (ite c!1455404 call!735191 lt!2693092)))))))

(declare-fun d!2367710 () Bool)

(assert (=> d!2367710 e!4678393))

(declare-fun res!3145657 () Bool)

(assert (=> d!2367710 (=> (not res!3145657) (not e!4678393))))

(assert (=> d!2367710 (= res!3145657 (= (content!15783 lt!2693193) ((_ map or) (content!15783 (ite c!1455404 lt!2693097 lt!2693089)) (content!15783 (ite c!1455404 call!735191 lt!2693092)))))))

(assert (=> d!2367710 (= lt!2693193 e!4678392)))

(declare-fun c!1455522 () Bool)

(assert (=> d!2367710 (= c!1455522 ((_ is Nil!74448) (ite c!1455404 lt!2693097 lt!2693089)))))

(assert (=> d!2367710 (= (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 call!735191 lt!2693092)) lt!2693193)))

(assert (= (and d!2367710 c!1455522) b!7927239))

(assert (= (and d!2367710 (not c!1455522)) b!7927240))

(assert (= (and d!2367710 res!3145657) b!7927241))

(assert (= (and b!7927241 res!3145658) b!7927242))

(declare-fun m!8308818 () Bool)

(assert (=> b!7927240 m!8308818))

(declare-fun m!8308820 () Bool)

(assert (=> b!7927241 m!8308820))

(declare-fun m!8308822 () Bool)

(assert (=> b!7927241 m!8308822))

(declare-fun m!8308824 () Bool)

(assert (=> b!7927241 m!8308824))

(declare-fun m!8308826 () Bool)

(assert (=> d!2367710 m!8308826))

(declare-fun m!8308828 () Bool)

(assert (=> d!2367710 m!8308828))

(declare-fun m!8308830 () Bool)

(assert (=> d!2367710 m!8308830))

(assert (=> bm!735183 d!2367710))

(declare-fun d!2367718 () Bool)

(declare-fun lt!2693195 () Bool)

(assert (=> d!2367718 (= lt!2693195 (isEmpty!42778 (list!19413 (left!56873 t!4440))))))

(assert (=> d!2367718 (= lt!2693195 (= (size!43249 (left!56873 t!4440)) 0))))

(assert (=> d!2367718 (= (isEmpty!42776 (left!56873 t!4440)) lt!2693195)))

(declare-fun bs!1968846 () Bool)

(assert (= bs!1968846 d!2367718))

(assert (=> bs!1968846 m!8307838))

(assert (=> bs!1968846 m!8307838))

(declare-fun m!8308848 () Bool)

(assert (=> bs!1968846 m!8308848))

(assert (=> bs!1968846 m!8308184))

(assert (=> b!7926665 d!2367718))

(declare-fun d!2367722 () Bool)

(declare-fun res!3145686 () Bool)

(declare-fun e!4678410 () Bool)

(assert (=> d!2367722 (=> (not res!3145686) (not e!4678410))))

(assert (=> d!2367722 (= res!3145686 (= (csize!32034 (left!56873 t!4440)) (+ (size!43249 (left!56873 (left!56873 t!4440))) (size!43249 (right!57203 (left!56873 t!4440))))))))

(assert (=> d!2367722 (= (inv!95723 (left!56873 t!4440)) e!4678410)))

(declare-fun b!7927284 () Bool)

(declare-fun res!3145687 () Bool)

(assert (=> b!7927284 (=> (not res!3145687) (not e!4678410))))

(assert (=> b!7927284 (= res!3145687 (and (not (= (left!56873 (left!56873 t!4440)) Empty!15902)) (not (= (right!57203 (left!56873 t!4440)) Empty!15902))))))

(declare-fun b!7927285 () Bool)

(declare-fun res!3145688 () Bool)

(assert (=> b!7927285 (=> (not res!3145688) (not e!4678410))))

(assert (=> b!7927285 (= res!3145688 (= (cheight!16113 (left!56873 t!4440)) (+ (max!0 (height!2217 (left!56873 (left!56873 t!4440))) (height!2217 (right!57203 (left!56873 t!4440)))) 1)))))

(declare-fun b!7927286 () Bool)

(assert (=> b!7927286 (= e!4678410 (<= 0 (cheight!16113 (left!56873 t!4440))))))

(assert (= (and d!2367722 res!3145686) b!7927284))

(assert (= (and b!7927284 res!3145687) b!7927285))

(assert (= (and b!7927285 res!3145688) b!7927286))

(declare-fun m!8308902 () Bool)

(assert (=> d!2367722 m!8308902))

(declare-fun m!8308906 () Bool)

(assert (=> d!2367722 m!8308906))

(declare-fun m!8308910 () Bool)

(assert (=> b!7927285 m!8308910))

(declare-fun m!8308912 () Bool)

(assert (=> b!7927285 m!8308912))

(assert (=> b!7927285 m!8308910))

(assert (=> b!7927285 m!8308912))

(declare-fun m!8308914 () Bool)

(assert (=> b!7927285 m!8308914))

(assert (=> b!7926880 d!2367722))

(declare-fun b!7927295 () Bool)

(declare-fun e!4678415 () List!74572)

(assert (=> b!7927295 (= e!4678415 (Cons!74448 v!5484 Nil!74448))))

(declare-fun b!7927298 () Bool)

(declare-fun e!4678416 () Bool)

(declare-fun lt!2693204 () List!74572)

(assert (=> b!7927298 (= e!4678416 (or (not (= (Cons!74448 v!5484 Nil!74448) Nil!74448)) (= lt!2693204 (list!19413 t!4440))))))

(declare-fun b!7927296 () Bool)

(assert (=> b!7927296 (= e!4678415 (Cons!74448 (h!80896 (list!19413 t!4440)) (++!18259 (t!390189 (list!19413 t!4440)) (Cons!74448 v!5484 Nil!74448))))))

(declare-fun b!7927297 () Bool)

(declare-fun res!3145692 () Bool)

(assert (=> b!7927297 (=> (not res!3145692) (not e!4678416))))

(assert (=> b!7927297 (= res!3145692 (= (size!43248 lt!2693204) (+ (size!43248 (list!19413 t!4440)) (size!43248 (Cons!74448 v!5484 Nil!74448)))))))

(declare-fun d!2367750 () Bool)

(assert (=> d!2367750 e!4678416))

(declare-fun res!3145691 () Bool)

(assert (=> d!2367750 (=> (not res!3145691) (not e!4678416))))

(assert (=> d!2367750 (= res!3145691 (= (content!15783 lt!2693204) ((_ map or) (content!15783 (list!19413 t!4440)) (content!15783 (Cons!74448 v!5484 Nil!74448)))))))

(assert (=> d!2367750 (= lt!2693204 e!4678415)))

(declare-fun c!1455533 () Bool)

(assert (=> d!2367750 (= c!1455533 ((_ is Nil!74448) (list!19413 t!4440)))))

(assert (=> d!2367750 (= (++!18259 (list!19413 t!4440) (Cons!74448 v!5484 Nil!74448)) lt!2693204)))

(assert (= (and d!2367750 c!1455533) b!7927295))

(assert (= (and d!2367750 (not c!1455533)) b!7927296))

(assert (= (and d!2367750 res!3145691) b!7927297))

(assert (= (and b!7927297 res!3145692) b!7927298))

(declare-fun m!8308936 () Bool)

(assert (=> b!7927296 m!8308936))

(declare-fun m!8308938 () Bool)

(assert (=> b!7927297 m!8308938))

(assert (=> b!7927297 m!8307854))

(assert (=> b!7927297 m!8308166))

(declare-fun m!8308940 () Bool)

(assert (=> b!7927297 m!8308940))

(declare-fun m!8308942 () Bool)

(assert (=> d!2367750 m!8308942))

(assert (=> d!2367750 m!8307854))

(assert (=> d!2367750 m!8308154))

(declare-fun m!8308944 () Bool)

(assert (=> d!2367750 m!8308944))

(assert (=> b!7926921 d!2367750))

(declare-fun b!7927308 () Bool)

(declare-fun e!4678420 () List!74572)

(assert (=> b!7927308 (= e!4678420 (++!18259 lt!2692979 lt!2692980))))

(declare-fun e!4678421 () Bool)

(declare-fun b!7927311 () Bool)

(declare-fun lt!2693205 () List!74572)

(assert (=> b!7927311 (= e!4678421 (or (not (= (++!18259 lt!2692979 lt!2692980) Nil!74448)) (= lt!2693205 (t!390189 lt!2692976))))))

(declare-fun b!7927309 () Bool)

(assert (=> b!7927309 (= e!4678420 (Cons!74448 (h!80896 (t!390189 lt!2692976)) (++!18259 (t!390189 (t!390189 lt!2692976)) (++!18259 lt!2692979 lt!2692980))))))

(declare-fun b!7927310 () Bool)

(declare-fun res!3145703 () Bool)

(assert (=> b!7927310 (=> (not res!3145703) (not e!4678421))))

(assert (=> b!7927310 (= res!3145703 (= (size!43248 lt!2693205) (+ (size!43248 (t!390189 lt!2692976)) (size!43248 (++!18259 lt!2692979 lt!2692980)))))))

(declare-fun d!2367756 () Bool)

(assert (=> d!2367756 e!4678421))

(declare-fun res!3145702 () Bool)

(assert (=> d!2367756 (=> (not res!3145702) (not e!4678421))))

(assert (=> d!2367756 (= res!3145702 (= (content!15783 lt!2693205) ((_ map or) (content!15783 (t!390189 lt!2692976)) (content!15783 (++!18259 lt!2692979 lt!2692980)))))))

(assert (=> d!2367756 (= lt!2693205 e!4678420)))

(declare-fun c!1455534 () Bool)

(assert (=> d!2367756 (= c!1455534 ((_ is Nil!74448) (t!390189 lt!2692976)))))

(assert (=> d!2367756 (= (++!18259 (t!390189 lt!2692976) (++!18259 lt!2692979 lt!2692980)) lt!2693205)))

(assert (= (and d!2367756 c!1455534) b!7927308))

(assert (= (and d!2367756 (not c!1455534)) b!7927309))

(assert (= (and d!2367756 res!3145702) b!7927310))

(assert (= (and b!7927310 res!3145703) b!7927311))

(assert (=> b!7927309 m!8307836))

(declare-fun m!8308952 () Bool)

(assert (=> b!7927309 m!8308952))

(declare-fun m!8308954 () Bool)

(assert (=> b!7927310 m!8308954))

(assert (=> b!7927310 m!8308626))

(assert (=> b!7927310 m!8307836))

(assert (=> b!7927310 m!8308248))

(declare-fun m!8308956 () Bool)

(assert (=> d!2367756 m!8308956))

(declare-fun m!8308958 () Bool)

(assert (=> d!2367756 m!8308958))

(assert (=> d!2367756 m!8307836))

(assert (=> d!2367756 m!8308252))

(assert (=> b!7926973 d!2367756))

(declare-fun d!2367764 () Bool)

(declare-fun lt!2693224 () Int)

(assert (=> d!2367764 (>= lt!2693224 0)))

(declare-fun e!4678428 () Int)

(assert (=> d!2367764 (= lt!2693224 e!4678428)))

(declare-fun c!1455540 () Bool)

(assert (=> d!2367764 (= c!1455540 ((_ is Nil!74448) lt!2693117))))

(assert (=> d!2367764 (= (size!43248 lt!2693117) lt!2693224)))

(declare-fun b!7927325 () Bool)

(assert (=> b!7927325 (= e!4678428 0)))

(declare-fun b!7927326 () Bool)

(assert (=> b!7927326 (= e!4678428 (+ 1 (size!43248 (t!390189 lt!2693117))))))

(assert (= (and d!2367764 c!1455540) b!7927325))

(assert (= (and d!2367764 (not c!1455540)) b!7927326))

(declare-fun m!8308960 () Bool)

(assert (=> b!7927326 m!8308960))

(assert (=> b!7926948 d!2367764))

(declare-fun d!2367766 () Bool)

(declare-fun lt!2693225 () Int)

(assert (=> d!2367766 (>= lt!2693225 0)))

(declare-fun e!4678429 () Int)

(assert (=> d!2367766 (= lt!2693225 e!4678429)))

(declare-fun c!1455541 () Bool)

(assert (=> d!2367766 (= c!1455541 ((_ is Nil!74448) (++!18259 lt!2692976 lt!2692979)))))

(assert (=> d!2367766 (= (size!43248 (++!18259 lt!2692976 lt!2692979)) lt!2693225)))

(declare-fun b!7927327 () Bool)

(assert (=> b!7927327 (= e!4678429 0)))

(declare-fun b!7927328 () Bool)

(assert (=> b!7927328 (= e!4678429 (+ 1 (size!43248 (t!390189 (++!18259 lt!2692976 lt!2692979)))))))

(assert (= (and d!2367766 c!1455541) b!7927327))

(assert (= (and d!2367766 (not c!1455541)) b!7927328))

(declare-fun m!8308962 () Bool)

(assert (=> b!7927328 m!8308962))

(assert (=> b!7926948 d!2367766))

(assert (=> b!7926948 d!2367702))

(declare-fun d!2367768 () Bool)

(declare-fun c!1455546 () Bool)

(assert (=> d!2367768 (= c!1455546 ((_ is Nil!74448) lt!2693118))))

(declare-fun e!4678436 () (InoxSet T!145804))

(assert (=> d!2367768 (= (content!15783 lt!2693118) e!4678436)))

(declare-fun b!7927341 () Bool)

(assert (=> b!7927341 (= e!4678436 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927342 () Bool)

(assert (=> b!7927342 (= e!4678436 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693118) true) (content!15783 (t!390189 lt!2693118))))))

(assert (= (and d!2367768 c!1455546) b!7927341))

(assert (= (and d!2367768 (not c!1455546)) b!7927342))

(declare-fun m!8309034 () Bool)

(assert (=> b!7927342 m!8309034))

(declare-fun m!8309036 () Bool)

(assert (=> b!7927342 m!8309036))

(assert (=> d!2367544 d!2367768))

(declare-fun d!2367780 () Bool)

(declare-fun c!1455547 () Bool)

(assert (=> d!2367780 (= c!1455547 ((_ is Nil!74448) lt!2692976))))

(declare-fun e!4678439 () (InoxSet T!145804))

(assert (=> d!2367780 (= (content!15783 lt!2692976) e!4678439)))

(declare-fun b!7927349 () Bool)

(assert (=> b!7927349 (= e!4678439 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927350 () Bool)

(assert (=> b!7927350 (= e!4678439 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2692976) true) (content!15783 (t!390189 lt!2692976))))))

(assert (= (and d!2367780 c!1455547) b!7927349))

(assert (= (and d!2367780 (not c!1455547)) b!7927350))

(declare-fun m!8309050 () Bool)

(assert (=> b!7927350 m!8309050))

(assert (=> b!7927350 m!8308958))

(assert (=> d!2367544 d!2367780))

(declare-fun d!2367784 () Bool)

(declare-fun c!1455549 () Bool)

(assert (=> d!2367784 (= c!1455549 ((_ is Nil!74448) lt!2692979))))

(declare-fun e!4678442 () (InoxSet T!145804))

(assert (=> d!2367784 (= (content!15783 lt!2692979) e!4678442)))

(declare-fun b!7927354 () Bool)

(assert (=> b!7927354 (= e!4678442 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927355 () Bool)

(assert (=> b!7927355 (= e!4678442 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2692979) true) (content!15783 (t!390189 lt!2692979))))))

(assert (= (and d!2367784 c!1455549) b!7927354))

(assert (= (and d!2367784 (not c!1455549)) b!7927355))

(declare-fun m!8309056 () Bool)

(assert (=> b!7927355 m!8309056))

(declare-fun m!8309058 () Bool)

(assert (=> b!7927355 m!8309058))

(assert (=> d!2367544 d!2367784))

(declare-fun d!2367788 () Bool)

(declare-fun c!1455551 () Bool)

(assert (=> d!2367788 (= c!1455551 ((_ is Nil!74448) lt!2693108))))

(declare-fun e!4678445 () (InoxSet T!145804))

(assert (=> d!2367788 (= (content!15783 lt!2693108) e!4678445)))

(declare-fun b!7927359 () Bool)

(assert (=> b!7927359 (= e!4678445 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927360 () Bool)

(assert (=> b!7927360 (= e!4678445 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693108) true) (content!15783 (t!390189 lt!2693108))))))

(assert (= (and d!2367788 c!1455551) b!7927359))

(assert (= (and d!2367788 (not c!1455551)) b!7927360))

(declare-fun m!8309064 () Bool)

(assert (=> b!7927360 m!8309064))

(declare-fun m!8309070 () Bool)

(assert (=> b!7927360 m!8309070))

(assert (=> b!7926917 d!2367788))

(declare-fun d!2367792 () Bool)

(declare-fun c!1455553 () Bool)

(assert (=> d!2367792 (= c!1455553 ((_ is Nil!74448) (list!19413 t!4440)))))

(declare-fun e!4678447 () (InoxSet T!145804))

(assert (=> d!2367792 (= (content!15783 (list!19413 t!4440)) e!4678447)))

(declare-fun b!7927363 () Bool)

(assert (=> b!7927363 (= e!4678447 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927364 () Bool)

(assert (=> b!7927364 (= e!4678447 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 t!4440)) true) (content!15783 (t!390189 (list!19413 t!4440)))))))

(assert (= (and d!2367792 c!1455553) b!7927363))

(assert (= (and d!2367792 (not c!1455553)) b!7927364))

(declare-fun m!8309072 () Bool)

(assert (=> b!7927364 m!8309072))

(declare-fun m!8309074 () Bool)

(assert (=> b!7927364 m!8309074))

(assert (=> b!7926917 d!2367792))

(declare-fun d!2367796 () Bool)

(declare-fun e!4678450 () Bool)

(assert (=> d!2367796 e!4678450))

(declare-fun res!3145721 () Bool)

(assert (=> d!2367796 (=> (not res!3145721) (not e!4678450))))

(declare-fun lt!2693229 () List!74572)

(assert (=> d!2367796 (= res!3145721 ((_ is Cons!74448) lt!2693229))))

(declare-fun e!4678449 () List!74572)

(assert (=> d!2367796 (= lt!2693229 e!4678449)))

(declare-fun c!1455554 () Bool)

(assert (=> d!2367796 (= c!1455554 ((_ is Nil!74448) (t!390189 (list!19413 t!4440))))))

(assert (=> d!2367796 (= ($colon+!315 (t!390189 (list!19413 t!4440)) v!5484) lt!2693229)))

(declare-fun bm!735218 () Bool)

(declare-fun call!735223 () (_ BitVec 32))

(assert (=> bm!735218 (= call!735223 (isize!119 lt!2693229))))

(declare-fun bm!735219 () Bool)

(declare-fun call!735224 () (_ BitVec 32))

(assert (=> bm!735219 (= call!735224 (isize!119 (t!390189 (list!19413 t!4440))))))

(declare-fun b!7927365 () Bool)

(declare-fun e!4678448 () Bool)

(assert (=> b!7927365 (= e!4678448 (= call!735223 (bvadd call!735224 #b00000000000000000000000000000001)))))

(declare-fun b!7927366 () Bool)

(assert (=> b!7927366 (= e!4678449 (Cons!74448 (h!80896 (t!390189 (list!19413 t!4440))) ($colon+!315 (t!390189 (t!390189 (list!19413 t!4440))) v!5484)))))

(declare-fun b!7927367 () Bool)

(assert (=> b!7927367 (= e!4678448 (= call!735223 call!735224))))

(declare-fun b!7927368 () Bool)

(declare-fun res!3145722 () Bool)

(assert (=> b!7927368 (=> (not res!3145722) (not e!4678450))))

(assert (=> b!7927368 (= res!3145722 (= (content!15783 lt!2693229) ((_ map or) (content!15783 (t!390189 (list!19413 t!4440))) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun b!7927369 () Bool)

(declare-fun res!3145719 () Bool)

(assert (=> b!7927369 (=> (not res!3145719) (not e!4678450))))

(assert (=> b!7927369 (= res!3145719 e!4678448)))

(declare-fun c!1455555 () Bool)

(assert (=> b!7927369 (= c!1455555 (bvslt (isize!119 (t!390189 (list!19413 t!4440))) #b01111111111111111111111111111111))))

(declare-fun b!7927370 () Bool)

(assert (=> b!7927370 (= e!4678449 (Cons!74448 v!5484 (t!390189 (list!19413 t!4440))))))

(declare-fun b!7927371 () Bool)

(declare-fun res!3145720 () Bool)

(assert (=> b!7927371 (=> (not res!3145720) (not e!4678450))))

(assert (=> b!7927371 (= res!3145720 (= (size!43248 lt!2693229) (+ (size!43248 (t!390189 (list!19413 t!4440))) 1)))))

(declare-fun b!7927372 () Bool)

(assert (=> b!7927372 (= e!4678450 (= lt!2693229 (++!18259 (t!390189 (list!19413 t!4440)) (Cons!74448 v!5484 Nil!74448))))))

(assert (= (and d!2367796 c!1455554) b!7927370))

(assert (= (and d!2367796 (not c!1455554)) b!7927366))

(assert (= (and d!2367796 res!3145721) b!7927371))

(assert (= (and b!7927371 res!3145720) b!7927369))

(assert (= (and b!7927369 c!1455555) b!7927365))

(assert (= (and b!7927369 (not c!1455555)) b!7927367))

(assert (= (or b!7927365 b!7927367) bm!735219))

(assert (= (or b!7927365 b!7927367) bm!735218))

(assert (= (and b!7927369 res!3145719) b!7927368))

(assert (= (and b!7927368 res!3145722) b!7927372))

(declare-fun m!8309076 () Bool)

(assert (=> bm!735218 m!8309076))

(declare-fun m!8309078 () Bool)

(assert (=> b!7927368 m!8309078))

(assert (=> b!7927368 m!8309074))

(assert (=> b!7927368 m!8308156))

(declare-fun m!8309080 () Bool)

(assert (=> bm!735219 m!8309080))

(assert (=> b!7927369 m!8309080))

(assert (=> b!7927372 m!8308936))

(declare-fun m!8309082 () Bool)

(assert (=> b!7927366 m!8309082))

(declare-fun m!8309084 () Bool)

(assert (=> b!7927371 m!8309084))

(declare-fun m!8309086 () Bool)

(assert (=> b!7927371 m!8309086))

(assert (=> b!7926915 d!2367796))

(declare-fun d!2367798 () Bool)

(declare-fun c!1455556 () Bool)

(assert (=> d!2367798 (= c!1455556 ((_ is Nil!74448) lt!2693119))))

(declare-fun e!4678451 () (InoxSet T!145804))

(assert (=> d!2367798 (= (content!15783 lt!2693119) e!4678451)))

(declare-fun b!7927373 () Bool)

(assert (=> b!7927373 (= e!4678451 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927374 () Bool)

(assert (=> b!7927374 (= e!4678451 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693119) true) (content!15783 (t!390189 lt!2693119))))))

(assert (= (and d!2367798 c!1455556) b!7927373))

(assert (= (and d!2367798 (not c!1455556)) b!7927374))

(declare-fun m!8309088 () Bool)

(assert (=> b!7927374 m!8309088))

(declare-fun m!8309090 () Bool)

(assert (=> b!7927374 m!8309090))

(assert (=> d!2367548 d!2367798))

(assert (=> d!2367548 d!2367784))

(declare-fun d!2367800 () Bool)

(declare-fun c!1455557 () Bool)

(assert (=> d!2367800 (= c!1455557 ((_ is Nil!74448) lt!2692980))))

(declare-fun e!4678452 () (InoxSet T!145804))

(assert (=> d!2367800 (= (content!15783 lt!2692980) e!4678452)))

(declare-fun b!7927375 () Bool)

(assert (=> b!7927375 (= e!4678452 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927376 () Bool)

(assert (=> b!7927376 (= e!4678452 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2692980) true) (content!15783 (t!390189 lt!2692980))))))

(assert (= (and d!2367800 c!1455557) b!7927375))

(assert (= (and d!2367800 (not c!1455557)) b!7927376))

(declare-fun m!8309092 () Bool)

(assert (=> b!7927376 m!8309092))

(declare-fun m!8309094 () Bool)

(assert (=> b!7927376 m!8309094))

(assert (=> d!2367548 d!2367800))

(declare-fun d!2367802 () Bool)

(assert (=> d!2367802 (= (height!2217 (right!57203 t!4440)) (ite ((_ is Empty!15902) (right!57203 t!4440)) 0 (ite ((_ is Leaf!30234) (right!57203 t!4440)) 1 (cheight!16113 (right!57203 t!4440)))))))

(assert (=> b!7926868 d!2367802))

(declare-fun d!2367804 () Bool)

(assert (=> d!2367804 (= (height!2217 lt!2693102) (ite ((_ is Empty!15902) lt!2693102) 0 (ite ((_ is Leaf!30234) lt!2693102) 1 (cheight!16113 lt!2693102))))))

(assert (=> b!7926868 d!2367804))

(declare-fun d!2367806 () Bool)

(declare-fun res!3145729 () Bool)

(declare-fun e!4678459 () Bool)

(assert (=> d!2367806 (=> (not res!3145729) (not e!4678459))))

(assert (=> d!2367806 (= res!3145729 (<= (size!43248 (list!19415 (xs!19290 (right!57203 t!4440)))) 512))))

(assert (=> d!2367806 (= (inv!95724 (right!57203 t!4440)) e!4678459)))

(declare-fun b!7927389 () Bool)

(declare-fun res!3145730 () Bool)

(assert (=> b!7927389 (=> (not res!3145730) (not e!4678459))))

(assert (=> b!7927389 (= res!3145730 (= (csize!32035 (right!57203 t!4440)) (size!43248 (list!19415 (xs!19290 (right!57203 t!4440))))))))

(declare-fun b!7927390 () Bool)

(assert (=> b!7927390 (= e!4678459 (and (> (csize!32035 (right!57203 t!4440)) 0) (<= (csize!32035 (right!57203 t!4440)) 512)))))

(assert (= (and d!2367806 res!3145729) b!7927389))

(assert (= (and b!7927389 res!3145730) b!7927390))

(assert (=> d!2367806 m!8308086))

(assert (=> d!2367806 m!8308086))

(declare-fun m!8309118 () Bool)

(assert (=> d!2367806 m!8309118))

(assert (=> b!7927389 m!8308086))

(assert (=> b!7927389 m!8308086))

(assert (=> b!7927389 m!8309118))

(assert (=> b!7926885 d!2367806))

(assert (=> b!7926879 d!2367804))

(assert (=> b!7926879 d!2367802))

(declare-fun d!2367822 () Bool)

(assert (=> d!2367822 (= (max!0 (height!2217 (left!56873 t!4440)) (height!2217 lt!2692975)) (ite (< (height!2217 (left!56873 t!4440)) (height!2217 lt!2692975)) (height!2217 lt!2692975) (height!2217 (left!56873 t!4440))))))

(assert (=> b!7926937 d!2367822))

(declare-fun d!2367828 () Bool)

(declare-fun lt!2693242 () Int)

(assert (=> d!2367828 (= lt!2693242 (size!43248 (list!19413 (left!56873 t!4440))))))

(assert (=> d!2367828 (= lt!2693242 (ite ((_ is Empty!15902) (left!56873 t!4440)) 0 (ite ((_ is Leaf!30234) (left!56873 t!4440)) (csize!32035 (left!56873 t!4440)) (csize!32034 (left!56873 t!4440)))))))

(assert (=> d!2367828 (= (size!43249 (left!56873 t!4440)) lt!2693242)))

(declare-fun bs!1968852 () Bool)

(assert (= bs!1968852 d!2367828))

(assert (=> bs!1968852 m!8307838))

(assert (=> bs!1968852 m!8307838))

(assert (=> bs!1968852 m!8308576))

(assert (=> b!7926937 d!2367828))

(assert (=> b!7926937 d!2367484))

(assert (=> b!7926937 d!2367482))

(declare-fun d!2367834 () Bool)

(declare-fun lt!2693243 () Int)

(assert (=> d!2367834 (= lt!2693243 (size!43248 (list!19413 lt!2692975)))))

(assert (=> d!2367834 (= lt!2693243 (ite ((_ is Empty!15902) lt!2692975) 0 (ite ((_ is Leaf!30234) lt!2692975) (csize!32035 lt!2692975) (csize!32034 lt!2692975))))))

(assert (=> d!2367834 (= (size!43249 lt!2692975) lt!2693243)))

(declare-fun bs!1968853 () Bool)

(assert (= bs!1968853 d!2367834))

(assert (=> bs!1968853 m!8308176))

(assert (=> bs!1968853 m!8308176))

(assert (=> bs!1968853 m!8308732))

(assert (=> b!7926937 d!2367834))

(declare-fun d!2367836 () Bool)

(declare-fun lt!2693252 () (_ BitVec 32))

(assert (=> d!2367836 (and (bvsle #b00000000000000000000000000000000 lt!2693252) (bvsle lt!2693252 #b01111111111111111111111111111111))))

(declare-fun e!4678472 () (_ BitVec 32))

(assert (=> d!2367836 (= lt!2693252 e!4678472)))

(declare-fun c!1455571 () Bool)

(assert (=> d!2367836 (= c!1455571 ((_ is Nil!74448) (list!19413 t!4440)))))

(assert (=> d!2367836 (= (isize!119 (list!19413 t!4440)) lt!2693252)))

(declare-fun b!7927417 () Bool)

(assert (=> b!7927417 (= e!4678472 #b00000000000000000000000000000000)))

(declare-fun b!7927418 () Bool)

(declare-fun lt!2693253 () (_ BitVec 32))

(assert (=> b!7927418 (= e!4678472 (ite (= lt!2693253 #b01111111111111111111111111111111) lt!2693253 (bvadd #b00000000000000000000000000000001 lt!2693253)))))

(assert (=> b!7927418 (= lt!2693253 (isize!119 (t!390189 (list!19413 t!4440))))))

(assert (= (and d!2367836 c!1455571) b!7927417))

(assert (= (and d!2367836 (not c!1455571)) b!7927418))

(assert (=> b!7927418 m!8309080))

(assert (=> bm!735193 d!2367836))

(declare-fun d!2367842 () Bool)

(declare-fun c!1455572 () Bool)

(assert (=> d!2367842 (= c!1455572 ((_ is Nil!74448) lt!2693120))))

(declare-fun e!4678473 () (InoxSet T!145804))

(assert (=> d!2367842 (= (content!15783 lt!2693120) e!4678473)))

(declare-fun b!7927419 () Bool)

(assert (=> b!7927419 (= e!4678473 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927420 () Bool)

(assert (=> b!7927420 (= e!4678473 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693120) true) (content!15783 (t!390189 lt!2693120))))))

(assert (= (and d!2367842 c!1455572) b!7927419))

(assert (= (and d!2367842 (not c!1455572)) b!7927420))

(declare-fun m!8309150 () Bool)

(assert (=> b!7927420 m!8309150))

(declare-fun m!8309152 () Bool)

(assert (=> b!7927420 m!8309152))

(assert (=> d!2367550 d!2367842))

(assert (=> d!2367550 d!2367780))

(declare-fun d!2367844 () Bool)

(declare-fun c!1455573 () Bool)

(assert (=> d!2367844 (= c!1455573 ((_ is Nil!74448) (++!18259 lt!2692979 lt!2692980)))))

(declare-fun e!4678474 () (InoxSet T!145804))

(assert (=> d!2367844 (= (content!15783 (++!18259 lt!2692979 lt!2692980)) e!4678474)))

(declare-fun b!7927421 () Bool)

(assert (=> b!7927421 (= e!4678474 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927422 () Bool)

(assert (=> b!7927422 (= e!4678474 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (++!18259 lt!2692979 lt!2692980)) true) (content!15783 (t!390189 (++!18259 lt!2692979 lt!2692980)))))))

(assert (= (and d!2367844 c!1455573) b!7927421))

(assert (= (and d!2367844 (not c!1455573)) b!7927422))

(declare-fun m!8309154 () Bool)

(assert (=> b!7927422 m!8309154))

(declare-fun m!8309156 () Bool)

(assert (=> b!7927422 m!8309156))

(assert (=> d!2367550 d!2367844))

(assert (=> d!2367534 d!2367538))

(declare-fun d!2367846 () Bool)

(assert (=> d!2367846 (= (++!18259 (++!18259 lt!2692976 lt!2692979) lt!2692980) (++!18259 lt!2692976 (++!18259 lt!2692979 lt!2692980)))))

(assert (=> d!2367846 true))

(declare-fun _$15!892 () Unit!169565)

(assert (=> d!2367846 (= (choose!59826 lt!2692976 lt!2692979 lt!2692980) _$15!892)))

(declare-fun bs!1968856 () Bool)

(assert (= bs!1968856 d!2367846))

(assert (=> bs!1968856 m!8307844))

(assert (=> bs!1968856 m!8307844))

(assert (=> bs!1968856 m!8307846))

(assert (=> bs!1968856 m!8307836))

(assert (=> bs!1968856 m!8307836))

(assert (=> bs!1968856 m!8307850))

(assert (=> d!2367534 d!2367846))

(assert (=> d!2367534 d!2367544))

(assert (=> d!2367534 d!2367548))

(assert (=> d!2367534 d!2367550))

(declare-fun d!2367854 () Bool)

(declare-fun res!3145739 () Bool)

(declare-fun e!4678481 () Bool)

(assert (=> d!2367854 (=> (not res!3145739) (not e!4678481))))

(assert (=> d!2367854 (= res!3145739 (= (csize!32034 (right!57203 t!4440)) (+ (size!43249 (left!56873 (right!57203 t!4440))) (size!43249 (right!57203 (right!57203 t!4440))))))))

(assert (=> d!2367854 (= (inv!95723 (right!57203 t!4440)) e!4678481)))

(declare-fun b!7927435 () Bool)

(declare-fun res!3145740 () Bool)

(assert (=> b!7927435 (=> (not res!3145740) (not e!4678481))))

(assert (=> b!7927435 (= res!3145740 (and (not (= (left!56873 (right!57203 t!4440)) Empty!15902)) (not (= (right!57203 (right!57203 t!4440)) Empty!15902))))))

(declare-fun b!7927436 () Bool)

(declare-fun res!3145741 () Bool)

(assert (=> b!7927436 (=> (not res!3145741) (not e!4678481))))

(assert (=> b!7927436 (= res!3145741 (= (cheight!16113 (right!57203 t!4440)) (+ (max!0 (height!2217 (left!56873 (right!57203 t!4440))) (height!2217 (right!57203 (right!57203 t!4440)))) 1)))))

(declare-fun b!7927437 () Bool)

(assert (=> b!7927437 (= e!4678481 (<= 0 (cheight!16113 (right!57203 t!4440))))))

(assert (= (and d!2367854 res!3145739) b!7927435))

(assert (= (and b!7927435 res!3145740) b!7927436))

(assert (= (and b!7927436 res!3145741) b!7927437))

(declare-fun m!8309188 () Bool)

(assert (=> d!2367854 m!8309188))

(declare-fun m!8309190 () Bool)

(assert (=> d!2367854 m!8309190))

(assert (=> b!7927436 m!8308122))

(assert (=> b!7927436 m!8308370))

(assert (=> b!7927436 m!8308122))

(assert (=> b!7927436 m!8308370))

(declare-fun m!8309192 () Bool)

(assert (=> b!7927436 m!8309192))

(assert (=> b!7926883 d!2367854))

(declare-fun d!2367856 () Bool)

(assert (=> d!2367856 (= (++!18259 (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092)) (ite c!1455404 lt!2693093 lt!2693103)) (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (++!18259 (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103))))))

(declare-fun lt!2693255 () Unit!169565)

(assert (=> d!2367856 (= lt!2693255 (choose!59826 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103)))))

(assert (=> d!2367856 (= (lemmaConcatAssociativity!3162 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103)) lt!2693255)))

(declare-fun bs!1968857 () Bool)

(assert (= bs!1968857 d!2367856))

(declare-fun m!8309194 () Bool)

(assert (=> bs!1968857 m!8309194))

(declare-fun m!8309196 () Bool)

(assert (=> bs!1968857 m!8309196))

(declare-fun m!8309198 () Bool)

(assert (=> bs!1968857 m!8309198))

(assert (=> bs!1968857 m!8309194))

(assert (=> bs!1968857 m!8309198))

(declare-fun m!8309202 () Bool)

(assert (=> bs!1968857 m!8309202))

(declare-fun m!8309208 () Bool)

(assert (=> bs!1968857 m!8309208))

(assert (=> bm!735187 d!2367856))

(declare-fun d!2367858 () Bool)

(declare-fun c!1455579 () Bool)

(assert (=> d!2367858 (= c!1455579 ((_ is Node!15902) (left!56873 (left!56873 t!4440))))))

(declare-fun e!4678486 () Bool)

(assert (=> d!2367858 (= (inv!95719 (left!56873 (left!56873 t!4440))) e!4678486)))

(declare-fun b!7927444 () Bool)

(assert (=> b!7927444 (= e!4678486 (inv!95723 (left!56873 (left!56873 t!4440))))))

(declare-fun b!7927445 () Bool)

(declare-fun e!4678487 () Bool)

(assert (=> b!7927445 (= e!4678486 e!4678487)))

(declare-fun res!3145742 () Bool)

(assert (=> b!7927445 (= res!3145742 (not ((_ is Leaf!30234) (left!56873 (left!56873 t!4440)))))))

(assert (=> b!7927445 (=> res!3145742 e!4678487)))

(declare-fun b!7927446 () Bool)

(assert (=> b!7927446 (= e!4678487 (inv!95724 (left!56873 (left!56873 t!4440))))))

(assert (= (and d!2367858 c!1455579) b!7927444))

(assert (= (and d!2367858 (not c!1455579)) b!7927445))

(assert (= (and b!7927445 (not res!3145742)) b!7927446))

(declare-fun m!8309214 () Bool)

(assert (=> b!7927444 m!8309214))

(declare-fun m!8309218 () Bool)

(assert (=> b!7927446 m!8309218))

(assert (=> b!7926989 d!2367858))

(declare-fun d!2367860 () Bool)

(declare-fun c!1455580 () Bool)

(assert (=> d!2367860 (= c!1455580 ((_ is Node!15902) (right!57203 (left!56873 t!4440))))))

(declare-fun e!4678490 () Bool)

(assert (=> d!2367860 (= (inv!95719 (right!57203 (left!56873 t!4440))) e!4678490)))

(declare-fun b!7927450 () Bool)

(assert (=> b!7927450 (= e!4678490 (inv!95723 (right!57203 (left!56873 t!4440))))))

(declare-fun b!7927451 () Bool)

(declare-fun e!4678491 () Bool)

(assert (=> b!7927451 (= e!4678490 e!4678491)))

(declare-fun res!3145743 () Bool)

(assert (=> b!7927451 (= res!3145743 (not ((_ is Leaf!30234) (right!57203 (left!56873 t!4440)))))))

(assert (=> b!7927451 (=> res!3145743 e!4678491)))

(declare-fun b!7927452 () Bool)

(assert (=> b!7927452 (= e!4678491 (inv!95724 (right!57203 (left!56873 t!4440))))))

(assert (= (and d!2367860 c!1455580) b!7927450))

(assert (= (and d!2367860 (not c!1455580)) b!7927451))

(assert (= (and b!7927451 (not res!3145743)) b!7927452))

(declare-fun m!8309220 () Bool)

(assert (=> b!7927450 m!8309220))

(declare-fun m!8309222 () Bool)

(assert (=> b!7927452 m!8309222))

(assert (=> b!7926989 d!2367860))

(declare-fun b!7927453 () Bool)

(declare-fun e!4678492 () List!74572)

(assert (=> b!7927453 (= e!4678492 lt!2693104)))

(declare-fun b!7927456 () Bool)

(declare-fun lt!2693256 () List!74572)

(declare-fun e!4678493 () Bool)

(assert (=> b!7927456 (= e!4678493 (or (not (= lt!2693104 Nil!74448)) (= lt!2693256 call!735191)))))

(declare-fun b!7927454 () Bool)

(assert (=> b!7927454 (= e!4678492 (Cons!74448 (h!80896 call!735191) (++!18259 (t!390189 call!735191) lt!2693104)))))

(declare-fun b!7927455 () Bool)

(declare-fun res!3145745 () Bool)

(assert (=> b!7927455 (=> (not res!3145745) (not e!4678493))))

(assert (=> b!7927455 (= res!3145745 (= (size!43248 lt!2693256) (+ (size!43248 call!735191) (size!43248 lt!2693104))))))

(declare-fun d!2367862 () Bool)

(assert (=> d!2367862 e!4678493))

(declare-fun res!3145744 () Bool)

(assert (=> d!2367862 (=> (not res!3145744) (not e!4678493))))

(assert (=> d!2367862 (= res!3145744 (= (content!15783 lt!2693256) ((_ map or) (content!15783 call!735191) (content!15783 lt!2693104))))))

(assert (=> d!2367862 (= lt!2693256 e!4678492)))

(declare-fun c!1455581 () Bool)

(assert (=> d!2367862 (= c!1455581 ((_ is Nil!74448) call!735191))))

(assert (=> d!2367862 (= (++!18259 call!735191 lt!2693104) lt!2693256)))

(assert (= (and d!2367862 c!1455581) b!7927453))

(assert (= (and d!2367862 (not c!1455581)) b!7927454))

(assert (= (and d!2367862 res!3145744) b!7927455))

(assert (= (and b!7927455 res!3145745) b!7927456))

(declare-fun m!8309236 () Bool)

(assert (=> b!7927454 m!8309236))

(declare-fun m!8309238 () Bool)

(assert (=> b!7927455 m!8309238))

(declare-fun m!8309240 () Bool)

(assert (=> b!7927455 m!8309240))

(declare-fun m!8309242 () Bool)

(assert (=> b!7927455 m!8309242))

(declare-fun m!8309244 () Bool)

(assert (=> d!2367862 m!8309244))

(declare-fun m!8309246 () Bool)

(assert (=> d!2367862 m!8309246))

(declare-fun m!8309248 () Bool)

(assert (=> d!2367862 m!8309248))

(assert (=> b!7926875 d!2367862))

(declare-fun d!2367864 () Bool)

(assert (=> d!2367864 (= (++!18259 (++!18259 lt!2693091 lt!2693095) lt!2693104) (++!18259 lt!2693091 (++!18259 lt!2693095 lt!2693104)))))

(declare-fun lt!2693257 () Unit!169565)

(assert (=> d!2367864 (= lt!2693257 (choose!59826 lt!2693091 lt!2693095 lt!2693104))))

(assert (=> d!2367864 (= (lemmaConcatAssociativity!3162 lt!2693091 lt!2693095 lt!2693104) lt!2693257)))

(declare-fun bs!1968858 () Bool)

(assert (= bs!1968858 d!2367864))

(declare-fun m!8309250 () Bool)

(assert (=> bs!1968858 m!8309250))

(declare-fun m!8309252 () Bool)

(assert (=> bs!1968858 m!8309252))

(declare-fun m!8309254 () Bool)

(assert (=> bs!1968858 m!8309254))

(assert (=> bs!1968858 m!8309250))

(assert (=> bs!1968858 m!8309254))

(declare-fun m!8309256 () Bool)

(assert (=> bs!1968858 m!8309256))

(declare-fun m!8309258 () Bool)

(assert (=> bs!1968858 m!8309258))

(assert (=> b!7926875 d!2367864))

(declare-fun b!7927463 () Bool)

(declare-fun e!4678499 () List!74572)

(assert (=> b!7927463 (= e!4678499 call!735184)))

(declare-fun b!7927466 () Bool)

(declare-fun e!4678500 () Bool)

(declare-fun lt!2693258 () List!74572)

(assert (=> b!7927466 (= e!4678500 (or (not (= call!735184 Nil!74448)) (= lt!2693258 lt!2693089)))))

(declare-fun b!7927464 () Bool)

(assert (=> b!7927464 (= e!4678499 (Cons!74448 (h!80896 lt!2693089) (++!18259 (t!390189 lt!2693089) call!735184)))))

(declare-fun b!7927465 () Bool)

(declare-fun res!3145747 () Bool)

(assert (=> b!7927465 (=> (not res!3145747) (not e!4678500))))

(assert (=> b!7927465 (= res!3145747 (= (size!43248 lt!2693258) (+ (size!43248 lt!2693089) (size!43248 call!735184))))))

(declare-fun d!2367866 () Bool)

(assert (=> d!2367866 e!4678500))

(declare-fun res!3145746 () Bool)

(assert (=> d!2367866 (=> (not res!3145746) (not e!4678500))))

(assert (=> d!2367866 (= res!3145746 (= (content!15783 lt!2693258) ((_ map or) (content!15783 lt!2693089) (content!15783 call!735184))))))

(assert (=> d!2367866 (= lt!2693258 e!4678499)))

(declare-fun c!1455582 () Bool)

(assert (=> d!2367866 (= c!1455582 ((_ is Nil!74448) lt!2693089))))

(assert (=> d!2367866 (= (++!18259 lt!2693089 call!735184) lt!2693258)))

(assert (= (and d!2367866 c!1455582) b!7927463))

(assert (= (and d!2367866 (not c!1455582)) b!7927464))

(assert (= (and d!2367866 res!3145746) b!7927465))

(assert (= (and b!7927465 res!3145747) b!7927466))

(declare-fun m!8309260 () Bool)

(assert (=> b!7927464 m!8309260))

(declare-fun m!8309262 () Bool)

(assert (=> b!7927465 m!8309262))

(declare-fun m!8309264 () Bool)

(assert (=> b!7927465 m!8309264))

(declare-fun m!8309266 () Bool)

(assert (=> b!7927465 m!8309266))

(declare-fun m!8309268 () Bool)

(assert (=> d!2367866 m!8309268))

(declare-fun m!8309270 () Bool)

(assert (=> d!2367866 m!8309270))

(declare-fun m!8309272 () Bool)

(assert (=> d!2367866 m!8309272))

(assert (=> b!7926875 d!2367866))

(declare-fun b!7927467 () Bool)

(declare-fun e!4678501 () List!74572)

(assert (=> b!7927467 (= e!4678501 lt!2693103)))

(declare-fun e!4678502 () Bool)

(declare-fun lt!2693259 () List!74572)

(declare-fun b!7927470 () Bool)

(assert (=> b!7927470 (= e!4678502 (or (not (= lt!2693103 Nil!74448)) (= lt!2693259 call!735188)))))

(declare-fun b!7927468 () Bool)

(assert (=> b!7927468 (= e!4678501 (Cons!74448 (h!80896 call!735188) (++!18259 (t!390189 call!735188) lt!2693103)))))

(declare-fun b!7927469 () Bool)

(declare-fun res!3145749 () Bool)

(assert (=> b!7927469 (=> (not res!3145749) (not e!4678502))))

(assert (=> b!7927469 (= res!3145749 (= (size!43248 lt!2693259) (+ (size!43248 call!735188) (size!43248 lt!2693103))))))

(declare-fun d!2367868 () Bool)

(assert (=> d!2367868 e!4678502))

(declare-fun res!3145748 () Bool)

(assert (=> d!2367868 (=> (not res!3145748) (not e!4678502))))

(assert (=> d!2367868 (= res!3145748 (= (content!15783 lt!2693259) ((_ map or) (content!15783 call!735188) (content!15783 lt!2693103))))))

(assert (=> d!2367868 (= lt!2693259 e!4678501)))

(declare-fun c!1455583 () Bool)

(assert (=> d!2367868 (= c!1455583 ((_ is Nil!74448) call!735188))))

(assert (=> d!2367868 (= (++!18259 call!735188 lt!2693103) lt!2693259)))

(assert (= (and d!2367868 c!1455583) b!7927467))

(assert (= (and d!2367868 (not c!1455583)) b!7927468))

(assert (= (and d!2367868 res!3145748) b!7927469))

(assert (= (and b!7927469 res!3145749) b!7927470))

(declare-fun m!8309274 () Bool)

(assert (=> b!7927468 m!8309274))

(declare-fun m!8309276 () Bool)

(assert (=> b!7927469 m!8309276))

(declare-fun m!8309278 () Bool)

(assert (=> b!7927469 m!8309278))

(declare-fun m!8309280 () Bool)

(assert (=> b!7927469 m!8309280))

(declare-fun m!8309282 () Bool)

(assert (=> d!2367868 m!8309282))

(declare-fun m!8309284 () Bool)

(assert (=> d!2367868 m!8309284))

(declare-fun m!8309286 () Bool)

(assert (=> d!2367868 m!8309286))

(assert (=> b!7926875 d!2367868))

(declare-fun b!7927471 () Bool)

(declare-fun e!4678503 () List!74572)

(assert (=> b!7927471 (= e!4678503 call!735186)))

(declare-fun b!7927474 () Bool)

(declare-fun lt!2693260 () List!74572)

(declare-fun e!4678504 () Bool)

(assert (=> b!7927474 (= e!4678504 (or (not (= call!735186 Nil!74448)) (= lt!2693260 lt!2693091)))))

(declare-fun b!7927472 () Bool)

(assert (=> b!7927472 (= e!4678503 (Cons!74448 (h!80896 lt!2693091) (++!18259 (t!390189 lt!2693091) call!735186)))))

(declare-fun b!7927473 () Bool)

(declare-fun res!3145751 () Bool)

(assert (=> b!7927473 (=> (not res!3145751) (not e!4678504))))

(assert (=> b!7927473 (= res!3145751 (= (size!43248 lt!2693260) (+ (size!43248 lt!2693091) (size!43248 call!735186))))))

(declare-fun d!2367870 () Bool)

(assert (=> d!2367870 e!4678504))

(declare-fun res!3145750 () Bool)

(assert (=> d!2367870 (=> (not res!3145750) (not e!4678504))))

(assert (=> d!2367870 (= res!3145750 (= (content!15783 lt!2693260) ((_ map or) (content!15783 lt!2693091) (content!15783 call!735186))))))

(assert (=> d!2367870 (= lt!2693260 e!4678503)))

(declare-fun c!1455584 () Bool)

(assert (=> d!2367870 (= c!1455584 ((_ is Nil!74448) lt!2693091))))

(assert (=> d!2367870 (= (++!18259 lt!2693091 call!735186) lt!2693260)))

(assert (= (and d!2367870 c!1455584) b!7927471))

(assert (= (and d!2367870 (not c!1455584)) b!7927472))

(assert (= (and d!2367870 res!3145750) b!7927473))

(assert (= (and b!7927473 res!3145751) b!7927474))

(declare-fun m!8309288 () Bool)

(assert (=> b!7927472 m!8309288))

(declare-fun m!8309290 () Bool)

(assert (=> b!7927473 m!8309290))

(declare-fun m!8309292 () Bool)

(assert (=> b!7927473 m!8309292))

(declare-fun m!8309294 () Bool)

(assert (=> b!7927473 m!8309294))

(declare-fun m!8309296 () Bool)

(assert (=> d!2367870 m!8309296))

(declare-fun m!8309298 () Bool)

(assert (=> d!2367870 m!8309298))

(declare-fun m!8309300 () Bool)

(assert (=> d!2367870 m!8309300))

(assert (=> b!7926875 d!2367870))

(declare-fun b!7927478 () Bool)

(declare-fun e!4678506 () List!74572)

(assert (=> b!7927478 (= e!4678506 (++!18259 (list!19413 (left!56873 (left!56873 lt!2693100))) (list!19413 (right!57203 (left!56873 lt!2693100)))))))

(declare-fun b!7927476 () Bool)

(declare-fun e!4678505 () List!74572)

(assert (=> b!7927476 (= e!4678505 e!4678506)))

(declare-fun c!1455586 () Bool)

(assert (=> b!7927476 (= c!1455586 ((_ is Leaf!30234) (left!56873 lt!2693100)))))

(declare-fun b!7927477 () Bool)

(assert (=> b!7927477 (= e!4678506 (list!19415 (xs!19290 (left!56873 lt!2693100))))))

(declare-fun b!7927475 () Bool)

(assert (=> b!7927475 (= e!4678505 Nil!74448)))

(declare-fun d!2367872 () Bool)

(declare-fun c!1455585 () Bool)

(assert (=> d!2367872 (= c!1455585 ((_ is Empty!15902) (left!56873 lt!2693100)))))

(assert (=> d!2367872 (= (list!19413 (left!56873 lt!2693100)) e!4678505)))

(assert (= (and d!2367872 c!1455585) b!7927475))

(assert (= (and d!2367872 (not c!1455585)) b!7927476))

(assert (= (and b!7927476 c!1455586) b!7927477))

(assert (= (and b!7927476 (not c!1455586)) b!7927478))

(declare-fun m!8309302 () Bool)

(assert (=> b!7927478 m!8309302))

(declare-fun m!8309304 () Bool)

(assert (=> b!7927478 m!8309304))

(assert (=> b!7927478 m!8309302))

(assert (=> b!7927478 m!8309304))

(declare-fun m!8309306 () Bool)

(assert (=> b!7927478 m!8309306))

(declare-fun m!8309308 () Bool)

(assert (=> b!7927477 m!8309308))

(assert (=> b!7926875 d!2367872))

(assert (=> b!7926875 d!2367582))

(declare-fun d!2367874 () Bool)

(assert (=> d!2367874 (= (list!19415 (xs!19290 (right!57203 t!4440))) (innerList!15990 (xs!19290 (right!57203 t!4440))))))

(assert (=> b!7926966 d!2367874))

(declare-fun d!2367876 () Bool)

(declare-fun lt!2693261 () Int)

(assert (=> d!2367876 (>= lt!2693261 0)))

(declare-fun e!4678507 () Int)

(assert (=> d!2367876 (= lt!2693261 e!4678507)))

(declare-fun c!1455587 () Bool)

(assert (=> d!2367876 (= c!1455587 ((_ is Nil!74448) (innerList!15990 (xs!19290 t!4440))))))

(assert (=> d!2367876 (= (size!43248 (innerList!15990 (xs!19290 t!4440))) lt!2693261)))

(declare-fun b!7927479 () Bool)

(assert (=> b!7927479 (= e!4678507 0)))

(declare-fun b!7927480 () Bool)

(assert (=> b!7927480 (= e!4678507 (+ 1 (size!43248 (t!390189 (innerList!15990 (xs!19290 t!4440))))))))

(assert (= (and d!2367876 c!1455587) b!7927479))

(assert (= (and d!2367876 (not c!1455587)) b!7927480))

(declare-fun m!8309310 () Bool)

(assert (=> b!7927480 m!8309310))

(assert (=> d!2367522 d!2367876))

(declare-fun d!2367878 () Bool)

(assert (=> d!2367878 (= (list!19415 (xs!19290 (left!56873 t!4440))) (innerList!15990 (xs!19290 (left!56873 t!4440))))))

(assert (=> b!7926958 d!2367878))

(declare-fun d!2367880 () Bool)

(declare-fun lt!2693262 () Bool)

(assert (=> d!2367880 (= lt!2693262 (isEmpty!42778 (list!19413 (right!57203 lt!2692978))))))

(assert (=> d!2367880 (= lt!2693262 (= (size!43249 (right!57203 lt!2692978)) 0))))

(assert (=> d!2367880 (= (isEmpty!42776 (right!57203 lt!2692978)) lt!2693262)))

(declare-fun bs!1968859 () Bool)

(assert (= bs!1968859 d!2367880))

(assert (=> bs!1968859 m!8308144))

(assert (=> bs!1968859 m!8308144))

(declare-fun m!8309312 () Bool)

(assert (=> bs!1968859 m!8309312))

(declare-fun m!8309314 () Bool)

(assert (=> bs!1968859 m!8309314))

(assert (=> b!7926955 d!2367880))

(declare-fun d!2367882 () Bool)

(declare-fun c!1455588 () Bool)

(assert (=> d!2367882 (= c!1455588 ((_ is Nil!74448) lt!2693117))))

(declare-fun e!4678508 () (InoxSet T!145804))

(assert (=> d!2367882 (= (content!15783 lt!2693117) e!4678508)))

(declare-fun b!7927481 () Bool)

(assert (=> b!7927481 (= e!4678508 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927482 () Bool)

(assert (=> b!7927482 (= e!4678508 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693117) true) (content!15783 (t!390189 lt!2693117))))))

(assert (= (and d!2367882 c!1455588) b!7927481))

(assert (= (and d!2367882 (not c!1455588)) b!7927482))

(declare-fun m!8309316 () Bool)

(assert (=> b!7927482 m!8309316))

(declare-fun m!8309318 () Bool)

(assert (=> b!7927482 m!8309318))

(assert (=> d!2367538 d!2367882))

(declare-fun d!2367884 () Bool)

(declare-fun c!1455589 () Bool)

(assert (=> d!2367884 (= c!1455589 ((_ is Nil!74448) (++!18259 lt!2692976 lt!2692979)))))

(declare-fun e!4678509 () (InoxSet T!145804))

(assert (=> d!2367884 (= (content!15783 (++!18259 lt!2692976 lt!2692979)) e!4678509)))

(declare-fun b!7927483 () Bool)

(assert (=> b!7927483 (= e!4678509 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927484 () Bool)

(assert (=> b!7927484 (= e!4678509 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (++!18259 lt!2692976 lt!2692979)) true) (content!15783 (t!390189 (++!18259 lt!2692976 lt!2692979)))))))

(assert (= (and d!2367884 c!1455589) b!7927483))

(assert (= (and d!2367884 (not c!1455589)) b!7927484))

(declare-fun m!8309320 () Bool)

(assert (=> b!7927484 m!8309320))

(declare-fun m!8309322 () Bool)

(assert (=> b!7927484 m!8309322))

(assert (=> d!2367538 d!2367884))

(assert (=> d!2367538 d!2367800))

(declare-fun b!7927485 () Bool)

(declare-fun e!4678510 () List!74572)

(assert (=> b!7927485 (= e!4678510 (list!19413 (right!57203 lt!2692978)))))

(declare-fun b!7927488 () Bool)

(declare-fun e!4678511 () Bool)

(declare-fun lt!2693263 () List!74572)

(assert (=> b!7927488 (= e!4678511 (or (not (= (list!19413 (right!57203 lt!2692978)) Nil!74448)) (= lt!2693263 (list!19413 (left!56873 lt!2692978)))))))

(declare-fun b!7927486 () Bool)

(assert (=> b!7927486 (= e!4678510 (Cons!74448 (h!80896 (list!19413 (left!56873 lt!2692978))) (++!18259 (t!390189 (list!19413 (left!56873 lt!2692978))) (list!19413 (right!57203 lt!2692978)))))))

(declare-fun b!7927487 () Bool)

(declare-fun res!3145753 () Bool)

(assert (=> b!7927487 (=> (not res!3145753) (not e!4678511))))

(assert (=> b!7927487 (= res!3145753 (= (size!43248 lt!2693263) (+ (size!43248 (list!19413 (left!56873 lt!2692978))) (size!43248 (list!19413 (right!57203 lt!2692978))))))))

(declare-fun d!2367886 () Bool)

(assert (=> d!2367886 e!4678511))

(declare-fun res!3145752 () Bool)

(assert (=> d!2367886 (=> (not res!3145752) (not e!4678511))))

(assert (=> d!2367886 (= res!3145752 (= (content!15783 lt!2693263) ((_ map or) (content!15783 (list!19413 (left!56873 lt!2692978))) (content!15783 (list!19413 (right!57203 lt!2692978))))))))

(assert (=> d!2367886 (= lt!2693263 e!4678510)))

(declare-fun c!1455590 () Bool)

(assert (=> d!2367886 (= c!1455590 ((_ is Nil!74448) (list!19413 (left!56873 lt!2692978))))))

(assert (=> d!2367886 (= (++!18259 (list!19413 (left!56873 lt!2692978)) (list!19413 (right!57203 lt!2692978))) lt!2693263)))

(assert (= (and d!2367886 c!1455590) b!7927485))

(assert (= (and d!2367886 (not c!1455590)) b!7927486))

(assert (= (and d!2367886 res!3145752) b!7927487))

(assert (= (and b!7927487 res!3145753) b!7927488))

(assert (=> b!7927486 m!8308144))

(declare-fun m!8309324 () Bool)

(assert (=> b!7927486 m!8309324))

(declare-fun m!8309326 () Bool)

(assert (=> b!7927487 m!8309326))

(assert (=> b!7927487 m!8308142))

(declare-fun m!8309328 () Bool)

(assert (=> b!7927487 m!8309328))

(assert (=> b!7927487 m!8308144))

(declare-fun m!8309330 () Bool)

(assert (=> b!7927487 m!8309330))

(declare-fun m!8309332 () Bool)

(assert (=> d!2367886 m!8309332))

(assert (=> d!2367886 m!8308142))

(declare-fun m!8309334 () Bool)

(assert (=> d!2367886 m!8309334))

(assert (=> d!2367886 m!8308144))

(declare-fun m!8309336 () Bool)

(assert (=> d!2367886 m!8309336))

(assert (=> b!7926897 d!2367886))

(declare-fun b!7927492 () Bool)

(declare-fun e!4678513 () List!74572)

(assert (=> b!7927492 (= e!4678513 (++!18259 (list!19413 (left!56873 (left!56873 lt!2692978))) (list!19413 (right!57203 (left!56873 lt!2692978)))))))

(declare-fun b!7927490 () Bool)

(declare-fun e!4678512 () List!74572)

(assert (=> b!7927490 (= e!4678512 e!4678513)))

(declare-fun c!1455592 () Bool)

(assert (=> b!7927490 (= c!1455592 ((_ is Leaf!30234) (left!56873 lt!2692978)))))

(declare-fun b!7927491 () Bool)

(assert (=> b!7927491 (= e!4678513 (list!19415 (xs!19290 (left!56873 lt!2692978))))))

(declare-fun b!7927489 () Bool)

(assert (=> b!7927489 (= e!4678512 Nil!74448)))

(declare-fun d!2367888 () Bool)

(declare-fun c!1455591 () Bool)

(assert (=> d!2367888 (= c!1455591 ((_ is Empty!15902) (left!56873 lt!2692978)))))

(assert (=> d!2367888 (= (list!19413 (left!56873 lt!2692978)) e!4678512)))

(assert (= (and d!2367888 c!1455591) b!7927489))

(assert (= (and d!2367888 (not c!1455591)) b!7927490))

(assert (= (and b!7927490 c!1455592) b!7927491))

(assert (= (and b!7927490 (not c!1455592)) b!7927492))

(declare-fun m!8309338 () Bool)

(assert (=> b!7927492 m!8309338))

(declare-fun m!8309340 () Bool)

(assert (=> b!7927492 m!8309340))

(assert (=> b!7927492 m!8309338))

(assert (=> b!7927492 m!8309340))

(declare-fun m!8309342 () Bool)

(assert (=> b!7927492 m!8309342))

(declare-fun m!8309344 () Bool)

(assert (=> b!7927491 m!8309344))

(assert (=> b!7926897 d!2367888))

(declare-fun b!7927496 () Bool)

(declare-fun e!4678515 () List!74572)

(assert (=> b!7927496 (= e!4678515 (++!18259 (list!19413 (left!56873 (right!57203 lt!2692978))) (list!19413 (right!57203 (right!57203 lt!2692978)))))))

(declare-fun b!7927494 () Bool)

(declare-fun e!4678514 () List!74572)

(assert (=> b!7927494 (= e!4678514 e!4678515)))

(declare-fun c!1455594 () Bool)

(assert (=> b!7927494 (= c!1455594 ((_ is Leaf!30234) (right!57203 lt!2692978)))))

(declare-fun b!7927495 () Bool)

(assert (=> b!7927495 (= e!4678515 (list!19415 (xs!19290 (right!57203 lt!2692978))))))

(declare-fun b!7927493 () Bool)

(assert (=> b!7927493 (= e!4678514 Nil!74448)))

(declare-fun d!2367890 () Bool)

(declare-fun c!1455593 () Bool)

(assert (=> d!2367890 (= c!1455593 ((_ is Empty!15902) (right!57203 lt!2692978)))))

(assert (=> d!2367890 (= (list!19413 (right!57203 lt!2692978)) e!4678514)))

(assert (= (and d!2367890 c!1455593) b!7927493))

(assert (= (and d!2367890 (not c!1455593)) b!7927494))

(assert (= (and b!7927494 c!1455594) b!7927495))

(assert (= (and b!7927494 (not c!1455594)) b!7927496))

(declare-fun m!8309346 () Bool)

(assert (=> b!7927496 m!8309346))

(declare-fun m!8309348 () Bool)

(assert (=> b!7927496 m!8309348))

(assert (=> b!7927496 m!8309346))

(assert (=> b!7927496 m!8309348))

(declare-fun m!8309350 () Bool)

(assert (=> b!7927496 m!8309350))

(declare-fun m!8309352 () Bool)

(assert (=> b!7927495 m!8309352))

(assert (=> b!7926897 d!2367890))

(declare-fun d!2367892 () Bool)

(declare-fun lt!2693264 () Conc!15902)

(assert (=> d!2367892 (= (list!19413 lt!2693264) (++!18259 (list!19413 (left!56873 (right!57203 t!4440))) (list!19413 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))))))

(declare-fun e!4678517 () Conc!15902)

(assert (=> d!2367892 (= lt!2693264 e!4678517)))

(declare-fun c!1455595 () Bool)

(assert (=> d!2367892 (= c!1455595 (= (left!56873 (right!57203 t!4440)) Empty!15902))))

(assert (=> d!2367892 (= (<>!424 (left!56873 (right!57203 t!4440)) (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) lt!2693264)))

(declare-fun b!7927499 () Bool)

(declare-fun e!4678516 () Conc!15902)

(assert (=> b!7927499 (= e!4678516 (left!56873 (right!57203 t!4440)))))

(declare-fun b!7927498 () Bool)

(assert (=> b!7927498 (= e!4678517 e!4678516)))

(declare-fun c!1455596 () Bool)

(assert (=> b!7927498 (= c!1455596 (= (ite c!1455404 lt!2693100 (left!56873 lt!2693100)) Empty!15902))))

(declare-fun b!7927500 () Bool)

(assert (=> b!7927500 (= e!4678516 (Node!15902 (left!56873 (right!57203 t!4440)) (ite c!1455404 lt!2693100 (left!56873 lt!2693100)) (+ (size!43249 (left!56873 (right!57203 t!4440))) (size!43249 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))) (+ (max!0 (height!2217 (left!56873 (right!57203 t!4440))) (height!2217 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))) 1)))))

(declare-fun b!7927497 () Bool)

(assert (=> b!7927497 (= e!4678517 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))))

(assert (= (and d!2367892 c!1455595) b!7927497))

(assert (= (and d!2367892 (not c!1455595)) b!7927498))

(assert (= (and b!7927498 c!1455596) b!7927499))

(assert (= (and b!7927498 (not c!1455596)) b!7927500))

(declare-fun m!8309354 () Bool)

(assert (=> d!2367892 m!8309354))

(assert (=> d!2367892 m!8308234))

(declare-fun m!8309356 () Bool)

(assert (=> d!2367892 m!8309356))

(assert (=> d!2367892 m!8308234))

(assert (=> d!2367892 m!8309356))

(declare-fun m!8309358 () Bool)

(assert (=> d!2367892 m!8309358))

(assert (=> b!7927500 m!8308122))

(declare-fun m!8309360 () Bool)

(assert (=> b!7927500 m!8309360))

(declare-fun m!8309362 () Bool)

(assert (=> b!7927500 m!8309362))

(declare-fun m!8309364 () Bool)

(assert (=> b!7927500 m!8309364))

(assert (=> b!7927500 m!8309188))

(assert (=> b!7927500 m!8309360))

(assert (=> b!7927500 m!8308122))

(assert (=> bm!735185 d!2367892))

(declare-fun d!2367894 () Bool)

(declare-fun lt!2693265 () Bool)

(assert (=> d!2367894 (= lt!2693265 (isEmpty!42778 (list!19413 (right!57203 t!4440))))))

(assert (=> d!2367894 (= lt!2693265 (= (size!43249 (right!57203 t!4440)) 0))))

(assert (=> d!2367894 (= (isEmpty!42776 (right!57203 t!4440)) lt!2693265)))

(declare-fun bs!1968860 () Bool)

(assert (= bs!1968860 d!2367894))

(assert (=> bs!1968860 m!8307842))

(assert (=> bs!1968860 m!8307842))

(declare-fun m!8309366 () Bool)

(assert (=> bs!1968860 m!8309366))

(declare-fun m!8309368 () Bool)

(assert (=> bs!1968860 m!8309368))

(assert (=> b!7926668 d!2367894))

(declare-fun d!2367896 () Bool)

(assert (=> d!2367896 (= (list!19415 (xs!19290 t!4440)) (innerList!15990 (xs!19290 t!4440)))))

(assert (=> b!7926924 d!2367896))

(declare-fun b!7927501 () Bool)

(declare-fun e!4678519 () Bool)

(declare-fun e!4678518 () Bool)

(assert (=> b!7927501 (= e!4678519 e!4678518)))

(declare-fun res!3145755 () Bool)

(assert (=> b!7927501 (=> (not res!3145755) (not e!4678518))))

(assert (=> b!7927501 (= res!3145755 (<= (- 1) (- (height!2217 (left!56873 (left!56873 lt!2692978))) (height!2217 (right!57203 (left!56873 lt!2692978))))))))

(declare-fun b!7927503 () Bool)

(declare-fun res!3145758 () Bool)

(assert (=> b!7927503 (=> (not res!3145758) (not e!4678518))))

(assert (=> b!7927503 (= res!3145758 (not (isEmpty!42776 (left!56873 (left!56873 lt!2692978)))))))

(declare-fun b!7927504 () Bool)

(declare-fun res!3145759 () Bool)

(assert (=> b!7927504 (=> (not res!3145759) (not e!4678518))))

(assert (=> b!7927504 (= res!3145759 (isBalanced!4528 (left!56873 (left!56873 lt!2692978))))))

(declare-fun b!7927505 () Bool)

(declare-fun res!3145754 () Bool)

(assert (=> b!7927505 (=> (not res!3145754) (not e!4678518))))

(assert (=> b!7927505 (= res!3145754 (isBalanced!4528 (right!57203 (left!56873 lt!2692978))))))

(declare-fun b!7927506 () Bool)

(assert (=> b!7927506 (= e!4678518 (not (isEmpty!42776 (right!57203 (left!56873 lt!2692978)))))))

(declare-fun b!7927502 () Bool)

(declare-fun res!3145756 () Bool)

(assert (=> b!7927502 (=> (not res!3145756) (not e!4678518))))

(assert (=> b!7927502 (= res!3145756 (<= (- (height!2217 (left!56873 (left!56873 lt!2692978))) (height!2217 (right!57203 (left!56873 lt!2692978)))) 1))))

(declare-fun d!2367898 () Bool)

(declare-fun res!3145757 () Bool)

(assert (=> d!2367898 (=> res!3145757 e!4678519)))

(assert (=> d!2367898 (= res!3145757 (not ((_ is Node!15902) (left!56873 lt!2692978))))))

(assert (=> d!2367898 (= (isBalanced!4528 (left!56873 lt!2692978)) e!4678519)))

(assert (= (and d!2367898 (not res!3145757)) b!7927501))

(assert (= (and b!7927501 res!3145755) b!7927502))

(assert (= (and b!7927502 res!3145756) b!7927504))

(assert (= (and b!7927504 res!3145759) b!7927505))

(assert (= (and b!7927505 res!3145754) b!7927503))

(assert (= (and b!7927503 res!3145758) b!7927506))

(declare-fun m!8309370 () Bool)

(assert (=> b!7927502 m!8309370))

(declare-fun m!8309372 () Bool)

(assert (=> b!7927502 m!8309372))

(declare-fun m!8309374 () Bool)

(assert (=> b!7927505 m!8309374))

(declare-fun m!8309376 () Bool)

(assert (=> b!7927503 m!8309376))

(declare-fun m!8309378 () Bool)

(assert (=> b!7927504 m!8309378))

(declare-fun m!8309380 () Bool)

(assert (=> b!7927506 m!8309380))

(assert (=> b!7927501 m!8309370))

(assert (=> b!7927501 m!8309372))

(assert (=> b!7926953 d!2367898))

(declare-fun b!7927507 () Bool)

(declare-fun e!4678520 () List!74572)

(assert (=> b!7927507 (= e!4678520 lt!2692979)))

(declare-fun e!4678521 () Bool)

(declare-fun b!7927510 () Bool)

(declare-fun lt!2693266 () List!74572)

(assert (=> b!7927510 (= e!4678521 (or (not (= lt!2692979 Nil!74448)) (= lt!2693266 (t!390189 lt!2692976))))))

(declare-fun b!7927508 () Bool)

(assert (=> b!7927508 (= e!4678520 (Cons!74448 (h!80896 (t!390189 lt!2692976)) (++!18259 (t!390189 (t!390189 lt!2692976)) lt!2692979)))))

(declare-fun b!7927509 () Bool)

(declare-fun res!3145761 () Bool)

(assert (=> b!7927509 (=> (not res!3145761) (not e!4678521))))

(assert (=> b!7927509 (= res!3145761 (= (size!43248 lt!2693266) (+ (size!43248 (t!390189 lt!2692976)) (size!43248 lt!2692979))))))

(declare-fun d!2367900 () Bool)

(assert (=> d!2367900 e!4678521))

(declare-fun res!3145760 () Bool)

(assert (=> d!2367900 (=> (not res!3145760) (not e!4678521))))

(assert (=> d!2367900 (= res!3145760 (= (content!15783 lt!2693266) ((_ map or) (content!15783 (t!390189 lt!2692976)) (content!15783 lt!2692979))))))

(assert (=> d!2367900 (= lt!2693266 e!4678520)))

(declare-fun c!1455597 () Bool)

(assert (=> d!2367900 (= c!1455597 ((_ is Nil!74448) (t!390189 lt!2692976)))))

(assert (=> d!2367900 (= (++!18259 (t!390189 lt!2692976) lt!2692979) lt!2693266)))

(assert (= (and d!2367900 c!1455597) b!7927507))

(assert (= (and d!2367900 (not c!1455597)) b!7927508))

(assert (= (and d!2367900 res!3145760) b!7927509))

(assert (= (and b!7927509 res!3145761) b!7927510))

(declare-fun m!8309382 () Bool)

(assert (=> b!7927508 m!8309382))

(declare-fun m!8309384 () Bool)

(assert (=> b!7927509 m!8309384))

(assert (=> b!7927509 m!8308626))

(assert (=> b!7927509 m!8308226))

(declare-fun m!8309386 () Bool)

(assert (=> d!2367900 m!8309386))

(assert (=> d!2367900 m!8308958))

(assert (=> d!2367900 m!8308232))

(assert (=> b!7926961 d!2367900))

(declare-fun d!2367902 () Bool)

(declare-fun c!1455598 () Bool)

(assert (=> d!2367902 (= c!1455598 ((_ is Node!15902) (left!56873 (right!57203 t!4440))))))

(declare-fun e!4678522 () Bool)

(assert (=> d!2367902 (= (inv!95719 (left!56873 (right!57203 t!4440))) e!4678522)))

(declare-fun b!7927511 () Bool)

(assert (=> b!7927511 (= e!4678522 (inv!95723 (left!56873 (right!57203 t!4440))))))

(declare-fun b!7927512 () Bool)

(declare-fun e!4678523 () Bool)

(assert (=> b!7927512 (= e!4678522 e!4678523)))

(declare-fun res!3145762 () Bool)

(assert (=> b!7927512 (= res!3145762 (not ((_ is Leaf!30234) (left!56873 (right!57203 t!4440)))))))

(assert (=> b!7927512 (=> res!3145762 e!4678523)))

(declare-fun b!7927513 () Bool)

(assert (=> b!7927513 (= e!4678523 (inv!95724 (left!56873 (right!57203 t!4440))))))

(assert (= (and d!2367902 c!1455598) b!7927511))

(assert (= (and d!2367902 (not c!1455598)) b!7927512))

(assert (= (and b!7927512 (not res!3145762)) b!7927513))

(declare-fun m!8309388 () Bool)

(assert (=> b!7927511 m!8309388))

(declare-fun m!8309390 () Bool)

(assert (=> b!7927513 m!8309390))

(assert (=> b!7926992 d!2367902))

(declare-fun d!2367904 () Bool)

(declare-fun c!1455599 () Bool)

(assert (=> d!2367904 (= c!1455599 ((_ is Node!15902) (right!57203 (right!57203 t!4440))))))

(declare-fun e!4678524 () Bool)

(assert (=> d!2367904 (= (inv!95719 (right!57203 (right!57203 t!4440))) e!4678524)))

(declare-fun b!7927514 () Bool)

(assert (=> b!7927514 (= e!4678524 (inv!95723 (right!57203 (right!57203 t!4440))))))

(declare-fun b!7927515 () Bool)

(declare-fun e!4678525 () Bool)

(assert (=> b!7927515 (= e!4678524 e!4678525)))

(declare-fun res!3145763 () Bool)

(assert (=> b!7927515 (= res!3145763 (not ((_ is Leaf!30234) (right!57203 (right!57203 t!4440)))))))

(assert (=> b!7927515 (=> res!3145763 e!4678525)))

(declare-fun b!7927516 () Bool)

(assert (=> b!7927516 (= e!4678525 (inv!95724 (right!57203 (right!57203 t!4440))))))

(assert (= (and d!2367904 c!1455599) b!7927514))

(assert (= (and d!2367904 (not c!1455599)) b!7927515))

(assert (= (and b!7927515 (not res!3145763)) b!7927516))

(declare-fun m!8309392 () Bool)

(assert (=> b!7927514 m!8309392))

(declare-fun m!8309394 () Bool)

(assert (=> b!7927516 m!8309394))

(assert (=> b!7926992 d!2367904))

(assert (=> b!7926628 d!2367524))

(assert (=> b!7926628 d!2367526))

(declare-fun b!7927520 () Bool)

(declare-fun e!4678527 () List!74572)

(assert (=> b!7927520 (= e!4678527 (++!18259 (list!19413 (left!56873 lt!2693102)) (list!19413 (right!57203 lt!2693102))))))

(declare-fun b!7927518 () Bool)

(declare-fun e!4678526 () List!74572)

(assert (=> b!7927518 (= e!4678526 e!4678527)))

(declare-fun c!1455601 () Bool)

(assert (=> b!7927518 (= c!1455601 ((_ is Leaf!30234) lt!2693102))))

(declare-fun b!7927519 () Bool)

(assert (=> b!7927519 (= e!4678527 (list!19415 (xs!19290 lt!2693102)))))

(declare-fun b!7927517 () Bool)

(assert (=> b!7927517 (= e!4678526 Nil!74448)))

(declare-fun d!2367906 () Bool)

(declare-fun c!1455600 () Bool)

(assert (=> d!2367906 (= c!1455600 ((_ is Empty!15902) lt!2693102))))

(assert (=> d!2367906 (= (list!19413 lt!2693102) e!4678526)))

(assert (= (and d!2367906 c!1455600) b!7927517))

(assert (= (and d!2367906 (not c!1455600)) b!7927518))

(assert (= (and b!7927518 c!1455601) b!7927519))

(assert (= (and b!7927518 (not c!1455601)) b!7927520))

(declare-fun m!8309396 () Bool)

(assert (=> b!7927520 m!8309396))

(declare-fun m!8309398 () Bool)

(assert (=> b!7927520 m!8309398))

(assert (=> b!7927520 m!8309396))

(assert (=> b!7927520 m!8309398))

(declare-fun m!8309400 () Bool)

(assert (=> b!7927520 m!8309400))

(declare-fun m!8309402 () Bool)

(assert (=> b!7927519 m!8309402))

(assert (=> b!7926872 d!2367906))

(declare-fun d!2367908 () Bool)

(declare-fun e!4678530 () Bool)

(assert (=> d!2367908 e!4678530))

(declare-fun res!3145766 () Bool)

(assert (=> d!2367908 (=> (not res!3145766) (not e!4678530))))

(declare-fun lt!2693267 () List!74572)

(assert (=> d!2367908 (= res!3145766 ((_ is Cons!74448) lt!2693267))))

(declare-fun e!4678529 () List!74572)

(assert (=> d!2367908 (= lt!2693267 e!4678529)))

(declare-fun c!1455602 () Bool)

(assert (=> d!2367908 (= c!1455602 ((_ is Nil!74448) (list!19413 (right!57203 t!4440))))))

(assert (=> d!2367908 (= ($colon+!315 (list!19413 (right!57203 t!4440)) v!5484) lt!2693267)))

(declare-fun bm!735222 () Bool)

(declare-fun call!735227 () (_ BitVec 32))

(assert (=> bm!735222 (= call!735227 (isize!119 lt!2693267))))

(declare-fun bm!735223 () Bool)

(declare-fun call!735228 () (_ BitVec 32))

(assert (=> bm!735223 (= call!735228 (isize!119 (list!19413 (right!57203 t!4440))))))

(declare-fun b!7927521 () Bool)

(declare-fun e!4678528 () Bool)

(assert (=> b!7927521 (= e!4678528 (= call!735227 (bvadd call!735228 #b00000000000000000000000000000001)))))

(declare-fun b!7927522 () Bool)

(assert (=> b!7927522 (= e!4678529 (Cons!74448 (h!80896 (list!19413 (right!57203 t!4440))) ($colon+!315 (t!390189 (list!19413 (right!57203 t!4440))) v!5484)))))

(declare-fun b!7927523 () Bool)

(assert (=> b!7927523 (= e!4678528 (= call!735227 call!735228))))

(declare-fun b!7927524 () Bool)

(declare-fun res!3145767 () Bool)

(assert (=> b!7927524 (=> (not res!3145767) (not e!4678530))))

(assert (=> b!7927524 (= res!3145767 (= (content!15783 lt!2693267) ((_ map or) (content!15783 (list!19413 (right!57203 t!4440))) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun b!7927525 () Bool)

(declare-fun res!3145764 () Bool)

(assert (=> b!7927525 (=> (not res!3145764) (not e!4678530))))

(assert (=> b!7927525 (= res!3145764 e!4678528)))

(declare-fun c!1455603 () Bool)

(assert (=> b!7927525 (= c!1455603 (bvslt (isize!119 (list!19413 (right!57203 t!4440))) #b01111111111111111111111111111111))))

(declare-fun b!7927526 () Bool)

(assert (=> b!7927526 (= e!4678529 (Cons!74448 v!5484 (list!19413 (right!57203 t!4440))))))

(declare-fun b!7927527 () Bool)

(declare-fun res!3145765 () Bool)

(assert (=> b!7927527 (=> (not res!3145765) (not e!4678530))))

(assert (=> b!7927527 (= res!3145765 (= (size!43248 lt!2693267) (+ (size!43248 (list!19413 (right!57203 t!4440))) 1)))))

(declare-fun b!7927528 () Bool)

(assert (=> b!7927528 (= e!4678530 (= lt!2693267 (++!18259 (list!19413 (right!57203 t!4440)) (Cons!74448 v!5484 Nil!74448))))))

(assert (= (and d!2367908 c!1455602) b!7927526))

(assert (= (and d!2367908 (not c!1455602)) b!7927522))

(assert (= (and d!2367908 res!3145766) b!7927527))

(assert (= (and b!7927527 res!3145765) b!7927525))

(assert (= (and b!7927525 c!1455603) b!7927521))

(assert (= (and b!7927525 (not c!1455603)) b!7927523))

(assert (= (or b!7927521 b!7927523) bm!735223))

(assert (= (or b!7927521 b!7927523) bm!735222))

(assert (= (and b!7927525 res!3145764) b!7927524))

(assert (= (and b!7927524 res!3145767) b!7927528))

(declare-fun m!8309404 () Bool)

(assert (=> bm!735222 m!8309404))

(declare-fun m!8309406 () Bool)

(assert (=> b!7927524 m!8309406))

(assert (=> b!7927524 m!8307842))

(assert (=> b!7927524 m!8308586))

(assert (=> b!7927524 m!8308156))

(assert (=> bm!735223 m!8307842))

(declare-fun m!8309408 () Bool)

(assert (=> bm!735223 m!8309408))

(assert (=> b!7927525 m!8307842))

(assert (=> b!7927525 m!8309408))

(assert (=> b!7927528 m!8307842))

(declare-fun m!8309410 () Bool)

(assert (=> b!7927528 m!8309410))

(declare-fun m!8309412 () Bool)

(assert (=> b!7927522 m!8309412))

(declare-fun m!8309414 () Bool)

(assert (=> b!7927527 m!8309414))

(assert (=> b!7927527 m!8307842))

(assert (=> b!7927527 m!8308578))

(assert (=> b!7926872 d!2367908))

(assert (=> b!7926872 d!2367546))

(declare-fun b!7927529 () Bool)

(declare-fun e!4678532 () Bool)

(declare-fun e!4678531 () Bool)

(assert (=> b!7927529 (= e!4678532 e!4678531)))

(declare-fun res!3145769 () Bool)

(assert (=> b!7927529 (=> (not res!3145769) (not e!4678531))))

(assert (=> b!7927529 (= res!3145769 (<= (- 1) (- (height!2217 (left!56873 (left!56873 t!4440))) (height!2217 (right!57203 (left!56873 t!4440))))))))

(declare-fun b!7927531 () Bool)

(declare-fun res!3145772 () Bool)

(assert (=> b!7927531 (=> (not res!3145772) (not e!4678531))))

(assert (=> b!7927531 (= res!3145772 (not (isEmpty!42776 (left!56873 (left!56873 t!4440)))))))

(declare-fun b!7927532 () Bool)

(declare-fun res!3145773 () Bool)

(assert (=> b!7927532 (=> (not res!3145773) (not e!4678531))))

(assert (=> b!7927532 (= res!3145773 (isBalanced!4528 (left!56873 (left!56873 t!4440))))))

(declare-fun b!7927533 () Bool)

(declare-fun res!3145768 () Bool)

(assert (=> b!7927533 (=> (not res!3145768) (not e!4678531))))

(assert (=> b!7927533 (= res!3145768 (isBalanced!4528 (right!57203 (left!56873 t!4440))))))

(declare-fun b!7927534 () Bool)

(assert (=> b!7927534 (= e!4678531 (not (isEmpty!42776 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7927530 () Bool)

(declare-fun res!3145770 () Bool)

(assert (=> b!7927530 (=> (not res!3145770) (not e!4678531))))

(assert (=> b!7927530 (= res!3145770 (<= (- (height!2217 (left!56873 (left!56873 t!4440))) (height!2217 (right!57203 (left!56873 t!4440)))) 1))))

(declare-fun d!2367910 () Bool)

(declare-fun res!3145771 () Bool)

(assert (=> d!2367910 (=> res!3145771 e!4678532)))

(assert (=> d!2367910 (= res!3145771 (not ((_ is Node!15902) (left!56873 t!4440))))))

(assert (=> d!2367910 (= (isBalanced!4528 (left!56873 t!4440)) e!4678532)))

(assert (= (and d!2367910 (not res!3145771)) b!7927529))

(assert (= (and b!7927529 res!3145769) b!7927530))

(assert (= (and b!7927530 res!3145770) b!7927532))

(assert (= (and b!7927532 res!3145773) b!7927533))

(assert (= (and b!7927533 res!3145768) b!7927531))

(assert (= (and b!7927531 res!3145772) b!7927534))

(assert (=> b!7927530 m!8308910))

(assert (=> b!7927530 m!8308912))

(declare-fun m!8309416 () Bool)

(assert (=> b!7927533 m!8309416))

(declare-fun m!8309418 () Bool)

(assert (=> b!7927531 m!8309418))

(declare-fun m!8309420 () Bool)

(assert (=> b!7927532 m!8309420))

(declare-fun m!8309422 () Bool)

(assert (=> b!7927534 m!8309422))

(assert (=> b!7927529 m!8308910))

(assert (=> b!7927529 m!8308912))

(assert (=> b!7926666 d!2367910))

(assert (=> b!7926951 d!2367706))

(assert (=> b!7926951 d!2367708))

(declare-fun d!2367912 () Bool)

(declare-fun res!3145774 () Bool)

(declare-fun e!4678533 () Bool)

(assert (=> d!2367912 (=> (not res!3145774) (not e!4678533))))

(assert (=> d!2367912 (= res!3145774 (<= (size!43248 (list!19415 (xs!19290 (left!56873 t!4440)))) 512))))

(assert (=> d!2367912 (= (inv!95724 (left!56873 t!4440)) e!4678533)))

(declare-fun b!7927535 () Bool)

(declare-fun res!3145775 () Bool)

(assert (=> b!7927535 (=> (not res!3145775) (not e!4678533))))

(assert (=> b!7927535 (= res!3145775 (= (csize!32035 (left!56873 t!4440)) (size!43248 (list!19415 (xs!19290 (left!56873 t!4440))))))))

(declare-fun b!7927536 () Bool)

(assert (=> b!7927536 (= e!4678533 (and (> (csize!32035 (left!56873 t!4440)) 0) (<= (csize!32035 (left!56873 t!4440)) 512)))))

(assert (= (and d!2367912 res!3145774) b!7927535))

(assert (= (and b!7927535 res!3145775) b!7927536))

(assert (=> d!2367912 m!8308218))

(assert (=> d!2367912 m!8308218))

(declare-fun m!8309424 () Bool)

(assert (=> d!2367912 m!8309424))

(assert (=> b!7927535 m!8308218))

(assert (=> b!7927535 m!8308218))

(assert (=> b!7927535 m!8309424))

(assert (=> b!7926882 d!2367912))

(declare-fun b!7927537 () Bool)

(declare-fun e!4678534 () List!74572)

(assert (=> b!7927537 (= e!4678534 lt!2692980)))

(declare-fun b!7927540 () Bool)

(declare-fun e!4678535 () Bool)

(declare-fun lt!2693268 () List!74572)

(assert (=> b!7927540 (= e!4678535 (or (not (= lt!2692980 Nil!74448)) (= lt!2693268 (t!390189 lt!2692979))))))

(declare-fun b!7927538 () Bool)

(assert (=> b!7927538 (= e!4678534 (Cons!74448 (h!80896 (t!390189 lt!2692979)) (++!18259 (t!390189 (t!390189 lt!2692979)) lt!2692980)))))

(declare-fun b!7927539 () Bool)

(declare-fun res!3145777 () Bool)

(assert (=> b!7927539 (=> (not res!3145777) (not e!4678535))))

(assert (=> b!7927539 (= res!3145777 (= (size!43248 lt!2693268) (+ (size!43248 (t!390189 lt!2692979)) (size!43248 lt!2692980))))))

(declare-fun d!2367914 () Bool)

(assert (=> d!2367914 e!4678535))

(declare-fun res!3145776 () Bool)

(assert (=> d!2367914 (=> (not res!3145776) (not e!4678535))))

(assert (=> d!2367914 (= res!3145776 (= (content!15783 lt!2693268) ((_ map or) (content!15783 (t!390189 lt!2692979)) (content!15783 lt!2692980))))))

(assert (=> d!2367914 (= lt!2693268 e!4678534)))

(declare-fun c!1455604 () Bool)

(assert (=> d!2367914 (= c!1455604 ((_ is Nil!74448) (t!390189 lt!2692979)))))

(assert (=> d!2367914 (= (++!18259 (t!390189 lt!2692979) lt!2692980) lt!2693268)))

(assert (= (and d!2367914 c!1455604) b!7927537))

(assert (= (and d!2367914 (not c!1455604)) b!7927538))

(assert (= (and d!2367914 res!3145776) b!7927539))

(assert (= (and b!7927539 res!3145777) b!7927540))

(declare-fun m!8309426 () Bool)

(assert (=> b!7927538 m!8309426))

(declare-fun m!8309428 () Bool)

(assert (=> b!7927539 m!8309428))

(assert (=> b!7927539 m!8308628))

(assert (=> b!7927539 m!8308192))

(declare-fun m!8309430 () Bool)

(assert (=> d!2367914 m!8309430))

(assert (=> d!2367914 m!8309058))

(assert (=> d!2367914 m!8308198))

(assert (=> b!7926969 d!2367914))

(declare-fun b!7927541 () Bool)

(declare-fun e!4678536 () List!74572)

(assert (=> b!7927541 (= e!4678536 (ite c!1455404 lt!2693093 lt!2693095))))

(declare-fun lt!2693269 () List!74572)

(declare-fun b!7927544 () Bool)

(declare-fun e!4678537 () Bool)

(assert (=> b!7927544 (= e!4678537 (or (not (= (ite c!1455404 lt!2693093 lt!2693095) Nil!74448)) (= lt!2693269 (ite c!1455404 lt!2693099 lt!2693091))))))

(declare-fun b!7927542 () Bool)

(assert (=> b!7927542 (= e!4678536 (Cons!74448 (h!80896 (ite c!1455404 lt!2693099 lt!2693091)) (++!18259 (t!390189 (ite c!1455404 lt!2693099 lt!2693091)) (ite c!1455404 lt!2693093 lt!2693095))))))

(declare-fun b!7927543 () Bool)

(declare-fun res!3145779 () Bool)

(assert (=> b!7927543 (=> (not res!3145779) (not e!4678537))))

(assert (=> b!7927543 (= res!3145779 (= (size!43248 lt!2693269) (+ (size!43248 (ite c!1455404 lt!2693099 lt!2693091)) (size!43248 (ite c!1455404 lt!2693093 lt!2693095)))))))

(declare-fun d!2367916 () Bool)

(assert (=> d!2367916 e!4678537))

(declare-fun res!3145778 () Bool)

(assert (=> d!2367916 (=> (not res!3145778) (not e!4678537))))

(assert (=> d!2367916 (= res!3145778 (= (content!15783 lt!2693269) ((_ map or) (content!15783 (ite c!1455404 lt!2693099 lt!2693091)) (content!15783 (ite c!1455404 lt!2693093 lt!2693095)))))))

(assert (=> d!2367916 (= lt!2693269 e!4678536)))

(declare-fun c!1455605 () Bool)

(assert (=> d!2367916 (= c!1455605 ((_ is Nil!74448) (ite c!1455404 lt!2693099 lt!2693091)))))

(assert (=> d!2367916 (= (++!18259 (ite c!1455404 lt!2693099 lt!2693091) (ite c!1455404 lt!2693093 lt!2693095)) lt!2693269)))

(assert (= (and d!2367916 c!1455605) b!7927541))

(assert (= (and d!2367916 (not c!1455605)) b!7927542))

(assert (= (and d!2367916 res!3145778) b!7927543))

(assert (= (and b!7927543 res!3145779) b!7927544))

(declare-fun m!8309432 () Bool)

(assert (=> b!7927542 m!8309432))

(declare-fun m!8309434 () Bool)

(assert (=> b!7927543 m!8309434))

(declare-fun m!8309436 () Bool)

(assert (=> b!7927543 m!8309436))

(declare-fun m!8309438 () Bool)

(assert (=> b!7927543 m!8309438))

(declare-fun m!8309440 () Bool)

(assert (=> d!2367916 m!8309440))

(declare-fun m!8309442 () Bool)

(assert (=> d!2367916 m!8309442))

(declare-fun m!8309444 () Bool)

(assert (=> d!2367916 m!8309444))

(assert (=> bm!735182 d!2367916))

(assert (=> b!7926664 d!2367484))

(assert (=> b!7926664 d!2367802))

(declare-fun d!2367918 () Bool)

(declare-fun lt!2693270 () Int)

(assert (=> d!2367918 (>= lt!2693270 0)))

(declare-fun e!4678538 () Int)

(assert (=> d!2367918 (= lt!2693270 e!4678538)))

(declare-fun c!1455606 () Bool)

(assert (=> d!2367918 (= c!1455606 ((_ is Nil!74448) lt!2693120))))

(assert (=> d!2367918 (= (size!43248 lt!2693120) lt!2693270)))

(declare-fun b!7927545 () Bool)

(assert (=> b!7927545 (= e!4678538 0)))

(declare-fun b!7927546 () Bool)

(assert (=> b!7927546 (= e!4678538 (+ 1 (size!43248 (t!390189 lt!2693120))))))

(assert (= (and d!2367918 c!1455606) b!7927545))

(assert (= (and d!2367918 (not c!1455606)) b!7927546))

(declare-fun m!8309446 () Bool)

(assert (=> b!7927546 m!8309446))

(assert (=> b!7926974 d!2367918))

(assert (=> b!7926974 d!2367654))

(declare-fun d!2367920 () Bool)

(declare-fun lt!2693271 () Int)

(assert (=> d!2367920 (>= lt!2693271 0)))

(declare-fun e!4678539 () Int)

(assert (=> d!2367920 (= lt!2693271 e!4678539)))

(declare-fun c!1455607 () Bool)

(assert (=> d!2367920 (= c!1455607 ((_ is Nil!74448) (++!18259 lt!2692979 lt!2692980)))))

(assert (=> d!2367920 (= (size!43248 (++!18259 lt!2692979 lt!2692980)) lt!2693271)))

(declare-fun b!7927547 () Bool)

(assert (=> b!7927547 (= e!4678539 0)))

(declare-fun b!7927548 () Bool)

(assert (=> b!7927548 (= e!4678539 (+ 1 (size!43248 (t!390189 (++!18259 lt!2692979 lt!2692980)))))))

(assert (= (and d!2367920 c!1455607) b!7927547))

(assert (= (and d!2367920 (not c!1455607)) b!7927548))

(declare-fun m!8309448 () Bool)

(assert (=> b!7927548 m!8309448))

(assert (=> b!7926974 d!2367920))

(declare-fun b!7927552 () Bool)

(declare-fun e!4678541 () List!74572)

(assert (=> b!7927552 (= e!4678541 (++!18259 (list!19413 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))) (list!19413 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7927550 () Bool)

(declare-fun e!4678540 () List!74572)

(assert (=> b!7927550 (= e!4678540 e!4678541)))

(declare-fun c!1455609 () Bool)

(assert (=> b!7927550 (= c!1455609 ((_ is Leaf!30234) (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7927551 () Bool)

(assert (=> b!7927551 (= e!4678541 (list!19415 (xs!19290 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7927549 () Bool)

(assert (=> b!7927549 (= e!4678540 Nil!74448)))

(declare-fun d!2367922 () Bool)

(declare-fun c!1455608 () Bool)

(assert (=> d!2367922 (= c!1455608 ((_ is Empty!15902) (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))))

(assert (=> d!2367922 (= (list!19413 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))) e!4678540)))

(assert (= (and d!2367922 c!1455608) b!7927549))

(assert (= (and d!2367922 (not c!1455608)) b!7927550))

(assert (= (and b!7927550 c!1455609) b!7927551))

(assert (= (and b!7927550 (not c!1455609)) b!7927552))

(declare-fun m!8309450 () Bool)

(assert (=> b!7927552 m!8309450))

(declare-fun m!8309452 () Bool)

(assert (=> b!7927552 m!8309452))

(assert (=> b!7927552 m!8309450))

(assert (=> b!7927552 m!8309452))

(declare-fun m!8309454 () Bool)

(assert (=> b!7927552 m!8309454))

(declare-fun m!8309456 () Bool)

(assert (=> b!7927551 m!8309456))

(assert (=> bm!735181 d!2367922))

(declare-fun d!2367924 () Bool)

(declare-fun lt!2693272 () Int)

(assert (=> d!2367924 (>= lt!2693272 0)))

(declare-fun e!4678542 () Int)

(assert (=> d!2367924 (= lt!2693272 e!4678542)))

(declare-fun c!1455610 () Bool)

(assert (=> d!2367924 (= c!1455610 ((_ is Nil!74448) lt!2693108))))

(assert (=> d!2367924 (= (size!43248 lt!2693108) lt!2693272)))

(declare-fun b!7927553 () Bool)

(assert (=> b!7927553 (= e!4678542 0)))

(declare-fun b!7927554 () Bool)

(assert (=> b!7927554 (= e!4678542 (+ 1 (size!43248 (t!390189 lt!2693108))))))

(assert (= (and d!2367924 c!1455610) b!7927553))

(assert (= (and d!2367924 (not c!1455610)) b!7927554))

(declare-fun m!8309458 () Bool)

(assert (=> b!7927554 m!8309458))

(assert (=> b!7926920 d!2367924))

(declare-fun d!2367926 () Bool)

(declare-fun lt!2693273 () Int)

(assert (=> d!2367926 (>= lt!2693273 0)))

(declare-fun e!4678543 () Int)

(assert (=> d!2367926 (= lt!2693273 e!4678543)))

(declare-fun c!1455611 () Bool)

(assert (=> d!2367926 (= c!1455611 ((_ is Nil!74448) (list!19413 t!4440)))))

(assert (=> d!2367926 (= (size!43248 (list!19413 t!4440)) lt!2693273)))

(declare-fun b!7927555 () Bool)

(assert (=> b!7927555 (= e!4678543 0)))

(declare-fun b!7927556 () Bool)

(assert (=> b!7927556 (= e!4678543 (+ 1 (size!43248 (t!390189 (list!19413 t!4440)))))))

(assert (= (and d!2367926 c!1455611) b!7927555))

(assert (= (and d!2367926 (not c!1455611)) b!7927556))

(assert (=> b!7927556 m!8309086))

(assert (=> b!7926920 d!2367926))

(declare-fun e!4678545 () List!74572)

(declare-fun b!7927560 () Bool)

(assert (=> b!7927560 (= e!4678545 (++!18259 (list!19413 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))) (list!19413 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))))))

(declare-fun b!7927558 () Bool)

(declare-fun e!4678544 () List!74572)

(assert (=> b!7927558 (= e!4678544 e!4678545)))

(declare-fun c!1455613 () Bool)

(assert (=> b!7927558 (= c!1455613 ((_ is Leaf!30234) (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))))

(declare-fun b!7927559 () Bool)

(assert (=> b!7927559 (= e!4678545 (list!19415 (xs!19290 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))

(declare-fun b!7927557 () Bool)

(assert (=> b!7927557 (= e!4678544 Nil!74448)))

(declare-fun c!1455612 () Bool)

(declare-fun d!2367928 () Bool)

(assert (=> d!2367928 (= c!1455612 ((_ is Empty!15902) (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))))

(assert (=> d!2367928 (= (list!19413 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))) e!4678544)))

(assert (= (and d!2367928 c!1455612) b!7927557))

(assert (= (and d!2367928 (not c!1455612)) b!7927558))

(assert (= (and b!7927558 c!1455613) b!7927559))

(assert (= (and b!7927558 (not c!1455613)) b!7927560))

(declare-fun m!8309460 () Bool)

(assert (=> b!7927560 m!8309460))

(declare-fun m!8309462 () Bool)

(assert (=> b!7927560 m!8309462))

(assert (=> b!7927560 m!8309460))

(assert (=> b!7927560 m!8309462))

(declare-fun m!8309464 () Bool)

(assert (=> b!7927560 m!8309464))

(declare-fun m!8309466 () Bool)

(assert (=> b!7927559 m!8309466))

(assert (=> bm!735180 d!2367928))

(assert (=> b!7926663 d!2367484))

(assert (=> b!7926663 d!2367802))

(declare-fun d!2367930 () Bool)

(declare-fun res!3145780 () Bool)

(declare-fun e!4678546 () Bool)

(assert (=> d!2367930 (=> (not res!3145780) (not e!4678546))))

(assert (=> d!2367930 (= res!3145780 (<= (size!43248 (list!19415 (xs!19290 t!4440))) 512))))

(assert (=> d!2367930 (= (inv!95724 t!4440) e!4678546)))

(declare-fun b!7927561 () Bool)

(declare-fun res!3145781 () Bool)

(assert (=> b!7927561 (=> (not res!3145781) (not e!4678546))))

(assert (=> b!7927561 (= res!3145781 (= (csize!32035 t!4440) (size!43248 (list!19415 (xs!19290 t!4440)))))))

(declare-fun b!7927562 () Bool)

(assert (=> b!7927562 (= e!4678546 (and (> (csize!32035 t!4440) 0) (<= (csize!32035 t!4440) 512)))))

(assert (= (and d!2367930 res!3145780) b!7927561))

(assert (= (and b!7927561 res!3145781) b!7927562))

(assert (=> d!2367930 m!8308170))

(assert (=> d!2367930 m!8308170))

(declare-fun m!8309468 () Bool)

(assert (=> d!2367930 m!8309468))

(assert (=> b!7927561 m!8308170))

(assert (=> b!7927561 m!8308170))

(assert (=> b!7927561 m!8309468))

(assert (=> b!7926698 d!2367930))

(assert (=> b!7926918 d!2367836))

(declare-fun b!7927563 () Bool)

(declare-fun e!4678547 () List!74572)

(assert (=> b!7927563 (= e!4678547 lt!2692980)))

(declare-fun b!7927566 () Bool)

(declare-fun lt!2693274 () List!74572)

(declare-fun e!4678548 () Bool)

(assert (=> b!7927566 (= e!4678548 (or (not (= lt!2692980 Nil!74448)) (= lt!2693274 (t!390189 (++!18259 lt!2692976 lt!2692979)))))))

(declare-fun b!7927564 () Bool)

(assert (=> b!7927564 (= e!4678547 (Cons!74448 (h!80896 (t!390189 (++!18259 lt!2692976 lt!2692979))) (++!18259 (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979))) lt!2692980)))))

(declare-fun b!7927565 () Bool)

(declare-fun res!3145783 () Bool)

(assert (=> b!7927565 (=> (not res!3145783) (not e!4678548))))

(assert (=> b!7927565 (= res!3145783 (= (size!43248 lt!2693274) (+ (size!43248 (t!390189 (++!18259 lt!2692976 lt!2692979))) (size!43248 lt!2692980))))))

(declare-fun d!2367932 () Bool)

(assert (=> d!2367932 e!4678548))

(declare-fun res!3145782 () Bool)

(assert (=> d!2367932 (=> (not res!3145782) (not e!4678548))))

(assert (=> d!2367932 (= res!3145782 (= (content!15783 lt!2693274) ((_ map or) (content!15783 (t!390189 (++!18259 lt!2692976 lt!2692979))) (content!15783 lt!2692980))))))

(assert (=> d!2367932 (= lt!2693274 e!4678547)))

(declare-fun c!1455614 () Bool)

(assert (=> d!2367932 (= c!1455614 ((_ is Nil!74448) (t!390189 (++!18259 lt!2692976 lt!2692979))))))

(assert (=> d!2367932 (= (++!18259 (t!390189 (++!18259 lt!2692976 lt!2692979)) lt!2692980) lt!2693274)))

(assert (= (and d!2367932 c!1455614) b!7927563))

(assert (= (and d!2367932 (not c!1455614)) b!7927564))

(assert (= (and d!2367932 res!3145782) b!7927565))

(assert (= (and b!7927565 res!3145783) b!7927566))

(declare-fun m!8309470 () Bool)

(assert (=> b!7927564 m!8309470))

(declare-fun m!8309472 () Bool)

(assert (=> b!7927565 m!8309472))

(assert (=> b!7927565 m!8308962))

(assert (=> b!7927565 m!8308192))

(declare-fun m!8309474 () Bool)

(assert (=> d!2367932 m!8309474))

(assert (=> d!2367932 m!8309322))

(assert (=> d!2367932 m!8308198))

(assert (=> b!7926947 d!2367932))

(declare-fun lt!2693275 () Conc!15902)

(declare-fun d!2367934 () Bool)

(assert (=> d!2367934 (= (list!19413 lt!2693275) (++!18259 (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440))) (list!19413 e!4678215)))))

(declare-fun e!4678550 () Conc!15902)

(assert (=> d!2367934 (= lt!2693275 e!4678550)))

(declare-fun c!1455615 () Bool)

(assert (=> d!2367934 (= c!1455615 (= (ite c!1455405 call!735183 (right!57203 t!4440)) Empty!15902))))

(assert (=> d!2367934 (= (<>!424 (ite c!1455405 call!735183 (right!57203 t!4440)) e!4678215) lt!2693275)))

(declare-fun b!7927569 () Bool)

(declare-fun e!4678549 () Conc!15902)

(assert (=> b!7927569 (= e!4678549 (ite c!1455405 call!735183 (right!57203 t!4440)))))

(declare-fun b!7927568 () Bool)

(assert (=> b!7927568 (= e!4678550 e!4678549)))

(declare-fun c!1455616 () Bool)

(assert (=> b!7927568 (= c!1455616 (= e!4678215 Empty!15902))))

(declare-fun b!7927570 () Bool)

(assert (=> b!7927570 (= e!4678549 (Node!15902 (ite c!1455405 call!735183 (right!57203 t!4440)) e!4678215 (+ (size!43249 (ite c!1455405 call!735183 (right!57203 t!4440))) (size!43249 e!4678215)) (+ (max!0 (height!2217 (ite c!1455405 call!735183 (right!57203 t!4440))) (height!2217 e!4678215)) 1)))))

(declare-fun b!7927567 () Bool)

(assert (=> b!7927567 (= e!4678550 e!4678215)))

(assert (= (and d!2367934 c!1455615) b!7927567))

(assert (= (and d!2367934 (not c!1455615)) b!7927568))

(assert (= (and b!7927568 c!1455616) b!7927569))

(assert (= (and b!7927568 (not c!1455616)) b!7927570))

(declare-fun m!8309476 () Bool)

(assert (=> d!2367934 m!8309476))

(declare-fun m!8309478 () Bool)

(assert (=> d!2367934 m!8309478))

(declare-fun m!8309480 () Bool)

(assert (=> d!2367934 m!8309480))

(assert (=> d!2367934 m!8309478))

(assert (=> d!2367934 m!8309480))

(declare-fun m!8309482 () Bool)

(assert (=> d!2367934 m!8309482))

(declare-fun m!8309484 () Bool)

(assert (=> b!7927570 m!8309484))

(declare-fun m!8309486 () Bool)

(assert (=> b!7927570 m!8309486))

(declare-fun m!8309488 () Bool)

(assert (=> b!7927570 m!8309488))

(declare-fun m!8309490 () Bool)

(assert (=> b!7927570 m!8309490))

(declare-fun m!8309492 () Bool)

(assert (=> b!7927570 m!8309492))

(assert (=> b!7927570 m!8309486))

(assert (=> b!7927570 m!8309484))

(assert (=> bm!735179 d!2367934))

(declare-fun d!2367936 () Bool)

(declare-fun res!3145784 () Bool)

(declare-fun e!4678551 () Bool)

(assert (=> d!2367936 (=> (not res!3145784) (not e!4678551))))

(assert (=> d!2367936 (= res!3145784 (= (csize!32034 t!4440) (+ (size!43249 (left!56873 t!4440)) (size!43249 (right!57203 t!4440)))))))

(assert (=> d!2367936 (= (inv!95723 t!4440) e!4678551)))

(declare-fun b!7927571 () Bool)

(declare-fun res!3145785 () Bool)

(assert (=> b!7927571 (=> (not res!3145785) (not e!4678551))))

(assert (=> b!7927571 (= res!3145785 (and (not (= (left!56873 t!4440) Empty!15902)) (not (= (right!57203 t!4440) Empty!15902))))))

(declare-fun b!7927572 () Bool)

(declare-fun res!3145786 () Bool)

(assert (=> b!7927572 (=> (not res!3145786) (not e!4678551))))

(assert (=> b!7927572 (= res!3145786 (= (cheight!16113 t!4440) (+ (max!0 (height!2217 (left!56873 t!4440)) (height!2217 (right!57203 t!4440))) 1)))))

(declare-fun b!7927573 () Bool)

(assert (=> b!7927573 (= e!4678551 (<= 0 (cheight!16113 t!4440)))))

(assert (= (and d!2367936 res!3145784) b!7927571))

(assert (= (and b!7927571 res!3145785) b!7927572))

(assert (= (and b!7927572 res!3145786) b!7927573))

(assert (=> d!2367936 m!8308184))

(assert (=> d!2367936 m!8309368))

(assert (=> b!7927572 m!8307826))

(assert (=> b!7927572 m!8307874))

(assert (=> b!7927572 m!8307826))

(assert (=> b!7927572 m!8307874))

(declare-fun m!8309494 () Bool)

(assert (=> b!7927572 m!8309494))

(assert (=> b!7926696 d!2367936))

(declare-fun e!4678552 () List!74572)

(declare-fun b!7927574 () Bool)

(assert (=> b!7927574 (= e!4678552 (ite c!1455404 lt!2693099 lt!2693103))))

(declare-fun e!4678553 () Bool)

(declare-fun lt!2693276 () List!74572)

(declare-fun b!7927577 () Bool)

(assert (=> b!7927577 (= e!4678553 (or (not (= (ite c!1455404 lt!2693099 lt!2693103) Nil!74448)) (= lt!2693276 (ite c!1455404 lt!2693097 lt!2693092))))))

(declare-fun b!7927575 () Bool)

(assert (=> b!7927575 (= e!4678552 (Cons!74448 (h!80896 (ite c!1455404 lt!2693097 lt!2693092)) (++!18259 (t!390189 (ite c!1455404 lt!2693097 lt!2693092)) (ite c!1455404 lt!2693099 lt!2693103))))))

(declare-fun b!7927576 () Bool)

(declare-fun res!3145788 () Bool)

(assert (=> b!7927576 (=> (not res!3145788) (not e!4678553))))

(assert (=> b!7927576 (= res!3145788 (= (size!43248 lt!2693276) (+ (size!43248 (ite c!1455404 lt!2693097 lt!2693092)) (size!43248 (ite c!1455404 lt!2693099 lt!2693103)))))))

(declare-fun d!2367938 () Bool)

(assert (=> d!2367938 e!4678553))

(declare-fun res!3145787 () Bool)

(assert (=> d!2367938 (=> (not res!3145787) (not e!4678553))))

(assert (=> d!2367938 (= res!3145787 (= (content!15783 lt!2693276) ((_ map or) (content!15783 (ite c!1455404 lt!2693097 lt!2693092)) (content!15783 (ite c!1455404 lt!2693099 lt!2693103)))))))

(assert (=> d!2367938 (= lt!2693276 e!4678552)))

(declare-fun c!1455617 () Bool)

(assert (=> d!2367938 (= c!1455617 ((_ is Nil!74448) (ite c!1455404 lt!2693097 lt!2693092)))))

(assert (=> d!2367938 (= (++!18259 (ite c!1455404 lt!2693097 lt!2693092) (ite c!1455404 lt!2693099 lt!2693103)) lt!2693276)))

(assert (= (and d!2367938 c!1455617) b!7927574))

(assert (= (and d!2367938 (not c!1455617)) b!7927575))

(assert (= (and d!2367938 res!3145787) b!7927576))

(assert (= (and b!7927576 res!3145788) b!7927577))

(declare-fun m!8309496 () Bool)

(assert (=> b!7927575 m!8309496))

(declare-fun m!8309498 () Bool)

(assert (=> b!7927576 m!8309498))

(declare-fun m!8309500 () Bool)

(assert (=> b!7927576 m!8309500))

(declare-fun m!8309502 () Bool)

(assert (=> b!7927576 m!8309502))

(declare-fun m!8309504 () Bool)

(assert (=> d!2367938 m!8309504))

(declare-fun m!8309506 () Bool)

(assert (=> d!2367938 m!8309506))

(declare-fun m!8309508 () Bool)

(assert (=> d!2367938 m!8309508))

(assert (=> bm!735178 d!2367938))

(declare-fun b!7927578 () Bool)

(declare-fun e!4678555 () Bool)

(declare-fun e!4678554 () Bool)

(assert (=> b!7927578 (= e!4678555 e!4678554)))

(declare-fun res!3145790 () Bool)

(assert (=> b!7927578 (=> (not res!3145790) (not e!4678554))))

(assert (=> b!7927578 (= res!3145790 (<= (- 1) (- (height!2217 (left!56873 lt!2693102)) (height!2217 (right!57203 lt!2693102)))))))

(declare-fun b!7927580 () Bool)

(declare-fun res!3145793 () Bool)

(assert (=> b!7927580 (=> (not res!3145793) (not e!4678554))))

(assert (=> b!7927580 (= res!3145793 (not (isEmpty!42776 (left!56873 lt!2693102))))))

(declare-fun b!7927581 () Bool)

(declare-fun res!3145794 () Bool)

(assert (=> b!7927581 (=> (not res!3145794) (not e!4678554))))

(assert (=> b!7927581 (= res!3145794 (isBalanced!4528 (left!56873 lt!2693102)))))

(declare-fun b!7927582 () Bool)

(declare-fun res!3145789 () Bool)

(assert (=> b!7927582 (=> (not res!3145789) (not e!4678554))))

(assert (=> b!7927582 (= res!3145789 (isBalanced!4528 (right!57203 lt!2693102)))))

(declare-fun b!7927583 () Bool)

(assert (=> b!7927583 (= e!4678554 (not (isEmpty!42776 (right!57203 lt!2693102))))))

(declare-fun b!7927579 () Bool)

(declare-fun res!3145791 () Bool)

(assert (=> b!7927579 (=> (not res!3145791) (not e!4678554))))

(assert (=> b!7927579 (= res!3145791 (<= (- (height!2217 (left!56873 lt!2693102)) (height!2217 (right!57203 lt!2693102))) 1))))

(declare-fun d!2367940 () Bool)

(declare-fun res!3145792 () Bool)

(assert (=> d!2367940 (=> res!3145792 e!4678555)))

(assert (=> d!2367940 (= res!3145792 (not ((_ is Node!15902) lt!2693102)))))

(assert (=> d!2367940 (= (isBalanced!4528 lt!2693102) e!4678555)))

(assert (= (and d!2367940 (not res!3145792)) b!7927578))

(assert (= (and b!7927578 res!3145790) b!7927579))

(assert (= (and b!7927579 res!3145791) b!7927581))

(assert (= (and b!7927581 res!3145794) b!7927582))

(assert (= (and b!7927582 res!3145789) b!7927580))

(assert (= (and b!7927580 res!3145793) b!7927583))

(declare-fun m!8309510 () Bool)

(assert (=> b!7927579 m!8309510))

(declare-fun m!8309512 () Bool)

(assert (=> b!7927579 m!8309512))

(declare-fun m!8309514 () Bool)

(assert (=> b!7927582 m!8309514))

(declare-fun m!8309516 () Bool)

(assert (=> b!7927580 m!8309516))

(declare-fun m!8309518 () Bool)

(assert (=> b!7927581 m!8309518))

(declare-fun m!8309520 () Bool)

(assert (=> b!7927583 m!8309520))

(assert (=> b!7927578 m!8309510))

(assert (=> b!7927578 m!8309512))

(assert (=> d!2367486 d!2367940))

(assert (=> d!2367486 d!2367666))

(declare-fun d!2367942 () Bool)

(declare-fun lt!2693279 () IArray!31865)

(assert (=> d!2367942 (= lt!2693279 (IArray!31866 ($colon+!315 (list!19415 (xs!19290 (right!57203 t!4440))) v!5484)))))

(declare-fun choose!59830 (IArray!31865 T!145804) IArray!31865)

(assert (=> d!2367942 (= lt!2693279 (choose!59830 (xs!19290 (right!57203 t!4440)) v!5484))))

(declare-fun size!43251 (IArray!31865) Int)

(assert (=> d!2367942 (<= (+ (size!43251 (xs!19290 (right!57203 t!4440))) 1) 2147483647)))

(assert (=> d!2367942 (= (append!1146 (xs!19290 (right!57203 t!4440)) v!5484) lt!2693279)))

(declare-fun bs!1968861 () Bool)

(assert (= bs!1968861 d!2367942))

(assert (=> bs!1968861 m!8308086))

(assert (=> bs!1968861 m!8308086))

(assert (=> bs!1968861 m!8308088))

(declare-fun m!8309522 () Bool)

(assert (=> bs!1968861 m!8309522))

(declare-fun m!8309524 () Bool)

(assert (=> bs!1968861 m!8309524))

(assert (=> b!7926867 d!2367942))

(declare-fun d!2367944 () Bool)

(declare-fun e!4678558 () Bool)

(assert (=> d!2367944 e!4678558))

(declare-fun res!3145797 () Bool)

(assert (=> d!2367944 (=> (not res!3145797) (not e!4678558))))

(declare-fun lt!2693280 () List!74572)

(assert (=> d!2367944 (= res!3145797 ((_ is Cons!74448) lt!2693280))))

(declare-fun e!4678557 () List!74572)

(assert (=> d!2367944 (= lt!2693280 e!4678557)))

(declare-fun c!1455618 () Bool)

(assert (=> d!2367944 (= c!1455618 ((_ is Nil!74448) (list!19415 (xs!19290 (right!57203 t!4440)))))))

(assert (=> d!2367944 (= ($colon+!315 (list!19415 (xs!19290 (right!57203 t!4440))) v!5484) lt!2693280)))

(declare-fun bm!735224 () Bool)

(declare-fun call!735229 () (_ BitVec 32))

(assert (=> bm!735224 (= call!735229 (isize!119 lt!2693280))))

(declare-fun bm!735225 () Bool)

(declare-fun call!735230 () (_ BitVec 32))

(assert (=> bm!735225 (= call!735230 (isize!119 (list!19415 (xs!19290 (right!57203 t!4440)))))))

(declare-fun b!7927584 () Bool)

(declare-fun e!4678556 () Bool)

(assert (=> b!7927584 (= e!4678556 (= call!735229 (bvadd call!735230 #b00000000000000000000000000000001)))))

(declare-fun b!7927585 () Bool)

(assert (=> b!7927585 (= e!4678557 (Cons!74448 (h!80896 (list!19415 (xs!19290 (right!57203 t!4440)))) ($colon+!315 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440)))) v!5484)))))

(declare-fun b!7927586 () Bool)

(assert (=> b!7927586 (= e!4678556 (= call!735229 call!735230))))

(declare-fun b!7927587 () Bool)

(declare-fun res!3145798 () Bool)

(assert (=> b!7927587 (=> (not res!3145798) (not e!4678558))))

(assert (=> b!7927587 (= res!3145798 (= (content!15783 lt!2693280) ((_ map or) (content!15783 (list!19415 (xs!19290 (right!57203 t!4440)))) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun b!7927588 () Bool)

(declare-fun res!3145795 () Bool)

(assert (=> b!7927588 (=> (not res!3145795) (not e!4678558))))

(assert (=> b!7927588 (= res!3145795 e!4678556)))

(declare-fun c!1455619 () Bool)

(assert (=> b!7927588 (= c!1455619 (bvslt (isize!119 (list!19415 (xs!19290 (right!57203 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7927589 () Bool)

(assert (=> b!7927589 (= e!4678557 (Cons!74448 v!5484 (list!19415 (xs!19290 (right!57203 t!4440)))))))

(declare-fun b!7927590 () Bool)

(declare-fun res!3145796 () Bool)

(assert (=> b!7927590 (=> (not res!3145796) (not e!4678558))))

(assert (=> b!7927590 (= res!3145796 (= (size!43248 lt!2693280) (+ (size!43248 (list!19415 (xs!19290 (right!57203 t!4440)))) 1)))))

(declare-fun b!7927591 () Bool)

(assert (=> b!7927591 (= e!4678558 (= lt!2693280 (++!18259 (list!19415 (xs!19290 (right!57203 t!4440))) (Cons!74448 v!5484 Nil!74448))))))

(assert (= (and d!2367944 c!1455618) b!7927589))

(assert (= (and d!2367944 (not c!1455618)) b!7927585))

(assert (= (and d!2367944 res!3145797) b!7927590))

(assert (= (and b!7927590 res!3145796) b!7927588))

(assert (= (and b!7927588 c!1455619) b!7927584))

(assert (= (and b!7927588 (not c!1455619)) b!7927586))

(assert (= (or b!7927584 b!7927586) bm!735225))

(assert (= (or b!7927584 b!7927586) bm!735224))

(assert (= (and b!7927588 res!3145795) b!7927587))

(assert (= (and b!7927587 res!3145798) b!7927591))

(declare-fun m!8309526 () Bool)

(assert (=> bm!735224 m!8309526))

(declare-fun m!8309528 () Bool)

(assert (=> b!7927587 m!8309528))

(assert (=> b!7927587 m!8308086))

(declare-fun m!8309530 () Bool)

(assert (=> b!7927587 m!8309530))

(assert (=> b!7927587 m!8308156))

(assert (=> bm!735225 m!8308086))

(declare-fun m!8309532 () Bool)

(assert (=> bm!735225 m!8309532))

(assert (=> b!7927588 m!8308086))

(assert (=> b!7927588 m!8309532))

(assert (=> b!7927591 m!8308086))

(declare-fun m!8309534 () Bool)

(assert (=> b!7927591 m!8309534))

(declare-fun m!8309536 () Bool)

(assert (=> b!7927585 m!8309536))

(declare-fun m!8309538 () Bool)

(assert (=> b!7927590 m!8309538))

(assert (=> b!7927590 m!8308086))

(assert (=> b!7927590 m!8309118))

(assert (=> b!7926867 d!2367944))

(assert (=> b!7926867 d!2367874))

(declare-fun d!2367946 () Bool)

(assert (=> d!2367946 (= (inv!95720 (xs!19290 (left!56873 t!4440))) (<= (size!43248 (innerList!15990 (xs!19290 (left!56873 t!4440)))) 2147483647))))

(declare-fun bs!1968862 () Bool)

(assert (= bs!1968862 d!2367946))

(declare-fun m!8309540 () Bool)

(assert (=> bs!1968862 m!8309540))

(assert (=> b!7926990 d!2367946))

(declare-fun d!2367948 () Bool)

(declare-fun lt!2693281 () (_ BitVec 32))

(assert (=> d!2367948 (and (bvsle #b00000000000000000000000000000000 lt!2693281) (bvsle lt!2693281 #b01111111111111111111111111111111))))

(declare-fun e!4678559 () (_ BitVec 32))

(assert (=> d!2367948 (= lt!2693281 e!4678559)))

(declare-fun c!1455620 () Bool)

(assert (=> d!2367948 (= c!1455620 ((_ is Nil!74448) lt!2693108))))

(assert (=> d!2367948 (= (isize!119 lt!2693108) lt!2693281)))

(declare-fun b!7927592 () Bool)

(assert (=> b!7927592 (= e!4678559 #b00000000000000000000000000000000)))

(declare-fun b!7927593 () Bool)

(declare-fun lt!2693282 () (_ BitVec 32))

(assert (=> b!7927593 (= e!4678559 (ite (= lt!2693282 #b01111111111111111111111111111111) lt!2693282 (bvadd #b00000000000000000000000000000001 lt!2693282)))))

(assert (=> b!7927593 (= lt!2693282 (isize!119 (t!390189 lt!2693108)))))

(assert (= (and d!2367948 c!1455620) b!7927592))

(assert (= (and d!2367948 (not c!1455620)) b!7927593))

(declare-fun m!8309542 () Bool)

(assert (=> b!7927593 m!8309542))

(assert (=> bm!735192 d!2367948))

(declare-fun b!7927594 () Bool)

(declare-fun e!4678560 () Bool)

(declare-fun tp!2358746 () Bool)

(assert (=> b!7927594 (= e!4678560 (and tp_is_empty!53229 tp!2358746))))

(assert (=> b!7926980 (= tp!2358718 e!4678560)))

(assert (= (and b!7926980 ((_ is Cons!74448) (t!390189 (innerList!15990 (xs!19290 t!4440))))) b!7927594))

(declare-fun tp!2358747 () Bool)

(declare-fun e!4678562 () Bool)

(declare-fun tp!2358748 () Bool)

(declare-fun b!7927595 () Bool)

(assert (=> b!7927595 (= e!4678562 (and (inv!95719 (left!56873 (left!56873 (right!57203 t!4440)))) tp!2358748 (inv!95719 (right!57203 (left!56873 (right!57203 t!4440)))) tp!2358747))))

(declare-fun b!7927597 () Bool)

(declare-fun e!4678561 () Bool)

(declare-fun tp!2358749 () Bool)

(assert (=> b!7927597 (= e!4678561 tp!2358749)))

(declare-fun b!7927596 () Bool)

(assert (=> b!7927596 (= e!4678562 (and (inv!95720 (xs!19290 (left!56873 (right!57203 t!4440)))) e!4678561))))

(assert (=> b!7926992 (= tp!2358729 (and (inv!95719 (left!56873 (right!57203 t!4440))) e!4678562))))

(assert (= (and b!7926992 ((_ is Node!15902) (left!56873 (right!57203 t!4440)))) b!7927595))

(assert (= b!7927596 b!7927597))

(assert (= (and b!7926992 ((_ is Leaf!30234) (left!56873 (right!57203 t!4440)))) b!7927596))

(declare-fun m!8309544 () Bool)

(assert (=> b!7927595 m!8309544))

(declare-fun m!8309546 () Bool)

(assert (=> b!7927595 m!8309546))

(declare-fun m!8309548 () Bool)

(assert (=> b!7927596 m!8309548))

(assert (=> b!7926992 m!8308260))

(declare-fun tp!2358751 () Bool)

(declare-fun b!7927598 () Bool)

(declare-fun tp!2358750 () Bool)

(declare-fun e!4678564 () Bool)

(assert (=> b!7927598 (= e!4678564 (and (inv!95719 (left!56873 (right!57203 (right!57203 t!4440)))) tp!2358751 (inv!95719 (right!57203 (right!57203 (right!57203 t!4440)))) tp!2358750))))

(declare-fun b!7927600 () Bool)

(declare-fun e!4678563 () Bool)

(declare-fun tp!2358752 () Bool)

(assert (=> b!7927600 (= e!4678563 tp!2358752)))

(declare-fun b!7927599 () Bool)

(assert (=> b!7927599 (= e!4678564 (and (inv!95720 (xs!19290 (right!57203 (right!57203 t!4440)))) e!4678563))))

(assert (=> b!7926992 (= tp!2358728 (and (inv!95719 (right!57203 (right!57203 t!4440))) e!4678564))))

(assert (= (and b!7926992 ((_ is Node!15902) (right!57203 (right!57203 t!4440)))) b!7927598))

(assert (= b!7927599 b!7927600))

(assert (= (and b!7926992 ((_ is Leaf!30234) (right!57203 (right!57203 t!4440)))) b!7927599))

(declare-fun m!8309550 () Bool)

(assert (=> b!7927598 m!8309550))

(declare-fun m!8309552 () Bool)

(assert (=> b!7927598 m!8309552))

(declare-fun m!8309554 () Bool)

(assert (=> b!7927599 m!8309554))

(assert (=> b!7926992 m!8308262))

(declare-fun b!7927601 () Bool)

(declare-fun e!4678565 () Bool)

(declare-fun tp!2358753 () Bool)

(assert (=> b!7927601 (= e!4678565 (and tp_is_empty!53229 tp!2358753))))

(assert (=> b!7926991 (= tp!2358727 e!4678565)))

(assert (= (and b!7926991 ((_ is Cons!74448) (innerList!15990 (xs!19290 (left!56873 t!4440))))) b!7927601))

(declare-fun tp!2358755 () Bool)

(declare-fun b!7927602 () Bool)

(declare-fun e!4678567 () Bool)

(declare-fun tp!2358754 () Bool)

(assert (=> b!7927602 (= e!4678567 (and (inv!95719 (left!56873 (left!56873 (left!56873 t!4440)))) tp!2358755 (inv!95719 (right!57203 (left!56873 (left!56873 t!4440)))) tp!2358754))))

(declare-fun b!7927604 () Bool)

(declare-fun e!4678566 () Bool)

(declare-fun tp!2358756 () Bool)

(assert (=> b!7927604 (= e!4678566 tp!2358756)))

(declare-fun b!7927603 () Bool)

(assert (=> b!7927603 (= e!4678567 (and (inv!95720 (xs!19290 (left!56873 (left!56873 t!4440)))) e!4678566))))

(assert (=> b!7926989 (= tp!2358726 (and (inv!95719 (left!56873 (left!56873 t!4440))) e!4678567))))

(assert (= (and b!7926989 ((_ is Node!15902) (left!56873 (left!56873 t!4440)))) b!7927602))

(assert (= b!7927603 b!7927604))

(assert (= (and b!7926989 ((_ is Leaf!30234) (left!56873 (left!56873 t!4440)))) b!7927603))

(declare-fun m!8309556 () Bool)

(assert (=> b!7927602 m!8309556))

(declare-fun m!8309558 () Bool)

(assert (=> b!7927602 m!8309558))

(declare-fun m!8309560 () Bool)

(assert (=> b!7927603 m!8309560))

(assert (=> b!7926989 m!8308254))

(declare-fun e!4678569 () Bool)

(declare-fun tp!2358757 () Bool)

(declare-fun tp!2358758 () Bool)

(declare-fun b!7927605 () Bool)

(assert (=> b!7927605 (= e!4678569 (and (inv!95719 (left!56873 (right!57203 (left!56873 t!4440)))) tp!2358758 (inv!95719 (right!57203 (right!57203 (left!56873 t!4440)))) tp!2358757))))

(declare-fun b!7927607 () Bool)

(declare-fun e!4678568 () Bool)

(declare-fun tp!2358759 () Bool)

(assert (=> b!7927607 (= e!4678568 tp!2358759)))

(declare-fun b!7927606 () Bool)

(assert (=> b!7927606 (= e!4678569 (and (inv!95720 (xs!19290 (right!57203 (left!56873 t!4440)))) e!4678568))))

(assert (=> b!7926989 (= tp!2358725 (and (inv!95719 (right!57203 (left!56873 t!4440))) e!4678569))))

(assert (= (and b!7926989 ((_ is Node!15902) (right!57203 (left!56873 t!4440)))) b!7927605))

(assert (= b!7927606 b!7927607))

(assert (= (and b!7926989 ((_ is Leaf!30234) (right!57203 (left!56873 t!4440)))) b!7927606))

(declare-fun m!8309562 () Bool)

(assert (=> b!7927605 m!8309562))

(declare-fun m!8309564 () Bool)

(assert (=> b!7927605 m!8309564))

(declare-fun m!8309566 () Bool)

(assert (=> b!7927606 m!8309566))

(assert (=> b!7926989 m!8308256))

(declare-fun b!7927608 () Bool)

(declare-fun e!4678570 () Bool)

(declare-fun tp!2358760 () Bool)

(assert (=> b!7927608 (= e!4678570 (and tp_is_empty!53229 tp!2358760))))

(assert (=> b!7926994 (= tp!2358730 e!4678570)))

(assert (= (and b!7926994 ((_ is Cons!74448) (innerList!15990 (xs!19290 (right!57203 t!4440))))) b!7927608))

(check-sat (not b!7927048) (not b!7927465) (not b!7927513) (not b!7927564) (not b!7927155) (not b!7927575) (not b!7927590) (not bm!735194) (not d!2367664) (not b!7927508) (not b!7927420) (not b!7927000) (not b!7927524) (not b!7927180) (not b!7927514) (not b!7927500) (not bm!735200) (not d!2367658) (not d!2367930) (not b!7927556) (not d!2367934) (not b!7927008) (not d!2367660) (not b!7927218) (not b!7927240) (not b!7927285) (not b!7927202) (not b!7927594) (not bm!735197) (not d!2367846) (not b!7927129) (not bm!735219) (not b!7927599) (not b!7927525) (not b!7927505) (not d!2367828) (not b!7927371) (not d!2367626) (not b!7927037) (not b!7927603) (not b!7927596) tp_is_empty!53229 (not b!7927444) (not d!2367942) (not bm!735203) (not b!7927131) (not b!7927115) (not b!7927565) (not b!7927106) (not b!7927484) (not d!2367916) (not b!7927464) (not b!7927572) (not d!2367866) (not b!7926989) (not b!7927511) (not bm!735225) (not bm!735224) (not bm!735218) (not b!7927503) (not b!7927532) (not bm!735201) (not b!7927119) (not b!7927579) (not b!7927601) (not b!7927595) (not b!7927578) (not b!7927178) (not b!7927179) (not b!7927296) (not b!7927418) (not b!7927543) (not b!7927297) (not b!7927153) (not d!2367932) (not b!7927161) (not d!2367710) (not d!2367806) (not b!7927389) (not b!7927598) (not b!7927546) (not b!7927533) (not d!2367900) (not b!7927492) (not b!7927602) (not b!7927372) (not b!7927528) (not b!7927604) (not b!7927049) (not b!7927531) (not b!7927213) (not b!7927560) (not b!7927310) (not b!7927473) (not b!7927436) (not b!7927593) (not b!7927582) (not b!7927130) (not b!7927181) (not d!2367750) (not d!2367868) (not b!7927551) (not b!7927535) (not b!7927133) (not b!7927374) (not d!2367560) (not b!7927561) (not b!7927552) (not b!7926992) (not b!7927038) (not b!7927576) (not d!2367914) (not b!7927501) (not b!7927309) (not b!7927097) (not b!7927212) (not b!7927355) (not b!7927472) (not b!7927570) (not b!7927478) (not b!7927607) (not b!7927554) (not b!7927538) (not b!7927201) (not d!2367946) (not b!7927580) (not d!2367864) (not b!7927529) (not d!2367880) (not b!7927177) (not b!7927491) (not b!7927542) (not b!7927107) (not b!7927605) (not d!2367938) (not b!7927114) (not d!2367886) (not b!7927446) (not b!7927480) (not b!7927487) (not b!7927539) (not b!7927504) (not bm!735195) (not b!7927328) (not b!7927527) (not b!7927509) (not b!7927591) (not b!7927369) (not b!7927496) (not b!7927587) (not b!7927360) (not b!7927583) (not b!7927486) (not d!2367756) (not b!7927597) (not bm!735198) (not b!7927053) (not d!2367722) (not d!2367870) (not b!7927376) (not b!7927422) (not b!7927469) (not b!7927234) (not b!7927559) (not b!7927132) (not b!7927455) (not b!7927520) (not b!7927502) (not b!7927342) (not b!7927241) (not b!7927588) (not d!2367614) (not b!7927052) (not bm!735202) (not b!7927506) (not b!7927120) (not b!7927364) (not b!7927171) (not b!7927182) (not b!7927482) (not b!7927450) (not b!7927530) (not bm!735222) (not bm!735199) (not b!7927585) (not b!7927368) (not b!7927606) (not b!7927098) (not b!7927495) (not b!7927350) (not b!7927007) (not d!2367862) (not b!7927534) (not d!2367718) (not b!7926999) (not b!7927600) (not b!7927522) (not b!7927581) (not d!2367892) (not d!2367574) (not d!2367894) (not b!7927516) (not b!7927519) (not b!7927228) (not d!2367856) (not b!7927548) (not b!7927477) (not d!2367936) (not b!7927608) (not d!2367912) (not b!7927326) (not b!7927004) (not b!7927011) (not b!7927454) (not b!7927468) (not bm!735223) (not d!2367686) (not bm!735196) (not b!7927217) (not b!7927452) (not d!2367834) (not d!2367854) (not b!7927366) (not d!2367584) (not b!7927172) (not b!7927134))
(check-sat)
(get-model)

(declare-fun d!2367950 () Bool)

(assert (=> d!2367950 (= (++!18259 (++!18259 lt!2693091 lt!2693095) lt!2693104) (++!18259 lt!2693091 (++!18259 lt!2693095 lt!2693104)))))

(assert (=> d!2367950 true))

(declare-fun _$15!893 () Unit!169565)

(assert (=> d!2367950 (= (choose!59826 lt!2693091 lt!2693095 lt!2693104) _$15!893)))

(declare-fun bs!1968863 () Bool)

(assert (= bs!1968863 d!2367950))

(assert (=> bs!1968863 m!8309254))

(assert (=> bs!1968863 m!8309254))

(assert (=> bs!1968863 m!8309256))

(assert (=> bs!1968863 m!8309250))

(assert (=> bs!1968863 m!8309250))

(assert (=> bs!1968863 m!8309252))

(assert (=> d!2367864 d!2367950))

(declare-fun b!7927609 () Bool)

(declare-fun e!4678571 () List!74572)

(assert (=> b!7927609 (= e!4678571 lt!2693095)))

(declare-fun b!7927612 () Bool)

(declare-fun lt!2693283 () List!74572)

(declare-fun e!4678572 () Bool)

(assert (=> b!7927612 (= e!4678572 (or (not (= lt!2693095 Nil!74448)) (= lt!2693283 lt!2693091)))))

(declare-fun b!7927610 () Bool)

(assert (=> b!7927610 (= e!4678571 (Cons!74448 (h!80896 lt!2693091) (++!18259 (t!390189 lt!2693091) lt!2693095)))))

(declare-fun b!7927611 () Bool)

(declare-fun res!3145800 () Bool)

(assert (=> b!7927611 (=> (not res!3145800) (not e!4678572))))

(assert (=> b!7927611 (= res!3145800 (= (size!43248 lt!2693283) (+ (size!43248 lt!2693091) (size!43248 lt!2693095))))))

(declare-fun d!2367952 () Bool)

(assert (=> d!2367952 e!4678572))

(declare-fun res!3145799 () Bool)

(assert (=> d!2367952 (=> (not res!3145799) (not e!4678572))))

(assert (=> d!2367952 (= res!3145799 (= (content!15783 lt!2693283) ((_ map or) (content!15783 lt!2693091) (content!15783 lt!2693095))))))

(assert (=> d!2367952 (= lt!2693283 e!4678571)))

(declare-fun c!1455621 () Bool)

(assert (=> d!2367952 (= c!1455621 ((_ is Nil!74448) lt!2693091))))

(assert (=> d!2367952 (= (++!18259 lt!2693091 lt!2693095) lt!2693283)))

(assert (= (and d!2367952 c!1455621) b!7927609))

(assert (= (and d!2367952 (not c!1455621)) b!7927610))

(assert (= (and d!2367952 res!3145799) b!7927611))

(assert (= (and b!7927611 res!3145800) b!7927612))

(declare-fun m!8309568 () Bool)

(assert (=> b!7927610 m!8309568))

(declare-fun m!8309570 () Bool)

(assert (=> b!7927611 m!8309570))

(assert (=> b!7927611 m!8309292))

(declare-fun m!8309572 () Bool)

(assert (=> b!7927611 m!8309572))

(declare-fun m!8309574 () Bool)

(assert (=> d!2367952 m!8309574))

(assert (=> d!2367952 m!8309298))

(declare-fun m!8309576 () Bool)

(assert (=> d!2367952 m!8309576))

(assert (=> d!2367864 d!2367952))

(declare-fun b!7927613 () Bool)

(declare-fun e!4678573 () List!74572)

(assert (=> b!7927613 (= e!4678573 lt!2693104)))

(declare-fun b!7927616 () Bool)

(declare-fun e!4678574 () Bool)

(declare-fun lt!2693284 () List!74572)

(assert (=> b!7927616 (= e!4678574 (or (not (= lt!2693104 Nil!74448)) (= lt!2693284 (++!18259 lt!2693091 lt!2693095))))))

(declare-fun b!7927614 () Bool)

(assert (=> b!7927614 (= e!4678573 (Cons!74448 (h!80896 (++!18259 lt!2693091 lt!2693095)) (++!18259 (t!390189 (++!18259 lt!2693091 lt!2693095)) lt!2693104)))))

(declare-fun b!7927615 () Bool)

(declare-fun res!3145802 () Bool)

(assert (=> b!7927615 (=> (not res!3145802) (not e!4678574))))

(assert (=> b!7927615 (= res!3145802 (= (size!43248 lt!2693284) (+ (size!43248 (++!18259 lt!2693091 lt!2693095)) (size!43248 lt!2693104))))))

(declare-fun d!2367954 () Bool)

(assert (=> d!2367954 e!4678574))

(declare-fun res!3145801 () Bool)

(assert (=> d!2367954 (=> (not res!3145801) (not e!4678574))))

(assert (=> d!2367954 (= res!3145801 (= (content!15783 lt!2693284) ((_ map or) (content!15783 (++!18259 lt!2693091 lt!2693095)) (content!15783 lt!2693104))))))

(assert (=> d!2367954 (= lt!2693284 e!4678573)))

(declare-fun c!1455622 () Bool)

(assert (=> d!2367954 (= c!1455622 ((_ is Nil!74448) (++!18259 lt!2693091 lt!2693095)))))

(assert (=> d!2367954 (= (++!18259 (++!18259 lt!2693091 lt!2693095) lt!2693104) lt!2693284)))

(assert (= (and d!2367954 c!1455622) b!7927613))

(assert (= (and d!2367954 (not c!1455622)) b!7927614))

(assert (= (and d!2367954 res!3145801) b!7927615))

(assert (= (and b!7927615 res!3145802) b!7927616))

(declare-fun m!8309578 () Bool)

(assert (=> b!7927614 m!8309578))

(declare-fun m!8309580 () Bool)

(assert (=> b!7927615 m!8309580))

(assert (=> b!7927615 m!8309254))

(declare-fun m!8309582 () Bool)

(assert (=> b!7927615 m!8309582))

(assert (=> b!7927615 m!8309242))

(declare-fun m!8309584 () Bool)

(assert (=> d!2367954 m!8309584))

(assert (=> d!2367954 m!8309254))

(declare-fun m!8309586 () Bool)

(assert (=> d!2367954 m!8309586))

(assert (=> d!2367954 m!8309248))

(assert (=> d!2367864 d!2367954))

(declare-fun b!7927617 () Bool)

(declare-fun e!4678575 () List!74572)

(assert (=> b!7927617 (= e!4678575 lt!2693104)))

(declare-fun lt!2693285 () List!74572)

(declare-fun e!4678576 () Bool)

(declare-fun b!7927620 () Bool)

(assert (=> b!7927620 (= e!4678576 (or (not (= lt!2693104 Nil!74448)) (= lt!2693285 lt!2693095)))))

(declare-fun b!7927618 () Bool)

(assert (=> b!7927618 (= e!4678575 (Cons!74448 (h!80896 lt!2693095) (++!18259 (t!390189 lt!2693095) lt!2693104)))))

(declare-fun b!7927619 () Bool)

(declare-fun res!3145804 () Bool)

(assert (=> b!7927619 (=> (not res!3145804) (not e!4678576))))

(assert (=> b!7927619 (= res!3145804 (= (size!43248 lt!2693285) (+ (size!43248 lt!2693095) (size!43248 lt!2693104))))))

(declare-fun d!2367956 () Bool)

(assert (=> d!2367956 e!4678576))

(declare-fun res!3145803 () Bool)

(assert (=> d!2367956 (=> (not res!3145803) (not e!4678576))))

(assert (=> d!2367956 (= res!3145803 (= (content!15783 lt!2693285) ((_ map or) (content!15783 lt!2693095) (content!15783 lt!2693104))))))

(assert (=> d!2367956 (= lt!2693285 e!4678575)))

(declare-fun c!1455623 () Bool)

(assert (=> d!2367956 (= c!1455623 ((_ is Nil!74448) lt!2693095))))

(assert (=> d!2367956 (= (++!18259 lt!2693095 lt!2693104) lt!2693285)))

(assert (= (and d!2367956 c!1455623) b!7927617))

(assert (= (and d!2367956 (not c!1455623)) b!7927618))

(assert (= (and d!2367956 res!3145803) b!7927619))

(assert (= (and b!7927619 res!3145804) b!7927620))

(declare-fun m!8309588 () Bool)

(assert (=> b!7927618 m!8309588))

(declare-fun m!8309590 () Bool)

(assert (=> b!7927619 m!8309590))

(assert (=> b!7927619 m!8309572))

(assert (=> b!7927619 m!8309242))

(declare-fun m!8309592 () Bool)

(assert (=> d!2367956 m!8309592))

(assert (=> d!2367956 m!8309576))

(assert (=> d!2367956 m!8309248))

(assert (=> d!2367864 d!2367956))

(declare-fun b!7927621 () Bool)

(declare-fun e!4678577 () List!74572)

(assert (=> b!7927621 (= e!4678577 (++!18259 lt!2693095 lt!2693104))))

(declare-fun b!7927624 () Bool)

(declare-fun e!4678578 () Bool)

(declare-fun lt!2693286 () List!74572)

(assert (=> b!7927624 (= e!4678578 (or (not (= (++!18259 lt!2693095 lt!2693104) Nil!74448)) (= lt!2693286 lt!2693091)))))

(declare-fun b!7927622 () Bool)

(assert (=> b!7927622 (= e!4678577 (Cons!74448 (h!80896 lt!2693091) (++!18259 (t!390189 lt!2693091) (++!18259 lt!2693095 lt!2693104))))))

(declare-fun b!7927623 () Bool)

(declare-fun res!3145806 () Bool)

(assert (=> b!7927623 (=> (not res!3145806) (not e!4678578))))

(assert (=> b!7927623 (= res!3145806 (= (size!43248 lt!2693286) (+ (size!43248 lt!2693091) (size!43248 (++!18259 lt!2693095 lt!2693104)))))))

(declare-fun d!2367958 () Bool)

(assert (=> d!2367958 e!4678578))

(declare-fun res!3145805 () Bool)

(assert (=> d!2367958 (=> (not res!3145805) (not e!4678578))))

(assert (=> d!2367958 (= res!3145805 (= (content!15783 lt!2693286) ((_ map or) (content!15783 lt!2693091) (content!15783 (++!18259 lt!2693095 lt!2693104)))))))

(assert (=> d!2367958 (= lt!2693286 e!4678577)))

(declare-fun c!1455624 () Bool)

(assert (=> d!2367958 (= c!1455624 ((_ is Nil!74448) lt!2693091))))

(assert (=> d!2367958 (= (++!18259 lt!2693091 (++!18259 lt!2693095 lt!2693104)) lt!2693286)))

(assert (= (and d!2367958 c!1455624) b!7927621))

(assert (= (and d!2367958 (not c!1455624)) b!7927622))

(assert (= (and d!2367958 res!3145805) b!7927623))

(assert (= (and b!7927623 res!3145806) b!7927624))

(assert (=> b!7927622 m!8309250))

(declare-fun m!8309594 () Bool)

(assert (=> b!7927622 m!8309594))

(declare-fun m!8309596 () Bool)

(assert (=> b!7927623 m!8309596))

(assert (=> b!7927623 m!8309292))

(assert (=> b!7927623 m!8309250))

(declare-fun m!8309598 () Bool)

(assert (=> b!7927623 m!8309598))

(declare-fun m!8309600 () Bool)

(assert (=> d!2367958 m!8309600))

(assert (=> d!2367958 m!8309298))

(assert (=> d!2367958 m!8309250))

(declare-fun m!8309602 () Bool)

(assert (=> d!2367958 m!8309602))

(assert (=> d!2367864 d!2367958))

(declare-fun d!2367960 () Bool)

(declare-fun lt!2693287 () Bool)

(assert (=> d!2367960 (= lt!2693287 (isEmpty!42778 (list!19413 (right!57203 (right!57203 t!4440)))))))

(assert (=> d!2367960 (= lt!2693287 (= (size!43249 (right!57203 (right!57203 t!4440))) 0))))

(assert (=> d!2367960 (= (isEmpty!42776 (right!57203 (right!57203 t!4440))) lt!2693287)))

(declare-fun bs!1968864 () Bool)

(assert (= bs!1968864 d!2367960))

(assert (=> bs!1968864 m!8308094))

(assert (=> bs!1968864 m!8308094))

(declare-fun m!8309604 () Bool)

(assert (=> bs!1968864 m!8309604))

(assert (=> bs!1968864 m!8309190))

(assert (=> b!7927182 d!2367960))

(declare-fun b!7927625 () Bool)

(declare-fun e!4678579 () List!74572)

(assert (=> b!7927625 (= e!4678579 (Cons!74448 v!5484 Nil!74448))))

(declare-fun lt!2693288 () List!74572)

(declare-fun b!7927628 () Bool)

(declare-fun e!4678580 () Bool)

(assert (=> b!7927628 (= e!4678580 (or (not (= (Cons!74448 v!5484 Nil!74448) Nil!74448)) (= lt!2693288 (list!19413 (right!57203 t!4440)))))))

(declare-fun b!7927626 () Bool)

(assert (=> b!7927626 (= e!4678579 (Cons!74448 (h!80896 (list!19413 (right!57203 t!4440))) (++!18259 (t!390189 (list!19413 (right!57203 t!4440))) (Cons!74448 v!5484 Nil!74448))))))

(declare-fun b!7927627 () Bool)

(declare-fun res!3145808 () Bool)

(assert (=> b!7927627 (=> (not res!3145808) (not e!4678580))))

(assert (=> b!7927627 (= res!3145808 (= (size!43248 lt!2693288) (+ (size!43248 (list!19413 (right!57203 t!4440))) (size!43248 (Cons!74448 v!5484 Nil!74448)))))))

(declare-fun d!2367962 () Bool)

(assert (=> d!2367962 e!4678580))

(declare-fun res!3145807 () Bool)

(assert (=> d!2367962 (=> (not res!3145807) (not e!4678580))))

(assert (=> d!2367962 (= res!3145807 (= (content!15783 lt!2693288) ((_ map or) (content!15783 (list!19413 (right!57203 t!4440))) (content!15783 (Cons!74448 v!5484 Nil!74448)))))))

(assert (=> d!2367962 (= lt!2693288 e!4678579)))

(declare-fun c!1455625 () Bool)

(assert (=> d!2367962 (= c!1455625 ((_ is Nil!74448) (list!19413 (right!57203 t!4440))))))

(assert (=> d!2367962 (= (++!18259 (list!19413 (right!57203 t!4440)) (Cons!74448 v!5484 Nil!74448)) lt!2693288)))

(assert (= (and d!2367962 c!1455625) b!7927625))

(assert (= (and d!2367962 (not c!1455625)) b!7927626))

(assert (= (and d!2367962 res!3145807) b!7927627))

(assert (= (and b!7927627 res!3145808) b!7927628))

(declare-fun m!8309606 () Bool)

(assert (=> b!7927626 m!8309606))

(declare-fun m!8309608 () Bool)

(assert (=> b!7927627 m!8309608))

(assert (=> b!7927627 m!8307842))

(assert (=> b!7927627 m!8308578))

(assert (=> b!7927627 m!8308940))

(declare-fun m!8309610 () Bool)

(assert (=> d!2367962 m!8309610))

(assert (=> d!2367962 m!8307842))

(assert (=> d!2367962 m!8308586))

(assert (=> d!2367962 m!8308944))

(assert (=> b!7927528 d!2367962))

(declare-fun d!2367964 () Bool)

(declare-fun lt!2693289 () Int)

(assert (=> d!2367964 (= lt!2693289 (size!43248 (list!19413 (left!56873 (right!57203 t!4440)))))))

(assert (=> d!2367964 (= lt!2693289 (ite ((_ is Empty!15902) (left!56873 (right!57203 t!4440))) 0 (ite ((_ is Leaf!30234) (left!56873 (right!57203 t!4440))) (csize!32035 (left!56873 (right!57203 t!4440))) (csize!32034 (left!56873 (right!57203 t!4440))))))))

(assert (=> d!2367964 (= (size!43249 (left!56873 (right!57203 t!4440))) lt!2693289)))

(declare-fun bs!1968865 () Bool)

(assert (= bs!1968865 d!2367964))

(assert (=> bs!1968865 m!8308234))

(assert (=> bs!1968865 m!8308234))

(assert (=> bs!1968865 m!8308392))

(assert (=> d!2367854 d!2367964))

(declare-fun d!2367966 () Bool)

(declare-fun lt!2693290 () Int)

(assert (=> d!2367966 (= lt!2693290 (size!43248 (list!19413 (right!57203 (right!57203 t!4440)))))))

(assert (=> d!2367966 (= lt!2693290 (ite ((_ is Empty!15902) (right!57203 (right!57203 t!4440))) 0 (ite ((_ is Leaf!30234) (right!57203 (right!57203 t!4440))) (csize!32035 (right!57203 (right!57203 t!4440))) (csize!32034 (right!57203 (right!57203 t!4440))))))))

(assert (=> d!2367966 (= (size!43249 (right!57203 (right!57203 t!4440))) lt!2693290)))

(declare-fun bs!1968866 () Bool)

(assert (= bs!1968866 d!2367966))

(assert (=> bs!1968866 m!8308094))

(assert (=> bs!1968866 m!8308094))

(assert (=> bs!1968866 m!8308394))

(assert (=> d!2367854 d!2367966))

(declare-fun b!7927629 () Bool)

(declare-fun e!4678581 () List!74572)

(assert (=> b!7927629 (= e!4678581 (list!19413 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))

(declare-fun e!4678582 () Bool)

(declare-fun b!7927632 () Bool)

(declare-fun lt!2693291 () List!74572)

(assert (=> b!7927632 (= e!4678582 (or (not (= (list!19413 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))) Nil!74448)) (= lt!2693291 (list!19413 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))))

(declare-fun b!7927630 () Bool)

(assert (=> b!7927630 (= e!4678581 (Cons!74448 (h!80896 (list!19413 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))) (++!18259 (t!390189 (list!19413 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))) (list!19413 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))))

(declare-fun b!7927631 () Bool)

(declare-fun res!3145810 () Bool)

(assert (=> b!7927631 (=> (not res!3145810) (not e!4678582))))

(assert (=> b!7927631 (= res!3145810 (= (size!43248 lt!2693291) (+ (size!43248 (list!19413 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))) (size!43248 (list!19413 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))))))))

(declare-fun d!2367968 () Bool)

(assert (=> d!2367968 e!4678582))

(declare-fun res!3145809 () Bool)

(assert (=> d!2367968 (=> (not res!3145809) (not e!4678582))))

(assert (=> d!2367968 (= res!3145809 (= (content!15783 lt!2693291) ((_ map or) (content!15783 (list!19413 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))) (content!15783 (list!19413 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))))))))

(assert (=> d!2367968 (= lt!2693291 e!4678581)))

(declare-fun c!1455626 () Bool)

(assert (=> d!2367968 (= c!1455626 ((_ is Nil!74448) (list!19413 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))))))

(assert (=> d!2367968 (= (++!18259 (list!19413 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))) (list!19413 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))) lt!2693291)))

(assert (= (and d!2367968 c!1455626) b!7927629))

(assert (= (and d!2367968 (not c!1455626)) b!7927630))

(assert (= (and d!2367968 res!3145809) b!7927631))

(assert (= (and b!7927631 res!3145810) b!7927632))

(assert (=> b!7927630 m!8309462))

(declare-fun m!8309612 () Bool)

(assert (=> b!7927630 m!8309612))

(declare-fun m!8309614 () Bool)

(assert (=> b!7927631 m!8309614))

(assert (=> b!7927631 m!8309460))

(declare-fun m!8309616 () Bool)

(assert (=> b!7927631 m!8309616))

(assert (=> b!7927631 m!8309462))

(declare-fun m!8309618 () Bool)

(assert (=> b!7927631 m!8309618))

(declare-fun m!8309620 () Bool)

(assert (=> d!2367968 m!8309620))

(assert (=> d!2367968 m!8309460))

(declare-fun m!8309622 () Bool)

(assert (=> d!2367968 m!8309622))

(assert (=> d!2367968 m!8309462))

(declare-fun m!8309624 () Bool)

(assert (=> d!2367968 m!8309624))

(assert (=> b!7927560 d!2367968))

(declare-fun b!7927636 () Bool)

(declare-fun e!4678584 () List!74572)

(assert (=> b!7927636 (= e!4678584 (++!18259 (list!19413 (left!56873 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))) (list!19413 (right!57203 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))))

(declare-fun b!7927634 () Bool)

(declare-fun e!4678583 () List!74572)

(assert (=> b!7927634 (= e!4678583 e!4678584)))

(declare-fun c!1455628 () Bool)

(assert (=> b!7927634 (= c!1455628 ((_ is Leaf!30234) (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))

(declare-fun b!7927635 () Bool)

(assert (=> b!7927635 (= e!4678584 (list!19415 (xs!19290 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))))))

(declare-fun b!7927633 () Bool)

(assert (=> b!7927633 (= e!4678583 Nil!74448)))

(declare-fun c!1455627 () Bool)

(declare-fun d!2367970 () Bool)

(assert (=> d!2367970 (= c!1455627 ((_ is Empty!15902) (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))

(assert (=> d!2367970 (= (list!19413 (left!56873 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))) e!4678583)))

(assert (= (and d!2367970 c!1455627) b!7927633))

(assert (= (and d!2367970 (not c!1455627)) b!7927634))

(assert (= (and b!7927634 c!1455628) b!7927635))

(assert (= (and b!7927634 (not c!1455628)) b!7927636))

(declare-fun m!8309626 () Bool)

(assert (=> b!7927636 m!8309626))

(declare-fun m!8309628 () Bool)

(assert (=> b!7927636 m!8309628))

(assert (=> b!7927636 m!8309626))

(assert (=> b!7927636 m!8309628))

(declare-fun m!8309630 () Bool)

(assert (=> b!7927636 m!8309630))

(declare-fun m!8309632 () Bool)

(assert (=> b!7927635 m!8309632))

(assert (=> b!7927560 d!2367970))

(declare-fun e!4678586 () List!74572)

(declare-fun b!7927640 () Bool)

(assert (=> b!7927640 (= e!4678586 (++!18259 (list!19413 (left!56873 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))) (list!19413 (right!57203 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))))

(declare-fun b!7927638 () Bool)

(declare-fun e!4678585 () List!74572)

(assert (=> b!7927638 (= e!4678585 e!4678586)))

(declare-fun c!1455630 () Bool)

(assert (=> b!7927638 (= c!1455630 ((_ is Leaf!30234) (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))

(declare-fun b!7927639 () Bool)

(assert (=> b!7927639 (= e!4678586 (list!19415 (xs!19290 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100))))))))

(declare-fun b!7927637 () Bool)

(assert (=> b!7927637 (= e!4678585 Nil!74448)))

(declare-fun c!1455629 () Bool)

(declare-fun d!2367972 () Bool)

(assert (=> d!2367972 (= c!1455629 ((_ is Empty!15902) (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))

(assert (=> d!2367972 (= (list!19413 (right!57203 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))) e!4678585)))

(assert (= (and d!2367972 c!1455629) b!7927637))

(assert (= (and d!2367972 (not c!1455629)) b!7927638))

(assert (= (and b!7927638 c!1455630) b!7927639))

(assert (= (and b!7927638 (not c!1455630)) b!7927640))

(declare-fun m!8309634 () Bool)

(assert (=> b!7927640 m!8309634))

(declare-fun m!8309636 () Bool)

(assert (=> b!7927640 m!8309636))

(assert (=> b!7927640 m!8309634))

(assert (=> b!7927640 m!8309636))

(declare-fun m!8309638 () Bool)

(assert (=> b!7927640 m!8309638))

(declare-fun m!8309640 () Bool)

(assert (=> b!7927639 m!8309640))

(assert (=> b!7927560 d!2367972))

(declare-fun d!2367974 () Bool)

(declare-fun c!1455631 () Bool)

(assert (=> d!2367974 (= c!1455631 ((_ is Nil!74448) lt!2693266))))

(declare-fun e!4678587 () (InoxSet T!145804))

(assert (=> d!2367974 (= (content!15783 lt!2693266) e!4678587)))

(declare-fun b!7927641 () Bool)

(assert (=> b!7927641 (= e!4678587 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927642 () Bool)

(assert (=> b!7927642 (= e!4678587 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693266) true) (content!15783 (t!390189 lt!2693266))))))

(assert (= (and d!2367974 c!1455631) b!7927641))

(assert (= (and d!2367974 (not c!1455631)) b!7927642))

(declare-fun m!8309642 () Bool)

(assert (=> b!7927642 m!8309642))

(declare-fun m!8309644 () Bool)

(assert (=> b!7927642 m!8309644))

(assert (=> d!2367900 d!2367974))

(declare-fun d!2367976 () Bool)

(declare-fun c!1455632 () Bool)

(assert (=> d!2367976 (= c!1455632 ((_ is Nil!74448) (t!390189 lt!2692976)))))

(declare-fun e!4678588 () (InoxSet T!145804))

(assert (=> d!2367976 (= (content!15783 (t!390189 lt!2692976)) e!4678588)))

(declare-fun b!7927643 () Bool)

(assert (=> b!7927643 (= e!4678588 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927644 () Bool)

(assert (=> b!7927644 (= e!4678588 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 lt!2692976)) true) (content!15783 (t!390189 (t!390189 lt!2692976)))))))

(assert (= (and d!2367976 c!1455632) b!7927643))

(assert (= (and d!2367976 (not c!1455632)) b!7927644))

(declare-fun m!8309646 () Bool)

(assert (=> b!7927644 m!8309646))

(declare-fun m!8309648 () Bool)

(assert (=> b!7927644 m!8309648))

(assert (=> d!2367900 d!2367976))

(assert (=> d!2367900 d!2367784))

(declare-fun d!2367978 () Bool)

(declare-fun c!1455633 () Bool)

(assert (=> d!2367978 (= c!1455633 ((_ is Nil!74448) lt!2693258))))

(declare-fun e!4678589 () (InoxSet T!145804))

(assert (=> d!2367978 (= (content!15783 lt!2693258) e!4678589)))

(declare-fun b!7927645 () Bool)

(assert (=> b!7927645 (= e!4678589 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927646 () Bool)

(assert (=> b!7927646 (= e!4678589 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693258) true) (content!15783 (t!390189 lt!2693258))))))

(assert (= (and d!2367978 c!1455633) b!7927645))

(assert (= (and d!2367978 (not c!1455633)) b!7927646))

(declare-fun m!8309650 () Bool)

(assert (=> b!7927646 m!8309650))

(declare-fun m!8309652 () Bool)

(assert (=> b!7927646 m!8309652))

(assert (=> d!2367866 d!2367978))

(declare-fun d!2367980 () Bool)

(declare-fun c!1455634 () Bool)

(assert (=> d!2367980 (= c!1455634 ((_ is Nil!74448) lt!2693089))))

(declare-fun e!4678590 () (InoxSet T!145804))

(assert (=> d!2367980 (= (content!15783 lt!2693089) e!4678590)))

(declare-fun b!7927647 () Bool)

(assert (=> b!7927647 (= e!4678590 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927648 () Bool)

(assert (=> b!7927648 (= e!4678590 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693089) true) (content!15783 (t!390189 lt!2693089))))))

(assert (= (and d!2367980 c!1455634) b!7927647))

(assert (= (and d!2367980 (not c!1455634)) b!7927648))

(declare-fun m!8309654 () Bool)

(assert (=> b!7927648 m!8309654))

(declare-fun m!8309656 () Bool)

(assert (=> b!7927648 m!8309656))

(assert (=> d!2367866 d!2367980))

(declare-fun d!2367982 () Bool)

(declare-fun c!1455635 () Bool)

(assert (=> d!2367982 (= c!1455635 ((_ is Nil!74448) call!735184))))

(declare-fun e!4678591 () (InoxSet T!145804))

(assert (=> d!2367982 (= (content!15783 call!735184) e!4678591)))

(declare-fun b!7927649 () Bool)

(assert (=> b!7927649 (= e!4678591 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927650 () Bool)

(assert (=> b!7927650 (= e!4678591 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 call!735184) true) (content!15783 (t!390189 call!735184))))))

(assert (= (and d!2367982 c!1455635) b!7927649))

(assert (= (and d!2367982 (not c!1455635)) b!7927650))

(declare-fun m!8309658 () Bool)

(assert (=> b!7927650 m!8309658))

(declare-fun m!8309660 () Bool)

(assert (=> b!7927650 m!8309660))

(assert (=> d!2367866 d!2367982))

(declare-fun d!2367984 () Bool)

(assert (=> d!2367984 (= (isEmpty!42778 (list!19413 (right!57203 lt!2692978))) ((_ is Nil!74448) (list!19413 (right!57203 lt!2692978))))))

(assert (=> d!2367880 d!2367984))

(assert (=> d!2367880 d!2367890))

(declare-fun d!2367986 () Bool)

(declare-fun lt!2693292 () Int)

(assert (=> d!2367986 (= lt!2693292 (size!43248 (list!19413 (right!57203 lt!2692978))))))

(assert (=> d!2367986 (= lt!2693292 (ite ((_ is Empty!15902) (right!57203 lt!2692978)) 0 (ite ((_ is Leaf!30234) (right!57203 lt!2692978)) (csize!32035 (right!57203 lt!2692978)) (csize!32034 (right!57203 lt!2692978)))))))

(assert (=> d!2367986 (= (size!43249 (right!57203 lt!2692978)) lt!2693292)))

(declare-fun bs!1968867 () Bool)

(assert (= bs!1968867 d!2367986))

(assert (=> bs!1968867 m!8308144))

(assert (=> bs!1968867 m!8308144))

(assert (=> bs!1968867 m!8309330))

(assert (=> d!2367880 d!2367986))

(declare-fun d!2367988 () Bool)

(declare-fun lt!2693293 () Int)

(assert (=> d!2367988 (>= lt!2693293 0)))

(declare-fun e!4678592 () Int)

(assert (=> d!2367988 (= lt!2693293 e!4678592)))

(declare-fun c!1455636 () Bool)

(assert (=> d!2367988 (= c!1455636 ((_ is Nil!74448) (list!19415 (xs!19290 (left!56873 t!4440)))))))

(assert (=> d!2367988 (= (size!43248 (list!19415 (xs!19290 (left!56873 t!4440)))) lt!2693293)))

(declare-fun b!7927651 () Bool)

(assert (=> b!7927651 (= e!4678592 0)))

(declare-fun b!7927652 () Bool)

(assert (=> b!7927652 (= e!4678592 (+ 1 (size!43248 (t!390189 (list!19415 (xs!19290 (left!56873 t!4440)))))))))

(assert (= (and d!2367988 c!1455636) b!7927651))

(assert (= (and d!2367988 (not c!1455636)) b!7927652))

(declare-fun m!8309662 () Bool)

(assert (=> b!7927652 m!8309662))

(assert (=> b!7927535 d!2367988))

(assert (=> b!7927535 d!2367878))

(declare-fun e!4678593 () List!74572)

(declare-fun b!7927653 () Bool)

(assert (=> b!7927653 (= e!4678593 (ite c!1455443 lt!2693132 lt!2693136))))

(declare-fun lt!2693294 () List!74572)

(declare-fun e!4678594 () Bool)

(declare-fun b!7927656 () Bool)

(assert (=> b!7927656 (= e!4678594 (or (not (= (ite c!1455443 lt!2693132 lt!2693136) Nil!74448)) (= lt!2693294 (ite c!1455443 lt!2693130 lt!2693125))))))

(declare-fun b!7927654 () Bool)

(assert (=> b!7927654 (= e!4678593 (Cons!74448 (h!80896 (ite c!1455443 lt!2693130 lt!2693125)) (++!18259 (t!390189 (ite c!1455443 lt!2693130 lt!2693125)) (ite c!1455443 lt!2693132 lt!2693136))))))

(declare-fun b!7927655 () Bool)

(declare-fun res!3145812 () Bool)

(assert (=> b!7927655 (=> (not res!3145812) (not e!4678594))))

(assert (=> b!7927655 (= res!3145812 (= (size!43248 lt!2693294) (+ (size!43248 (ite c!1455443 lt!2693130 lt!2693125)) (size!43248 (ite c!1455443 lt!2693132 lt!2693136)))))))

(declare-fun d!2367990 () Bool)

(assert (=> d!2367990 e!4678594))

(declare-fun res!3145811 () Bool)

(assert (=> d!2367990 (=> (not res!3145811) (not e!4678594))))

(assert (=> d!2367990 (= res!3145811 (= (content!15783 lt!2693294) ((_ map or) (content!15783 (ite c!1455443 lt!2693130 lt!2693125)) (content!15783 (ite c!1455443 lt!2693132 lt!2693136)))))))

(assert (=> d!2367990 (= lt!2693294 e!4678593)))

(declare-fun c!1455637 () Bool)

(assert (=> d!2367990 (= c!1455637 ((_ is Nil!74448) (ite c!1455443 lt!2693130 lt!2693125)))))

(assert (=> d!2367990 (= (++!18259 (ite c!1455443 lt!2693130 lt!2693125) (ite c!1455443 lt!2693132 lt!2693136)) lt!2693294)))

(assert (= (and d!2367990 c!1455637) b!7927653))

(assert (= (and d!2367990 (not c!1455637)) b!7927654))

(assert (= (and d!2367990 res!3145811) b!7927655))

(assert (= (and b!7927655 res!3145812) b!7927656))

(declare-fun m!8309664 () Bool)

(assert (=> b!7927654 m!8309664))

(declare-fun m!8309666 () Bool)

(assert (=> b!7927655 m!8309666))

(declare-fun m!8309668 () Bool)

(assert (=> b!7927655 m!8309668))

(declare-fun m!8309670 () Bool)

(assert (=> b!7927655 m!8309670))

(declare-fun m!8309672 () Bool)

(assert (=> d!2367990 m!8309672))

(declare-fun m!8309674 () Bool)

(assert (=> d!2367990 m!8309674))

(declare-fun m!8309676 () Bool)

(assert (=> d!2367990 m!8309676))

(assert (=> bm!735194 d!2367990))

(assert (=> d!2367846 d!2367538))

(assert (=> d!2367846 d!2367544))

(assert (=> d!2367846 d!2367550))

(assert (=> d!2367846 d!2367548))

(declare-fun d!2367992 () Bool)

(assert (=> d!2367992 (= (isEmpty!42778 (list!19413 (left!56873 lt!2692978))) ((_ is Nil!74448) (list!19413 (left!56873 lt!2692978))))))

(assert (=> d!2367660 d!2367992))

(assert (=> d!2367660 d!2367888))

(declare-fun d!2367994 () Bool)

(declare-fun lt!2693295 () Int)

(assert (=> d!2367994 (= lt!2693295 (size!43248 (list!19413 (left!56873 lt!2692978))))))

(assert (=> d!2367994 (= lt!2693295 (ite ((_ is Empty!15902) (left!56873 lt!2692978)) 0 (ite ((_ is Leaf!30234) (left!56873 lt!2692978)) (csize!32035 (left!56873 lt!2692978)) (csize!32034 (left!56873 lt!2692978)))))))

(assert (=> d!2367994 (= (size!43249 (left!56873 lt!2692978)) lt!2693295)))

(declare-fun bs!1968868 () Bool)

(assert (= bs!1968868 d!2367994))

(assert (=> bs!1968868 m!8308142))

(assert (=> bs!1968868 m!8308142))

(assert (=> bs!1968868 m!8309328))

(assert (=> d!2367660 d!2367994))

(declare-fun b!7927657 () Bool)

(declare-fun e!4678595 () List!74572)

(assert (=> b!7927657 (= e!4678595 (Cons!74448 v!5484 Nil!74448))))

(declare-fun e!4678596 () Bool)

(declare-fun lt!2693296 () List!74572)

(declare-fun b!7927660 () Bool)

(assert (=> b!7927660 (= e!4678596 (or (not (= (Cons!74448 v!5484 Nil!74448) Nil!74448)) (= lt!2693296 (t!390189 (list!19413 t!4440)))))))

(declare-fun b!7927658 () Bool)

(assert (=> b!7927658 (= e!4678595 (Cons!74448 (h!80896 (t!390189 (list!19413 t!4440))) (++!18259 (t!390189 (t!390189 (list!19413 t!4440))) (Cons!74448 v!5484 Nil!74448))))))

(declare-fun b!7927659 () Bool)

(declare-fun res!3145814 () Bool)

(assert (=> b!7927659 (=> (not res!3145814) (not e!4678596))))

(assert (=> b!7927659 (= res!3145814 (= (size!43248 lt!2693296) (+ (size!43248 (t!390189 (list!19413 t!4440))) (size!43248 (Cons!74448 v!5484 Nil!74448)))))))

(declare-fun d!2367996 () Bool)

(assert (=> d!2367996 e!4678596))

(declare-fun res!3145813 () Bool)

(assert (=> d!2367996 (=> (not res!3145813) (not e!4678596))))

(assert (=> d!2367996 (= res!3145813 (= (content!15783 lt!2693296) ((_ map or) (content!15783 (t!390189 (list!19413 t!4440))) (content!15783 (Cons!74448 v!5484 Nil!74448)))))))

(assert (=> d!2367996 (= lt!2693296 e!4678595)))

(declare-fun c!1455638 () Bool)

(assert (=> d!2367996 (= c!1455638 ((_ is Nil!74448) (t!390189 (list!19413 t!4440))))))

(assert (=> d!2367996 (= (++!18259 (t!390189 (list!19413 t!4440)) (Cons!74448 v!5484 Nil!74448)) lt!2693296)))

(assert (= (and d!2367996 c!1455638) b!7927657))

(assert (= (and d!2367996 (not c!1455638)) b!7927658))

(assert (= (and d!2367996 res!3145813) b!7927659))

(assert (= (and b!7927659 res!3145814) b!7927660))

(declare-fun m!8309678 () Bool)

(assert (=> b!7927658 m!8309678))

(declare-fun m!8309680 () Bool)

(assert (=> b!7927659 m!8309680))

(assert (=> b!7927659 m!8309086))

(assert (=> b!7927659 m!8308940))

(declare-fun m!8309682 () Bool)

(assert (=> d!2367996 m!8309682))

(assert (=> d!2367996 m!8309074))

(assert (=> d!2367996 m!8308944))

(assert (=> b!7927372 d!2367996))

(declare-fun d!2367998 () Bool)

(declare-fun lt!2693297 () Bool)

(assert (=> d!2367998 (= lt!2693297 (isEmpty!42778 (list!19413 (left!56873 (right!57203 lt!2692978)))))))

(assert (=> d!2367998 (= lt!2693297 (= (size!43249 (left!56873 (right!57203 lt!2692978))) 0))))

(assert (=> d!2367998 (= (isEmpty!42776 (left!56873 (right!57203 lt!2692978))) lt!2693297)))

(declare-fun bs!1968869 () Bool)

(assert (= bs!1968869 d!2367998))

(assert (=> bs!1968869 m!8309346))

(assert (=> bs!1968869 m!8309346))

(declare-fun m!8309684 () Bool)

(assert (=> bs!1968869 m!8309684))

(declare-fun m!8309686 () Bool)

(assert (=> bs!1968869 m!8309686))

(assert (=> b!7927131 d!2367998))

(declare-fun d!2368000 () Bool)

(declare-fun c!1455639 () Bool)

(assert (=> d!2368000 (= c!1455639 ((_ is Nil!74448) lt!2693256))))

(declare-fun e!4678597 () (InoxSet T!145804))

(assert (=> d!2368000 (= (content!15783 lt!2693256) e!4678597)))

(declare-fun b!7927661 () Bool)

(assert (=> b!7927661 (= e!4678597 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927662 () Bool)

(assert (=> b!7927662 (= e!4678597 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693256) true) (content!15783 (t!390189 lt!2693256))))))

(assert (= (and d!2368000 c!1455639) b!7927661))

(assert (= (and d!2368000 (not c!1455639)) b!7927662))

(declare-fun m!8309688 () Bool)

(assert (=> b!7927662 m!8309688))

(declare-fun m!8309690 () Bool)

(assert (=> b!7927662 m!8309690))

(assert (=> d!2367862 d!2368000))

(declare-fun d!2368002 () Bool)

(declare-fun c!1455640 () Bool)

(assert (=> d!2368002 (= c!1455640 ((_ is Nil!74448) call!735191))))

(declare-fun e!4678598 () (InoxSet T!145804))

(assert (=> d!2368002 (= (content!15783 call!735191) e!4678598)))

(declare-fun b!7927663 () Bool)

(assert (=> b!7927663 (= e!4678598 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927664 () Bool)

(assert (=> b!7927664 (= e!4678598 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 call!735191) true) (content!15783 (t!390189 call!735191))))))

(assert (= (and d!2368002 c!1455640) b!7927663))

(assert (= (and d!2368002 (not c!1455640)) b!7927664))

(declare-fun m!8309692 () Bool)

(assert (=> b!7927664 m!8309692))

(declare-fun m!8309694 () Bool)

(assert (=> b!7927664 m!8309694))

(assert (=> d!2367862 d!2368002))

(declare-fun d!2368004 () Bool)

(declare-fun c!1455641 () Bool)

(assert (=> d!2368004 (= c!1455641 ((_ is Nil!74448) lt!2693104))))

(declare-fun e!4678599 () (InoxSet T!145804))

(assert (=> d!2368004 (= (content!15783 lt!2693104) e!4678599)))

(declare-fun b!7927665 () Bool)

(assert (=> b!7927665 (= e!4678599 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927666 () Bool)

(assert (=> b!7927666 (= e!4678599 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693104) true) (content!15783 (t!390189 lt!2693104))))))

(assert (= (and d!2368004 c!1455641) b!7927665))

(assert (= (and d!2368004 (not c!1455641)) b!7927666))

(declare-fun m!8309696 () Bool)

(assert (=> b!7927666 m!8309696))

(declare-fun m!8309698 () Bool)

(assert (=> b!7927666 m!8309698))

(assert (=> d!2367862 d!2368004))

(declare-fun d!2368006 () Bool)

(declare-fun lt!2693298 () (_ BitVec 32))

(assert (=> d!2368006 (and (bvsle #b00000000000000000000000000000000 lt!2693298) (bvsle lt!2693298 #b01111111111111111111111111111111))))

(declare-fun e!4678600 () (_ BitVec 32))

(assert (=> d!2368006 (= lt!2693298 e!4678600)))

(declare-fun c!1455642 () Bool)

(assert (=> d!2368006 (= c!1455642 ((_ is Nil!74448) (list!19413 (right!57203 t!4440))))))

(assert (=> d!2368006 (= (isize!119 (list!19413 (right!57203 t!4440))) lt!2693298)))

(declare-fun b!7927667 () Bool)

(assert (=> b!7927667 (= e!4678600 #b00000000000000000000000000000000)))

(declare-fun b!7927668 () Bool)

(declare-fun lt!2693299 () (_ BitVec 32))

(assert (=> b!7927668 (= e!4678600 (ite (= lt!2693299 #b01111111111111111111111111111111) lt!2693299 (bvadd #b00000000000000000000000000000001 lt!2693299)))))

(assert (=> b!7927668 (= lt!2693299 (isize!119 (t!390189 (list!19413 (right!57203 t!4440)))))))

(assert (= (and d!2368006 c!1455642) b!7927667))

(assert (= (and d!2368006 (not c!1455642)) b!7927668))

(declare-fun m!8309700 () Bool)

(assert (=> b!7927668 m!8309700))

(assert (=> bm!735223 d!2368006))

(declare-fun d!2368008 () Bool)

(declare-fun lt!2693300 () (_ BitVec 32))

(assert (=> d!2368008 (and (bvsle #b00000000000000000000000000000000 lt!2693300) (bvsle lt!2693300 #b01111111111111111111111111111111))))

(declare-fun e!4678601 () (_ BitVec 32))

(assert (=> d!2368008 (= lt!2693300 e!4678601)))

(declare-fun c!1455643 () Bool)

(assert (=> d!2368008 (= c!1455643 ((_ is Nil!74448) (list!19415 (xs!19290 (right!57203 t!4440)))))))

(assert (=> d!2368008 (= (isize!119 (list!19415 (xs!19290 (right!57203 t!4440)))) lt!2693300)))

(declare-fun b!7927669 () Bool)

(assert (=> b!7927669 (= e!4678601 #b00000000000000000000000000000000)))

(declare-fun b!7927670 () Bool)

(declare-fun lt!2693301 () (_ BitVec 32))

(assert (=> b!7927670 (= e!4678601 (ite (= lt!2693301 #b01111111111111111111111111111111) lt!2693301 (bvadd #b00000000000000000000000000000001 lt!2693301)))))

(assert (=> b!7927670 (= lt!2693301 (isize!119 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440))))))))

(assert (= (and d!2368008 c!1455643) b!7927669))

(assert (= (and d!2368008 (not c!1455643)) b!7927670))

(declare-fun m!8309702 () Bool)

(assert (=> b!7927670 m!8309702))

(assert (=> bm!735225 d!2368008))

(declare-fun d!2368010 () Bool)

(declare-fun c!1455644 () Bool)

(assert (=> d!2368010 (= c!1455644 ((_ is Nil!74448) lt!2693204))))

(declare-fun e!4678602 () (InoxSet T!145804))

(assert (=> d!2368010 (= (content!15783 lt!2693204) e!4678602)))

(declare-fun b!7927671 () Bool)

(assert (=> b!7927671 (= e!4678602 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927672 () Bool)

(assert (=> b!7927672 (= e!4678602 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693204) true) (content!15783 (t!390189 lt!2693204))))))

(assert (= (and d!2368010 c!1455644) b!7927671))

(assert (= (and d!2368010 (not c!1455644)) b!7927672))

(declare-fun m!8309704 () Bool)

(assert (=> b!7927672 m!8309704))

(declare-fun m!8309706 () Bool)

(assert (=> b!7927672 m!8309706))

(assert (=> d!2367750 d!2368010))

(assert (=> d!2367750 d!2367792))

(declare-fun d!2368012 () Bool)

(declare-fun c!1455645 () Bool)

(assert (=> d!2368012 (= c!1455645 ((_ is Nil!74448) (Cons!74448 v!5484 Nil!74448)))))

(declare-fun e!4678603 () (InoxSet T!145804))

(assert (=> d!2368012 (= (content!15783 (Cons!74448 v!5484 Nil!74448)) e!4678603)))

(declare-fun b!7927673 () Bool)

(assert (=> b!7927673 (= e!4678603 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927674 () Bool)

(assert (=> b!7927674 (= e!4678603 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (Cons!74448 v!5484 Nil!74448)) true) (content!15783 (t!390189 (Cons!74448 v!5484 Nil!74448)))))))

(assert (= (and d!2368012 c!1455645) b!7927673))

(assert (= (and d!2368012 (not c!1455645)) b!7927674))

(declare-fun m!8309708 () Bool)

(assert (=> b!7927674 m!8309708))

(declare-fun m!8309710 () Bool)

(assert (=> b!7927674 m!8309710))

(assert (=> d!2367750 d!2368012))

(declare-fun d!2368014 () Bool)

(declare-fun lt!2693302 () (_ BitVec 32))

(assert (=> d!2368014 (and (bvsle #b00000000000000000000000000000000 lt!2693302) (bvsle lt!2693302 #b01111111111111111111111111111111))))

(declare-fun e!4678604 () (_ BitVec 32))

(assert (=> d!2368014 (= lt!2693302 e!4678604)))

(declare-fun c!1455646 () Bool)

(assert (=> d!2368014 (= c!1455646 ((_ is Nil!74448) lt!2693267))))

(assert (=> d!2368014 (= (isize!119 lt!2693267) lt!2693302)))

(declare-fun b!7927675 () Bool)

(assert (=> b!7927675 (= e!4678604 #b00000000000000000000000000000000)))

(declare-fun b!7927676 () Bool)

(declare-fun lt!2693303 () (_ BitVec 32))

(assert (=> b!7927676 (= e!4678604 (ite (= lt!2693303 #b01111111111111111111111111111111) lt!2693303 (bvadd #b00000000000000000000000000000001 lt!2693303)))))

(assert (=> b!7927676 (= lt!2693303 (isize!119 (t!390189 lt!2693267)))))

(assert (= (and d!2368014 c!1455646) b!7927675))

(assert (= (and d!2368014 (not c!1455646)) b!7927676))

(declare-fun m!8309712 () Bool)

(assert (=> b!7927676 m!8309712))

(assert (=> bm!735222 d!2368014))

(declare-fun b!7927677 () Bool)

(declare-fun e!4678605 () List!74572)

(assert (=> b!7927677 (= e!4678605 (list!19413 (right!57203 t!4440)))))

(declare-fun b!7927680 () Bool)

(declare-fun e!4678606 () Bool)

(declare-fun lt!2693304 () List!74572)

(assert (=> b!7927680 (= e!4678606 (or (not (= (list!19413 (right!57203 t!4440)) Nil!74448)) (= lt!2693304 (t!390189 (list!19413 (left!56873 t!4440))))))))

(declare-fun b!7927678 () Bool)

(assert (=> b!7927678 (= e!4678605 (Cons!74448 (h!80896 (t!390189 (list!19413 (left!56873 t!4440)))) (++!18259 (t!390189 (t!390189 (list!19413 (left!56873 t!4440)))) (list!19413 (right!57203 t!4440)))))))

(declare-fun b!7927679 () Bool)

(declare-fun res!3145816 () Bool)

(assert (=> b!7927679 (=> (not res!3145816) (not e!4678606))))

(assert (=> b!7927679 (= res!3145816 (= (size!43248 lt!2693304) (+ (size!43248 (t!390189 (list!19413 (left!56873 t!4440)))) (size!43248 (list!19413 (right!57203 t!4440))))))))

(declare-fun d!2368016 () Bool)

(assert (=> d!2368016 e!4678606))

(declare-fun res!3145815 () Bool)

(assert (=> d!2368016 (=> (not res!3145815) (not e!4678606))))

(assert (=> d!2368016 (= res!3145815 (= (content!15783 lt!2693304) ((_ map or) (content!15783 (t!390189 (list!19413 (left!56873 t!4440)))) (content!15783 (list!19413 (right!57203 t!4440))))))))

(assert (=> d!2368016 (= lt!2693304 e!4678605)))

(declare-fun c!1455647 () Bool)

(assert (=> d!2368016 (= c!1455647 ((_ is Nil!74448) (t!390189 (list!19413 (left!56873 t!4440)))))))

(assert (=> d!2368016 (= (++!18259 (t!390189 (list!19413 (left!56873 t!4440))) (list!19413 (right!57203 t!4440))) lt!2693304)))

(assert (= (and d!2368016 c!1455647) b!7927677))

(assert (= (and d!2368016 (not c!1455647)) b!7927678))

(assert (= (and d!2368016 res!3145815) b!7927679))

(assert (= (and b!7927679 res!3145816) b!7927680))

(assert (=> b!7927678 m!8307842))

(declare-fun m!8309714 () Bool)

(assert (=> b!7927678 m!8309714))

(declare-fun m!8309716 () Bool)

(assert (=> b!7927679 m!8309716))

(declare-fun m!8309718 () Bool)

(assert (=> b!7927679 m!8309718))

(assert (=> b!7927679 m!8307842))

(assert (=> b!7927679 m!8308578))

(declare-fun m!8309720 () Bool)

(assert (=> d!2368016 m!8309720))

(declare-fun m!8309722 () Bool)

(assert (=> d!2368016 m!8309722))

(assert (=> d!2368016 m!8307842))

(assert (=> d!2368016 m!8308586))

(assert (=> b!7927119 d!2368016))

(declare-fun d!2368018 () Bool)

(declare-fun lt!2693305 () Bool)

(assert (=> d!2368018 (= lt!2693305 (isEmpty!42778 (list!19413 (right!57203 lt!2693102))))))

(assert (=> d!2368018 (= lt!2693305 (= (size!43249 (right!57203 lt!2693102)) 0))))

(assert (=> d!2368018 (= (isEmpty!42776 (right!57203 lt!2693102)) lt!2693305)))

(declare-fun bs!1968870 () Bool)

(assert (= bs!1968870 d!2368018))

(assert (=> bs!1968870 m!8309398))

(assert (=> bs!1968870 m!8309398))

(declare-fun m!8309724 () Bool)

(assert (=> bs!1968870 m!8309724))

(declare-fun m!8309726 () Bool)

(assert (=> bs!1968870 m!8309726))

(assert (=> b!7927583 d!2368018))

(declare-fun d!2368020 () Bool)

(assert (=> d!2368020 (= (list!19415 (xs!19290 (left!56873 (right!57203 t!4440)))) (innerList!15990 (xs!19290 (left!56873 (right!57203 t!4440)))))))

(assert (=> b!7927048 d!2368020))

(declare-fun b!7927681 () Bool)

(declare-fun e!4678607 () List!74572)

(assert (=> b!7927681 (= e!4678607 (list!19413 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))

(declare-fun e!4678608 () Bool)

(declare-fun lt!2693306 () List!74572)

(declare-fun b!7927684 () Bool)

(assert (=> b!7927684 (= e!4678608 (or (not (= (list!19413 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))) Nil!74448)) (= lt!2693306 (list!19413 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))))

(declare-fun b!7927682 () Bool)

(assert (=> b!7927682 (= e!4678607 (Cons!74448 (h!80896 (list!19413 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))) (++!18259 (t!390189 (list!19413 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))) (list!19413 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))))

(declare-fun b!7927683 () Bool)

(declare-fun res!3145818 () Bool)

(assert (=> b!7927683 (=> (not res!3145818) (not e!4678608))))

(assert (=> b!7927683 (= res!3145818 (= (size!43248 lt!2693306) (+ (size!43248 (list!19413 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))) (size!43248 (list!19413 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))))))))

(declare-fun d!2368022 () Bool)

(assert (=> d!2368022 e!4678608))

(declare-fun res!3145817 () Bool)

(assert (=> d!2368022 (=> (not res!3145817) (not e!4678608))))

(assert (=> d!2368022 (= res!3145817 (= (content!15783 lt!2693306) ((_ map or) (content!15783 (list!19413 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))) (content!15783 (list!19413 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))))))))

(assert (=> d!2368022 (= lt!2693306 e!4678607)))

(declare-fun c!1455648 () Bool)

(assert (=> d!2368022 (= c!1455648 ((_ is Nil!74448) (list!19413 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))))))

(assert (=> d!2368022 (= (++!18259 (list!19413 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))) (list!19413 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))) lt!2693306)))

(assert (= (and d!2368022 c!1455648) b!7927681))

(assert (= (and d!2368022 (not c!1455648)) b!7927682))

(assert (= (and d!2368022 res!3145817) b!7927683))

(assert (= (and b!7927683 res!3145818) b!7927684))

(assert (=> b!7927682 m!8309452))

(declare-fun m!8309728 () Bool)

(assert (=> b!7927682 m!8309728))

(declare-fun m!8309730 () Bool)

(assert (=> b!7927683 m!8309730))

(assert (=> b!7927683 m!8309450))

(declare-fun m!8309732 () Bool)

(assert (=> b!7927683 m!8309732))

(assert (=> b!7927683 m!8309452))

(declare-fun m!8309734 () Bool)

(assert (=> b!7927683 m!8309734))

(declare-fun m!8309736 () Bool)

(assert (=> d!2368022 m!8309736))

(assert (=> d!2368022 m!8309450))

(declare-fun m!8309738 () Bool)

(assert (=> d!2368022 m!8309738))

(assert (=> d!2368022 m!8309452))

(declare-fun m!8309740 () Bool)

(assert (=> d!2368022 m!8309740))

(assert (=> b!7927552 d!2368022))

(declare-fun b!7927688 () Bool)

(declare-fun e!4678610 () List!74572)

(assert (=> b!7927688 (= e!4678610 (++!18259 (list!19413 (left!56873 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))) (list!19413 (right!57203 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))))

(declare-fun b!7927686 () Bool)

(declare-fun e!4678609 () List!74572)

(assert (=> b!7927686 (= e!4678609 e!4678610)))

(declare-fun c!1455650 () Bool)

(assert (=> b!7927686 (= c!1455650 ((_ is Leaf!30234) (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7927687 () Bool)

(assert (=> b!7927687 (= e!4678610 (list!19415 (xs!19290 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7927685 () Bool)

(assert (=> b!7927685 (= e!4678609 Nil!74448)))

(declare-fun d!2368024 () Bool)

(declare-fun c!1455649 () Bool)

(assert (=> d!2368024 (= c!1455649 ((_ is Empty!15902) (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))

(assert (=> d!2368024 (= (list!19413 (left!56873 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))) e!4678609)))

(assert (= (and d!2368024 c!1455649) b!7927685))

(assert (= (and d!2368024 (not c!1455649)) b!7927686))

(assert (= (and b!7927686 c!1455650) b!7927687))

(assert (= (and b!7927686 (not c!1455650)) b!7927688))

(declare-fun m!8309742 () Bool)

(assert (=> b!7927688 m!8309742))

(declare-fun m!8309744 () Bool)

(assert (=> b!7927688 m!8309744))

(assert (=> b!7927688 m!8309742))

(assert (=> b!7927688 m!8309744))

(declare-fun m!8309746 () Bool)

(assert (=> b!7927688 m!8309746))

(declare-fun m!8309748 () Bool)

(assert (=> b!7927687 m!8309748))

(assert (=> b!7927552 d!2368024))

(declare-fun b!7927692 () Bool)

(declare-fun e!4678612 () List!74572)

(assert (=> b!7927692 (= e!4678612 (++!18259 (list!19413 (left!56873 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))) (list!19413 (right!57203 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))))

(declare-fun b!7927690 () Bool)

(declare-fun e!4678611 () List!74572)

(assert (=> b!7927690 (= e!4678611 e!4678612)))

(declare-fun c!1455652 () Bool)

(assert (=> b!7927690 (= c!1455652 ((_ is Leaf!30234) (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7927691 () Bool)

(assert (=> b!7927691 (= e!4678612 (list!19415 (xs!19290 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7927689 () Bool)

(assert (=> b!7927689 (= e!4678611 Nil!74448)))

(declare-fun d!2368026 () Bool)

(declare-fun c!1455651 () Bool)

(assert (=> d!2368026 (= c!1455651 ((_ is Empty!15902) (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))

(assert (=> d!2368026 (= (list!19413 (right!57203 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))) e!4678611)))

(assert (= (and d!2368026 c!1455651) b!7927689))

(assert (= (and d!2368026 (not c!1455651)) b!7927690))

(assert (= (and b!7927690 c!1455652) b!7927691))

(assert (= (and b!7927690 (not c!1455652)) b!7927692))

(declare-fun m!8309750 () Bool)

(assert (=> b!7927692 m!8309750))

(declare-fun m!8309752 () Bool)

(assert (=> b!7927692 m!8309752))

(assert (=> b!7927692 m!8309750))

(assert (=> b!7927692 m!8309752))

(declare-fun m!8309754 () Bool)

(assert (=> b!7927692 m!8309754))

(declare-fun m!8309756 () Bool)

(assert (=> b!7927691 m!8309756))

(assert (=> b!7927552 d!2368026))

(declare-fun d!2368028 () Bool)

(declare-fun lt!2693307 () Int)

(assert (=> d!2368028 (>= lt!2693307 0)))

(declare-fun e!4678613 () Int)

(assert (=> d!2368028 (= lt!2693307 e!4678613)))

(declare-fun c!1455653 () Bool)

(assert (=> d!2368028 (= c!1455653 ((_ is Nil!74448) (t!390189 lt!2692979)))))

(assert (=> d!2368028 (= (size!43248 (t!390189 lt!2692979)) lt!2693307)))

(declare-fun b!7927693 () Bool)

(assert (=> b!7927693 (= e!4678613 0)))

(declare-fun b!7927694 () Bool)

(assert (=> b!7927694 (= e!4678613 (+ 1 (size!43248 (t!390189 (t!390189 lt!2692979)))))))

(assert (= (and d!2368028 c!1455653) b!7927693))

(assert (= (and d!2368028 (not c!1455653)) b!7927694))

(declare-fun m!8309758 () Bool)

(assert (=> b!7927694 m!8309758))

(assert (=> b!7927161 d!2368028))

(declare-fun b!7927695 () Bool)

(declare-fun e!4678614 () List!74572)

(assert (=> b!7927695 (= e!4678614 lt!2692979)))

(declare-fun b!7927698 () Bool)

(declare-fun e!4678615 () Bool)

(declare-fun lt!2693308 () List!74572)

(assert (=> b!7927698 (= e!4678615 (or (not (= lt!2692979 Nil!74448)) (= lt!2693308 (t!390189 (t!390189 lt!2692976)))))))

(declare-fun b!7927696 () Bool)

(assert (=> b!7927696 (= e!4678614 (Cons!74448 (h!80896 (t!390189 (t!390189 lt!2692976))) (++!18259 (t!390189 (t!390189 (t!390189 lt!2692976))) lt!2692979)))))

(declare-fun b!7927697 () Bool)

(declare-fun res!3145820 () Bool)

(assert (=> b!7927697 (=> (not res!3145820) (not e!4678615))))

(assert (=> b!7927697 (= res!3145820 (= (size!43248 lt!2693308) (+ (size!43248 (t!390189 (t!390189 lt!2692976))) (size!43248 lt!2692979))))))

(declare-fun d!2368030 () Bool)

(assert (=> d!2368030 e!4678615))

(declare-fun res!3145819 () Bool)

(assert (=> d!2368030 (=> (not res!3145819) (not e!4678615))))

(assert (=> d!2368030 (= res!3145819 (= (content!15783 lt!2693308) ((_ map or) (content!15783 (t!390189 (t!390189 lt!2692976))) (content!15783 lt!2692979))))))

(assert (=> d!2368030 (= lt!2693308 e!4678614)))

(declare-fun c!1455654 () Bool)

(assert (=> d!2368030 (= c!1455654 ((_ is Nil!74448) (t!390189 (t!390189 lt!2692976))))))

(assert (=> d!2368030 (= (++!18259 (t!390189 (t!390189 lt!2692976)) lt!2692979) lt!2693308)))

(assert (= (and d!2368030 c!1455654) b!7927695))

(assert (= (and d!2368030 (not c!1455654)) b!7927696))

(assert (= (and d!2368030 res!3145819) b!7927697))

(assert (= (and b!7927697 res!3145820) b!7927698))

(declare-fun m!8309760 () Bool)

(assert (=> b!7927696 m!8309760))

(declare-fun m!8309762 () Bool)

(assert (=> b!7927697 m!8309762))

(declare-fun m!8309764 () Bool)

(assert (=> b!7927697 m!8309764))

(assert (=> b!7927697 m!8308226))

(declare-fun m!8309766 () Bool)

(assert (=> d!2368030 m!8309766))

(assert (=> d!2368030 m!8309648))

(assert (=> d!2368030 m!8308232))

(assert (=> b!7927508 d!2368030))

(declare-fun d!2368032 () Bool)

(declare-fun lt!2693309 () Bool)

(assert (=> d!2368032 (= lt!2693309 (isEmpty!42778 (list!19413 (left!56873 (left!56873 lt!2692978)))))))

(assert (=> d!2368032 (= lt!2693309 (= (size!43249 (left!56873 (left!56873 lt!2692978))) 0))))

(assert (=> d!2368032 (= (isEmpty!42776 (left!56873 (left!56873 lt!2692978))) lt!2693309)))

(declare-fun bs!1968871 () Bool)

(assert (= bs!1968871 d!2368032))

(assert (=> bs!1968871 m!8309338))

(assert (=> bs!1968871 m!8309338))

(declare-fun m!8309768 () Bool)

(assert (=> bs!1968871 m!8309768))

(declare-fun m!8309770 () Bool)

(assert (=> bs!1968871 m!8309770))

(assert (=> b!7927503 d!2368032))

(declare-fun b!7927699 () Bool)

(declare-fun e!4678616 () List!74572)

(assert (=> b!7927699 (= e!4678616 call!735184)))

(declare-fun e!4678617 () Bool)

(declare-fun b!7927702 () Bool)

(declare-fun lt!2693310 () List!74572)

(assert (=> b!7927702 (= e!4678617 (or (not (= call!735184 Nil!74448)) (= lt!2693310 (t!390189 lt!2693089))))))

(declare-fun b!7927700 () Bool)

(assert (=> b!7927700 (= e!4678616 (Cons!74448 (h!80896 (t!390189 lt!2693089)) (++!18259 (t!390189 (t!390189 lt!2693089)) call!735184)))))

(declare-fun b!7927701 () Bool)

(declare-fun res!3145822 () Bool)

(assert (=> b!7927701 (=> (not res!3145822) (not e!4678617))))

(assert (=> b!7927701 (= res!3145822 (= (size!43248 lt!2693310) (+ (size!43248 (t!390189 lt!2693089)) (size!43248 call!735184))))))

(declare-fun d!2368034 () Bool)

(assert (=> d!2368034 e!4678617))

(declare-fun res!3145821 () Bool)

(assert (=> d!2368034 (=> (not res!3145821) (not e!4678617))))

(assert (=> d!2368034 (= res!3145821 (= (content!15783 lt!2693310) ((_ map or) (content!15783 (t!390189 lt!2693089)) (content!15783 call!735184))))))

(assert (=> d!2368034 (= lt!2693310 e!4678616)))

(declare-fun c!1455655 () Bool)

(assert (=> d!2368034 (= c!1455655 ((_ is Nil!74448) (t!390189 lt!2693089)))))

(assert (=> d!2368034 (= (++!18259 (t!390189 lt!2693089) call!735184) lt!2693310)))

(assert (= (and d!2368034 c!1455655) b!7927699))

(assert (= (and d!2368034 (not c!1455655)) b!7927700))

(assert (= (and d!2368034 res!3145821) b!7927701))

(assert (= (and b!7927701 res!3145822) b!7927702))

(declare-fun m!8309772 () Bool)

(assert (=> b!7927700 m!8309772))

(declare-fun m!8309774 () Bool)

(assert (=> b!7927701 m!8309774))

(declare-fun m!8309776 () Bool)

(assert (=> b!7927701 m!8309776))

(assert (=> b!7927701 m!8309266))

(declare-fun m!8309778 () Bool)

(assert (=> d!2368034 m!8309778))

(assert (=> d!2368034 m!8309656))

(assert (=> d!2368034 m!8309272))

(assert (=> b!7927464 d!2368034))

(declare-fun d!2368036 () Bool)

(declare-fun c!1455656 () Bool)

(assert (=> d!2368036 (= c!1455656 ((_ is Nil!74448) (t!390189 lt!2692980)))))

(declare-fun e!4678618 () (InoxSet T!145804))

(assert (=> d!2368036 (= (content!15783 (t!390189 lt!2692980)) e!4678618)))

(declare-fun b!7927703 () Bool)

(assert (=> b!7927703 (= e!4678618 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927704 () Bool)

(assert (=> b!7927704 (= e!4678618 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 lt!2692980)) true) (content!15783 (t!390189 (t!390189 lt!2692980)))))))

(assert (= (and d!2368036 c!1455656) b!7927703))

(assert (= (and d!2368036 (not c!1455656)) b!7927704))

(declare-fun m!8309780 () Bool)

(assert (=> b!7927704 m!8309780))

(declare-fun m!8309782 () Bool)

(assert (=> b!7927704 m!8309782))

(assert (=> b!7927376 d!2368036))

(declare-fun b!7927705 () Bool)

(declare-fun e!4678619 () List!74572)

(assert (=> b!7927705 (= e!4678619 (ite c!1455443 call!735207 lt!2693125))))

(declare-fun e!4678620 () Bool)

(declare-fun lt!2693311 () List!74572)

(declare-fun b!7927708 () Bool)

(assert (=> b!7927708 (= e!4678620 (or (not (= (ite c!1455443 call!735207 lt!2693125) Nil!74448)) (= lt!2693311 (ite c!1455443 lt!2693130 lt!2693122))))))

(declare-fun b!7927706 () Bool)

(assert (=> b!7927706 (= e!4678619 (Cons!74448 (h!80896 (ite c!1455443 lt!2693130 lt!2693122)) (++!18259 (t!390189 (ite c!1455443 lt!2693130 lt!2693122)) (ite c!1455443 call!735207 lt!2693125))))))

(declare-fun b!7927707 () Bool)

(declare-fun res!3145824 () Bool)

(assert (=> b!7927707 (=> (not res!3145824) (not e!4678620))))

(assert (=> b!7927707 (= res!3145824 (= (size!43248 lt!2693311) (+ (size!43248 (ite c!1455443 lt!2693130 lt!2693122)) (size!43248 (ite c!1455443 call!735207 lt!2693125)))))))

(declare-fun d!2368038 () Bool)

(assert (=> d!2368038 e!4678620))

(declare-fun res!3145823 () Bool)

(assert (=> d!2368038 (=> (not res!3145823) (not e!4678620))))

(assert (=> d!2368038 (= res!3145823 (= (content!15783 lt!2693311) ((_ map or) (content!15783 (ite c!1455443 lt!2693130 lt!2693122)) (content!15783 (ite c!1455443 call!735207 lt!2693125)))))))

(assert (=> d!2368038 (= lt!2693311 e!4678619)))

(declare-fun c!1455657 () Bool)

(assert (=> d!2368038 (= c!1455657 ((_ is Nil!74448) (ite c!1455443 lt!2693130 lt!2693122)))))

(assert (=> d!2368038 (= (++!18259 (ite c!1455443 lt!2693130 lt!2693122) (ite c!1455443 call!735207 lt!2693125)) lt!2693311)))

(assert (= (and d!2368038 c!1455657) b!7927705))

(assert (= (and d!2368038 (not c!1455657)) b!7927706))

(assert (= (and d!2368038 res!3145823) b!7927707))

(assert (= (and b!7927707 res!3145824) b!7927708))

(declare-fun m!8309784 () Bool)

(assert (=> b!7927706 m!8309784))

(declare-fun m!8309786 () Bool)

(assert (=> b!7927707 m!8309786))

(declare-fun m!8309788 () Bool)

(assert (=> b!7927707 m!8309788))

(declare-fun m!8309790 () Bool)

(assert (=> b!7927707 m!8309790))

(declare-fun m!8309792 () Bool)

(assert (=> d!2368038 m!8309792))

(declare-fun m!8309794 () Bool)

(assert (=> d!2368038 m!8309794))

(declare-fun m!8309796 () Bool)

(assert (=> d!2368038 m!8309796))

(assert (=> bm!735199 d!2368038))

(declare-fun d!2368040 () Bool)

(declare-fun lt!2693312 () (_ BitVec 32))

(assert (=> d!2368040 (and (bvsle #b00000000000000000000000000000000 lt!2693312) (bvsle lt!2693312 #b01111111111111111111111111111111))))

(declare-fun e!4678621 () (_ BitVec 32))

(assert (=> d!2368040 (= lt!2693312 e!4678621)))

(declare-fun c!1455658 () Bool)

(assert (=> d!2368040 (= c!1455658 ((_ is Nil!74448) lt!2693229))))

(assert (=> d!2368040 (= (isize!119 lt!2693229) lt!2693312)))

(declare-fun b!7927709 () Bool)

(assert (=> b!7927709 (= e!4678621 #b00000000000000000000000000000000)))

(declare-fun b!7927710 () Bool)

(declare-fun lt!2693313 () (_ BitVec 32))

(assert (=> b!7927710 (= e!4678621 (ite (= lt!2693313 #b01111111111111111111111111111111) lt!2693313 (bvadd #b00000000000000000000000000000001 lt!2693313)))))

(assert (=> b!7927710 (= lt!2693313 (isize!119 (t!390189 lt!2693229)))))

(assert (= (and d!2368040 c!1455658) b!7927709))

(assert (= (and d!2368040 (not c!1455658)) b!7927710))

(declare-fun m!8309798 () Bool)

(assert (=> b!7927710 m!8309798))

(assert (=> bm!735218 d!2368040))

(declare-fun d!2368042 () Bool)

(declare-fun lt!2693314 () Bool)

(assert (=> d!2368042 (= lt!2693314 (isEmpty!42778 (list!19413 (left!56873 (left!56873 t!4440)))))))

(assert (=> d!2368042 (= lt!2693314 (= (size!43249 (left!56873 (left!56873 t!4440))) 0))))

(assert (=> d!2368042 (= (isEmpty!42776 (left!56873 (left!56873 t!4440))) lt!2693314)))

(declare-fun bs!1968872 () Bool)

(assert (= bs!1968872 d!2368042))

(assert (=> bs!1968872 m!8308212))

(assert (=> bs!1968872 m!8308212))

(declare-fun m!8309800 () Bool)

(assert (=> bs!1968872 m!8309800))

(assert (=> bs!1968872 m!8308902))

(assert (=> b!7927531 d!2368042))

(declare-fun d!2368044 () Bool)

(declare-fun res!3145825 () Bool)

(declare-fun e!4678622 () Bool)

(assert (=> d!2368044 (=> (not res!3145825) (not e!4678622))))

(assert (=> d!2368044 (= res!3145825 (<= (size!43248 (list!19415 (xs!19290 (left!56873 (right!57203 t!4440))))) 512))))

(assert (=> d!2368044 (= (inv!95724 (left!56873 (right!57203 t!4440))) e!4678622)))

(declare-fun b!7927711 () Bool)

(declare-fun res!3145826 () Bool)

(assert (=> b!7927711 (=> (not res!3145826) (not e!4678622))))

(assert (=> b!7927711 (= res!3145826 (= (csize!32035 (left!56873 (right!57203 t!4440))) (size!43248 (list!19415 (xs!19290 (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7927712 () Bool)

(assert (=> b!7927712 (= e!4678622 (and (> (csize!32035 (left!56873 (right!57203 t!4440))) 0) (<= (csize!32035 (left!56873 (right!57203 t!4440))) 512)))))

(assert (= (and d!2368044 res!3145825) b!7927711))

(assert (= (and b!7927711 res!3145826) b!7927712))

(assert (=> d!2368044 m!8308420))

(assert (=> d!2368044 m!8308420))

(declare-fun m!8309802 () Bool)

(assert (=> d!2368044 m!8309802))

(assert (=> b!7927711 m!8308420))

(assert (=> b!7927711 m!8308420))

(assert (=> b!7927711 m!8309802))

(assert (=> b!7927513 d!2368044))

(assert (=> b!7926989 d!2367858))

(assert (=> b!7926989 d!2367860))

(declare-fun d!2368046 () Bool)

(declare-fun c!1455659 () Bool)

(assert (=> d!2368046 (= c!1455659 ((_ is Nil!74448) lt!2693259))))

(declare-fun e!4678623 () (InoxSet T!145804))

(assert (=> d!2368046 (= (content!15783 lt!2693259) e!4678623)))

(declare-fun b!7927713 () Bool)

(assert (=> b!7927713 (= e!4678623 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927714 () Bool)

(assert (=> b!7927714 (= e!4678623 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693259) true) (content!15783 (t!390189 lt!2693259))))))

(assert (= (and d!2368046 c!1455659) b!7927713))

(assert (= (and d!2368046 (not c!1455659)) b!7927714))

(declare-fun m!8309804 () Bool)

(assert (=> b!7927714 m!8309804))

(declare-fun m!8309806 () Bool)

(assert (=> b!7927714 m!8309806))

(assert (=> d!2367868 d!2368046))

(declare-fun d!2368048 () Bool)

(declare-fun c!1455660 () Bool)

(assert (=> d!2368048 (= c!1455660 ((_ is Nil!74448) call!735188))))

(declare-fun e!4678624 () (InoxSet T!145804))

(assert (=> d!2368048 (= (content!15783 call!735188) e!4678624)))

(declare-fun b!7927715 () Bool)

(assert (=> b!7927715 (= e!4678624 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927716 () Bool)

(assert (=> b!7927716 (= e!4678624 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 call!735188) true) (content!15783 (t!390189 call!735188))))))

(assert (= (and d!2368048 c!1455660) b!7927715))

(assert (= (and d!2368048 (not c!1455660)) b!7927716))

(declare-fun m!8309808 () Bool)

(assert (=> b!7927716 m!8309808))

(declare-fun m!8309810 () Bool)

(assert (=> b!7927716 m!8309810))

(assert (=> d!2367868 d!2368048))

(declare-fun d!2368050 () Bool)

(declare-fun c!1455661 () Bool)

(assert (=> d!2368050 (= c!1455661 ((_ is Nil!74448) lt!2693103))))

(declare-fun e!4678625 () (InoxSet T!145804))

(assert (=> d!2368050 (= (content!15783 lt!2693103) e!4678625)))

(declare-fun b!7927717 () Bool)

(assert (=> b!7927717 (= e!4678625 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927718 () Bool)

(assert (=> b!7927718 (= e!4678625 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693103) true) (content!15783 (t!390189 lt!2693103))))))

(assert (= (and d!2368050 c!1455661) b!7927717))

(assert (= (and d!2368050 (not c!1455661)) b!7927718))

(declare-fun m!8309812 () Bool)

(assert (=> b!7927718 m!8309812))

(declare-fun m!8309814 () Bool)

(assert (=> b!7927718 m!8309814))

(assert (=> d!2367868 d!2368050))

(declare-fun d!2368052 () Bool)

(declare-fun c!1455662 () Bool)

(assert (=> d!2368052 (= c!1455662 ((_ is Nil!74448) (t!390189 lt!2693120)))))

(declare-fun e!4678626 () (InoxSet T!145804))

(assert (=> d!2368052 (= (content!15783 (t!390189 lt!2693120)) e!4678626)))

(declare-fun b!7927719 () Bool)

(assert (=> b!7927719 (= e!4678626 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927720 () Bool)

(assert (=> b!7927720 (= e!4678626 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 lt!2693120)) true) (content!15783 (t!390189 (t!390189 lt!2693120)))))))

(assert (= (and d!2368052 c!1455662) b!7927719))

(assert (= (and d!2368052 (not c!1455662)) b!7927720))

(declare-fun m!8309816 () Bool)

(assert (=> b!7927720 m!8309816))

(declare-fun m!8309818 () Bool)

(assert (=> b!7927720 m!8309818))

(assert (=> b!7927420 d!2368052))

(declare-fun b!7927721 () Bool)

(declare-fun e!4678627 () List!74572)

(assert (=> b!7927721 (= e!4678627 (ite c!1455404 lt!2693099 lt!2693103))))

(declare-fun e!4678628 () Bool)

(declare-fun b!7927724 () Bool)

(declare-fun lt!2693315 () List!74572)

(assert (=> b!7927724 (= e!4678628 (or (not (= (ite c!1455404 lt!2693099 lt!2693103) Nil!74448)) (= lt!2693315 (t!390189 (ite c!1455404 lt!2693097 lt!2693092)))))))

(declare-fun b!7927722 () Bool)

(assert (=> b!7927722 (= e!4678627 (Cons!74448 (h!80896 (t!390189 (ite c!1455404 lt!2693097 lt!2693092))) (++!18259 (t!390189 (t!390189 (ite c!1455404 lt!2693097 lt!2693092))) (ite c!1455404 lt!2693099 lt!2693103))))))

(declare-fun b!7927723 () Bool)

(declare-fun res!3145828 () Bool)

(assert (=> b!7927723 (=> (not res!3145828) (not e!4678628))))

(assert (=> b!7927723 (= res!3145828 (= (size!43248 lt!2693315) (+ (size!43248 (t!390189 (ite c!1455404 lt!2693097 lt!2693092))) (size!43248 (ite c!1455404 lt!2693099 lt!2693103)))))))

(declare-fun d!2368054 () Bool)

(assert (=> d!2368054 e!4678628))

(declare-fun res!3145827 () Bool)

(assert (=> d!2368054 (=> (not res!3145827) (not e!4678628))))

(assert (=> d!2368054 (= res!3145827 (= (content!15783 lt!2693315) ((_ map or) (content!15783 (t!390189 (ite c!1455404 lt!2693097 lt!2693092))) (content!15783 (ite c!1455404 lt!2693099 lt!2693103)))))))

(assert (=> d!2368054 (= lt!2693315 e!4678627)))

(declare-fun c!1455663 () Bool)

(assert (=> d!2368054 (= c!1455663 ((_ is Nil!74448) (t!390189 (ite c!1455404 lt!2693097 lt!2693092))))))

(assert (=> d!2368054 (= (++!18259 (t!390189 (ite c!1455404 lt!2693097 lt!2693092)) (ite c!1455404 lt!2693099 lt!2693103)) lt!2693315)))

(assert (= (and d!2368054 c!1455663) b!7927721))

(assert (= (and d!2368054 (not c!1455663)) b!7927722))

(assert (= (and d!2368054 res!3145827) b!7927723))

(assert (= (and b!7927723 res!3145828) b!7927724))

(declare-fun m!8309820 () Bool)

(assert (=> b!7927722 m!8309820))

(declare-fun m!8309822 () Bool)

(assert (=> b!7927723 m!8309822))

(declare-fun m!8309824 () Bool)

(assert (=> b!7927723 m!8309824))

(assert (=> b!7927723 m!8309502))

(declare-fun m!8309826 () Bool)

(assert (=> d!2368054 m!8309826))

(declare-fun m!8309828 () Bool)

(assert (=> d!2368054 m!8309828))

(assert (=> d!2368054 m!8309508))

(assert (=> b!7927575 d!2368054))

(declare-fun d!2368056 () Bool)

(declare-fun lt!2693316 () Int)

(assert (=> d!2368056 (>= lt!2693316 0)))

(declare-fun e!4678629 () Int)

(assert (=> d!2368056 (= lt!2693316 e!4678629)))

(declare-fun c!1455664 () Bool)

(assert (=> d!2368056 (= c!1455664 ((_ is Nil!74448) (t!390189 (++!18259 lt!2692976 lt!2692979))))))

(assert (=> d!2368056 (= (size!43248 (t!390189 (++!18259 lt!2692976 lt!2692979))) lt!2693316)))

(declare-fun b!7927725 () Bool)

(assert (=> b!7927725 (= e!4678629 0)))

(declare-fun b!7927726 () Bool)

(assert (=> b!7927726 (= e!4678629 (+ 1 (size!43248 (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979))))))))

(assert (= (and d!2368056 c!1455664) b!7927725))

(assert (= (and d!2368056 (not c!1455664)) b!7927726))

(declare-fun m!8309830 () Bool)

(assert (=> b!7927726 m!8309830))

(assert (=> b!7927328 d!2368056))

(declare-fun d!2368058 () Bool)

(assert (=> d!2368058 (= (list!19415 (xs!19290 lt!2693114)) (innerList!15990 (xs!19290 lt!2693114)))))

(assert (=> b!7927201 d!2368058))

(declare-fun b!7927727 () Bool)

(declare-fun e!4678631 () Bool)

(declare-fun e!4678630 () Bool)

(assert (=> b!7927727 (= e!4678631 e!4678630)))

(declare-fun res!3145830 () Bool)

(assert (=> b!7927727 (=> (not res!3145830) (not e!4678630))))

(assert (=> b!7927727 (= res!3145830 (<= (- 1) (- (height!2217 (left!56873 (left!56873 (right!57203 lt!2692978)))) (height!2217 (right!57203 (left!56873 (right!57203 lt!2692978)))))))))

(declare-fun b!7927729 () Bool)

(declare-fun res!3145833 () Bool)

(assert (=> b!7927729 (=> (not res!3145833) (not e!4678630))))

(assert (=> b!7927729 (= res!3145833 (not (isEmpty!42776 (left!56873 (left!56873 (right!57203 lt!2692978))))))))

(declare-fun b!7927730 () Bool)

(declare-fun res!3145834 () Bool)

(assert (=> b!7927730 (=> (not res!3145834) (not e!4678630))))

(assert (=> b!7927730 (= res!3145834 (isBalanced!4528 (left!56873 (left!56873 (right!57203 lt!2692978)))))))

(declare-fun b!7927731 () Bool)

(declare-fun res!3145829 () Bool)

(assert (=> b!7927731 (=> (not res!3145829) (not e!4678630))))

(assert (=> b!7927731 (= res!3145829 (isBalanced!4528 (right!57203 (left!56873 (right!57203 lt!2692978)))))))

(declare-fun b!7927732 () Bool)

(assert (=> b!7927732 (= e!4678630 (not (isEmpty!42776 (right!57203 (left!56873 (right!57203 lt!2692978))))))))

(declare-fun b!7927728 () Bool)

(declare-fun res!3145831 () Bool)

(assert (=> b!7927728 (=> (not res!3145831) (not e!4678630))))

(assert (=> b!7927728 (= res!3145831 (<= (- (height!2217 (left!56873 (left!56873 (right!57203 lt!2692978)))) (height!2217 (right!57203 (left!56873 (right!57203 lt!2692978))))) 1))))

(declare-fun d!2368060 () Bool)

(declare-fun res!3145832 () Bool)

(assert (=> d!2368060 (=> res!3145832 e!4678631)))

(assert (=> d!2368060 (= res!3145832 (not ((_ is Node!15902) (left!56873 (right!57203 lt!2692978)))))))

(assert (=> d!2368060 (= (isBalanced!4528 (left!56873 (right!57203 lt!2692978))) e!4678631)))

(assert (= (and d!2368060 (not res!3145832)) b!7927727))

(assert (= (and b!7927727 res!3145830) b!7927728))

(assert (= (and b!7927728 res!3145831) b!7927730))

(assert (= (and b!7927730 res!3145834) b!7927731))

(assert (= (and b!7927731 res!3145829) b!7927729))

(assert (= (and b!7927729 res!3145833) b!7927732))

(declare-fun m!8309832 () Bool)

(assert (=> b!7927728 m!8309832))

(declare-fun m!8309834 () Bool)

(assert (=> b!7927728 m!8309834))

(declare-fun m!8309836 () Bool)

(assert (=> b!7927731 m!8309836))

(declare-fun m!8309838 () Bool)

(assert (=> b!7927729 m!8309838))

(declare-fun m!8309840 () Bool)

(assert (=> b!7927730 m!8309840))

(declare-fun m!8309842 () Bool)

(assert (=> b!7927732 m!8309842))

(assert (=> b!7927727 m!8309832))

(assert (=> b!7927727 m!8309834))

(assert (=> b!7927132 d!2368060))

(declare-fun d!2368062 () Bool)

(assert (=> d!2368062 (= (list!19415 (xs!19290 (left!56873 lt!2693100))) (innerList!15990 (xs!19290 (left!56873 lt!2693100))))))

(assert (=> b!7927477 d!2368062))

(declare-fun b!7927733 () Bool)

(declare-fun e!4678632 () List!74572)

(assert (=> b!7927733 (= e!4678632 (list!19413 (right!57203 (right!57203 t!4440))))))

(declare-fun b!7927736 () Bool)

(declare-fun e!4678633 () Bool)

(declare-fun lt!2693317 () List!74572)

(assert (=> b!7927736 (= e!4678633 (or (not (= (list!19413 (right!57203 (right!57203 t!4440))) Nil!74448)) (= lt!2693317 (t!390189 (list!19413 (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7927734 () Bool)

(assert (=> b!7927734 (= e!4678632 (Cons!74448 (h!80896 (t!390189 (list!19413 (left!56873 (right!57203 t!4440))))) (++!18259 (t!390189 (t!390189 (list!19413 (left!56873 (right!57203 t!4440))))) (list!19413 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7927735 () Bool)

(declare-fun res!3145836 () Bool)

(assert (=> b!7927735 (=> (not res!3145836) (not e!4678633))))

(assert (=> b!7927735 (= res!3145836 (= (size!43248 lt!2693317) (+ (size!43248 (t!390189 (list!19413 (left!56873 (right!57203 t!4440))))) (size!43248 (list!19413 (right!57203 (right!57203 t!4440)))))))))

(declare-fun d!2368064 () Bool)

(assert (=> d!2368064 e!4678633))

(declare-fun res!3145835 () Bool)

(assert (=> d!2368064 (=> (not res!3145835) (not e!4678633))))

(assert (=> d!2368064 (= res!3145835 (= (content!15783 lt!2693317) ((_ map or) (content!15783 (t!390189 (list!19413 (left!56873 (right!57203 t!4440))))) (content!15783 (list!19413 (right!57203 (right!57203 t!4440)))))))))

(assert (=> d!2368064 (= lt!2693317 e!4678632)))

(declare-fun c!1455665 () Bool)

(assert (=> d!2368064 (= c!1455665 ((_ is Nil!74448) (t!390189 (list!19413 (left!56873 (right!57203 t!4440))))))))

(assert (=> d!2368064 (= (++!18259 (t!390189 (list!19413 (left!56873 (right!57203 t!4440)))) (list!19413 (right!57203 (right!57203 t!4440)))) lt!2693317)))

(assert (= (and d!2368064 c!1455665) b!7927733))

(assert (= (and d!2368064 (not c!1455665)) b!7927734))

(assert (= (and d!2368064 res!3145835) b!7927735))

(assert (= (and b!7927735 res!3145836) b!7927736))

(assert (=> b!7927734 m!8308094))

(declare-fun m!8309844 () Bool)

(assert (=> b!7927734 m!8309844))

(declare-fun m!8309846 () Bool)

(assert (=> b!7927735 m!8309846))

(declare-fun m!8309848 () Bool)

(assert (=> b!7927735 m!8309848))

(assert (=> b!7927735 m!8308094))

(assert (=> b!7927735 m!8308394))

(declare-fun m!8309850 () Bool)

(assert (=> d!2368064 m!8309850))

(declare-fun m!8309852 () Bool)

(assert (=> d!2368064 m!8309852))

(assert (=> d!2368064 m!8308094))

(assert (=> d!2368064 m!8308400))

(assert (=> b!7927037 d!2368064))

(declare-fun d!2368066 () Bool)

(assert (=> d!2368066 (= (++!18259 (++!18259 (ite c!1455443 lt!2693130 lt!2693122) (ite c!1455443 lt!2693132 lt!2693125)) (ite c!1455443 lt!2693126 lt!2693136)) (++!18259 (ite c!1455443 lt!2693130 lt!2693122) (++!18259 (ite c!1455443 lt!2693132 lt!2693125) (ite c!1455443 lt!2693126 lt!2693136))))))

(declare-fun lt!2693318 () Unit!169565)

(assert (=> d!2368066 (= lt!2693318 (choose!59826 (ite c!1455443 lt!2693130 lt!2693122) (ite c!1455443 lt!2693132 lt!2693125) (ite c!1455443 lt!2693126 lt!2693136)))))

(assert (=> d!2368066 (= (lemmaConcatAssociativity!3162 (ite c!1455443 lt!2693130 lt!2693122) (ite c!1455443 lt!2693132 lt!2693125) (ite c!1455443 lt!2693126 lt!2693136)) lt!2693318)))

(declare-fun bs!1968873 () Bool)

(assert (= bs!1968873 d!2368066))

(declare-fun m!8309854 () Bool)

(assert (=> bs!1968873 m!8309854))

(declare-fun m!8309856 () Bool)

(assert (=> bs!1968873 m!8309856))

(declare-fun m!8309858 () Bool)

(assert (=> bs!1968873 m!8309858))

(assert (=> bs!1968873 m!8309854))

(assert (=> bs!1968873 m!8309858))

(declare-fun m!8309860 () Bool)

(assert (=> bs!1968873 m!8309860))

(declare-fun m!8309862 () Bool)

(assert (=> bs!1968873 m!8309862))

(assert (=> bm!735203 d!2368066))

(declare-fun d!2368068 () Bool)

(declare-fun lt!2693319 () Int)

(assert (=> d!2368068 (>= lt!2693319 0)))

(declare-fun e!4678634 () Int)

(assert (=> d!2368068 (= lt!2693319 e!4678634)))

(declare-fun c!1455666 () Bool)

(assert (=> d!2368068 (= c!1455666 ((_ is Nil!74448) (list!19415 (xs!19290 (right!57203 t!4440)))))))

(assert (=> d!2368068 (= (size!43248 (list!19415 (xs!19290 (right!57203 t!4440)))) lt!2693319)))

(declare-fun b!7927737 () Bool)

(assert (=> b!7927737 (= e!4678634 0)))

(declare-fun b!7927738 () Bool)

(assert (=> b!7927738 (= e!4678634 (+ 1 (size!43248 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440)))))))))

(assert (= (and d!2368068 c!1455666) b!7927737))

(assert (= (and d!2368068 (not c!1455666)) b!7927738))

(declare-fun m!8309864 () Bool)

(assert (=> b!7927738 m!8309864))

(assert (=> d!2367806 d!2368068))

(assert (=> d!2367806 d!2367874))

(declare-fun d!2368070 () Bool)

(declare-fun e!4678637 () Bool)

(assert (=> d!2368070 e!4678637))

(declare-fun res!3145839 () Bool)

(assert (=> d!2368070 (=> (not res!3145839) (not e!4678637))))

(declare-fun lt!2693320 () List!74572)

(assert (=> d!2368070 (= res!3145839 ((_ is Cons!74448) lt!2693320))))

(declare-fun e!4678636 () List!74572)

(assert (=> d!2368070 (= lt!2693320 e!4678636)))

(declare-fun c!1455667 () Bool)

(assert (=> d!2368070 (= c!1455667 ((_ is Nil!74448) (t!390189 (list!19415 (xs!19290 (right!57203 t!4440))))))))

(assert (=> d!2368070 (= ($colon+!315 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440)))) v!5484) lt!2693320)))

(declare-fun bm!735226 () Bool)

(declare-fun call!735231 () (_ BitVec 32))

(assert (=> bm!735226 (= call!735231 (isize!119 lt!2693320))))

(declare-fun bm!735227 () Bool)

(declare-fun call!735232 () (_ BitVec 32))

(assert (=> bm!735227 (= call!735232 (isize!119 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440))))))))

(declare-fun b!7927739 () Bool)

(declare-fun e!4678635 () Bool)

(assert (=> b!7927739 (= e!4678635 (= call!735231 (bvadd call!735232 #b00000000000000000000000000000001)))))

(declare-fun b!7927740 () Bool)

(assert (=> b!7927740 (= e!4678636 (Cons!74448 (h!80896 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440))))) ($colon+!315 (t!390189 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440))))) v!5484)))))

(declare-fun b!7927741 () Bool)

(assert (=> b!7927741 (= e!4678635 (= call!735231 call!735232))))

(declare-fun b!7927742 () Bool)

(declare-fun res!3145840 () Bool)

(assert (=> b!7927742 (=> (not res!3145840) (not e!4678637))))

(assert (=> b!7927742 (= res!3145840 (= (content!15783 lt!2693320) ((_ map or) (content!15783 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440))))) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun b!7927743 () Bool)

(declare-fun res!3145837 () Bool)

(assert (=> b!7927743 (=> (not res!3145837) (not e!4678637))))

(assert (=> b!7927743 (= res!3145837 e!4678635)))

(declare-fun c!1455668 () Bool)

(assert (=> b!7927743 (= c!1455668 (bvslt (isize!119 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440))))) #b01111111111111111111111111111111))))

(declare-fun b!7927744 () Bool)

(assert (=> b!7927744 (= e!4678636 (Cons!74448 v!5484 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440))))))))

(declare-fun b!7927745 () Bool)

(declare-fun res!3145838 () Bool)

(assert (=> b!7927745 (=> (not res!3145838) (not e!4678637))))

(assert (=> b!7927745 (= res!3145838 (= (size!43248 lt!2693320) (+ (size!43248 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440))))) 1)))))

(declare-fun b!7927746 () Bool)

(assert (=> b!7927746 (= e!4678637 (= lt!2693320 (++!18259 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440)))) (Cons!74448 v!5484 Nil!74448))))))

(assert (= (and d!2368070 c!1455667) b!7927744))

(assert (= (and d!2368070 (not c!1455667)) b!7927740))

(assert (= (and d!2368070 res!3145839) b!7927745))

(assert (= (and b!7927745 res!3145838) b!7927743))

(assert (= (and b!7927743 c!1455668) b!7927739))

(assert (= (and b!7927743 (not c!1455668)) b!7927741))

(assert (= (or b!7927739 b!7927741) bm!735227))

(assert (= (or b!7927739 b!7927741) bm!735226))

(assert (= (and b!7927743 res!3145837) b!7927742))

(assert (= (and b!7927742 res!3145840) b!7927746))

(declare-fun m!8309866 () Bool)

(assert (=> bm!735226 m!8309866))

(declare-fun m!8309868 () Bool)

(assert (=> b!7927742 m!8309868))

(declare-fun m!8309870 () Bool)

(assert (=> b!7927742 m!8309870))

(assert (=> b!7927742 m!8308156))

(assert (=> bm!735227 m!8309702))

(assert (=> b!7927743 m!8309702))

(declare-fun m!8309872 () Bool)

(assert (=> b!7927746 m!8309872))

(declare-fun m!8309874 () Bool)

(assert (=> b!7927740 m!8309874))

(declare-fun m!8309876 () Bool)

(assert (=> b!7927745 m!8309876))

(assert (=> b!7927745 m!8309864))

(assert (=> b!7927585 d!2368070))

(declare-fun d!2368072 () Bool)

(assert (=> d!2368072 (= (list!19415 (xs!19290 lt!2692975)) (innerList!15990 (xs!19290 lt!2692975)))))

(assert (=> b!7927217 d!2368072))

(declare-fun b!7927747 () Bool)

(declare-fun e!4678638 () List!74572)

(assert (=> b!7927747 (= e!4678638 call!735186)))

(declare-fun e!4678639 () Bool)

(declare-fun lt!2693321 () List!74572)

(declare-fun b!7927750 () Bool)

(assert (=> b!7927750 (= e!4678639 (or (not (= call!735186 Nil!74448)) (= lt!2693321 (t!390189 lt!2693091))))))

(declare-fun b!7927748 () Bool)

(assert (=> b!7927748 (= e!4678638 (Cons!74448 (h!80896 (t!390189 lt!2693091)) (++!18259 (t!390189 (t!390189 lt!2693091)) call!735186)))))

(declare-fun b!7927749 () Bool)

(declare-fun res!3145842 () Bool)

(assert (=> b!7927749 (=> (not res!3145842) (not e!4678639))))

(assert (=> b!7927749 (= res!3145842 (= (size!43248 lt!2693321) (+ (size!43248 (t!390189 lt!2693091)) (size!43248 call!735186))))))

(declare-fun d!2368074 () Bool)

(assert (=> d!2368074 e!4678639))

(declare-fun res!3145841 () Bool)

(assert (=> d!2368074 (=> (not res!3145841) (not e!4678639))))

(assert (=> d!2368074 (= res!3145841 (= (content!15783 lt!2693321) ((_ map or) (content!15783 (t!390189 lt!2693091)) (content!15783 call!735186))))))

(assert (=> d!2368074 (= lt!2693321 e!4678638)))

(declare-fun c!1455669 () Bool)

(assert (=> d!2368074 (= c!1455669 ((_ is Nil!74448) (t!390189 lt!2693091)))))

(assert (=> d!2368074 (= (++!18259 (t!390189 lt!2693091) call!735186) lt!2693321)))

(assert (= (and d!2368074 c!1455669) b!7927747))

(assert (= (and d!2368074 (not c!1455669)) b!7927748))

(assert (= (and d!2368074 res!3145841) b!7927749))

(assert (= (and b!7927749 res!3145842) b!7927750))

(declare-fun m!8309878 () Bool)

(assert (=> b!7927748 m!8309878))

(declare-fun m!8309880 () Bool)

(assert (=> b!7927749 m!8309880))

(declare-fun m!8309882 () Bool)

(assert (=> b!7927749 m!8309882))

(assert (=> b!7927749 m!8309294))

(declare-fun m!8309884 () Bool)

(assert (=> d!2368074 m!8309884))

(declare-fun m!8309886 () Bool)

(assert (=> d!2368074 m!8309886))

(assert (=> d!2368074 m!8309300))

(assert (=> b!7927472 d!2368074))

(declare-fun d!2368076 () Bool)

(declare-fun c!1455670 () Bool)

(assert (=> d!2368076 (= c!1455670 ((_ is Nil!74448) lt!2693276))))

(declare-fun e!4678640 () (InoxSet T!145804))

(assert (=> d!2368076 (= (content!15783 lt!2693276) e!4678640)))

(declare-fun b!7927751 () Bool)

(assert (=> b!7927751 (= e!4678640 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927752 () Bool)

(assert (=> b!7927752 (= e!4678640 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693276) true) (content!15783 (t!390189 lt!2693276))))))

(assert (= (and d!2368076 c!1455670) b!7927751))

(assert (= (and d!2368076 (not c!1455670)) b!7927752))

(declare-fun m!8309888 () Bool)

(assert (=> b!7927752 m!8309888))

(declare-fun m!8309890 () Bool)

(assert (=> b!7927752 m!8309890))

(assert (=> d!2367938 d!2368076))

(declare-fun d!2368078 () Bool)

(declare-fun c!1455671 () Bool)

(assert (=> d!2368078 (= c!1455671 ((_ is Nil!74448) (ite c!1455404 lt!2693097 lt!2693092)))))

(declare-fun e!4678641 () (InoxSet T!145804))

(assert (=> d!2368078 (= (content!15783 (ite c!1455404 lt!2693097 lt!2693092)) e!4678641)))

(declare-fun b!7927753 () Bool)

(assert (=> b!7927753 (= e!4678641 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927754 () Bool)

(assert (=> b!7927754 (= e!4678641 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (ite c!1455404 lt!2693097 lt!2693092)) true) (content!15783 (t!390189 (ite c!1455404 lt!2693097 lt!2693092)))))))

(assert (= (and d!2368078 c!1455671) b!7927753))

(assert (= (and d!2368078 (not c!1455671)) b!7927754))

(declare-fun m!8309892 () Bool)

(assert (=> b!7927754 m!8309892))

(assert (=> b!7927754 m!8309828))

(assert (=> d!2367938 d!2368078))

(declare-fun d!2368080 () Bool)

(declare-fun c!1455672 () Bool)

(assert (=> d!2368080 (= c!1455672 ((_ is Nil!74448) (ite c!1455404 lt!2693099 lt!2693103)))))

(declare-fun e!4678642 () (InoxSet T!145804))

(assert (=> d!2368080 (= (content!15783 (ite c!1455404 lt!2693099 lt!2693103)) e!4678642)))

(declare-fun b!7927755 () Bool)

(assert (=> b!7927755 (= e!4678642 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927756 () Bool)

(assert (=> b!7927756 (= e!4678642 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (ite c!1455404 lt!2693099 lt!2693103)) true) (content!15783 (t!390189 (ite c!1455404 lt!2693099 lt!2693103)))))))

(assert (= (and d!2368080 c!1455672) b!7927755))

(assert (= (and d!2368080 (not c!1455672)) b!7927756))

(declare-fun m!8309894 () Bool)

(assert (=> b!7927756 m!8309894))

(declare-fun m!8309896 () Bool)

(assert (=> b!7927756 m!8309896))

(assert (=> d!2367938 d!2368080))

(declare-fun d!2368082 () Bool)

(declare-fun lt!2693322 () Int)

(assert (=> d!2368082 (>= lt!2693322 0)))

(declare-fun e!4678643 () Int)

(assert (=> d!2368082 (= lt!2693322 e!4678643)))

(declare-fun c!1455673 () Bool)

(assert (=> d!2368082 (= c!1455673 ((_ is Nil!74448) lt!2693158))))

(assert (=> d!2368082 (= (size!43248 lt!2693158) lt!2693322)))

(declare-fun b!7927757 () Bool)

(assert (=> b!7927757 (= e!4678643 0)))

(declare-fun b!7927758 () Bool)

(assert (=> b!7927758 (= e!4678643 (+ 1 (size!43248 (t!390189 lt!2693158))))))

(assert (= (and d!2368082 c!1455673) b!7927757))

(assert (= (and d!2368082 (not c!1455673)) b!7927758))

(declare-fun m!8309898 () Bool)

(assert (=> b!7927758 m!8309898))

(assert (=> b!7927120 d!2368082))

(declare-fun d!2368084 () Bool)

(declare-fun lt!2693323 () Int)

(assert (=> d!2368084 (>= lt!2693323 0)))

(declare-fun e!4678644 () Int)

(assert (=> d!2368084 (= lt!2693323 e!4678644)))

(declare-fun c!1455674 () Bool)

(assert (=> d!2368084 (= c!1455674 ((_ is Nil!74448) (list!19413 (left!56873 t!4440))))))

(assert (=> d!2368084 (= (size!43248 (list!19413 (left!56873 t!4440))) lt!2693323)))

(declare-fun b!7927759 () Bool)

(assert (=> b!7927759 (= e!4678644 0)))

(declare-fun b!7927760 () Bool)

(assert (=> b!7927760 (= e!4678644 (+ 1 (size!43248 (t!390189 (list!19413 (left!56873 t!4440))))))))

(assert (= (and d!2368084 c!1455674) b!7927759))

(assert (= (and d!2368084 (not c!1455674)) b!7927760))

(assert (=> b!7927760 m!8309718))

(assert (=> b!7927120 d!2368084))

(declare-fun d!2368086 () Bool)

(declare-fun lt!2693324 () Int)

(assert (=> d!2368086 (>= lt!2693324 0)))

(declare-fun e!4678645 () Int)

(assert (=> d!2368086 (= lt!2693324 e!4678645)))

(declare-fun c!1455675 () Bool)

(assert (=> d!2368086 (= c!1455675 ((_ is Nil!74448) (list!19413 (right!57203 t!4440))))))

(assert (=> d!2368086 (= (size!43248 (list!19413 (right!57203 t!4440))) lt!2693324)))

(declare-fun b!7927761 () Bool)

(assert (=> b!7927761 (= e!4678645 0)))

(declare-fun b!7927762 () Bool)

(assert (=> b!7927762 (= e!4678645 (+ 1 (size!43248 (t!390189 (list!19413 (right!57203 t!4440))))))))

(assert (= (and d!2368086 c!1455675) b!7927761))

(assert (= (and d!2368086 (not c!1455675)) b!7927762))

(declare-fun m!8309900 () Bool)

(assert (=> b!7927762 m!8309900))

(assert (=> b!7927120 d!2368086))

(declare-fun d!2368088 () Bool)

(declare-fun lt!2693325 () Int)

(assert (=> d!2368088 (>= lt!2693325 0)))

(declare-fun e!4678646 () Int)

(assert (=> d!2368088 (= lt!2693325 e!4678646)))

(declare-fun c!1455676 () Bool)

(assert (=> d!2368088 (= c!1455676 ((_ is Nil!74448) (t!390189 lt!2693117)))))

(assert (=> d!2368088 (= (size!43248 (t!390189 lt!2693117)) lt!2693325)))

(declare-fun b!7927763 () Bool)

(assert (=> b!7927763 (= e!4678646 0)))

(declare-fun b!7927764 () Bool)

(assert (=> b!7927764 (= e!4678646 (+ 1 (size!43248 (t!390189 (t!390189 lt!2693117)))))))

(assert (= (and d!2368088 c!1455676) b!7927763))

(assert (= (and d!2368088 (not c!1455676)) b!7927764))

(declare-fun m!8309902 () Bool)

(assert (=> b!7927764 m!8309902))

(assert (=> b!7927326 d!2368088))

(assert (=> b!7927296 d!2367996))

(declare-fun b!7927765 () Bool)

(declare-fun e!4678647 () List!74572)

(assert (=> b!7927765 (= e!4678647 (list!19413 (right!57203 (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7927768 () Bool)

(declare-fun e!4678648 () Bool)

(declare-fun lt!2693326 () List!74572)

(assert (=> b!7927768 (= e!4678648 (or (not (= (list!19413 (right!57203 (left!56873 (right!57203 t!4440)))) Nil!74448)) (= lt!2693326 (list!19413 (left!56873 (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7927766 () Bool)

(assert (=> b!7927766 (= e!4678647 (Cons!74448 (h!80896 (list!19413 (left!56873 (left!56873 (right!57203 t!4440))))) (++!18259 (t!390189 (list!19413 (left!56873 (left!56873 (right!57203 t!4440))))) (list!19413 (right!57203 (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7927767 () Bool)

(declare-fun res!3145844 () Bool)

(assert (=> b!7927767 (=> (not res!3145844) (not e!4678648))))

(assert (=> b!7927767 (= res!3145844 (= (size!43248 lt!2693326) (+ (size!43248 (list!19413 (left!56873 (left!56873 (right!57203 t!4440))))) (size!43248 (list!19413 (right!57203 (left!56873 (right!57203 t!4440))))))))))

(declare-fun d!2368090 () Bool)

(assert (=> d!2368090 e!4678648))

(declare-fun res!3145843 () Bool)

(assert (=> d!2368090 (=> (not res!3145843) (not e!4678648))))

(assert (=> d!2368090 (= res!3145843 (= (content!15783 lt!2693326) ((_ map or) (content!15783 (list!19413 (left!56873 (left!56873 (right!57203 t!4440))))) (content!15783 (list!19413 (right!57203 (left!56873 (right!57203 t!4440))))))))))

(assert (=> d!2368090 (= lt!2693326 e!4678647)))

(declare-fun c!1455677 () Bool)

(assert (=> d!2368090 (= c!1455677 ((_ is Nil!74448) (list!19413 (left!56873 (left!56873 (right!57203 t!4440))))))))

(assert (=> d!2368090 (= (++!18259 (list!19413 (left!56873 (left!56873 (right!57203 t!4440)))) (list!19413 (right!57203 (left!56873 (right!57203 t!4440))))) lt!2693326)))

(assert (= (and d!2368090 c!1455677) b!7927765))

(assert (= (and d!2368090 (not c!1455677)) b!7927766))

(assert (= (and d!2368090 res!3145843) b!7927767))

(assert (= (and b!7927767 res!3145844) b!7927768))

(assert (=> b!7927766 m!8308416))

(declare-fun m!8309904 () Bool)

(assert (=> b!7927766 m!8309904))

(declare-fun m!8309906 () Bool)

(assert (=> b!7927767 m!8309906))

(assert (=> b!7927767 m!8308414))

(declare-fun m!8309908 () Bool)

(assert (=> b!7927767 m!8309908))

(assert (=> b!7927767 m!8308416))

(declare-fun m!8309910 () Bool)

(assert (=> b!7927767 m!8309910))

(declare-fun m!8309912 () Bool)

(assert (=> d!2368090 m!8309912))

(assert (=> d!2368090 m!8308414))

(declare-fun m!8309914 () Bool)

(assert (=> d!2368090 m!8309914))

(assert (=> d!2368090 m!8308416))

(declare-fun m!8309916 () Bool)

(assert (=> d!2368090 m!8309916))

(assert (=> b!7927049 d!2368090))

(declare-fun b!7927772 () Bool)

(declare-fun e!4678650 () List!74572)

(assert (=> b!7927772 (= e!4678650 (++!18259 (list!19413 (left!56873 (left!56873 (left!56873 (right!57203 t!4440))))) (list!19413 (right!57203 (left!56873 (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7927770 () Bool)

(declare-fun e!4678649 () List!74572)

(assert (=> b!7927770 (= e!4678649 e!4678650)))

(declare-fun c!1455679 () Bool)

(assert (=> b!7927770 (= c!1455679 ((_ is Leaf!30234) (left!56873 (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7927771 () Bool)

(assert (=> b!7927771 (= e!4678650 (list!19415 (xs!19290 (left!56873 (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7927769 () Bool)

(assert (=> b!7927769 (= e!4678649 Nil!74448)))

(declare-fun d!2368092 () Bool)

(declare-fun c!1455678 () Bool)

(assert (=> d!2368092 (= c!1455678 ((_ is Empty!15902) (left!56873 (left!56873 (right!57203 t!4440)))))))

(assert (=> d!2368092 (= (list!19413 (left!56873 (left!56873 (right!57203 t!4440)))) e!4678649)))

(assert (= (and d!2368092 c!1455678) b!7927769))

(assert (= (and d!2368092 (not c!1455678)) b!7927770))

(assert (= (and b!7927770 c!1455679) b!7927771))

(assert (= (and b!7927770 (not c!1455679)) b!7927772))

(declare-fun m!8309918 () Bool)

(assert (=> b!7927772 m!8309918))

(declare-fun m!8309920 () Bool)

(assert (=> b!7927772 m!8309920))

(assert (=> b!7927772 m!8309918))

(assert (=> b!7927772 m!8309920))

(declare-fun m!8309922 () Bool)

(assert (=> b!7927772 m!8309922))

(declare-fun m!8309924 () Bool)

(assert (=> b!7927771 m!8309924))

(assert (=> b!7927049 d!2368092))

(declare-fun b!7927776 () Bool)

(declare-fun e!4678652 () List!74572)

(assert (=> b!7927776 (= e!4678652 (++!18259 (list!19413 (left!56873 (right!57203 (left!56873 (right!57203 t!4440))))) (list!19413 (right!57203 (right!57203 (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7927774 () Bool)

(declare-fun e!4678651 () List!74572)

(assert (=> b!7927774 (= e!4678651 e!4678652)))

(declare-fun c!1455681 () Bool)

(assert (=> b!7927774 (= c!1455681 ((_ is Leaf!30234) (right!57203 (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7927775 () Bool)

(assert (=> b!7927775 (= e!4678652 (list!19415 (xs!19290 (right!57203 (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7927773 () Bool)

(assert (=> b!7927773 (= e!4678651 Nil!74448)))

(declare-fun d!2368094 () Bool)

(declare-fun c!1455680 () Bool)

(assert (=> d!2368094 (= c!1455680 ((_ is Empty!15902) (right!57203 (left!56873 (right!57203 t!4440)))))))

(assert (=> d!2368094 (= (list!19413 (right!57203 (left!56873 (right!57203 t!4440)))) e!4678651)))

(assert (= (and d!2368094 c!1455680) b!7927773))

(assert (= (and d!2368094 (not c!1455680)) b!7927774))

(assert (= (and b!7927774 c!1455681) b!7927775))

(assert (= (and b!7927774 (not c!1455681)) b!7927776))

(declare-fun m!8309926 () Bool)

(assert (=> b!7927776 m!8309926))

(declare-fun m!8309928 () Bool)

(assert (=> b!7927776 m!8309928))

(assert (=> b!7927776 m!8309926))

(assert (=> b!7927776 m!8309928))

(declare-fun m!8309930 () Bool)

(assert (=> b!7927776 m!8309930))

(declare-fun m!8309932 () Bool)

(assert (=> b!7927775 m!8309932))

(assert (=> b!7927049 d!2368094))

(declare-fun b!7927777 () Bool)

(declare-fun e!4678653 () List!74572)

(assert (=> b!7927777 (= e!4678653 lt!2693103)))

(declare-fun lt!2693327 () List!74572)

(declare-fun e!4678654 () Bool)

(declare-fun b!7927780 () Bool)

(assert (=> b!7927780 (= e!4678654 (or (not (= lt!2693103 Nil!74448)) (= lt!2693327 (t!390189 call!735188))))))

(declare-fun b!7927778 () Bool)

(assert (=> b!7927778 (= e!4678653 (Cons!74448 (h!80896 (t!390189 call!735188)) (++!18259 (t!390189 (t!390189 call!735188)) lt!2693103)))))

(declare-fun b!7927779 () Bool)

(declare-fun res!3145846 () Bool)

(assert (=> b!7927779 (=> (not res!3145846) (not e!4678654))))

(assert (=> b!7927779 (= res!3145846 (= (size!43248 lt!2693327) (+ (size!43248 (t!390189 call!735188)) (size!43248 lt!2693103))))))

(declare-fun d!2368096 () Bool)

(assert (=> d!2368096 e!4678654))

(declare-fun res!3145845 () Bool)

(assert (=> d!2368096 (=> (not res!3145845) (not e!4678654))))

(assert (=> d!2368096 (= res!3145845 (= (content!15783 lt!2693327) ((_ map or) (content!15783 (t!390189 call!735188)) (content!15783 lt!2693103))))))

(assert (=> d!2368096 (= lt!2693327 e!4678653)))

(declare-fun c!1455682 () Bool)

(assert (=> d!2368096 (= c!1455682 ((_ is Nil!74448) (t!390189 call!735188)))))

(assert (=> d!2368096 (= (++!18259 (t!390189 call!735188) lt!2693103) lt!2693327)))

(assert (= (and d!2368096 c!1455682) b!7927777))

(assert (= (and d!2368096 (not c!1455682)) b!7927778))

(assert (= (and d!2368096 res!3145845) b!7927779))

(assert (= (and b!7927779 res!3145846) b!7927780))

(declare-fun m!8309934 () Bool)

(assert (=> b!7927778 m!8309934))

(declare-fun m!8309936 () Bool)

(assert (=> b!7927779 m!8309936))

(declare-fun m!8309938 () Bool)

(assert (=> b!7927779 m!8309938))

(assert (=> b!7927779 m!8309280))

(declare-fun m!8309940 () Bool)

(assert (=> d!2368096 m!8309940))

(assert (=> d!2368096 m!8309810))

(assert (=> d!2368096 m!8309286))

(assert (=> b!7927468 d!2368096))

(declare-fun b!7927781 () Bool)

(declare-fun e!4678655 () List!74572)

(assert (=> b!7927781 (= e!4678655 (list!19413 (right!57203 (left!56873 t!4440))))))

(declare-fun b!7927784 () Bool)

(declare-fun e!4678656 () Bool)

(declare-fun lt!2693328 () List!74572)

(assert (=> b!7927784 (= e!4678656 (or (not (= (list!19413 (right!57203 (left!56873 t!4440))) Nil!74448)) (= lt!2693328 (t!390189 (list!19413 (left!56873 (left!56873 t!4440)))))))))

(declare-fun b!7927782 () Bool)

(assert (=> b!7927782 (= e!4678655 (Cons!74448 (h!80896 (t!390189 (list!19413 (left!56873 (left!56873 t!4440))))) (++!18259 (t!390189 (t!390189 (list!19413 (left!56873 (left!56873 t!4440))))) (list!19413 (right!57203 (left!56873 t!4440))))))))

(declare-fun b!7927783 () Bool)

(declare-fun res!3145848 () Bool)

(assert (=> b!7927783 (=> (not res!3145848) (not e!4678656))))

(assert (=> b!7927783 (= res!3145848 (= (size!43248 lt!2693328) (+ (size!43248 (t!390189 (list!19413 (left!56873 (left!56873 t!4440))))) (size!43248 (list!19413 (right!57203 (left!56873 t!4440)))))))))

(declare-fun d!2368098 () Bool)

(assert (=> d!2368098 e!4678656))

(declare-fun res!3145847 () Bool)

(assert (=> d!2368098 (=> (not res!3145847) (not e!4678656))))

(assert (=> d!2368098 (= res!3145847 (= (content!15783 lt!2693328) ((_ map or) (content!15783 (t!390189 (list!19413 (left!56873 (left!56873 t!4440))))) (content!15783 (list!19413 (right!57203 (left!56873 t!4440)))))))))

(assert (=> d!2368098 (= lt!2693328 e!4678655)))

(declare-fun c!1455683 () Bool)

(assert (=> d!2368098 (= c!1455683 ((_ is Nil!74448) (t!390189 (list!19413 (left!56873 (left!56873 t!4440))))))))

(assert (=> d!2368098 (= (++!18259 (t!390189 (list!19413 (left!56873 (left!56873 t!4440)))) (list!19413 (right!57203 (left!56873 t!4440)))) lt!2693328)))

(assert (= (and d!2368098 c!1455683) b!7927781))

(assert (= (and d!2368098 (not c!1455683)) b!7927782))

(assert (= (and d!2368098 res!3145847) b!7927783))

(assert (= (and b!7927783 res!3145848) b!7927784))

(assert (=> b!7927782 m!8308214))

(declare-fun m!8309942 () Bool)

(assert (=> b!7927782 m!8309942))

(declare-fun m!8309944 () Bool)

(assert (=> b!7927783 m!8309944))

(declare-fun m!8309946 () Bool)

(assert (=> b!7927783 m!8309946))

(assert (=> b!7927783 m!8308214))

(assert (=> b!7927783 m!8308540))

(declare-fun m!8309948 () Bool)

(assert (=> d!2368098 m!8309948))

(declare-fun m!8309950 () Bool)

(assert (=> d!2368098 m!8309950))

(assert (=> d!2368098 m!8308214))

(assert (=> d!2368098 m!8308546))

(assert (=> b!7927097 d!2368098))

(declare-fun d!2368100 () Bool)

(declare-fun lt!2693329 () Int)

(assert (=> d!2368100 (>= lt!2693329 0)))

(declare-fun e!4678657 () Int)

(assert (=> d!2368100 (= lt!2693329 e!4678657)))

(declare-fun c!1455684 () Bool)

(assert (=> d!2368100 (= c!1455684 ((_ is Nil!74448) lt!2693266))))

(assert (=> d!2368100 (= (size!43248 lt!2693266) lt!2693329)))

(declare-fun b!7927785 () Bool)

(assert (=> b!7927785 (= e!4678657 0)))

(declare-fun b!7927786 () Bool)

(assert (=> b!7927786 (= e!4678657 (+ 1 (size!43248 (t!390189 lt!2693266))))))

(assert (= (and d!2368100 c!1455684) b!7927785))

(assert (= (and d!2368100 (not c!1455684)) b!7927786))

(declare-fun m!8309952 () Bool)

(assert (=> b!7927786 m!8309952))

(assert (=> b!7927509 d!2368100))

(declare-fun d!2368102 () Bool)

(declare-fun lt!2693330 () Int)

(assert (=> d!2368102 (>= lt!2693330 0)))

(declare-fun e!4678658 () Int)

(assert (=> d!2368102 (= lt!2693330 e!4678658)))

(declare-fun c!1455685 () Bool)

(assert (=> d!2368102 (= c!1455685 ((_ is Nil!74448) (t!390189 lt!2692976)))))

(assert (=> d!2368102 (= (size!43248 (t!390189 lt!2692976)) lt!2693330)))

(declare-fun b!7927787 () Bool)

(assert (=> b!7927787 (= e!4678658 0)))

(declare-fun b!7927788 () Bool)

(assert (=> b!7927788 (= e!4678658 (+ 1 (size!43248 (t!390189 (t!390189 lt!2692976)))))))

(assert (= (and d!2368102 c!1455685) b!7927787))

(assert (= (and d!2368102 (not c!1455685)) b!7927788))

(assert (=> b!7927788 m!8309764))

(assert (=> b!7927509 d!2368102))

(assert (=> b!7927509 d!2367656))

(declare-fun d!2368104 () Bool)

(assert (=> d!2368104 (= (list!19415 (xs!19290 lt!2693102)) (innerList!15990 (xs!19290 lt!2693102)))))

(assert (=> b!7927519 d!2368104))

(declare-fun d!2368106 () Bool)

(assert (=> d!2368106 (= (list!19415 (xs!19290 (right!57203 (left!56873 t!4440)))) (innerList!15990 (xs!19290 (right!57203 (left!56873 t!4440)))))))

(assert (=> b!7927114 d!2368106))

(declare-fun d!2368108 () Bool)

(declare-fun lt!2693331 () (_ BitVec 32))

(assert (=> d!2368108 (and (bvsle #b00000000000000000000000000000000 lt!2693331) (bvsle lt!2693331 #b01111111111111111111111111111111))))

(declare-fun e!4678659 () (_ BitVec 32))

(assert (=> d!2368108 (= lt!2693331 e!4678659)))

(declare-fun c!1455686 () Bool)

(assert (=> d!2368108 (= c!1455686 ((_ is Nil!74448) (t!390189 (list!19413 t!4440))))))

(assert (=> d!2368108 (= (isize!119 (t!390189 (list!19413 t!4440))) lt!2693331)))

(declare-fun b!7927789 () Bool)

(assert (=> b!7927789 (= e!4678659 #b00000000000000000000000000000000)))

(declare-fun b!7927790 () Bool)

(declare-fun lt!2693332 () (_ BitVec 32))

(assert (=> b!7927790 (= e!4678659 (ite (= lt!2693332 #b01111111111111111111111111111111) lt!2693332 (bvadd #b00000000000000000000000000000001 lt!2693332)))))

(assert (=> b!7927790 (= lt!2693332 (isize!119 (t!390189 (t!390189 (list!19413 t!4440)))))))

(assert (= (and d!2368108 c!1455686) b!7927789))

(assert (= (and d!2368108 (not c!1455686)) b!7927790))

(declare-fun m!8309954 () Bool)

(assert (=> b!7927790 m!8309954))

(assert (=> bm!735219 d!2368108))

(declare-fun d!2368110 () Bool)

(declare-fun res!3145849 () Bool)

(declare-fun e!4678660 () Bool)

(assert (=> d!2368110 (=> (not res!3145849) (not e!4678660))))

(assert (=> d!2368110 (= res!3145849 (<= (size!43248 (list!19415 (xs!19290 (right!57203 (left!56873 t!4440))))) 512))))

(assert (=> d!2368110 (= (inv!95724 (right!57203 (left!56873 t!4440))) e!4678660)))

(declare-fun b!7927791 () Bool)

(declare-fun res!3145850 () Bool)

(assert (=> b!7927791 (=> (not res!3145850) (not e!4678660))))

(assert (=> b!7927791 (= res!3145850 (= (csize!32035 (right!57203 (left!56873 t!4440))) (size!43248 (list!19415 (xs!19290 (right!57203 (left!56873 t!4440)))))))))

(declare-fun b!7927792 () Bool)

(assert (=> b!7927792 (= e!4678660 (and (> (csize!32035 (right!57203 (left!56873 t!4440))) 0) (<= (csize!32035 (right!57203 (left!56873 t!4440))) 512)))))

(assert (= (and d!2368110 res!3145849) b!7927791))

(assert (= (and b!7927791 res!3145850) b!7927792))

(assert (=> d!2368110 m!8308562))

(assert (=> d!2368110 m!8308562))

(declare-fun m!8309956 () Bool)

(assert (=> d!2368110 m!8309956))

(assert (=> b!7927791 m!8308562))

(assert (=> b!7927791 m!8308562))

(assert (=> b!7927791 m!8309956))

(assert (=> b!7927452 d!2368110))

(declare-fun b!7927796 () Bool)

(declare-fun e!4678662 () List!74572)

(assert (=> b!7927796 (= e!4678662 (++!18259 (list!19413 (left!56873 lt!2693135)) (list!19413 (right!57203 lt!2693135))))))

(declare-fun b!7927794 () Bool)

(declare-fun e!4678661 () List!74572)

(assert (=> b!7927794 (= e!4678661 e!4678662)))

(declare-fun c!1455688 () Bool)

(assert (=> b!7927794 (= c!1455688 ((_ is Leaf!30234) lt!2693135))))

(declare-fun b!7927795 () Bool)

(assert (=> b!7927795 (= e!4678662 (list!19415 (xs!19290 lt!2693135)))))

(declare-fun b!7927793 () Bool)

(assert (=> b!7927793 (= e!4678661 Nil!74448)))

(declare-fun d!2368112 () Bool)

(declare-fun c!1455687 () Bool)

(assert (=> d!2368112 (= c!1455687 ((_ is Empty!15902) lt!2693135))))

(assert (=> d!2368112 (= (list!19413 lt!2693135) e!4678661)))

(assert (= (and d!2368112 c!1455687) b!7927793))

(assert (= (and d!2368112 (not c!1455687)) b!7927794))

(assert (= (and b!7927794 c!1455688) b!7927795))

(assert (= (and b!7927794 (not c!1455688)) b!7927796))

(declare-fun m!8309958 () Bool)

(assert (=> b!7927796 m!8309958))

(declare-fun m!8309960 () Bool)

(assert (=> b!7927796 m!8309960))

(assert (=> b!7927796 m!8309958))

(assert (=> b!7927796 m!8309960))

(declare-fun m!8309962 () Bool)

(assert (=> b!7927796 m!8309962))

(declare-fun m!8309964 () Bool)

(assert (=> b!7927795 m!8309964))

(assert (=> b!7927004 d!2368112))

(declare-fun d!2368114 () Bool)

(declare-fun e!4678665 () Bool)

(assert (=> d!2368114 e!4678665))

(declare-fun res!3145853 () Bool)

(assert (=> d!2368114 (=> (not res!3145853) (not e!4678665))))

(declare-fun lt!2693333 () List!74572)

(assert (=> d!2368114 (= res!3145853 ((_ is Cons!74448) lt!2693333))))

(declare-fun e!4678664 () List!74572)

(assert (=> d!2368114 (= lt!2693333 e!4678664)))

(declare-fun c!1455689 () Bool)

(assert (=> d!2368114 (= c!1455689 ((_ is Nil!74448) (list!19413 (right!57203 (right!57203 t!4440)))))))

(assert (=> d!2368114 (= ($colon+!315 (list!19413 (right!57203 (right!57203 t!4440))) v!5484) lt!2693333)))

(declare-fun bm!735228 () Bool)

(declare-fun call!735233 () (_ BitVec 32))

(assert (=> bm!735228 (= call!735233 (isize!119 lt!2693333))))

(declare-fun bm!735229 () Bool)

(declare-fun call!735234 () (_ BitVec 32))

(assert (=> bm!735229 (= call!735234 (isize!119 (list!19413 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7927797 () Bool)

(declare-fun e!4678663 () Bool)

(assert (=> b!7927797 (= e!4678663 (= call!735233 (bvadd call!735234 #b00000000000000000000000000000001)))))

(declare-fun b!7927798 () Bool)

(assert (=> b!7927798 (= e!4678664 (Cons!74448 (h!80896 (list!19413 (right!57203 (right!57203 t!4440)))) ($colon+!315 (t!390189 (list!19413 (right!57203 (right!57203 t!4440)))) v!5484)))))

(declare-fun b!7927799 () Bool)

(assert (=> b!7927799 (= e!4678663 (= call!735233 call!735234))))

(declare-fun b!7927800 () Bool)

(declare-fun res!3145854 () Bool)

(assert (=> b!7927800 (=> (not res!3145854) (not e!4678665))))

(assert (=> b!7927800 (= res!3145854 (= (content!15783 lt!2693333) ((_ map or) (content!15783 (list!19413 (right!57203 (right!57203 t!4440)))) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun b!7927801 () Bool)

(declare-fun res!3145851 () Bool)

(assert (=> b!7927801 (=> (not res!3145851) (not e!4678665))))

(assert (=> b!7927801 (= res!3145851 e!4678663)))

(declare-fun c!1455690 () Bool)

(assert (=> b!7927801 (= c!1455690 (bvslt (isize!119 (list!19413 (right!57203 (right!57203 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7927802 () Bool)

(assert (=> b!7927802 (= e!4678664 (Cons!74448 v!5484 (list!19413 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7927803 () Bool)

(declare-fun res!3145852 () Bool)

(assert (=> b!7927803 (=> (not res!3145852) (not e!4678665))))

(assert (=> b!7927803 (= res!3145852 (= (size!43248 lt!2693333) (+ (size!43248 (list!19413 (right!57203 (right!57203 t!4440)))) 1)))))

(declare-fun b!7927804 () Bool)

(assert (=> b!7927804 (= e!4678665 (= lt!2693333 (++!18259 (list!19413 (right!57203 (right!57203 t!4440))) (Cons!74448 v!5484 Nil!74448))))))

(assert (= (and d!2368114 c!1455689) b!7927802))

(assert (= (and d!2368114 (not c!1455689)) b!7927798))

(assert (= (and d!2368114 res!3145853) b!7927803))

(assert (= (and b!7927803 res!3145852) b!7927801))

(assert (= (and b!7927801 c!1455690) b!7927797))

(assert (= (and b!7927801 (not c!1455690)) b!7927799))

(assert (= (or b!7927797 b!7927799) bm!735229))

(assert (= (or b!7927797 b!7927799) bm!735228))

(assert (= (and b!7927801 res!3145851) b!7927800))

(assert (= (and b!7927800 res!3145854) b!7927804))

(declare-fun m!8309966 () Bool)

(assert (=> bm!735228 m!8309966))

(declare-fun m!8309968 () Bool)

(assert (=> b!7927800 m!8309968))

(assert (=> b!7927800 m!8308094))

(assert (=> b!7927800 m!8308400))

(assert (=> b!7927800 m!8308156))

(assert (=> bm!735229 m!8308094))

(declare-fun m!8309970 () Bool)

(assert (=> bm!735229 m!8309970))

(assert (=> b!7927801 m!8308094))

(assert (=> b!7927801 m!8309970))

(assert (=> b!7927804 m!8308094))

(declare-fun m!8309972 () Bool)

(assert (=> b!7927804 m!8309972))

(declare-fun m!8309974 () Bool)

(assert (=> b!7927798 m!8309974))

(declare-fun m!8309976 () Bool)

(assert (=> b!7927803 m!8309976))

(assert (=> b!7927803 m!8308094))

(assert (=> b!7927803 m!8308394))

(assert (=> b!7927004 d!2368114))

(assert (=> b!7927004 d!2367582))

(declare-fun d!2368116 () Bool)

(declare-fun c!1455691 () Bool)

(assert (=> d!2368116 (= c!1455691 ((_ is Node!15902) (left!56873 (right!57203 (right!57203 t!4440)))))))

(declare-fun e!4678666 () Bool)

(assert (=> d!2368116 (= (inv!95719 (left!56873 (right!57203 (right!57203 t!4440)))) e!4678666)))

(declare-fun b!7927805 () Bool)

(assert (=> b!7927805 (= e!4678666 (inv!95723 (left!56873 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7927806 () Bool)

(declare-fun e!4678667 () Bool)

(assert (=> b!7927806 (= e!4678666 e!4678667)))

(declare-fun res!3145855 () Bool)

(assert (=> b!7927806 (= res!3145855 (not ((_ is Leaf!30234) (left!56873 (right!57203 (right!57203 t!4440))))))))

(assert (=> b!7927806 (=> res!3145855 e!4678667)))

(declare-fun b!7927807 () Bool)

(assert (=> b!7927807 (= e!4678667 (inv!95724 (left!56873 (right!57203 (right!57203 t!4440)))))))

(assert (= (and d!2368116 c!1455691) b!7927805))

(assert (= (and d!2368116 (not c!1455691)) b!7927806))

(assert (= (and b!7927806 (not res!3145855)) b!7927807))

(declare-fun m!8309978 () Bool)

(assert (=> b!7927805 m!8309978))

(declare-fun m!8309980 () Bool)

(assert (=> b!7927807 m!8309980))

(assert (=> b!7927598 d!2368116))

(declare-fun d!2368118 () Bool)

(declare-fun c!1455692 () Bool)

(assert (=> d!2368118 (= c!1455692 ((_ is Node!15902) (right!57203 (right!57203 (right!57203 t!4440)))))))

(declare-fun e!4678668 () Bool)

(assert (=> d!2368118 (= (inv!95719 (right!57203 (right!57203 (right!57203 t!4440)))) e!4678668)))

(declare-fun b!7927808 () Bool)

(assert (=> b!7927808 (= e!4678668 (inv!95723 (right!57203 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7927809 () Bool)

(declare-fun e!4678669 () Bool)

(assert (=> b!7927809 (= e!4678668 e!4678669)))

(declare-fun res!3145856 () Bool)

(assert (=> b!7927809 (= res!3145856 (not ((_ is Leaf!30234) (right!57203 (right!57203 (right!57203 t!4440))))))))

(assert (=> b!7927809 (=> res!3145856 e!4678669)))

(declare-fun b!7927810 () Bool)

(assert (=> b!7927810 (= e!4678669 (inv!95724 (right!57203 (right!57203 (right!57203 t!4440)))))))

(assert (= (and d!2368118 c!1455692) b!7927808))

(assert (= (and d!2368118 (not c!1455692)) b!7927809))

(assert (= (and b!7927809 (not res!3145856)) b!7927810))

(declare-fun m!8309982 () Bool)

(assert (=> b!7927808 m!8309982))

(declare-fun m!8309984 () Bool)

(assert (=> b!7927810 m!8309984))

(assert (=> b!7927598 d!2368118))

(declare-fun d!2368120 () Bool)

(declare-fun lt!2693334 () Int)

(assert (=> d!2368120 (>= lt!2693334 0)))

(declare-fun e!4678670 () Int)

(assert (=> d!2368120 (= lt!2693334 e!4678670)))

(declare-fun c!1455693 () Bool)

(assert (=> d!2368120 (= c!1455693 ((_ is Nil!74448) lt!2693258))))

(assert (=> d!2368120 (= (size!43248 lt!2693258) lt!2693334)))

(declare-fun b!7927811 () Bool)

(assert (=> b!7927811 (= e!4678670 0)))

(declare-fun b!7927812 () Bool)

(assert (=> b!7927812 (= e!4678670 (+ 1 (size!43248 (t!390189 lt!2693258))))))

(assert (= (and d!2368120 c!1455693) b!7927811))

(assert (= (and d!2368120 (not c!1455693)) b!7927812))

(declare-fun m!8309986 () Bool)

(assert (=> b!7927812 m!8309986))

(assert (=> b!7927465 d!2368120))

(declare-fun d!2368122 () Bool)

(declare-fun lt!2693335 () Int)

(assert (=> d!2368122 (>= lt!2693335 0)))

(declare-fun e!4678671 () Int)

(assert (=> d!2368122 (= lt!2693335 e!4678671)))

(declare-fun c!1455694 () Bool)

(assert (=> d!2368122 (= c!1455694 ((_ is Nil!74448) lt!2693089))))

(assert (=> d!2368122 (= (size!43248 lt!2693089) lt!2693335)))

(declare-fun b!7927813 () Bool)

(assert (=> b!7927813 (= e!4678671 0)))

(declare-fun b!7927814 () Bool)

(assert (=> b!7927814 (= e!4678671 (+ 1 (size!43248 (t!390189 lt!2693089))))))

(assert (= (and d!2368122 c!1455694) b!7927813))

(assert (= (and d!2368122 (not c!1455694)) b!7927814))

(assert (=> b!7927814 m!8309776))

(assert (=> b!7927465 d!2368122))

(declare-fun d!2368124 () Bool)

(declare-fun lt!2693336 () Int)

(assert (=> d!2368124 (>= lt!2693336 0)))

(declare-fun e!4678672 () Int)

(assert (=> d!2368124 (= lt!2693336 e!4678672)))

(declare-fun c!1455695 () Bool)

(assert (=> d!2368124 (= c!1455695 ((_ is Nil!74448) call!735184))))

(assert (=> d!2368124 (= (size!43248 call!735184) lt!2693336)))

(declare-fun b!7927815 () Bool)

(assert (=> b!7927815 (= e!4678672 0)))

(declare-fun b!7927816 () Bool)

(assert (=> b!7927816 (= e!4678672 (+ 1 (size!43248 (t!390189 call!735184))))))

(assert (= (and d!2368124 c!1455695) b!7927815))

(assert (= (and d!2368124 (not c!1455695)) b!7927816))

(declare-fun m!8309988 () Bool)

(assert (=> b!7927816 m!8309988))

(assert (=> b!7927465 d!2368124))

(declare-fun b!7927817 () Bool)

(declare-fun e!4678674 () Bool)

(declare-fun e!4678673 () Bool)

(assert (=> b!7927817 (= e!4678674 e!4678673)))

(declare-fun res!3145858 () Bool)

(assert (=> b!7927817 (=> (not res!3145858) (not e!4678673))))

(assert (=> b!7927817 (= res!3145858 (<= (- 1) (- (height!2217 (left!56873 (left!56873 (left!56873 lt!2692978)))) (height!2217 (right!57203 (left!56873 (left!56873 lt!2692978)))))))))

(declare-fun b!7927819 () Bool)

(declare-fun res!3145861 () Bool)

(assert (=> b!7927819 (=> (not res!3145861) (not e!4678673))))

(assert (=> b!7927819 (= res!3145861 (not (isEmpty!42776 (left!56873 (left!56873 (left!56873 lt!2692978))))))))

(declare-fun b!7927820 () Bool)

(declare-fun res!3145862 () Bool)

(assert (=> b!7927820 (=> (not res!3145862) (not e!4678673))))

(assert (=> b!7927820 (= res!3145862 (isBalanced!4528 (left!56873 (left!56873 (left!56873 lt!2692978)))))))

(declare-fun b!7927821 () Bool)

(declare-fun res!3145857 () Bool)

(assert (=> b!7927821 (=> (not res!3145857) (not e!4678673))))

(assert (=> b!7927821 (= res!3145857 (isBalanced!4528 (right!57203 (left!56873 (left!56873 lt!2692978)))))))

(declare-fun b!7927822 () Bool)

(assert (=> b!7927822 (= e!4678673 (not (isEmpty!42776 (right!57203 (left!56873 (left!56873 lt!2692978))))))))

(declare-fun b!7927818 () Bool)

(declare-fun res!3145859 () Bool)

(assert (=> b!7927818 (=> (not res!3145859) (not e!4678673))))

(assert (=> b!7927818 (= res!3145859 (<= (- (height!2217 (left!56873 (left!56873 (left!56873 lt!2692978)))) (height!2217 (right!57203 (left!56873 (left!56873 lt!2692978))))) 1))))

(declare-fun d!2368126 () Bool)

(declare-fun res!3145860 () Bool)

(assert (=> d!2368126 (=> res!3145860 e!4678674)))

(assert (=> d!2368126 (= res!3145860 (not ((_ is Node!15902) (left!56873 (left!56873 lt!2692978)))))))

(assert (=> d!2368126 (= (isBalanced!4528 (left!56873 (left!56873 lt!2692978))) e!4678674)))

(assert (= (and d!2368126 (not res!3145860)) b!7927817))

(assert (= (and b!7927817 res!3145858) b!7927818))

(assert (= (and b!7927818 res!3145859) b!7927820))

(assert (= (and b!7927820 res!3145862) b!7927821))

(assert (= (and b!7927821 res!3145857) b!7927819))

(assert (= (and b!7927819 res!3145861) b!7927822))

(declare-fun m!8309990 () Bool)

(assert (=> b!7927818 m!8309990))

(declare-fun m!8309992 () Bool)

(assert (=> b!7927818 m!8309992))

(declare-fun m!8309994 () Bool)

(assert (=> b!7927821 m!8309994))

(declare-fun m!8309996 () Bool)

(assert (=> b!7927819 m!8309996))

(declare-fun m!8309998 () Bool)

(assert (=> b!7927820 m!8309998))

(declare-fun m!8310000 () Bool)

(assert (=> b!7927822 m!8310000))

(assert (=> b!7927817 m!8309990))

(assert (=> b!7927817 m!8309992))

(assert (=> b!7927504 d!2368126))

(declare-fun d!2368128 () Bool)

(declare-fun lt!2693337 () (_ BitVec 32))

(assert (=> d!2368128 (and (bvsle #b00000000000000000000000000000000 lt!2693337) (bvsle lt!2693337 #b01111111111111111111111111111111))))

(declare-fun e!4678675 () (_ BitVec 32))

(assert (=> d!2368128 (= lt!2693337 e!4678675)))

(declare-fun c!1455696 () Bool)

(assert (=> d!2368128 (= c!1455696 ((_ is Nil!74448) (t!390189 lt!2693108)))))

(assert (=> d!2368128 (= (isize!119 (t!390189 lt!2693108)) lt!2693337)))

(declare-fun b!7927823 () Bool)

(assert (=> b!7927823 (= e!4678675 #b00000000000000000000000000000000)))

(declare-fun b!7927824 () Bool)

(declare-fun lt!2693338 () (_ BitVec 32))

(assert (=> b!7927824 (= e!4678675 (ite (= lt!2693338 #b01111111111111111111111111111111) lt!2693338 (bvadd #b00000000000000000000000000000001 lt!2693338)))))

(assert (=> b!7927824 (= lt!2693338 (isize!119 (t!390189 (t!390189 lt!2693108))))))

(assert (= (and d!2368128 c!1455696) b!7927823))

(assert (= (and d!2368128 (not c!1455696)) b!7927824))

(declare-fun m!8310002 () Bool)

(assert (=> b!7927824 m!8310002))

(assert (=> b!7927593 d!2368128))

(declare-fun d!2368130 () Bool)

(declare-fun c!1455697 () Bool)

(assert (=> d!2368130 (= c!1455697 ((_ is Node!15902) (left!56873 (left!56873 (left!56873 t!4440)))))))

(declare-fun e!4678676 () Bool)

(assert (=> d!2368130 (= (inv!95719 (left!56873 (left!56873 (left!56873 t!4440)))) e!4678676)))

(declare-fun b!7927825 () Bool)

(assert (=> b!7927825 (= e!4678676 (inv!95723 (left!56873 (left!56873 (left!56873 t!4440)))))))

(declare-fun b!7927826 () Bool)

(declare-fun e!4678677 () Bool)

(assert (=> b!7927826 (= e!4678676 e!4678677)))

(declare-fun res!3145863 () Bool)

(assert (=> b!7927826 (= res!3145863 (not ((_ is Leaf!30234) (left!56873 (left!56873 (left!56873 t!4440))))))))

(assert (=> b!7927826 (=> res!3145863 e!4678677)))

(declare-fun b!7927827 () Bool)

(assert (=> b!7927827 (= e!4678677 (inv!95724 (left!56873 (left!56873 (left!56873 t!4440)))))))

(assert (= (and d!2368130 c!1455697) b!7927825))

(assert (= (and d!2368130 (not c!1455697)) b!7927826))

(assert (= (and b!7927826 (not res!3145863)) b!7927827))

(declare-fun m!8310004 () Bool)

(assert (=> b!7927825 m!8310004))

(declare-fun m!8310006 () Bool)

(assert (=> b!7927827 m!8310006))

(assert (=> b!7927602 d!2368130))

(declare-fun d!2368132 () Bool)

(declare-fun c!1455698 () Bool)

(assert (=> d!2368132 (= c!1455698 ((_ is Node!15902) (right!57203 (left!56873 (left!56873 t!4440)))))))

(declare-fun e!4678678 () Bool)

(assert (=> d!2368132 (= (inv!95719 (right!57203 (left!56873 (left!56873 t!4440)))) e!4678678)))

(declare-fun b!7927828 () Bool)

(assert (=> b!7927828 (= e!4678678 (inv!95723 (right!57203 (left!56873 (left!56873 t!4440)))))))

(declare-fun b!7927829 () Bool)

(declare-fun e!4678679 () Bool)

(assert (=> b!7927829 (= e!4678678 e!4678679)))

(declare-fun res!3145864 () Bool)

(assert (=> b!7927829 (= res!3145864 (not ((_ is Leaf!30234) (right!57203 (left!56873 (left!56873 t!4440))))))))

(assert (=> b!7927829 (=> res!3145864 e!4678679)))

(declare-fun b!7927830 () Bool)

(assert (=> b!7927830 (= e!4678679 (inv!95724 (right!57203 (left!56873 (left!56873 t!4440)))))))

(assert (= (and d!2368132 c!1455698) b!7927828))

(assert (= (and d!2368132 (not c!1455698)) b!7927829))

(assert (= (and b!7927829 (not res!3145864)) b!7927830))

(declare-fun m!8310008 () Bool)

(assert (=> b!7927828 m!8310008))

(declare-fun m!8310010 () Bool)

(assert (=> b!7927830 m!8310010))

(assert (=> b!7927602 d!2368132))

(assert (=> b!7927389 d!2368068))

(assert (=> b!7927389 d!2367874))

(declare-fun b!7927831 () Bool)

(declare-fun e!4678681 () Bool)

(declare-fun e!4678680 () Bool)

(assert (=> b!7927831 (= e!4678681 e!4678680)))

(declare-fun res!3145866 () Bool)

(assert (=> b!7927831 (=> (not res!3145866) (not e!4678680))))

(assert (=> b!7927831 (= res!3145866 (<= (- 1) (- (height!2217 (left!56873 (left!56873 (left!56873 t!4440)))) (height!2217 (right!57203 (left!56873 (left!56873 t!4440)))))))))

(declare-fun b!7927833 () Bool)

(declare-fun res!3145869 () Bool)

(assert (=> b!7927833 (=> (not res!3145869) (not e!4678680))))

(assert (=> b!7927833 (= res!3145869 (not (isEmpty!42776 (left!56873 (left!56873 (left!56873 t!4440))))))))

(declare-fun b!7927834 () Bool)

(declare-fun res!3145870 () Bool)

(assert (=> b!7927834 (=> (not res!3145870) (not e!4678680))))

(assert (=> b!7927834 (= res!3145870 (isBalanced!4528 (left!56873 (left!56873 (left!56873 t!4440)))))))

(declare-fun b!7927835 () Bool)

(declare-fun res!3145865 () Bool)

(assert (=> b!7927835 (=> (not res!3145865) (not e!4678680))))

(assert (=> b!7927835 (= res!3145865 (isBalanced!4528 (right!57203 (left!56873 (left!56873 t!4440)))))))

(declare-fun b!7927836 () Bool)

(assert (=> b!7927836 (= e!4678680 (not (isEmpty!42776 (right!57203 (left!56873 (left!56873 t!4440))))))))

(declare-fun b!7927832 () Bool)

(declare-fun res!3145867 () Bool)

(assert (=> b!7927832 (=> (not res!3145867) (not e!4678680))))

(assert (=> b!7927832 (= res!3145867 (<= (- (height!2217 (left!56873 (left!56873 (left!56873 t!4440)))) (height!2217 (right!57203 (left!56873 (left!56873 t!4440))))) 1))))

(declare-fun d!2368134 () Bool)

(declare-fun res!3145868 () Bool)

(assert (=> d!2368134 (=> res!3145868 e!4678681)))

(assert (=> d!2368134 (= res!3145868 (not ((_ is Node!15902) (left!56873 (left!56873 t!4440)))))))

(assert (=> d!2368134 (= (isBalanced!4528 (left!56873 (left!56873 t!4440))) e!4678681)))

(assert (= (and d!2368134 (not res!3145868)) b!7927831))

(assert (= (and b!7927831 res!3145866) b!7927832))

(assert (= (and b!7927832 res!3145867) b!7927834))

(assert (= (and b!7927834 res!3145870) b!7927835))

(assert (= (and b!7927835 res!3145865) b!7927833))

(assert (= (and b!7927833 res!3145869) b!7927836))

(declare-fun m!8310012 () Bool)

(assert (=> b!7927832 m!8310012))

(declare-fun m!8310014 () Bool)

(assert (=> b!7927832 m!8310014))

(declare-fun m!8310016 () Bool)

(assert (=> b!7927835 m!8310016))

(declare-fun m!8310018 () Bool)

(assert (=> b!7927833 m!8310018))

(declare-fun m!8310020 () Bool)

(assert (=> b!7927834 m!8310020))

(declare-fun m!8310022 () Bool)

(assert (=> b!7927836 m!8310022))

(assert (=> b!7927831 m!8310012))

(assert (=> b!7927831 m!8310014))

(assert (=> b!7927532 d!2368134))

(declare-fun d!2368136 () Bool)

(declare-fun lt!2693339 () Int)

(assert (=> d!2368136 (>= lt!2693339 0)))

(declare-fun e!4678682 () Int)

(assert (=> d!2368136 (= lt!2693339 e!4678682)))

(declare-fun c!1455699 () Bool)

(assert (=> d!2368136 (= c!1455699 ((_ is Nil!74448) lt!2693276))))

(assert (=> d!2368136 (= (size!43248 lt!2693276) lt!2693339)))

(declare-fun b!7927837 () Bool)

(assert (=> b!7927837 (= e!4678682 0)))

(declare-fun b!7927838 () Bool)

(assert (=> b!7927838 (= e!4678682 (+ 1 (size!43248 (t!390189 lt!2693276))))))

(assert (= (and d!2368136 c!1455699) b!7927837))

(assert (= (and d!2368136 (not c!1455699)) b!7927838))

(declare-fun m!8310024 () Bool)

(assert (=> b!7927838 m!8310024))

(assert (=> b!7927576 d!2368136))

(declare-fun d!2368138 () Bool)

(declare-fun lt!2693340 () Int)

(assert (=> d!2368138 (>= lt!2693340 0)))

(declare-fun e!4678683 () Int)

(assert (=> d!2368138 (= lt!2693340 e!4678683)))

(declare-fun c!1455700 () Bool)

(assert (=> d!2368138 (= c!1455700 ((_ is Nil!74448) (ite c!1455404 lt!2693097 lt!2693092)))))

(assert (=> d!2368138 (= (size!43248 (ite c!1455404 lt!2693097 lt!2693092)) lt!2693340)))

(declare-fun b!7927839 () Bool)

(assert (=> b!7927839 (= e!4678683 0)))

(declare-fun b!7927840 () Bool)

(assert (=> b!7927840 (= e!4678683 (+ 1 (size!43248 (t!390189 (ite c!1455404 lt!2693097 lt!2693092)))))))

(assert (= (and d!2368138 c!1455700) b!7927839))

(assert (= (and d!2368138 (not c!1455700)) b!7927840))

(assert (=> b!7927840 m!8309824))

(assert (=> b!7927576 d!2368138))

(declare-fun d!2368140 () Bool)

(declare-fun lt!2693341 () Int)

(assert (=> d!2368140 (>= lt!2693341 0)))

(declare-fun e!4678684 () Int)

(assert (=> d!2368140 (= lt!2693341 e!4678684)))

(declare-fun c!1455701 () Bool)

(assert (=> d!2368140 (= c!1455701 ((_ is Nil!74448) (ite c!1455404 lt!2693099 lt!2693103)))))

(assert (=> d!2368140 (= (size!43248 (ite c!1455404 lt!2693099 lt!2693103)) lt!2693341)))

(declare-fun b!7927841 () Bool)

(assert (=> b!7927841 (= e!4678684 0)))

(declare-fun b!7927842 () Bool)

(assert (=> b!7927842 (= e!4678684 (+ 1 (size!43248 (t!390189 (ite c!1455404 lt!2693099 lt!2693103)))))))

(assert (= (and d!2368140 c!1455701) b!7927841))

(assert (= (and d!2368140 (not c!1455701)) b!7927842))

(declare-fun m!8310026 () Bool)

(assert (=> b!7927842 m!8310026))

(assert (=> b!7927576 d!2368140))

(declare-fun lt!2693342 () Conc!15902)

(declare-fun d!2368142 () Bool)

(assert (=> d!2368142 (= (list!19413 lt!2693342) (++!18259 (list!19413 (ite c!1455444 call!735199 (right!57203 (right!57203 t!4440)))) (list!19413 e!4678279)))))

(declare-fun e!4678686 () Conc!15902)

(assert (=> d!2368142 (= lt!2693342 e!4678686)))

(declare-fun c!1455702 () Bool)

(assert (=> d!2368142 (= c!1455702 (= (ite c!1455444 call!735199 (right!57203 (right!57203 t!4440))) Empty!15902))))

(assert (=> d!2368142 (= (<>!424 (ite c!1455444 call!735199 (right!57203 (right!57203 t!4440))) e!4678279) lt!2693342)))

(declare-fun b!7927845 () Bool)

(declare-fun e!4678685 () Conc!15902)

(assert (=> b!7927845 (= e!4678685 (ite c!1455444 call!735199 (right!57203 (right!57203 t!4440))))))

(declare-fun b!7927844 () Bool)

(assert (=> b!7927844 (= e!4678686 e!4678685)))

(declare-fun c!1455703 () Bool)

(assert (=> b!7927844 (= c!1455703 (= e!4678279 Empty!15902))))

(declare-fun b!7927846 () Bool)

(assert (=> b!7927846 (= e!4678685 (Node!15902 (ite c!1455444 call!735199 (right!57203 (right!57203 t!4440))) e!4678279 (+ (size!43249 (ite c!1455444 call!735199 (right!57203 (right!57203 t!4440)))) (size!43249 e!4678279)) (+ (max!0 (height!2217 (ite c!1455444 call!735199 (right!57203 (right!57203 t!4440)))) (height!2217 e!4678279)) 1)))))

(declare-fun b!7927843 () Bool)

(assert (=> b!7927843 (= e!4678686 e!4678279)))

(assert (= (and d!2368142 c!1455702) b!7927843))

(assert (= (and d!2368142 (not c!1455702)) b!7927844))

(assert (= (and b!7927844 c!1455703) b!7927845))

(assert (= (and b!7927844 (not c!1455703)) b!7927846))

(declare-fun m!8310028 () Bool)

(assert (=> d!2368142 m!8310028))

(declare-fun m!8310030 () Bool)

(assert (=> d!2368142 m!8310030))

(declare-fun m!8310032 () Bool)

(assert (=> d!2368142 m!8310032))

(assert (=> d!2368142 m!8310030))

(assert (=> d!2368142 m!8310032))

(declare-fun m!8310034 () Bool)

(assert (=> d!2368142 m!8310034))

(declare-fun m!8310036 () Bool)

(assert (=> b!7927846 m!8310036))

(declare-fun m!8310038 () Bool)

(assert (=> b!7927846 m!8310038))

(declare-fun m!8310040 () Bool)

(assert (=> b!7927846 m!8310040))

(declare-fun m!8310042 () Bool)

(assert (=> b!7927846 m!8310042))

(declare-fun m!8310044 () Bool)

(assert (=> b!7927846 m!8310044))

(assert (=> b!7927846 m!8310038))

(assert (=> b!7927846 m!8310036))

(assert (=> bm!735195 d!2368142))

(declare-fun b!7927847 () Bool)

(declare-fun e!4678687 () List!74572)

(assert (=> b!7927847 (= e!4678687 (list!19413 (right!57203 lt!2693114)))))

(declare-fun b!7927850 () Bool)

(declare-fun e!4678688 () Bool)

(declare-fun lt!2693343 () List!74572)

(assert (=> b!7927850 (= e!4678688 (or (not (= (list!19413 (right!57203 lt!2693114)) Nil!74448)) (= lt!2693343 (list!19413 (left!56873 lt!2693114)))))))

(declare-fun b!7927848 () Bool)

(assert (=> b!7927848 (= e!4678687 (Cons!74448 (h!80896 (list!19413 (left!56873 lt!2693114))) (++!18259 (t!390189 (list!19413 (left!56873 lt!2693114))) (list!19413 (right!57203 lt!2693114)))))))

(declare-fun b!7927849 () Bool)

(declare-fun res!3145872 () Bool)

(assert (=> b!7927849 (=> (not res!3145872) (not e!4678688))))

(assert (=> b!7927849 (= res!3145872 (= (size!43248 lt!2693343) (+ (size!43248 (list!19413 (left!56873 lt!2693114))) (size!43248 (list!19413 (right!57203 lt!2693114))))))))

(declare-fun d!2368144 () Bool)

(assert (=> d!2368144 e!4678688))

(declare-fun res!3145871 () Bool)

(assert (=> d!2368144 (=> (not res!3145871) (not e!4678688))))

(assert (=> d!2368144 (= res!3145871 (= (content!15783 lt!2693343) ((_ map or) (content!15783 (list!19413 (left!56873 lt!2693114))) (content!15783 (list!19413 (right!57203 lt!2693114))))))))

(assert (=> d!2368144 (= lt!2693343 e!4678687)))

(declare-fun c!1455704 () Bool)

(assert (=> d!2368144 (= c!1455704 ((_ is Nil!74448) (list!19413 (left!56873 lt!2693114))))))

(assert (=> d!2368144 (= (++!18259 (list!19413 (left!56873 lt!2693114)) (list!19413 (right!57203 lt!2693114))) lt!2693343)))

(assert (= (and d!2368144 c!1455704) b!7927847))

(assert (= (and d!2368144 (not c!1455704)) b!7927848))

(assert (= (and d!2368144 res!3145871) b!7927849))

(assert (= (and b!7927849 res!3145872) b!7927850))

(assert (=> b!7927848 m!8308700))

(declare-fun m!8310046 () Bool)

(assert (=> b!7927848 m!8310046))

(declare-fun m!8310048 () Bool)

(assert (=> b!7927849 m!8310048))

(assert (=> b!7927849 m!8308698))

(declare-fun m!8310050 () Bool)

(assert (=> b!7927849 m!8310050))

(assert (=> b!7927849 m!8308700))

(declare-fun m!8310052 () Bool)

(assert (=> b!7927849 m!8310052))

(declare-fun m!8310054 () Bool)

(assert (=> d!2368144 m!8310054))

(assert (=> d!2368144 m!8308698))

(declare-fun m!8310056 () Bool)

(assert (=> d!2368144 m!8310056))

(assert (=> d!2368144 m!8308700))

(declare-fun m!8310058 () Bool)

(assert (=> d!2368144 m!8310058))

(assert (=> b!7927202 d!2368144))

(declare-fun b!7927854 () Bool)

(declare-fun e!4678690 () List!74572)

(assert (=> b!7927854 (= e!4678690 (++!18259 (list!19413 (left!56873 (left!56873 lt!2693114))) (list!19413 (right!57203 (left!56873 lt!2693114)))))))

(declare-fun b!7927852 () Bool)

(declare-fun e!4678689 () List!74572)

(assert (=> b!7927852 (= e!4678689 e!4678690)))

(declare-fun c!1455706 () Bool)

(assert (=> b!7927852 (= c!1455706 ((_ is Leaf!30234) (left!56873 lt!2693114)))))

(declare-fun b!7927853 () Bool)

(assert (=> b!7927853 (= e!4678690 (list!19415 (xs!19290 (left!56873 lt!2693114))))))

(declare-fun b!7927851 () Bool)

(assert (=> b!7927851 (= e!4678689 Nil!74448)))

(declare-fun d!2368146 () Bool)

(declare-fun c!1455705 () Bool)

(assert (=> d!2368146 (= c!1455705 ((_ is Empty!15902) (left!56873 lt!2693114)))))

(assert (=> d!2368146 (= (list!19413 (left!56873 lt!2693114)) e!4678689)))

(assert (= (and d!2368146 c!1455705) b!7927851))

(assert (= (and d!2368146 (not c!1455705)) b!7927852))

(assert (= (and b!7927852 c!1455706) b!7927853))

(assert (= (and b!7927852 (not c!1455706)) b!7927854))

(declare-fun m!8310060 () Bool)

(assert (=> b!7927854 m!8310060))

(declare-fun m!8310062 () Bool)

(assert (=> b!7927854 m!8310062))

(assert (=> b!7927854 m!8310060))

(assert (=> b!7927854 m!8310062))

(declare-fun m!8310064 () Bool)

(assert (=> b!7927854 m!8310064))

(declare-fun m!8310066 () Bool)

(assert (=> b!7927853 m!8310066))

(assert (=> b!7927202 d!2368146))

(declare-fun b!7927858 () Bool)

(declare-fun e!4678692 () List!74572)

(assert (=> b!7927858 (= e!4678692 (++!18259 (list!19413 (left!56873 (right!57203 lt!2693114))) (list!19413 (right!57203 (right!57203 lt!2693114)))))))

(declare-fun b!7927856 () Bool)

(declare-fun e!4678691 () List!74572)

(assert (=> b!7927856 (= e!4678691 e!4678692)))

(declare-fun c!1455708 () Bool)

(assert (=> b!7927856 (= c!1455708 ((_ is Leaf!30234) (right!57203 lt!2693114)))))

(declare-fun b!7927857 () Bool)

(assert (=> b!7927857 (= e!4678692 (list!19415 (xs!19290 (right!57203 lt!2693114))))))

(declare-fun b!7927855 () Bool)

(assert (=> b!7927855 (= e!4678691 Nil!74448)))

(declare-fun d!2368148 () Bool)

(declare-fun c!1455707 () Bool)

(assert (=> d!2368148 (= c!1455707 ((_ is Empty!15902) (right!57203 lt!2693114)))))

(assert (=> d!2368148 (= (list!19413 (right!57203 lt!2693114)) e!4678691)))

(assert (= (and d!2368148 c!1455707) b!7927855))

(assert (= (and d!2368148 (not c!1455707)) b!7927856))

(assert (= (and b!7927856 c!1455708) b!7927857))

(assert (= (and b!7927856 (not c!1455708)) b!7927858))

(declare-fun m!8310068 () Bool)

(assert (=> b!7927858 m!8310068))

(declare-fun m!8310070 () Bool)

(assert (=> b!7927858 m!8310070))

(assert (=> b!7927858 m!8310068))

(assert (=> b!7927858 m!8310070))

(declare-fun m!8310072 () Bool)

(assert (=> b!7927858 m!8310072))

(declare-fun m!8310074 () Bool)

(assert (=> b!7927857 m!8310074))

(assert (=> b!7927202 d!2368148))

(declare-fun b!7927859 () Bool)

(declare-fun e!4678693 () List!74572)

(assert (=> b!7927859 (= e!4678693 (list!19413 (right!57203 (left!56873 lt!2693100))))))

(declare-fun b!7927862 () Bool)

(declare-fun e!4678694 () Bool)

(declare-fun lt!2693344 () List!74572)

(assert (=> b!7927862 (= e!4678694 (or (not (= (list!19413 (right!57203 (left!56873 lt!2693100))) Nil!74448)) (= lt!2693344 (list!19413 (left!56873 (left!56873 lt!2693100))))))))

(declare-fun b!7927860 () Bool)

(assert (=> b!7927860 (= e!4678693 (Cons!74448 (h!80896 (list!19413 (left!56873 (left!56873 lt!2693100)))) (++!18259 (t!390189 (list!19413 (left!56873 (left!56873 lt!2693100)))) (list!19413 (right!57203 (left!56873 lt!2693100))))))))

(declare-fun b!7927861 () Bool)

(declare-fun res!3145874 () Bool)

(assert (=> b!7927861 (=> (not res!3145874) (not e!4678694))))

(assert (=> b!7927861 (= res!3145874 (= (size!43248 lt!2693344) (+ (size!43248 (list!19413 (left!56873 (left!56873 lt!2693100)))) (size!43248 (list!19413 (right!57203 (left!56873 lt!2693100)))))))))

(declare-fun d!2368150 () Bool)

(assert (=> d!2368150 e!4678694))

(declare-fun res!3145873 () Bool)

(assert (=> d!2368150 (=> (not res!3145873) (not e!4678694))))

(assert (=> d!2368150 (= res!3145873 (= (content!15783 lt!2693344) ((_ map or) (content!15783 (list!19413 (left!56873 (left!56873 lt!2693100)))) (content!15783 (list!19413 (right!57203 (left!56873 lt!2693100)))))))))

(assert (=> d!2368150 (= lt!2693344 e!4678693)))

(declare-fun c!1455709 () Bool)

(assert (=> d!2368150 (= c!1455709 ((_ is Nil!74448) (list!19413 (left!56873 (left!56873 lt!2693100)))))))

(assert (=> d!2368150 (= (++!18259 (list!19413 (left!56873 (left!56873 lt!2693100))) (list!19413 (right!57203 (left!56873 lt!2693100)))) lt!2693344)))

(assert (= (and d!2368150 c!1455709) b!7927859))

(assert (= (and d!2368150 (not c!1455709)) b!7927860))

(assert (= (and d!2368150 res!3145873) b!7927861))

(assert (= (and b!7927861 res!3145874) b!7927862))

(assert (=> b!7927860 m!8309304))

(declare-fun m!8310076 () Bool)

(assert (=> b!7927860 m!8310076))

(declare-fun m!8310078 () Bool)

(assert (=> b!7927861 m!8310078))

(assert (=> b!7927861 m!8309302))

(declare-fun m!8310080 () Bool)

(assert (=> b!7927861 m!8310080))

(assert (=> b!7927861 m!8309304))

(declare-fun m!8310082 () Bool)

(assert (=> b!7927861 m!8310082))

(declare-fun m!8310084 () Bool)

(assert (=> d!2368150 m!8310084))

(assert (=> d!2368150 m!8309302))

(declare-fun m!8310086 () Bool)

(assert (=> d!2368150 m!8310086))

(assert (=> d!2368150 m!8309304))

(declare-fun m!8310088 () Bool)

(assert (=> d!2368150 m!8310088))

(assert (=> b!7927478 d!2368150))

(declare-fun b!7927866 () Bool)

(declare-fun e!4678696 () List!74572)

(assert (=> b!7927866 (= e!4678696 (++!18259 (list!19413 (left!56873 (left!56873 (left!56873 lt!2693100)))) (list!19413 (right!57203 (left!56873 (left!56873 lt!2693100))))))))

(declare-fun b!7927864 () Bool)

(declare-fun e!4678695 () List!74572)

(assert (=> b!7927864 (= e!4678695 e!4678696)))

(declare-fun c!1455711 () Bool)

(assert (=> b!7927864 (= c!1455711 ((_ is Leaf!30234) (left!56873 (left!56873 lt!2693100))))))

(declare-fun b!7927865 () Bool)

(assert (=> b!7927865 (= e!4678696 (list!19415 (xs!19290 (left!56873 (left!56873 lt!2693100)))))))

(declare-fun b!7927863 () Bool)

(assert (=> b!7927863 (= e!4678695 Nil!74448)))

(declare-fun d!2368152 () Bool)

(declare-fun c!1455710 () Bool)

(assert (=> d!2368152 (= c!1455710 ((_ is Empty!15902) (left!56873 (left!56873 lt!2693100))))))

(assert (=> d!2368152 (= (list!19413 (left!56873 (left!56873 lt!2693100))) e!4678695)))

(assert (= (and d!2368152 c!1455710) b!7927863))

(assert (= (and d!2368152 (not c!1455710)) b!7927864))

(assert (= (and b!7927864 c!1455711) b!7927865))

(assert (= (and b!7927864 (not c!1455711)) b!7927866))

(declare-fun m!8310090 () Bool)

(assert (=> b!7927866 m!8310090))

(declare-fun m!8310092 () Bool)

(assert (=> b!7927866 m!8310092))

(assert (=> b!7927866 m!8310090))

(assert (=> b!7927866 m!8310092))

(declare-fun m!8310094 () Bool)

(assert (=> b!7927866 m!8310094))

(declare-fun m!8310096 () Bool)

(assert (=> b!7927865 m!8310096))

(assert (=> b!7927478 d!2368152))

(declare-fun b!7927870 () Bool)

(declare-fun e!4678698 () List!74572)

(assert (=> b!7927870 (= e!4678698 (++!18259 (list!19413 (left!56873 (right!57203 (left!56873 lt!2693100)))) (list!19413 (right!57203 (right!57203 (left!56873 lt!2693100))))))))

(declare-fun b!7927868 () Bool)

(declare-fun e!4678697 () List!74572)

(assert (=> b!7927868 (= e!4678697 e!4678698)))

(declare-fun c!1455713 () Bool)

(assert (=> b!7927868 (= c!1455713 ((_ is Leaf!30234) (right!57203 (left!56873 lt!2693100))))))

(declare-fun b!7927869 () Bool)

(assert (=> b!7927869 (= e!4678698 (list!19415 (xs!19290 (right!57203 (left!56873 lt!2693100)))))))

(declare-fun b!7927867 () Bool)

(assert (=> b!7927867 (= e!4678697 Nil!74448)))

(declare-fun d!2368154 () Bool)

(declare-fun c!1455712 () Bool)

(assert (=> d!2368154 (= c!1455712 ((_ is Empty!15902) (right!57203 (left!56873 lt!2693100))))))

(assert (=> d!2368154 (= (list!19413 (right!57203 (left!56873 lt!2693100))) e!4678697)))

(assert (= (and d!2368154 c!1455712) b!7927867))

(assert (= (and d!2368154 (not c!1455712)) b!7927868))

(assert (= (and b!7927868 c!1455713) b!7927869))

(assert (= (and b!7927868 (not c!1455713)) b!7927870))

(declare-fun m!8310098 () Bool)

(assert (=> b!7927870 m!8310098))

(declare-fun m!8310100 () Bool)

(assert (=> b!7927870 m!8310100))

(assert (=> b!7927870 m!8310098))

(assert (=> b!7927870 m!8310100))

(declare-fun m!8310102 () Bool)

(assert (=> b!7927870 m!8310102))

(declare-fun m!8310104 () Bool)

(assert (=> b!7927869 m!8310104))

(assert (=> b!7927478 d!2368154))

(declare-fun d!2368156 () Bool)

(declare-fun c!1455714 () Bool)

(assert (=> d!2368156 (= c!1455714 ((_ is Nil!74448) lt!2693274))))

(declare-fun e!4678699 () (InoxSet T!145804))

(assert (=> d!2368156 (= (content!15783 lt!2693274) e!4678699)))

(declare-fun b!7927871 () Bool)

(assert (=> b!7927871 (= e!4678699 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927872 () Bool)

(assert (=> b!7927872 (= e!4678699 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693274) true) (content!15783 (t!390189 lt!2693274))))))

(assert (= (and d!2368156 c!1455714) b!7927871))

(assert (= (and d!2368156 (not c!1455714)) b!7927872))

(declare-fun m!8310106 () Bool)

(assert (=> b!7927872 m!8310106))

(declare-fun m!8310108 () Bool)

(assert (=> b!7927872 m!8310108))

(assert (=> d!2367932 d!2368156))

(declare-fun d!2368158 () Bool)

(declare-fun c!1455715 () Bool)

(assert (=> d!2368158 (= c!1455715 ((_ is Nil!74448) (t!390189 (++!18259 lt!2692976 lt!2692979))))))

(declare-fun e!4678700 () (InoxSet T!145804))

(assert (=> d!2368158 (= (content!15783 (t!390189 (++!18259 lt!2692976 lt!2692979))) e!4678700)))

(declare-fun b!7927873 () Bool)

(assert (=> b!7927873 (= e!4678700 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927874 () Bool)

(assert (=> b!7927874 (= e!4678700 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 (++!18259 lt!2692976 lt!2692979))) true) (content!15783 (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979))))))))

(assert (= (and d!2368158 c!1455715) b!7927873))

(assert (= (and d!2368158 (not c!1455715)) b!7927874))

(declare-fun m!8310110 () Bool)

(assert (=> b!7927874 m!8310110))

(declare-fun m!8310112 () Bool)

(assert (=> b!7927874 m!8310112))

(assert (=> d!2367932 d!2368158))

(assert (=> d!2367932 d!2367800))

(declare-fun d!2368160 () Bool)

(declare-fun lt!2693345 () Int)

(assert (=> d!2368160 (>= lt!2693345 0)))

(declare-fun e!4678701 () Int)

(assert (=> d!2368160 (= lt!2693345 e!4678701)))

(declare-fun c!1455716 () Bool)

(assert (=> d!2368160 (= c!1455716 ((_ is Nil!74448) (t!390189 lt!2693118)))))

(assert (=> d!2368160 (= (size!43248 (t!390189 lt!2693118)) lt!2693345)))

(declare-fun b!7927875 () Bool)

(assert (=> b!7927875 (= e!4678701 0)))

(declare-fun b!7927876 () Bool)

(assert (=> b!7927876 (= e!4678701 (+ 1 (size!43248 (t!390189 (t!390189 lt!2693118)))))))

(assert (= (and d!2368160 c!1455716) b!7927875))

(assert (= (and d!2368160 (not c!1455716)) b!7927876))

(declare-fun m!8310114 () Bool)

(assert (=> b!7927876 m!8310114))

(assert (=> b!7927153 d!2368160))

(declare-fun b!7927877 () Bool)

(declare-fun e!4678703 () Bool)

(declare-fun e!4678702 () Bool)

(assert (=> b!7927877 (= e!4678703 e!4678702)))

(declare-fun res!3145876 () Bool)

(assert (=> b!7927877 (=> (not res!3145876) (not e!4678702))))

(assert (=> b!7927877 (= res!3145876 (<= (- 1) (- (height!2217 (left!56873 (right!57203 (right!57203 lt!2692978)))) (height!2217 (right!57203 (right!57203 (right!57203 lt!2692978)))))))))

(declare-fun b!7927879 () Bool)

(declare-fun res!3145879 () Bool)

(assert (=> b!7927879 (=> (not res!3145879) (not e!4678702))))

(assert (=> b!7927879 (= res!3145879 (not (isEmpty!42776 (left!56873 (right!57203 (right!57203 lt!2692978))))))))

(declare-fun b!7927880 () Bool)

(declare-fun res!3145880 () Bool)

(assert (=> b!7927880 (=> (not res!3145880) (not e!4678702))))

(assert (=> b!7927880 (= res!3145880 (isBalanced!4528 (left!56873 (right!57203 (right!57203 lt!2692978)))))))

(declare-fun b!7927881 () Bool)

(declare-fun res!3145875 () Bool)

(assert (=> b!7927881 (=> (not res!3145875) (not e!4678702))))

(assert (=> b!7927881 (= res!3145875 (isBalanced!4528 (right!57203 (right!57203 (right!57203 lt!2692978)))))))

(declare-fun b!7927882 () Bool)

(assert (=> b!7927882 (= e!4678702 (not (isEmpty!42776 (right!57203 (right!57203 (right!57203 lt!2692978))))))))

(declare-fun b!7927878 () Bool)

(declare-fun res!3145877 () Bool)

(assert (=> b!7927878 (=> (not res!3145877) (not e!4678702))))

(assert (=> b!7927878 (= res!3145877 (<= (- (height!2217 (left!56873 (right!57203 (right!57203 lt!2692978)))) (height!2217 (right!57203 (right!57203 (right!57203 lt!2692978))))) 1))))

(declare-fun d!2368162 () Bool)

(declare-fun res!3145878 () Bool)

(assert (=> d!2368162 (=> res!3145878 e!4678703)))

(assert (=> d!2368162 (= res!3145878 (not ((_ is Node!15902) (right!57203 (right!57203 lt!2692978)))))))

(assert (=> d!2368162 (= (isBalanced!4528 (right!57203 (right!57203 lt!2692978))) e!4678703)))

(assert (= (and d!2368162 (not res!3145878)) b!7927877))

(assert (= (and b!7927877 res!3145876) b!7927878))

(assert (= (and b!7927878 res!3145877) b!7927880))

(assert (= (and b!7927880 res!3145880) b!7927881))

(assert (= (and b!7927881 res!3145875) b!7927879))

(assert (= (and b!7927879 res!3145879) b!7927882))

(declare-fun m!8310116 () Bool)

(assert (=> b!7927878 m!8310116))

(declare-fun m!8310118 () Bool)

(assert (=> b!7927878 m!8310118))

(declare-fun m!8310120 () Bool)

(assert (=> b!7927881 m!8310120))

(declare-fun m!8310122 () Bool)

(assert (=> b!7927879 m!8310122))

(declare-fun m!8310124 () Bool)

(assert (=> b!7927880 m!8310124))

(declare-fun m!8310126 () Bool)

(assert (=> b!7927882 m!8310126))

(assert (=> b!7927877 m!8310116))

(assert (=> b!7927877 m!8310118))

(assert (=> b!7927133 d!2368162))

(declare-fun d!2368164 () Bool)

(declare-fun lt!2693346 () Int)

(assert (=> d!2368164 (>= lt!2693346 0)))

(declare-fun e!4678704 () Int)

(assert (=> d!2368164 (= lt!2693346 e!4678704)))

(declare-fun c!1455717 () Bool)

(assert (=> d!2368164 (= c!1455717 ((_ is Nil!74448) lt!2693144))))

(assert (=> d!2368164 (= (size!43248 lt!2693144) lt!2693346)))

(declare-fun b!7927883 () Bool)

(assert (=> b!7927883 (= e!4678704 0)))

(declare-fun b!7927884 () Bool)

(assert (=> b!7927884 (= e!4678704 (+ 1 (size!43248 (t!390189 lt!2693144))))))

(assert (= (and d!2368164 c!1455717) b!7927883))

(assert (= (and d!2368164 (not c!1455717)) b!7927884))

(declare-fun m!8310128 () Bool)

(assert (=> b!7927884 m!8310128))

(assert (=> b!7927038 d!2368164))

(declare-fun d!2368166 () Bool)

(declare-fun lt!2693347 () Int)

(assert (=> d!2368166 (>= lt!2693347 0)))

(declare-fun e!4678705 () Int)

(assert (=> d!2368166 (= lt!2693347 e!4678705)))

(declare-fun c!1455718 () Bool)

(assert (=> d!2368166 (= c!1455718 ((_ is Nil!74448) (list!19413 (left!56873 (right!57203 t!4440)))))))

(assert (=> d!2368166 (= (size!43248 (list!19413 (left!56873 (right!57203 t!4440)))) lt!2693347)))

(declare-fun b!7927885 () Bool)

(assert (=> b!7927885 (= e!4678705 0)))

(declare-fun b!7927886 () Bool)

(assert (=> b!7927886 (= e!4678705 (+ 1 (size!43248 (t!390189 (list!19413 (left!56873 (right!57203 t!4440)))))))))

(assert (= (and d!2368166 c!1455718) b!7927885))

(assert (= (and d!2368166 (not c!1455718)) b!7927886))

(assert (=> b!7927886 m!8309848))

(assert (=> b!7927038 d!2368166))

(declare-fun d!2368168 () Bool)

(declare-fun lt!2693348 () Int)

(assert (=> d!2368168 (>= lt!2693348 0)))

(declare-fun e!4678706 () Int)

(assert (=> d!2368168 (= lt!2693348 e!4678706)))

(declare-fun c!1455719 () Bool)

(assert (=> d!2368168 (= c!1455719 ((_ is Nil!74448) (list!19413 (right!57203 (right!57203 t!4440)))))))

(assert (=> d!2368168 (= (size!43248 (list!19413 (right!57203 (right!57203 t!4440)))) lt!2693348)))

(declare-fun b!7927887 () Bool)

(assert (=> b!7927887 (= e!4678706 0)))

(declare-fun b!7927888 () Bool)

(assert (=> b!7927888 (= e!4678706 (+ 1 (size!43248 (t!390189 (list!19413 (right!57203 (right!57203 t!4440)))))))))

(assert (= (and d!2368168 c!1455719) b!7927887))

(assert (= (and d!2368168 (not c!1455719)) b!7927888))

(declare-fun m!8310130 () Bool)

(assert (=> b!7927888 m!8310130))

(assert (=> b!7927038 d!2368168))

(declare-fun d!2368170 () Bool)

(declare-fun res!3145881 () Bool)

(declare-fun e!4678707 () Bool)

(assert (=> d!2368170 (=> (not res!3145881) (not e!4678707))))

(assert (=> d!2368170 (= res!3145881 (= (csize!32034 (right!57203 (right!57203 t!4440))) (+ (size!43249 (left!56873 (right!57203 (right!57203 t!4440)))) (size!43249 (right!57203 (right!57203 (right!57203 t!4440)))))))))

(assert (=> d!2368170 (= (inv!95723 (right!57203 (right!57203 t!4440))) e!4678707)))

(declare-fun b!7927889 () Bool)

(declare-fun res!3145882 () Bool)

(assert (=> b!7927889 (=> (not res!3145882) (not e!4678707))))

(assert (=> b!7927889 (= res!3145882 (and (not (= (left!56873 (right!57203 (right!57203 t!4440))) Empty!15902)) (not (= (right!57203 (right!57203 (right!57203 t!4440))) Empty!15902))))))

(declare-fun b!7927890 () Bool)

(declare-fun res!3145883 () Bool)

(assert (=> b!7927890 (=> (not res!3145883) (not e!4678707))))

(assert (=> b!7927890 (= res!3145883 (= (cheight!16113 (right!57203 (right!57203 t!4440))) (+ (max!0 (height!2217 (left!56873 (right!57203 (right!57203 t!4440)))) (height!2217 (right!57203 (right!57203 (right!57203 t!4440))))) 1)))))

(declare-fun b!7927891 () Bool)

(assert (=> b!7927891 (= e!4678707 (<= 0 (cheight!16113 (right!57203 (right!57203 t!4440)))))))

(assert (= (and d!2368170 res!3145881) b!7927889))

(assert (= (and b!7927889 res!3145882) b!7927890))

(assert (= (and b!7927890 res!3145883) b!7927891))

(declare-fun m!8310132 () Bool)

(assert (=> d!2368170 m!8310132))

(declare-fun m!8310134 () Bool)

(assert (=> d!2368170 m!8310134))

(assert (=> b!7927890 m!8308352))

(declare-fun m!8310136 () Bool)

(assert (=> b!7927890 m!8310136))

(assert (=> b!7927890 m!8308352))

(assert (=> b!7927890 m!8310136))

(declare-fun m!8310138 () Bool)

(assert (=> b!7927890 m!8310138))

(assert (=> b!7927514 d!2368170))

(declare-fun d!2368172 () Bool)

(assert (=> d!2368172 (= (list!19415 (xs!19290 (left!56873 lt!2692978))) (innerList!15990 (xs!19290 (left!56873 lt!2692978))))))

(assert (=> b!7927491 d!2368172))

(declare-fun b!7927892 () Bool)

(declare-fun e!4678708 () List!74572)

(assert (=> b!7927892 (= e!4678708 (list!19413 (right!57203 lt!2692978)))))

(declare-fun b!7927895 () Bool)

(declare-fun e!4678709 () Bool)

(declare-fun lt!2693349 () List!74572)

(assert (=> b!7927895 (= e!4678709 (or (not (= (list!19413 (right!57203 lt!2692978)) Nil!74448)) (= lt!2693349 (t!390189 (list!19413 (left!56873 lt!2692978))))))))

(declare-fun b!7927893 () Bool)

(assert (=> b!7927893 (= e!4678708 (Cons!74448 (h!80896 (t!390189 (list!19413 (left!56873 lt!2692978)))) (++!18259 (t!390189 (t!390189 (list!19413 (left!56873 lt!2692978)))) (list!19413 (right!57203 lt!2692978)))))))

(declare-fun b!7927894 () Bool)

(declare-fun res!3145885 () Bool)

(assert (=> b!7927894 (=> (not res!3145885) (not e!4678709))))

(assert (=> b!7927894 (= res!3145885 (= (size!43248 lt!2693349) (+ (size!43248 (t!390189 (list!19413 (left!56873 lt!2692978)))) (size!43248 (list!19413 (right!57203 lt!2692978))))))))

(declare-fun d!2368174 () Bool)

(assert (=> d!2368174 e!4678709))

(declare-fun res!3145884 () Bool)

(assert (=> d!2368174 (=> (not res!3145884) (not e!4678709))))

(assert (=> d!2368174 (= res!3145884 (= (content!15783 lt!2693349) ((_ map or) (content!15783 (t!390189 (list!19413 (left!56873 lt!2692978)))) (content!15783 (list!19413 (right!57203 lt!2692978))))))))

(assert (=> d!2368174 (= lt!2693349 e!4678708)))

(declare-fun c!1455720 () Bool)

(assert (=> d!2368174 (= c!1455720 ((_ is Nil!74448) (t!390189 (list!19413 (left!56873 lt!2692978)))))))

(assert (=> d!2368174 (= (++!18259 (t!390189 (list!19413 (left!56873 lt!2692978))) (list!19413 (right!57203 lt!2692978))) lt!2693349)))

(assert (= (and d!2368174 c!1455720) b!7927892))

(assert (= (and d!2368174 (not c!1455720)) b!7927893))

(assert (= (and d!2368174 res!3145884) b!7927894))

(assert (= (and b!7927894 res!3145885) b!7927895))

(assert (=> b!7927893 m!8308144))

(declare-fun m!8310140 () Bool)

(assert (=> b!7927893 m!8310140))

(declare-fun m!8310142 () Bool)

(assert (=> b!7927894 m!8310142))

(declare-fun m!8310144 () Bool)

(assert (=> b!7927894 m!8310144))

(assert (=> b!7927894 m!8308144))

(assert (=> b!7927894 m!8309330))

(declare-fun m!8310146 () Bool)

(assert (=> d!2368174 m!8310146))

(declare-fun m!8310148 () Bool)

(assert (=> d!2368174 m!8310148))

(assert (=> d!2368174 m!8308144))

(assert (=> d!2368174 m!8309336))

(assert (=> b!7927486 d!2368174))

(declare-fun d!2368176 () Bool)

(declare-fun lt!2693350 () Int)

(assert (=> d!2368176 (>= lt!2693350 0)))

(declare-fun e!4678710 () Int)

(assert (=> d!2368176 (= lt!2693350 e!4678710)))

(declare-fun c!1455721 () Bool)

(assert (=> d!2368176 (= c!1455721 ((_ is Nil!74448) lt!2693260))))

(assert (=> d!2368176 (= (size!43248 lt!2693260) lt!2693350)))

(declare-fun b!7927896 () Bool)

(assert (=> b!7927896 (= e!4678710 0)))

(declare-fun b!7927897 () Bool)

(assert (=> b!7927897 (= e!4678710 (+ 1 (size!43248 (t!390189 lt!2693260))))))

(assert (= (and d!2368176 c!1455721) b!7927896))

(assert (= (and d!2368176 (not c!1455721)) b!7927897))

(declare-fun m!8310150 () Bool)

(assert (=> b!7927897 m!8310150))

(assert (=> b!7927473 d!2368176))

(declare-fun d!2368178 () Bool)

(declare-fun lt!2693351 () Int)

(assert (=> d!2368178 (>= lt!2693351 0)))

(declare-fun e!4678711 () Int)

(assert (=> d!2368178 (= lt!2693351 e!4678711)))

(declare-fun c!1455722 () Bool)

(assert (=> d!2368178 (= c!1455722 ((_ is Nil!74448) lt!2693091))))

(assert (=> d!2368178 (= (size!43248 lt!2693091) lt!2693351)))

(declare-fun b!7927898 () Bool)

(assert (=> b!7927898 (= e!4678711 0)))

(declare-fun b!7927899 () Bool)

(assert (=> b!7927899 (= e!4678711 (+ 1 (size!43248 (t!390189 lt!2693091))))))

(assert (= (and d!2368178 c!1455722) b!7927898))

(assert (= (and d!2368178 (not c!1455722)) b!7927899))

(assert (=> b!7927899 m!8309882))

(assert (=> b!7927473 d!2368178))

(declare-fun d!2368180 () Bool)

(declare-fun lt!2693352 () Int)

(assert (=> d!2368180 (>= lt!2693352 0)))

(declare-fun e!4678712 () Int)

(assert (=> d!2368180 (= lt!2693352 e!4678712)))

(declare-fun c!1455723 () Bool)

(assert (=> d!2368180 (= c!1455723 ((_ is Nil!74448) call!735186))))

(assert (=> d!2368180 (= (size!43248 call!735186) lt!2693352)))

(declare-fun b!7927900 () Bool)

(assert (=> b!7927900 (= e!4678712 0)))

(declare-fun b!7927901 () Bool)

(assert (=> b!7927901 (= e!4678712 (+ 1 (size!43248 (t!390189 call!735186))))))

(assert (= (and d!2368180 c!1455723) b!7927900))

(assert (= (and d!2368180 (not c!1455723)) b!7927901))

(declare-fun m!8310152 () Bool)

(assert (=> b!7927901 m!8310152))

(assert (=> b!7927473 d!2368180))

(declare-fun d!2368182 () Bool)

(declare-fun e!4678715 () Bool)

(assert (=> d!2368182 e!4678715))

(declare-fun res!3145888 () Bool)

(assert (=> d!2368182 (=> (not res!3145888) (not e!4678715))))

(declare-fun lt!2693353 () List!74572)

(assert (=> d!2368182 (= res!3145888 ((_ is Cons!74448) lt!2693353))))

(declare-fun e!4678714 () List!74572)

(assert (=> d!2368182 (= lt!2693353 e!4678714)))

(declare-fun c!1455724 () Bool)

(assert (=> d!2368182 (= c!1455724 ((_ is Nil!74448) (t!390189 (list!19413 (right!57203 t!4440)))))))

(assert (=> d!2368182 (= ($colon+!315 (t!390189 (list!19413 (right!57203 t!4440))) v!5484) lt!2693353)))

(declare-fun bm!735230 () Bool)

(declare-fun call!735235 () (_ BitVec 32))

(assert (=> bm!735230 (= call!735235 (isize!119 lt!2693353))))

(declare-fun bm!735231 () Bool)

(declare-fun call!735236 () (_ BitVec 32))

(assert (=> bm!735231 (= call!735236 (isize!119 (t!390189 (list!19413 (right!57203 t!4440)))))))

(declare-fun b!7927902 () Bool)

(declare-fun e!4678713 () Bool)

(assert (=> b!7927902 (= e!4678713 (= call!735235 (bvadd call!735236 #b00000000000000000000000000000001)))))

(declare-fun b!7927903 () Bool)

(assert (=> b!7927903 (= e!4678714 (Cons!74448 (h!80896 (t!390189 (list!19413 (right!57203 t!4440)))) ($colon+!315 (t!390189 (t!390189 (list!19413 (right!57203 t!4440)))) v!5484)))))

(declare-fun b!7927904 () Bool)

(assert (=> b!7927904 (= e!4678713 (= call!735235 call!735236))))

(declare-fun b!7927905 () Bool)

(declare-fun res!3145889 () Bool)

(assert (=> b!7927905 (=> (not res!3145889) (not e!4678715))))

(assert (=> b!7927905 (= res!3145889 (= (content!15783 lt!2693353) ((_ map or) (content!15783 (t!390189 (list!19413 (right!57203 t!4440)))) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun b!7927906 () Bool)

(declare-fun res!3145886 () Bool)

(assert (=> b!7927906 (=> (not res!3145886) (not e!4678715))))

(assert (=> b!7927906 (= res!3145886 e!4678713)))

(declare-fun c!1455725 () Bool)

(assert (=> b!7927906 (= c!1455725 (bvslt (isize!119 (t!390189 (list!19413 (right!57203 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7927907 () Bool)

(assert (=> b!7927907 (= e!4678714 (Cons!74448 v!5484 (t!390189 (list!19413 (right!57203 t!4440)))))))

(declare-fun b!7927908 () Bool)

(declare-fun res!3145887 () Bool)

(assert (=> b!7927908 (=> (not res!3145887) (not e!4678715))))

(assert (=> b!7927908 (= res!3145887 (= (size!43248 lt!2693353) (+ (size!43248 (t!390189 (list!19413 (right!57203 t!4440)))) 1)))))

(declare-fun b!7927909 () Bool)

(assert (=> b!7927909 (= e!4678715 (= lt!2693353 (++!18259 (t!390189 (list!19413 (right!57203 t!4440))) (Cons!74448 v!5484 Nil!74448))))))

(assert (= (and d!2368182 c!1455724) b!7927907))

(assert (= (and d!2368182 (not c!1455724)) b!7927903))

(assert (= (and d!2368182 res!3145888) b!7927908))

(assert (= (and b!7927908 res!3145887) b!7927906))

(assert (= (and b!7927906 c!1455725) b!7927902))

(assert (= (and b!7927906 (not c!1455725)) b!7927904))

(assert (= (or b!7927902 b!7927904) bm!735231))

(assert (= (or b!7927902 b!7927904) bm!735230))

(assert (= (and b!7927906 res!3145886) b!7927905))

(assert (= (and b!7927905 res!3145889) b!7927909))

(declare-fun m!8310154 () Bool)

(assert (=> bm!735230 m!8310154))

(declare-fun m!8310156 () Bool)

(assert (=> b!7927905 m!8310156))

(declare-fun m!8310158 () Bool)

(assert (=> b!7927905 m!8310158))

(assert (=> b!7927905 m!8308156))

(assert (=> bm!735231 m!8309700))

(assert (=> b!7927906 m!8309700))

(assert (=> b!7927909 m!8309606))

(declare-fun m!8310160 () Bool)

(assert (=> b!7927903 m!8310160))

(declare-fun m!8310162 () Bool)

(assert (=> b!7927908 m!8310162))

(assert (=> b!7927908 m!8309900))

(assert (=> b!7927522 d!2368182))

(declare-fun d!2368184 () Bool)

(declare-fun lt!2693354 () Int)

(assert (=> d!2368184 (>= lt!2693354 0)))

(declare-fun e!4678716 () Int)

(assert (=> d!2368184 (= lt!2693354 e!4678716)))

(declare-fun c!1455726 () Bool)

(assert (=> d!2368184 (= c!1455726 ((_ is Nil!74448) (t!390189 (innerList!15990 (xs!19290 t!4440)))))))

(assert (=> d!2368184 (= (size!43248 (t!390189 (innerList!15990 (xs!19290 t!4440)))) lt!2693354)))

(declare-fun b!7927910 () Bool)

(assert (=> b!7927910 (= e!4678716 0)))

(declare-fun b!7927911 () Bool)

(assert (=> b!7927911 (= e!4678716 (+ 1 (size!43248 (t!390189 (t!390189 (innerList!15990 (xs!19290 t!4440)))))))))

(assert (= (and d!2368184 c!1455726) b!7927910))

(assert (= (and d!2368184 (not c!1455726)) b!7927911))

(declare-fun m!8310164 () Bool)

(assert (=> b!7927911 m!8310164))

(assert (=> b!7927480 d!2368184))

(declare-fun d!2368186 () Bool)

(declare-fun lt!2693355 () Int)

(assert (=> d!2368186 (>= lt!2693355 0)))

(declare-fun e!4678717 () Int)

(assert (=> d!2368186 (= lt!2693355 e!4678717)))

(declare-fun c!1455727 () Bool)

(assert (=> d!2368186 (= c!1455727 ((_ is Nil!74448) (list!19415 (xs!19290 t!4440))))))

(assert (=> d!2368186 (= (size!43248 (list!19415 (xs!19290 t!4440))) lt!2693355)))

(declare-fun b!7927912 () Bool)

(assert (=> b!7927912 (= e!4678717 0)))

(declare-fun b!7927913 () Bool)

(assert (=> b!7927913 (= e!4678717 (+ 1 (size!43248 (t!390189 (list!19415 (xs!19290 t!4440))))))))

(assert (= (and d!2368186 c!1455727) b!7927912))

(assert (= (and d!2368186 (not c!1455727)) b!7927913))

(declare-fun m!8310166 () Bool)

(assert (=> b!7927913 m!8310166))

(assert (=> d!2367930 d!2368186))

(assert (=> d!2367930 d!2367896))

(declare-fun b!7927914 () Bool)

(declare-fun e!4678718 () List!74572)

(assert (=> b!7927914 (= e!4678718 (list!19413 (right!57203 lt!2693102)))))

(declare-fun b!7927917 () Bool)

(declare-fun e!4678719 () Bool)

(declare-fun lt!2693356 () List!74572)

(assert (=> b!7927917 (= e!4678719 (or (not (= (list!19413 (right!57203 lt!2693102)) Nil!74448)) (= lt!2693356 (list!19413 (left!56873 lt!2693102)))))))

(declare-fun b!7927915 () Bool)

(assert (=> b!7927915 (= e!4678718 (Cons!74448 (h!80896 (list!19413 (left!56873 lt!2693102))) (++!18259 (t!390189 (list!19413 (left!56873 lt!2693102))) (list!19413 (right!57203 lt!2693102)))))))

(declare-fun b!7927916 () Bool)

(declare-fun res!3145891 () Bool)

(assert (=> b!7927916 (=> (not res!3145891) (not e!4678719))))

(assert (=> b!7927916 (= res!3145891 (= (size!43248 lt!2693356) (+ (size!43248 (list!19413 (left!56873 lt!2693102))) (size!43248 (list!19413 (right!57203 lt!2693102))))))))

(declare-fun d!2368188 () Bool)

(assert (=> d!2368188 e!4678719))

(declare-fun res!3145890 () Bool)

(assert (=> d!2368188 (=> (not res!3145890) (not e!4678719))))

(assert (=> d!2368188 (= res!3145890 (= (content!15783 lt!2693356) ((_ map or) (content!15783 (list!19413 (left!56873 lt!2693102))) (content!15783 (list!19413 (right!57203 lt!2693102))))))))

(assert (=> d!2368188 (= lt!2693356 e!4678718)))

(declare-fun c!1455728 () Bool)

(assert (=> d!2368188 (= c!1455728 ((_ is Nil!74448) (list!19413 (left!56873 lt!2693102))))))

(assert (=> d!2368188 (= (++!18259 (list!19413 (left!56873 lt!2693102)) (list!19413 (right!57203 lt!2693102))) lt!2693356)))

(assert (= (and d!2368188 c!1455728) b!7927914))

(assert (= (and d!2368188 (not c!1455728)) b!7927915))

(assert (= (and d!2368188 res!3145890) b!7927916))

(assert (= (and b!7927916 res!3145891) b!7927917))

(assert (=> b!7927915 m!8309398))

(declare-fun m!8310168 () Bool)

(assert (=> b!7927915 m!8310168))

(declare-fun m!8310170 () Bool)

(assert (=> b!7927916 m!8310170))

(assert (=> b!7927916 m!8309396))

(declare-fun m!8310172 () Bool)

(assert (=> b!7927916 m!8310172))

(assert (=> b!7927916 m!8309398))

(declare-fun m!8310174 () Bool)

(assert (=> b!7927916 m!8310174))

(declare-fun m!8310176 () Bool)

(assert (=> d!2368188 m!8310176))

(assert (=> d!2368188 m!8309396))

(declare-fun m!8310178 () Bool)

(assert (=> d!2368188 m!8310178))

(assert (=> d!2368188 m!8309398))

(declare-fun m!8310180 () Bool)

(assert (=> d!2368188 m!8310180))

(assert (=> b!7927520 d!2368188))

(declare-fun b!7927921 () Bool)

(declare-fun e!4678721 () List!74572)

(assert (=> b!7927921 (= e!4678721 (++!18259 (list!19413 (left!56873 (left!56873 lt!2693102))) (list!19413 (right!57203 (left!56873 lt!2693102)))))))

(declare-fun b!7927919 () Bool)

(declare-fun e!4678720 () List!74572)

(assert (=> b!7927919 (= e!4678720 e!4678721)))

(declare-fun c!1455730 () Bool)

(assert (=> b!7927919 (= c!1455730 ((_ is Leaf!30234) (left!56873 lt!2693102)))))

(declare-fun b!7927920 () Bool)

(assert (=> b!7927920 (= e!4678721 (list!19415 (xs!19290 (left!56873 lt!2693102))))))

(declare-fun b!7927918 () Bool)

(assert (=> b!7927918 (= e!4678720 Nil!74448)))

(declare-fun d!2368190 () Bool)

(declare-fun c!1455729 () Bool)

(assert (=> d!2368190 (= c!1455729 ((_ is Empty!15902) (left!56873 lt!2693102)))))

(assert (=> d!2368190 (= (list!19413 (left!56873 lt!2693102)) e!4678720)))

(assert (= (and d!2368190 c!1455729) b!7927918))

(assert (= (and d!2368190 (not c!1455729)) b!7927919))

(assert (= (and b!7927919 c!1455730) b!7927920))

(assert (= (and b!7927919 (not c!1455730)) b!7927921))

(declare-fun m!8310182 () Bool)

(assert (=> b!7927921 m!8310182))

(declare-fun m!8310184 () Bool)

(assert (=> b!7927921 m!8310184))

(assert (=> b!7927921 m!8310182))

(assert (=> b!7927921 m!8310184))

(declare-fun m!8310186 () Bool)

(assert (=> b!7927921 m!8310186))

(declare-fun m!8310188 () Bool)

(assert (=> b!7927920 m!8310188))

(assert (=> b!7927520 d!2368190))

(declare-fun b!7927925 () Bool)

(declare-fun e!4678723 () List!74572)

(assert (=> b!7927925 (= e!4678723 (++!18259 (list!19413 (left!56873 (right!57203 lt!2693102))) (list!19413 (right!57203 (right!57203 lt!2693102)))))))

(declare-fun b!7927923 () Bool)

(declare-fun e!4678722 () List!74572)

(assert (=> b!7927923 (= e!4678722 e!4678723)))

(declare-fun c!1455732 () Bool)

(assert (=> b!7927923 (= c!1455732 ((_ is Leaf!30234) (right!57203 lt!2693102)))))

(declare-fun b!7927924 () Bool)

(assert (=> b!7927924 (= e!4678723 (list!19415 (xs!19290 (right!57203 lt!2693102))))))

(declare-fun b!7927922 () Bool)

(assert (=> b!7927922 (= e!4678722 Nil!74448)))

(declare-fun d!2368192 () Bool)

(declare-fun c!1455731 () Bool)

(assert (=> d!2368192 (= c!1455731 ((_ is Empty!15902) (right!57203 lt!2693102)))))

(assert (=> d!2368192 (= (list!19413 (right!57203 lt!2693102)) e!4678722)))

(assert (= (and d!2368192 c!1455731) b!7927922))

(assert (= (and d!2368192 (not c!1455731)) b!7927923))

(assert (= (and b!7927923 c!1455732) b!7927924))

(assert (= (and b!7927923 (not c!1455732)) b!7927925))

(declare-fun m!8310190 () Bool)

(assert (=> b!7927925 m!8310190))

(declare-fun m!8310192 () Bool)

(assert (=> b!7927925 m!8310192))

(assert (=> b!7927925 m!8310190))

(assert (=> b!7927925 m!8310192))

(declare-fun m!8310194 () Bool)

(assert (=> b!7927925 m!8310194))

(declare-fun m!8310196 () Bool)

(assert (=> b!7927924 m!8310196))

(assert (=> b!7927520 d!2368192))

(declare-fun d!2368194 () Bool)

(declare-fun lt!2693357 () Int)

(assert (=> d!2368194 (>= lt!2693357 0)))

(declare-fun e!4678724 () Int)

(assert (=> d!2368194 (= lt!2693357 e!4678724)))

(declare-fun c!1455733 () Bool)

(assert (=> d!2368194 (= c!1455733 ((_ is Nil!74448) lt!2693154))))

(assert (=> d!2368194 (= (size!43248 lt!2693154) lt!2693357)))

(declare-fun b!7927926 () Bool)

(assert (=> b!7927926 (= e!4678724 0)))

(declare-fun b!7927927 () Bool)

(assert (=> b!7927927 (= e!4678724 (+ 1 (size!43248 (t!390189 lt!2693154))))))

(assert (= (and d!2368194 c!1455733) b!7927926))

(assert (= (and d!2368194 (not c!1455733)) b!7927927))

(declare-fun m!8310198 () Bool)

(assert (=> b!7927927 m!8310198))

(assert (=> b!7927098 d!2368194))

(declare-fun d!2368196 () Bool)

(declare-fun lt!2693358 () Int)

(assert (=> d!2368196 (>= lt!2693358 0)))

(declare-fun e!4678725 () Int)

(assert (=> d!2368196 (= lt!2693358 e!4678725)))

(declare-fun c!1455734 () Bool)

(assert (=> d!2368196 (= c!1455734 ((_ is Nil!74448) (list!19413 (left!56873 (left!56873 t!4440)))))))

(assert (=> d!2368196 (= (size!43248 (list!19413 (left!56873 (left!56873 t!4440)))) lt!2693358)))

(declare-fun b!7927928 () Bool)

(assert (=> b!7927928 (= e!4678725 0)))

(declare-fun b!7927929 () Bool)

(assert (=> b!7927929 (= e!4678725 (+ 1 (size!43248 (t!390189 (list!19413 (left!56873 (left!56873 t!4440)))))))))

(assert (= (and d!2368196 c!1455734) b!7927928))

(assert (= (and d!2368196 (not c!1455734)) b!7927929))

(assert (=> b!7927929 m!8309946))

(assert (=> b!7927098 d!2368196))

(declare-fun d!2368198 () Bool)

(declare-fun lt!2693359 () Int)

(assert (=> d!2368198 (>= lt!2693359 0)))

(declare-fun e!4678726 () Int)

(assert (=> d!2368198 (= lt!2693359 e!4678726)))

(declare-fun c!1455735 () Bool)

(assert (=> d!2368198 (= c!1455735 ((_ is Nil!74448) (list!19413 (right!57203 (left!56873 t!4440)))))))

(assert (=> d!2368198 (= (size!43248 (list!19413 (right!57203 (left!56873 t!4440)))) lt!2693359)))

(declare-fun b!7927930 () Bool)

(assert (=> b!7927930 (= e!4678726 0)))

(declare-fun b!7927931 () Bool)

(assert (=> b!7927931 (= e!4678726 (+ 1 (size!43248 (t!390189 (list!19413 (right!57203 (left!56873 t!4440)))))))))

(assert (= (and d!2368198 c!1455735) b!7927930))

(assert (= (and d!2368198 (not c!1455735)) b!7927931))

(declare-fun m!8310200 () Bool)

(assert (=> b!7927931 m!8310200))

(assert (=> b!7927098 d!2368198))

(declare-fun d!2368200 () Bool)

(declare-fun lt!2693360 () Int)

(assert (=> d!2368200 (>= lt!2693360 0)))

(declare-fun e!4678727 () Int)

(assert (=> d!2368200 (= lt!2693360 e!4678727)))

(declare-fun c!1455736 () Bool)

(assert (=> d!2368200 (= c!1455736 ((_ is Nil!74448) lt!2693259))))

(assert (=> d!2368200 (= (size!43248 lt!2693259) lt!2693360)))

(declare-fun b!7927932 () Bool)

(assert (=> b!7927932 (= e!4678727 0)))

(declare-fun b!7927933 () Bool)

(assert (=> b!7927933 (= e!4678727 (+ 1 (size!43248 (t!390189 lt!2693259))))))

(assert (= (and d!2368200 c!1455736) b!7927932))

(assert (= (and d!2368200 (not c!1455736)) b!7927933))

(declare-fun m!8310202 () Bool)

(assert (=> b!7927933 m!8310202))

(assert (=> b!7927469 d!2368200))

(declare-fun d!2368202 () Bool)

(declare-fun lt!2693361 () Int)

(assert (=> d!2368202 (>= lt!2693361 0)))

(declare-fun e!4678728 () Int)

(assert (=> d!2368202 (= lt!2693361 e!4678728)))

(declare-fun c!1455737 () Bool)

(assert (=> d!2368202 (= c!1455737 ((_ is Nil!74448) call!735188))))

(assert (=> d!2368202 (= (size!43248 call!735188) lt!2693361)))

(declare-fun b!7927934 () Bool)

(assert (=> b!7927934 (= e!4678728 0)))

(declare-fun b!7927935 () Bool)

(assert (=> b!7927935 (= e!4678728 (+ 1 (size!43248 (t!390189 call!735188))))))

(assert (= (and d!2368202 c!1455737) b!7927934))

(assert (= (and d!2368202 (not c!1455737)) b!7927935))

(assert (=> b!7927935 m!8309938))

(assert (=> b!7927469 d!2368202))

(declare-fun d!2368204 () Bool)

(declare-fun lt!2693362 () Int)

(assert (=> d!2368204 (>= lt!2693362 0)))

(declare-fun e!4678729 () Int)

(assert (=> d!2368204 (= lt!2693362 e!4678729)))

(declare-fun c!1455738 () Bool)

(assert (=> d!2368204 (= c!1455738 ((_ is Nil!74448) lt!2693103))))

(assert (=> d!2368204 (= (size!43248 lt!2693103) lt!2693362)))

(declare-fun b!7927936 () Bool)

(assert (=> b!7927936 (= e!4678729 0)))

(declare-fun b!7927937 () Bool)

(assert (=> b!7927937 (= e!4678729 (+ 1 (size!43248 (t!390189 lt!2693103))))))

(assert (= (and d!2368204 c!1455738) b!7927936))

(assert (= (and d!2368204 (not c!1455738)) b!7927937))

(declare-fun m!8310204 () Bool)

(assert (=> b!7927937 m!8310204))

(assert (=> b!7927469 d!2368204))

(declare-fun d!2368206 () Bool)

(declare-fun c!1455739 () Bool)

(assert (=> d!2368206 (= c!1455739 ((_ is Nil!74448) (t!390189 lt!2693119)))))

(declare-fun e!4678730 () (InoxSet T!145804))

(assert (=> d!2368206 (= (content!15783 (t!390189 lt!2693119)) e!4678730)))

(declare-fun b!7927938 () Bool)

(assert (=> b!7927938 (= e!4678730 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927939 () Bool)

(assert (=> b!7927939 (= e!4678730 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 lt!2693119)) true) (content!15783 (t!390189 (t!390189 lt!2693119)))))))

(assert (= (and d!2368206 c!1455739) b!7927938))

(assert (= (and d!2368206 (not c!1455739)) b!7927939))

(declare-fun m!8310206 () Bool)

(assert (=> b!7927939 m!8310206))

(declare-fun m!8310208 () Bool)

(assert (=> b!7927939 m!8310208))

(assert (=> b!7927374 d!2368206))

(declare-fun b!7927940 () Bool)

(declare-fun e!4678731 () List!74572)

(assert (=> b!7927940 (= e!4678731 (list!19413 (right!57203 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7927943 () Bool)

(declare-fun e!4678732 () Bool)

(declare-fun lt!2693363 () List!74572)

(assert (=> b!7927943 (= e!4678732 (or (not (= (list!19413 (right!57203 (right!57203 (left!56873 t!4440)))) Nil!74448)) (= lt!2693363 (list!19413 (left!56873 (right!57203 (left!56873 t!4440)))))))))

(declare-fun b!7927941 () Bool)

(assert (=> b!7927941 (= e!4678731 (Cons!74448 (h!80896 (list!19413 (left!56873 (right!57203 (left!56873 t!4440))))) (++!18259 (t!390189 (list!19413 (left!56873 (right!57203 (left!56873 t!4440))))) (list!19413 (right!57203 (right!57203 (left!56873 t!4440)))))))))

(declare-fun b!7927942 () Bool)

(declare-fun res!3145893 () Bool)

(assert (=> b!7927942 (=> (not res!3145893) (not e!4678732))))

(assert (=> b!7927942 (= res!3145893 (= (size!43248 lt!2693363) (+ (size!43248 (list!19413 (left!56873 (right!57203 (left!56873 t!4440))))) (size!43248 (list!19413 (right!57203 (right!57203 (left!56873 t!4440))))))))))

(declare-fun d!2368208 () Bool)

(assert (=> d!2368208 e!4678732))

(declare-fun res!3145892 () Bool)

(assert (=> d!2368208 (=> (not res!3145892) (not e!4678732))))

(assert (=> d!2368208 (= res!3145892 (= (content!15783 lt!2693363) ((_ map or) (content!15783 (list!19413 (left!56873 (right!57203 (left!56873 t!4440))))) (content!15783 (list!19413 (right!57203 (right!57203 (left!56873 t!4440))))))))))

(assert (=> d!2368208 (= lt!2693363 e!4678731)))

(declare-fun c!1455740 () Bool)

(assert (=> d!2368208 (= c!1455740 ((_ is Nil!74448) (list!19413 (left!56873 (right!57203 (left!56873 t!4440))))))))

(assert (=> d!2368208 (= (++!18259 (list!19413 (left!56873 (right!57203 (left!56873 t!4440)))) (list!19413 (right!57203 (right!57203 (left!56873 t!4440))))) lt!2693363)))

(assert (= (and d!2368208 c!1455740) b!7927940))

(assert (= (and d!2368208 (not c!1455740)) b!7927941))

(assert (= (and d!2368208 res!3145892) b!7927942))

(assert (= (and b!7927942 res!3145893) b!7927943))

(assert (=> b!7927941 m!8308558))

(declare-fun m!8310210 () Bool)

(assert (=> b!7927941 m!8310210))

(declare-fun m!8310212 () Bool)

(assert (=> b!7927942 m!8310212))

(assert (=> b!7927942 m!8308556))

(declare-fun m!8310214 () Bool)

(assert (=> b!7927942 m!8310214))

(assert (=> b!7927942 m!8308558))

(declare-fun m!8310216 () Bool)

(assert (=> b!7927942 m!8310216))

(declare-fun m!8310218 () Bool)

(assert (=> d!2368208 m!8310218))

(assert (=> d!2368208 m!8308556))

(declare-fun m!8310220 () Bool)

(assert (=> d!2368208 m!8310220))

(assert (=> d!2368208 m!8308558))

(declare-fun m!8310222 () Bool)

(assert (=> d!2368208 m!8310222))

(assert (=> b!7927115 d!2368208))

(declare-fun b!7927947 () Bool)

(declare-fun e!4678734 () List!74572)

(assert (=> b!7927947 (= e!4678734 (++!18259 (list!19413 (left!56873 (left!56873 (right!57203 (left!56873 t!4440))))) (list!19413 (right!57203 (left!56873 (right!57203 (left!56873 t!4440)))))))))

(declare-fun b!7927945 () Bool)

(declare-fun e!4678733 () List!74572)

(assert (=> b!7927945 (= e!4678733 e!4678734)))

(declare-fun c!1455742 () Bool)

(assert (=> b!7927945 (= c!1455742 ((_ is Leaf!30234) (left!56873 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7927946 () Bool)

(assert (=> b!7927946 (= e!4678734 (list!19415 (xs!19290 (left!56873 (right!57203 (left!56873 t!4440))))))))

(declare-fun b!7927944 () Bool)

(assert (=> b!7927944 (= e!4678733 Nil!74448)))

(declare-fun d!2368210 () Bool)

(declare-fun c!1455741 () Bool)

(assert (=> d!2368210 (= c!1455741 ((_ is Empty!15902) (left!56873 (right!57203 (left!56873 t!4440)))))))

(assert (=> d!2368210 (= (list!19413 (left!56873 (right!57203 (left!56873 t!4440)))) e!4678733)))

(assert (= (and d!2368210 c!1455741) b!7927944))

(assert (= (and d!2368210 (not c!1455741)) b!7927945))

(assert (= (and b!7927945 c!1455742) b!7927946))

(assert (= (and b!7927945 (not c!1455742)) b!7927947))

(declare-fun m!8310224 () Bool)

(assert (=> b!7927947 m!8310224))

(declare-fun m!8310226 () Bool)

(assert (=> b!7927947 m!8310226))

(assert (=> b!7927947 m!8310224))

(assert (=> b!7927947 m!8310226))

(declare-fun m!8310228 () Bool)

(assert (=> b!7927947 m!8310228))

(declare-fun m!8310230 () Bool)

(assert (=> b!7927946 m!8310230))

(assert (=> b!7927115 d!2368210))

(declare-fun b!7927951 () Bool)

(declare-fun e!4678736 () List!74572)

(assert (=> b!7927951 (= e!4678736 (++!18259 (list!19413 (left!56873 (right!57203 (right!57203 (left!56873 t!4440))))) (list!19413 (right!57203 (right!57203 (right!57203 (left!56873 t!4440)))))))))

(declare-fun b!7927949 () Bool)

(declare-fun e!4678735 () List!74572)

(assert (=> b!7927949 (= e!4678735 e!4678736)))

(declare-fun c!1455744 () Bool)

(assert (=> b!7927949 (= c!1455744 ((_ is Leaf!30234) (right!57203 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7927950 () Bool)

(assert (=> b!7927950 (= e!4678736 (list!19415 (xs!19290 (right!57203 (right!57203 (left!56873 t!4440))))))))

(declare-fun b!7927948 () Bool)

(assert (=> b!7927948 (= e!4678735 Nil!74448)))

(declare-fun d!2368212 () Bool)

(declare-fun c!1455743 () Bool)

(assert (=> d!2368212 (= c!1455743 ((_ is Empty!15902) (right!57203 (right!57203 (left!56873 t!4440)))))))

(assert (=> d!2368212 (= (list!19413 (right!57203 (right!57203 (left!56873 t!4440)))) e!4678735)))

(assert (= (and d!2368212 c!1455743) b!7927948))

(assert (= (and d!2368212 (not c!1455743)) b!7927949))

(assert (= (and b!7927949 c!1455744) b!7927950))

(assert (= (and b!7927949 (not c!1455744)) b!7927951))

(declare-fun m!8310232 () Bool)

(assert (=> b!7927951 m!8310232))

(declare-fun m!8310234 () Bool)

(assert (=> b!7927951 m!8310234))

(assert (=> b!7927951 m!8310232))

(assert (=> b!7927951 m!8310234))

(declare-fun m!8310236 () Bool)

(assert (=> b!7927951 m!8310236))

(declare-fun m!8310238 () Bool)

(assert (=> b!7927950 m!8310238))

(assert (=> b!7927115 d!2368212))

(declare-fun d!2368214 () Bool)

(assert (=> d!2368214 (= (inv!95720 (xs!19290 (right!57203 (right!57203 t!4440)))) (<= (size!43248 (innerList!15990 (xs!19290 (right!57203 (right!57203 t!4440))))) 2147483647))))

(declare-fun bs!1968874 () Bool)

(assert (= bs!1968874 d!2368214))

(declare-fun m!8310240 () Bool)

(assert (=> bs!1968874 m!8310240))

(assert (=> b!7927599 d!2368214))

(declare-fun d!2368216 () Bool)

(declare-fun lt!2693364 () Int)

(assert (=> d!2368216 (>= lt!2693364 0)))

(declare-fun e!4678737 () Int)

(assert (=> d!2368216 (= lt!2693364 e!4678737)))

(declare-fun c!1455745 () Bool)

(assert (=> d!2368216 (= c!1455745 ((_ is Nil!74448) lt!2693204))))

(assert (=> d!2368216 (= (size!43248 lt!2693204) lt!2693364)))

(declare-fun b!7927952 () Bool)

(assert (=> b!7927952 (= e!4678737 0)))

(declare-fun b!7927953 () Bool)

(assert (=> b!7927953 (= e!4678737 (+ 1 (size!43248 (t!390189 lt!2693204))))))

(assert (= (and d!2368216 c!1455745) b!7927952))

(assert (= (and d!2368216 (not c!1455745)) b!7927953))

(declare-fun m!8310242 () Bool)

(assert (=> b!7927953 m!8310242))

(assert (=> b!7927297 d!2368216))

(assert (=> b!7927297 d!2367926))

(declare-fun d!2368218 () Bool)

(declare-fun lt!2693365 () Int)

(assert (=> d!2368218 (>= lt!2693365 0)))

(declare-fun e!4678738 () Int)

(assert (=> d!2368218 (= lt!2693365 e!4678738)))

(declare-fun c!1455746 () Bool)

(assert (=> d!2368218 (= c!1455746 ((_ is Nil!74448) (Cons!74448 v!5484 Nil!74448)))))

(assert (=> d!2368218 (= (size!43248 (Cons!74448 v!5484 Nil!74448)) lt!2693365)))

(declare-fun b!7927954 () Bool)

(assert (=> b!7927954 (= e!4678738 0)))

(declare-fun b!7927955 () Bool)

(assert (=> b!7927955 (= e!4678738 (+ 1 (size!43248 (t!390189 (Cons!74448 v!5484 Nil!74448)))))))

(assert (= (and d!2368218 c!1455746) b!7927954))

(assert (= (and d!2368218 (not c!1455746)) b!7927955))

(declare-fun m!8310244 () Bool)

(assert (=> b!7927955 m!8310244))

(assert (=> b!7927297 d!2368218))

(declare-fun d!2368220 () Bool)

(declare-fun c!1455747 () Bool)

(assert (=> d!2368220 (= c!1455747 ((_ is Nil!74448) lt!2693144))))

(declare-fun e!4678739 () (InoxSet T!145804))

(assert (=> d!2368220 (= (content!15783 lt!2693144) e!4678739)))

(declare-fun b!7927956 () Bool)

(assert (=> b!7927956 (= e!4678739 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927957 () Bool)

(assert (=> b!7927957 (= e!4678739 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693144) true) (content!15783 (t!390189 lt!2693144))))))

(assert (= (and d!2368220 c!1455747) b!7927956))

(assert (= (and d!2368220 (not c!1455747)) b!7927957))

(declare-fun m!8310246 () Bool)

(assert (=> b!7927957 m!8310246))

(declare-fun m!8310248 () Bool)

(assert (=> b!7927957 m!8310248))

(assert (=> d!2367574 d!2368220))

(declare-fun d!2368222 () Bool)

(declare-fun c!1455748 () Bool)

(assert (=> d!2368222 (= c!1455748 ((_ is Nil!74448) (list!19413 (left!56873 (right!57203 t!4440)))))))

(declare-fun e!4678740 () (InoxSet T!145804))

(assert (=> d!2368222 (= (content!15783 (list!19413 (left!56873 (right!57203 t!4440)))) e!4678740)))

(declare-fun b!7927958 () Bool)

(assert (=> b!7927958 (= e!4678740 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927959 () Bool)

(assert (=> b!7927959 (= e!4678740 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 (left!56873 (right!57203 t!4440)))) true) (content!15783 (t!390189 (list!19413 (left!56873 (right!57203 t!4440)))))))))

(assert (= (and d!2368222 c!1455748) b!7927958))

(assert (= (and d!2368222 (not c!1455748)) b!7927959))

(declare-fun m!8310250 () Bool)

(assert (=> b!7927959 m!8310250))

(assert (=> b!7927959 m!8309852))

(assert (=> d!2367574 d!2368222))

(declare-fun d!2368224 () Bool)

(declare-fun c!1455749 () Bool)

(assert (=> d!2368224 (= c!1455749 ((_ is Nil!74448) (list!19413 (right!57203 (right!57203 t!4440)))))))

(declare-fun e!4678741 () (InoxSet T!145804))

(assert (=> d!2368224 (= (content!15783 (list!19413 (right!57203 (right!57203 t!4440)))) e!4678741)))

(declare-fun b!7927960 () Bool)

(assert (=> b!7927960 (= e!4678741 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927961 () Bool)

(assert (=> b!7927961 (= e!4678741 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 (right!57203 (right!57203 t!4440)))) true) (content!15783 (t!390189 (list!19413 (right!57203 (right!57203 t!4440)))))))))

(assert (= (and d!2368224 c!1455749) b!7927960))

(assert (= (and d!2368224 (not c!1455749)) b!7927961))

(declare-fun m!8310252 () Bool)

(assert (=> b!7927961 m!8310252))

(declare-fun m!8310254 () Bool)

(assert (=> b!7927961 m!8310254))

(assert (=> d!2367574 d!2368224))

(declare-fun e!4678742 () List!74572)

(declare-fun b!7927962 () Bool)

(assert (=> b!7927962 (= e!4678742 (ite c!1455443 lt!2693126 lt!2693137))))

(declare-fun lt!2693366 () List!74572)

(declare-fun b!7927965 () Bool)

(declare-fun e!4678743 () Bool)

(assert (=> b!7927965 (= e!4678743 (or (not (= (ite c!1455443 lt!2693126 lt!2693137) Nil!74448)) (= lt!2693366 (ite c!1455443 call!735200 lt!2693128))))))

(declare-fun b!7927963 () Bool)

(assert (=> b!7927963 (= e!4678742 (Cons!74448 (h!80896 (ite c!1455443 call!735200 lt!2693128)) (++!18259 (t!390189 (ite c!1455443 call!735200 lt!2693128)) (ite c!1455443 lt!2693126 lt!2693137))))))

(declare-fun b!7927964 () Bool)

(declare-fun res!3145895 () Bool)

(assert (=> b!7927964 (=> (not res!3145895) (not e!4678743))))

(assert (=> b!7927964 (= res!3145895 (= (size!43248 lt!2693366) (+ (size!43248 (ite c!1455443 call!735200 lt!2693128)) (size!43248 (ite c!1455443 lt!2693126 lt!2693137)))))))

(declare-fun d!2368226 () Bool)

(assert (=> d!2368226 e!4678743))

(declare-fun res!3145894 () Bool)

(assert (=> d!2368226 (=> (not res!3145894) (not e!4678743))))

(assert (=> d!2368226 (= res!3145894 (= (content!15783 lt!2693366) ((_ map or) (content!15783 (ite c!1455443 call!735200 lt!2693128)) (content!15783 (ite c!1455443 lt!2693126 lt!2693137)))))))

(assert (=> d!2368226 (= lt!2693366 e!4678742)))

(declare-fun c!1455750 () Bool)

(assert (=> d!2368226 (= c!1455750 ((_ is Nil!74448) (ite c!1455443 call!735200 lt!2693128)))))

(assert (=> d!2368226 (= (++!18259 (ite c!1455443 call!735200 lt!2693128) (ite c!1455443 lt!2693126 lt!2693137)) lt!2693366)))

(assert (= (and d!2368226 c!1455750) b!7927962))

(assert (= (and d!2368226 (not c!1455750)) b!7927963))

(assert (= (and d!2368226 res!3145894) b!7927964))

(assert (= (and b!7927964 res!3145895) b!7927965))

(declare-fun m!8310256 () Bool)

(assert (=> b!7927963 m!8310256))

(declare-fun m!8310258 () Bool)

(assert (=> b!7927964 m!8310258))

(declare-fun m!8310260 () Bool)

(assert (=> b!7927964 m!8310260))

(declare-fun m!8310262 () Bool)

(assert (=> b!7927964 m!8310262))

(declare-fun m!8310264 () Bool)

(assert (=> d!2368226 m!8310264))

(declare-fun m!8310266 () Bool)

(assert (=> d!2368226 m!8310266))

(declare-fun m!8310268 () Bool)

(assert (=> d!2368226 m!8310268))

(assert (=> bm!735200 d!2368226))

(declare-fun d!2368228 () Bool)

(declare-fun c!1455751 () Bool)

(assert (=> d!2368228 (= c!1455751 ((_ is Nil!74448) lt!2693260))))

(declare-fun e!4678744 () (InoxSet T!145804))

(assert (=> d!2368228 (= (content!15783 lt!2693260) e!4678744)))

(declare-fun b!7927966 () Bool)

(assert (=> b!7927966 (= e!4678744 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927967 () Bool)

(assert (=> b!7927967 (= e!4678744 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693260) true) (content!15783 (t!390189 lt!2693260))))))

(assert (= (and d!2368228 c!1455751) b!7927966))

(assert (= (and d!2368228 (not c!1455751)) b!7927967))

(declare-fun m!8310270 () Bool)

(assert (=> b!7927967 m!8310270))

(declare-fun m!8310272 () Bool)

(assert (=> b!7927967 m!8310272))

(assert (=> d!2367870 d!2368228))

(declare-fun d!2368230 () Bool)

(declare-fun c!1455752 () Bool)

(assert (=> d!2368230 (= c!1455752 ((_ is Nil!74448) lt!2693091))))

(declare-fun e!4678745 () (InoxSet T!145804))

(assert (=> d!2368230 (= (content!15783 lt!2693091) e!4678745)))

(declare-fun b!7927968 () Bool)

(assert (=> b!7927968 (= e!4678745 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927969 () Bool)

(assert (=> b!7927969 (= e!4678745 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693091) true) (content!15783 (t!390189 lt!2693091))))))

(assert (= (and d!2368230 c!1455752) b!7927968))

(assert (= (and d!2368230 (not c!1455752)) b!7927969))

(declare-fun m!8310274 () Bool)

(assert (=> b!7927969 m!8310274))

(assert (=> b!7927969 m!8309886))

(assert (=> d!2367870 d!2368230))

(declare-fun d!2368232 () Bool)

(declare-fun c!1455753 () Bool)

(assert (=> d!2368232 (= c!1455753 ((_ is Nil!74448) call!735186))))

(declare-fun e!4678746 () (InoxSet T!145804))

(assert (=> d!2368232 (= (content!15783 call!735186) e!4678746)))

(declare-fun b!7927970 () Bool)

(assert (=> b!7927970 (= e!4678746 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7927971 () Bool)

(assert (=> b!7927971 (= e!4678746 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 call!735186) true) (content!15783 (t!390189 call!735186))))))

(assert (= (and d!2368232 c!1455753) b!7927970))

(assert (= (and d!2368232 (not c!1455753)) b!7927971))

(declare-fun m!8310276 () Bool)

(assert (=> b!7927971 m!8310276))

(declare-fun m!8310278 () Bool)

(assert (=> b!7927971 m!8310278))

(assert (=> d!2367870 d!2368232))

(declare-fun b!7927972 () Bool)

(declare-fun e!4678748 () Bool)

(declare-fun e!4678747 () Bool)

(assert (=> b!7927972 (= e!4678748 e!4678747)))

(declare-fun res!3145897 () Bool)

(assert (=> b!7927972 (=> (not res!3145897) (not e!4678747))))

(assert (=> b!7927972 (= res!3145897 (<= (- 1) (- (height!2217 (left!56873 (right!57203 (left!56873 t!4440)))) (height!2217 (right!57203 (right!57203 (left!56873 t!4440)))))))))

(declare-fun b!7927974 () Bool)

(declare-fun res!3145900 () Bool)

(assert (=> b!7927974 (=> (not res!3145900) (not e!4678747))))

(assert (=> b!7927974 (= res!3145900 (not (isEmpty!42776 (left!56873 (right!57203 (left!56873 t!4440))))))))

(declare-fun b!7927975 () Bool)

(declare-fun res!3145901 () Bool)

(assert (=> b!7927975 (=> (not res!3145901) (not e!4678747))))

(assert (=> b!7927975 (= res!3145901 (isBalanced!4528 (left!56873 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7927976 () Bool)

(declare-fun res!3145896 () Bool)

(assert (=> b!7927976 (=> (not res!3145896) (not e!4678747))))

(assert (=> b!7927976 (= res!3145896 (isBalanced!4528 (right!57203 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7927977 () Bool)

(assert (=> b!7927977 (= e!4678747 (not (isEmpty!42776 (right!57203 (right!57203 (left!56873 t!4440))))))))

(declare-fun b!7927973 () Bool)

(declare-fun res!3145898 () Bool)

(assert (=> b!7927973 (=> (not res!3145898) (not e!4678747))))

(assert (=> b!7927973 (= res!3145898 (<= (- (height!2217 (left!56873 (right!57203 (left!56873 t!4440)))) (height!2217 (right!57203 (right!57203 (left!56873 t!4440))))) 1))))

(declare-fun d!2368234 () Bool)

(declare-fun res!3145899 () Bool)

(assert (=> d!2368234 (=> res!3145899 e!4678748)))

(assert (=> d!2368234 (= res!3145899 (not ((_ is Node!15902) (right!57203 (left!56873 t!4440)))))))

(assert (=> d!2368234 (= (isBalanced!4528 (right!57203 (left!56873 t!4440))) e!4678748)))

(assert (= (and d!2368234 (not res!3145899)) b!7927972))

(assert (= (and b!7927972 res!3145897) b!7927973))

(assert (= (and b!7927973 res!3145898) b!7927975))

(assert (= (and b!7927975 res!3145901) b!7927976))

(assert (= (and b!7927976 res!3145896) b!7927974))

(assert (= (and b!7927974 res!3145900) b!7927977))

(declare-fun m!8310280 () Bool)

(assert (=> b!7927973 m!8310280))

(declare-fun m!8310282 () Bool)

(assert (=> b!7927973 m!8310282))

(declare-fun m!8310284 () Bool)

(assert (=> b!7927976 m!8310284))

(declare-fun m!8310286 () Bool)

(assert (=> b!7927974 m!8310286))

(declare-fun m!8310288 () Bool)

(assert (=> b!7927975 m!8310288))

(declare-fun m!8310290 () Bool)

(assert (=> b!7927977 m!8310290))

(assert (=> b!7927972 m!8310280))

(assert (=> b!7927972 m!8310282))

(assert (=> b!7927533 d!2368234))

(declare-fun b!7927978 () Bool)

(declare-fun e!4678750 () Bool)

(declare-fun e!4678749 () Bool)

(assert (=> b!7927978 (= e!4678750 e!4678749)))

(declare-fun res!3145903 () Bool)

(assert (=> b!7927978 (=> (not res!3145903) (not e!4678749))))

(assert (=> b!7927978 (= res!3145903 (<= (- 1) (- (height!2217 (left!56873 (right!57203 (left!56873 lt!2692978)))) (height!2217 (right!57203 (right!57203 (left!56873 lt!2692978)))))))))

(declare-fun b!7927980 () Bool)

(declare-fun res!3145906 () Bool)

(assert (=> b!7927980 (=> (not res!3145906) (not e!4678749))))

(assert (=> b!7927980 (= res!3145906 (not (isEmpty!42776 (left!56873 (right!57203 (left!56873 lt!2692978))))))))

(declare-fun b!7927981 () Bool)

(declare-fun res!3145907 () Bool)

(assert (=> b!7927981 (=> (not res!3145907) (not e!4678749))))

(assert (=> b!7927981 (= res!3145907 (isBalanced!4528 (left!56873 (right!57203 (left!56873 lt!2692978)))))))

(declare-fun b!7927982 () Bool)

(declare-fun res!3145902 () Bool)

(assert (=> b!7927982 (=> (not res!3145902) (not e!4678749))))

(assert (=> b!7927982 (= res!3145902 (isBalanced!4528 (right!57203 (right!57203 (left!56873 lt!2692978)))))))

(declare-fun b!7927983 () Bool)

(assert (=> b!7927983 (= e!4678749 (not (isEmpty!42776 (right!57203 (right!57203 (left!56873 lt!2692978))))))))

(declare-fun b!7927979 () Bool)

(declare-fun res!3145904 () Bool)

(assert (=> b!7927979 (=> (not res!3145904) (not e!4678749))))

(assert (=> b!7927979 (= res!3145904 (<= (- (height!2217 (left!56873 (right!57203 (left!56873 lt!2692978)))) (height!2217 (right!57203 (right!57203 (left!56873 lt!2692978))))) 1))))

(declare-fun d!2368236 () Bool)

(declare-fun res!3145905 () Bool)

(assert (=> d!2368236 (=> res!3145905 e!4678750)))

(assert (=> d!2368236 (= res!3145905 (not ((_ is Node!15902) (right!57203 (left!56873 lt!2692978)))))))

(assert (=> d!2368236 (= (isBalanced!4528 (right!57203 (left!56873 lt!2692978))) e!4678750)))

(assert (= (and d!2368236 (not res!3145905)) b!7927978))

(assert (= (and b!7927978 res!3145903) b!7927979))

(assert (= (and b!7927979 res!3145904) b!7927981))

(assert (= (and b!7927981 res!3145907) b!7927982))

(assert (= (and b!7927982 res!3145902) b!7927980))

(assert (= (and b!7927980 res!3145906) b!7927983))

(declare-fun m!8310292 () Bool)

(assert (=> b!7927979 m!8310292))

(declare-fun m!8310294 () Bool)

(assert (=> b!7927979 m!8310294))

(declare-fun m!8310296 () Bool)

(assert (=> b!7927982 m!8310296))

(declare-fun m!8310298 () Bool)

(assert (=> b!7927980 m!8310298))

(declare-fun m!8310300 () Bool)

(assert (=> b!7927981 m!8310300))

(declare-fun m!8310302 () Bool)

(assert (=> b!7927983 m!8310302))

(assert (=> b!7927978 m!8310292))

(assert (=> b!7927978 m!8310294))

(assert (=> b!7927505 d!2368236))

(declare-fun b!7927984 () Bool)

(declare-fun e!4678751 () List!74572)

(assert (=> b!7927984 (= e!4678751 lt!2692980)))

(declare-fun b!7927987 () Bool)

(declare-fun e!4678752 () Bool)

(declare-fun lt!2693367 () List!74572)

(assert (=> b!7927987 (= e!4678752 (or (not (= lt!2692980 Nil!74448)) (= lt!2693367 (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979))))))))

(declare-fun b!7927985 () Bool)

(assert (=> b!7927985 (= e!4678751 (Cons!74448 (h!80896 (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979)))) (++!18259 (t!390189 (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979)))) lt!2692980)))))

(declare-fun b!7927986 () Bool)

(declare-fun res!3145909 () Bool)

(assert (=> b!7927986 (=> (not res!3145909) (not e!4678752))))

(assert (=> b!7927986 (= res!3145909 (= (size!43248 lt!2693367) (+ (size!43248 (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979)))) (size!43248 lt!2692980))))))

(declare-fun d!2368238 () Bool)

(assert (=> d!2368238 e!4678752))

(declare-fun res!3145908 () Bool)

(assert (=> d!2368238 (=> (not res!3145908) (not e!4678752))))

(assert (=> d!2368238 (= res!3145908 (= (content!15783 lt!2693367) ((_ map or) (content!15783 (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979)))) (content!15783 lt!2692980))))))

(assert (=> d!2368238 (= lt!2693367 e!4678751)))

(declare-fun c!1455754 () Bool)

(assert (=> d!2368238 (= c!1455754 ((_ is Nil!74448) (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979)))))))

(assert (=> d!2368238 (= (++!18259 (t!390189 (t!390189 (++!18259 lt!2692976 lt!2692979))) lt!2692980) lt!2693367)))

(assert (= (and d!2368238 c!1455754) b!7927984))

(assert (= (and d!2368238 (not c!1455754)) b!7927985))

(assert (= (and d!2368238 res!3145908) b!7927986))

(assert (= (and b!7927986 res!3145909) b!7927987))

(declare-fun m!8310304 () Bool)

(assert (=> b!7927985 m!8310304))

(declare-fun m!8310306 () Bool)

(assert (=> b!7927986 m!8310306))

(assert (=> b!7927986 m!8309830))

(assert (=> b!7927986 m!8308192))

(declare-fun m!8310308 () Bool)

(assert (=> d!2368238 m!8310308))

(assert (=> d!2368238 m!8310112))

(assert (=> d!2368238 m!8308198))

(assert (=> b!7927564 d!2368238))

(declare-fun d!2368240 () Bool)

(assert (=> d!2368240 (= (isEmpty!42778 (list!19413 (left!56873 t!4440))) ((_ is Nil!74448) (list!19413 (left!56873 t!4440))))))

(assert (=> d!2367718 d!2368240))

(assert (=> d!2367718 d!2367542))

(assert (=> d!2367718 d!2367828))

(declare-fun d!2368242 () Bool)

(assert (=> d!2368242 (= (inv!95720 (xs!19290 (left!56873 (left!56873 t!4440)))) (<= (size!43248 (innerList!15990 (xs!19290 (left!56873 (left!56873 t!4440))))) 2147483647))))

(declare-fun bs!1968875 () Bool)

(assert (= bs!1968875 d!2368242))

(declare-fun m!8310310 () Bool)

(assert (=> bs!1968875 m!8310310))

(assert (=> b!7927603 d!2368242))

(declare-fun d!2368244 () Bool)

(assert (=> d!2368244 (= (list!19415 (xs!19290 (left!56873 (left!56873 t!4440)))) (innerList!15990 (xs!19290 (left!56873 (left!56873 t!4440)))))))

(assert (=> b!7927106 d!2368244))

(declare-fun b!7927988 () Bool)

(declare-fun e!4678753 () List!74572)

(assert (=> b!7927988 (= e!4678753 (list!19413 (right!57203 (left!56873 lt!2692978))))))

(declare-fun b!7927991 () Bool)

(declare-fun e!4678754 () Bool)

(declare-fun lt!2693368 () List!74572)

(assert (=> b!7927991 (= e!4678754 (or (not (= (list!19413 (right!57203 (left!56873 lt!2692978))) Nil!74448)) (= lt!2693368 (list!19413 (left!56873 (left!56873 lt!2692978))))))))

(declare-fun b!7927989 () Bool)

(assert (=> b!7927989 (= e!4678753 (Cons!74448 (h!80896 (list!19413 (left!56873 (left!56873 lt!2692978)))) (++!18259 (t!390189 (list!19413 (left!56873 (left!56873 lt!2692978)))) (list!19413 (right!57203 (left!56873 lt!2692978))))))))

(declare-fun b!7927990 () Bool)

(declare-fun res!3145911 () Bool)

(assert (=> b!7927990 (=> (not res!3145911) (not e!4678754))))

(assert (=> b!7927990 (= res!3145911 (= (size!43248 lt!2693368) (+ (size!43248 (list!19413 (left!56873 (left!56873 lt!2692978)))) (size!43248 (list!19413 (right!57203 (left!56873 lt!2692978)))))))))

(declare-fun d!2368246 () Bool)

(assert (=> d!2368246 e!4678754))

(declare-fun res!3145910 () Bool)

(assert (=> d!2368246 (=> (not res!3145910) (not e!4678754))))

(assert (=> d!2368246 (= res!3145910 (= (content!15783 lt!2693368) ((_ map or) (content!15783 (list!19413 (left!56873 (left!56873 lt!2692978)))) (content!15783 (list!19413 (right!57203 (left!56873 lt!2692978)))))))))

(assert (=> d!2368246 (= lt!2693368 e!4678753)))

(declare-fun c!1455755 () Bool)

(assert (=> d!2368246 (= c!1455755 ((_ is Nil!74448) (list!19413 (left!56873 (left!56873 lt!2692978)))))))

(assert (=> d!2368246 (= (++!18259 (list!19413 (left!56873 (left!56873 lt!2692978))) (list!19413 (right!57203 (left!56873 lt!2692978)))) lt!2693368)))

(assert (= (and d!2368246 c!1455755) b!7927988))

(assert (= (and d!2368246 (not c!1455755)) b!7927989))

(assert (= (and d!2368246 res!3145910) b!7927990))

(assert (= (and b!7927990 res!3145911) b!7927991))

(assert (=> b!7927989 m!8309340))

(declare-fun m!8310312 () Bool)

(assert (=> b!7927989 m!8310312))

(declare-fun m!8310314 () Bool)

(assert (=> b!7927990 m!8310314))

(assert (=> b!7927990 m!8309338))

(declare-fun m!8310316 () Bool)

(assert (=> b!7927990 m!8310316))

(assert (=> b!7927990 m!8309340))

(declare-fun m!8310318 () Bool)

(assert (=> b!7927990 m!8310318))

(declare-fun m!8310320 () Bool)

(assert (=> d!2368246 m!8310320))

(assert (=> d!2368246 m!8309338))

(declare-fun m!8310322 () Bool)

(assert (=> d!2368246 m!8310322))

(assert (=> d!2368246 m!8309340))

(declare-fun m!8310324 () Bool)

(assert (=> d!2368246 m!8310324))

(assert (=> b!7927492 d!2368246))

(declare-fun b!7927995 () Bool)

(declare-fun e!4678756 () List!74572)

(assert (=> b!7927995 (= e!4678756 (++!18259 (list!19413 (left!56873 (left!56873 (left!56873 lt!2692978)))) (list!19413 (right!57203 (left!56873 (left!56873 lt!2692978))))))))

(declare-fun b!7927993 () Bool)

(declare-fun e!4678755 () List!74572)

(assert (=> b!7927993 (= e!4678755 e!4678756)))

(declare-fun c!1455757 () Bool)

(assert (=> b!7927993 (= c!1455757 ((_ is Leaf!30234) (left!56873 (left!56873 lt!2692978))))))

(declare-fun b!7927994 () Bool)

(assert (=> b!7927994 (= e!4678756 (list!19415 (xs!19290 (left!56873 (left!56873 lt!2692978)))))))

(declare-fun b!7927992 () Bool)

(assert (=> b!7927992 (= e!4678755 Nil!74448)))

(declare-fun d!2368248 () Bool)

(declare-fun c!1455756 () Bool)

(assert (=> d!2368248 (= c!1455756 ((_ is Empty!15902) (left!56873 (left!56873 lt!2692978))))))

(assert (=> d!2368248 (= (list!19413 (left!56873 (left!56873 lt!2692978))) e!4678755)))

(assert (= (and d!2368248 c!1455756) b!7927992))

(assert (= (and d!2368248 (not c!1455756)) b!7927993))

(assert (= (and b!7927993 c!1455757) b!7927994))

(assert (= (and b!7927993 (not c!1455757)) b!7927995))

(declare-fun m!8310326 () Bool)

(assert (=> b!7927995 m!8310326))

(declare-fun m!8310328 () Bool)

(assert (=> b!7927995 m!8310328))

(assert (=> b!7927995 m!8310326))

(assert (=> b!7927995 m!8310328))

(declare-fun m!8310330 () Bool)

(assert (=> b!7927995 m!8310330))

(declare-fun m!8310332 () Bool)

(assert (=> b!7927994 m!8310332))

(assert (=> b!7927492 d!2368248))

(declare-fun b!7927999 () Bool)

(declare-fun e!4678758 () List!74572)

(assert (=> b!7927999 (= e!4678758 (++!18259 (list!19413 (left!56873 (right!57203 (left!56873 lt!2692978)))) (list!19413 (right!57203 (right!57203 (left!56873 lt!2692978))))))))

(declare-fun b!7927997 () Bool)

(declare-fun e!4678757 () List!74572)

(assert (=> b!7927997 (= e!4678757 e!4678758)))

(declare-fun c!1455759 () Bool)

(assert (=> b!7927997 (= c!1455759 ((_ is Leaf!30234) (right!57203 (left!56873 lt!2692978))))))

(declare-fun b!7927998 () Bool)

(assert (=> b!7927998 (= e!4678758 (list!19415 (xs!19290 (right!57203 (left!56873 lt!2692978)))))))

(declare-fun b!7927996 () Bool)

(assert (=> b!7927996 (= e!4678757 Nil!74448)))

(declare-fun d!2368250 () Bool)

(declare-fun c!1455758 () Bool)

(assert (=> d!2368250 (= c!1455758 ((_ is Empty!15902) (right!57203 (left!56873 lt!2692978))))))

(assert (=> d!2368250 (= (list!19413 (right!57203 (left!56873 lt!2692978))) e!4678757)))

(assert (= (and d!2368250 c!1455758) b!7927996))

(assert (= (and d!2368250 (not c!1455758)) b!7927997))

(assert (= (and b!7927997 c!1455759) b!7927998))

(assert (= (and b!7927997 (not c!1455759)) b!7927999))

(declare-fun m!8310334 () Bool)

(assert (=> b!7927999 m!8310334))

(declare-fun m!8310336 () Bool)

(assert (=> b!7927999 m!8310336))

(assert (=> b!7927999 m!8310334))

(assert (=> b!7927999 m!8310336))

(declare-fun m!8310338 () Bool)

(assert (=> b!7927999 m!8310338))

(declare-fun m!8310340 () Bool)

(assert (=> b!7927998 m!8310340))

(assert (=> b!7927492 d!2368250))

(assert (=> b!7927177 d!2367558))

(declare-fun d!2368252 () Bool)

(assert (=> d!2368252 (= (height!2217 (right!57203 (right!57203 t!4440))) (ite ((_ is Empty!15902) (right!57203 (right!57203 t!4440))) 0 (ite ((_ is Leaf!30234) (right!57203 (right!57203 t!4440))) 1 (cheight!16113 (right!57203 (right!57203 t!4440))))))))

(assert (=> b!7927177 d!2368252))

(declare-fun d!2368254 () Bool)

(declare-fun c!1455760 () Bool)

(assert (=> d!2368254 (= c!1455760 ((_ is Nil!74448) lt!2693158))))

(declare-fun e!4678759 () (InoxSet T!145804))

(assert (=> d!2368254 (= (content!15783 lt!2693158) e!4678759)))

(declare-fun b!7928000 () Bool)

(assert (=> b!7928000 (= e!4678759 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928001 () Bool)

(assert (=> b!7928001 (= e!4678759 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693158) true) (content!15783 (t!390189 lt!2693158))))))

(assert (= (and d!2368254 c!1455760) b!7928000))

(assert (= (and d!2368254 (not c!1455760)) b!7928001))

(declare-fun m!8310342 () Bool)

(assert (=> b!7928001 m!8310342))

(declare-fun m!8310344 () Bool)

(assert (=> b!7928001 m!8310344))

(assert (=> d!2367626 d!2368254))

(declare-fun d!2368256 () Bool)

(declare-fun c!1455761 () Bool)

(assert (=> d!2368256 (= c!1455761 ((_ is Nil!74448) (list!19413 (left!56873 t!4440))))))

(declare-fun e!4678760 () (InoxSet T!145804))

(assert (=> d!2368256 (= (content!15783 (list!19413 (left!56873 t!4440))) e!4678760)))

(declare-fun b!7928002 () Bool)

(assert (=> b!7928002 (= e!4678760 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928003 () Bool)

(assert (=> b!7928003 (= e!4678760 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 (left!56873 t!4440))) true) (content!15783 (t!390189 (list!19413 (left!56873 t!4440))))))))

(assert (= (and d!2368256 c!1455761) b!7928002))

(assert (= (and d!2368256 (not c!1455761)) b!7928003))

(declare-fun m!8310346 () Bool)

(assert (=> b!7928003 m!8310346))

(assert (=> b!7928003 m!8309722))

(assert (=> d!2367626 d!2368256))

(declare-fun d!2368258 () Bool)

(declare-fun c!1455762 () Bool)

(assert (=> d!2368258 (= c!1455762 ((_ is Nil!74448) (list!19413 (right!57203 t!4440))))))

(declare-fun e!4678761 () (InoxSet T!145804))

(assert (=> d!2368258 (= (content!15783 (list!19413 (right!57203 t!4440))) e!4678761)))

(declare-fun b!7928004 () Bool)

(assert (=> b!7928004 (= e!4678761 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928005 () Bool)

(assert (=> b!7928005 (= e!4678761 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 (right!57203 t!4440))) true) (content!15783 (t!390189 (list!19413 (right!57203 t!4440))))))))

(assert (= (and d!2368258 c!1455762) b!7928004))

(assert (= (and d!2368258 (not c!1455762)) b!7928005))

(declare-fun m!8310348 () Bool)

(assert (=> b!7928005 m!8310348))

(assert (=> b!7928005 m!8310158))

(assert (=> d!2367626 d!2368258))

(declare-fun d!2368260 () Bool)

(assert (=> d!2368260 (= (height!2217 lt!2693135) (ite ((_ is Empty!15902) lt!2693135) 0 (ite ((_ is Leaf!30234) lt!2693135) 1 (cheight!16113 lt!2693135))))))

(assert (=> b!7927011 d!2368260))

(assert (=> b!7927011 d!2368252))

(declare-fun d!2368262 () Bool)

(declare-fun lt!2693369 () Bool)

(assert (=> d!2368262 (= lt!2693369 (isEmpty!42778 (list!19413 (right!57203 (right!57203 lt!2692978)))))))

(assert (=> d!2368262 (= lt!2693369 (= (size!43249 (right!57203 (right!57203 lt!2692978))) 0))))

(assert (=> d!2368262 (= (isEmpty!42776 (right!57203 (right!57203 lt!2692978))) lt!2693369)))

(declare-fun bs!1968876 () Bool)

(assert (= bs!1968876 d!2368262))

(assert (=> bs!1968876 m!8309348))

(assert (=> bs!1968876 m!8309348))

(declare-fun m!8310350 () Bool)

(assert (=> bs!1968876 m!8310350))

(declare-fun m!8310352 () Bool)

(assert (=> bs!1968876 m!8310352))

(assert (=> b!7927134 d!2368262))

(declare-fun b!7928009 () Bool)

(declare-fun e!4678763 () List!74572)

(assert (=> b!7928009 (= e!4678763 (++!18259 (list!19413 (left!56873 lt!2693275)) (list!19413 (right!57203 lt!2693275))))))

(declare-fun b!7928007 () Bool)

(declare-fun e!4678762 () List!74572)

(assert (=> b!7928007 (= e!4678762 e!4678763)))

(declare-fun c!1455764 () Bool)

(assert (=> b!7928007 (= c!1455764 ((_ is Leaf!30234) lt!2693275))))

(declare-fun b!7928008 () Bool)

(assert (=> b!7928008 (= e!4678763 (list!19415 (xs!19290 lt!2693275)))))

(declare-fun b!7928006 () Bool)

(assert (=> b!7928006 (= e!4678762 Nil!74448)))

(declare-fun d!2368264 () Bool)

(declare-fun c!1455763 () Bool)

(assert (=> d!2368264 (= c!1455763 ((_ is Empty!15902) lt!2693275))))

(assert (=> d!2368264 (= (list!19413 lt!2693275) e!4678762)))

(assert (= (and d!2368264 c!1455763) b!7928006))

(assert (= (and d!2368264 (not c!1455763)) b!7928007))

(assert (= (and b!7928007 c!1455764) b!7928008))

(assert (= (and b!7928007 (not c!1455764)) b!7928009))

(declare-fun m!8310354 () Bool)

(assert (=> b!7928009 m!8310354))

(declare-fun m!8310356 () Bool)

(assert (=> b!7928009 m!8310356))

(assert (=> b!7928009 m!8310354))

(assert (=> b!7928009 m!8310356))

(declare-fun m!8310358 () Bool)

(assert (=> b!7928009 m!8310358))

(declare-fun m!8310360 () Bool)

(assert (=> b!7928008 m!8310360))

(assert (=> d!2367934 d!2368264))

(declare-fun b!7928010 () Bool)

(declare-fun e!4678764 () List!74572)

(assert (=> b!7928010 (= e!4678764 (list!19413 e!4678215))))

(declare-fun b!7928013 () Bool)

(declare-fun e!4678765 () Bool)

(declare-fun lt!2693370 () List!74572)

(assert (=> b!7928013 (= e!4678765 (or (not (= (list!19413 e!4678215) Nil!74448)) (= lt!2693370 (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440))))))))

(declare-fun b!7928011 () Bool)

(assert (=> b!7928011 (= e!4678764 (Cons!74448 (h!80896 (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440)))) (++!18259 (t!390189 (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440)))) (list!19413 e!4678215))))))

(declare-fun b!7928012 () Bool)

(declare-fun res!3145913 () Bool)

(assert (=> b!7928012 (=> (not res!3145913) (not e!4678765))))

(assert (=> b!7928012 (= res!3145913 (= (size!43248 lt!2693370) (+ (size!43248 (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440)))) (size!43248 (list!19413 e!4678215)))))))

(declare-fun d!2368266 () Bool)

(assert (=> d!2368266 e!4678765))

(declare-fun res!3145912 () Bool)

(assert (=> d!2368266 (=> (not res!3145912) (not e!4678765))))

(assert (=> d!2368266 (= res!3145912 (= (content!15783 lt!2693370) ((_ map or) (content!15783 (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440)))) (content!15783 (list!19413 e!4678215)))))))

(assert (=> d!2368266 (= lt!2693370 e!4678764)))

(declare-fun c!1455765 () Bool)

(assert (=> d!2368266 (= c!1455765 ((_ is Nil!74448) (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440)))))))

(assert (=> d!2368266 (= (++!18259 (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440))) (list!19413 e!4678215)) lt!2693370)))

(assert (= (and d!2368266 c!1455765) b!7928010))

(assert (= (and d!2368266 (not c!1455765)) b!7928011))

(assert (= (and d!2368266 res!3145912) b!7928012))

(assert (= (and b!7928012 res!3145913) b!7928013))

(assert (=> b!7928011 m!8309480))

(declare-fun m!8310362 () Bool)

(assert (=> b!7928011 m!8310362))

(declare-fun m!8310364 () Bool)

(assert (=> b!7928012 m!8310364))

(assert (=> b!7928012 m!8309478))

(declare-fun m!8310366 () Bool)

(assert (=> b!7928012 m!8310366))

(assert (=> b!7928012 m!8309480))

(declare-fun m!8310368 () Bool)

(assert (=> b!7928012 m!8310368))

(declare-fun m!8310370 () Bool)

(assert (=> d!2368266 m!8310370))

(assert (=> d!2368266 m!8309478))

(declare-fun m!8310372 () Bool)

(assert (=> d!2368266 m!8310372))

(assert (=> d!2368266 m!8309480))

(declare-fun m!8310374 () Bool)

(assert (=> d!2368266 m!8310374))

(assert (=> d!2367934 d!2368266))

(declare-fun b!7928017 () Bool)

(declare-fun e!4678767 () List!74572)

(assert (=> b!7928017 (= e!4678767 (++!18259 (list!19413 (left!56873 (ite c!1455405 call!735183 (right!57203 t!4440)))) (list!19413 (right!57203 (ite c!1455405 call!735183 (right!57203 t!4440))))))))

(declare-fun b!7928015 () Bool)

(declare-fun e!4678766 () List!74572)

(assert (=> b!7928015 (= e!4678766 e!4678767)))

(declare-fun c!1455767 () Bool)

(assert (=> b!7928015 (= c!1455767 ((_ is Leaf!30234) (ite c!1455405 call!735183 (right!57203 t!4440))))))

(declare-fun b!7928016 () Bool)

(assert (=> b!7928016 (= e!4678767 (list!19415 (xs!19290 (ite c!1455405 call!735183 (right!57203 t!4440)))))))

(declare-fun b!7928014 () Bool)

(assert (=> b!7928014 (= e!4678766 Nil!74448)))

(declare-fun c!1455766 () Bool)

(declare-fun d!2368268 () Bool)

(assert (=> d!2368268 (= c!1455766 ((_ is Empty!15902) (ite c!1455405 call!735183 (right!57203 t!4440))))))

(assert (=> d!2368268 (= (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440))) e!4678766)))

(assert (= (and d!2368268 c!1455766) b!7928014))

(assert (= (and d!2368268 (not c!1455766)) b!7928015))

(assert (= (and b!7928015 c!1455767) b!7928016))

(assert (= (and b!7928015 (not c!1455767)) b!7928017))

(declare-fun m!8310376 () Bool)

(assert (=> b!7928017 m!8310376))

(declare-fun m!8310378 () Bool)

(assert (=> b!7928017 m!8310378))

(assert (=> b!7928017 m!8310376))

(assert (=> b!7928017 m!8310378))

(declare-fun m!8310380 () Bool)

(assert (=> b!7928017 m!8310380))

(declare-fun m!8310382 () Bool)

(assert (=> b!7928016 m!8310382))

(assert (=> d!2367934 d!2368268))

(declare-fun b!7928021 () Bool)

(declare-fun e!4678769 () List!74572)

(assert (=> b!7928021 (= e!4678769 (++!18259 (list!19413 (left!56873 e!4678215)) (list!19413 (right!57203 e!4678215))))))

(declare-fun b!7928019 () Bool)

(declare-fun e!4678768 () List!74572)

(assert (=> b!7928019 (= e!4678768 e!4678769)))

(declare-fun c!1455769 () Bool)

(assert (=> b!7928019 (= c!1455769 ((_ is Leaf!30234) e!4678215))))

(declare-fun b!7928020 () Bool)

(assert (=> b!7928020 (= e!4678769 (list!19415 (xs!19290 e!4678215)))))

(declare-fun b!7928018 () Bool)

(assert (=> b!7928018 (= e!4678768 Nil!74448)))

(declare-fun d!2368270 () Bool)

(declare-fun c!1455768 () Bool)

(assert (=> d!2368270 (= c!1455768 ((_ is Empty!15902) e!4678215))))

(assert (=> d!2368270 (= (list!19413 e!4678215) e!4678768)))

(assert (= (and d!2368270 c!1455768) b!7928018))

(assert (= (and d!2368270 (not c!1455768)) b!7928019))

(assert (= (and b!7928019 c!1455769) b!7928020))

(assert (= (and b!7928019 (not c!1455769)) b!7928021))

(declare-fun m!8310384 () Bool)

(assert (=> b!7928021 m!8310384))

(declare-fun m!8310386 () Bool)

(assert (=> b!7928021 m!8310386))

(assert (=> b!7928021 m!8310384))

(assert (=> b!7928021 m!8310386))

(declare-fun m!8310388 () Bool)

(assert (=> b!7928021 m!8310388))

(declare-fun m!8310390 () Bool)

(assert (=> b!7928020 m!8310390))

(assert (=> d!2367934 d!2368270))

(assert (=> d!2367828 d!2368084))

(assert (=> d!2367828 d!2367542))

(assert (=> b!7927350 d!2367976))

(declare-fun d!2368272 () Bool)

(declare-fun c!1455770 () Bool)

(assert (=> d!2368272 (= c!1455770 ((_ is Nil!74448) lt!2693280))))

(declare-fun e!4678770 () (InoxSet T!145804))

(assert (=> d!2368272 (= (content!15783 lt!2693280) e!4678770)))

(declare-fun b!7928022 () Bool)

(assert (=> b!7928022 (= e!4678770 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928023 () Bool)

(assert (=> b!7928023 (= e!4678770 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693280) true) (content!15783 (t!390189 lt!2693280))))))

(assert (= (and d!2368272 c!1455770) b!7928022))

(assert (= (and d!2368272 (not c!1455770)) b!7928023))

(declare-fun m!8310392 () Bool)

(assert (=> b!7928023 m!8310392))

(declare-fun m!8310394 () Bool)

(assert (=> b!7928023 m!8310394))

(assert (=> b!7927587 d!2368272))

(declare-fun d!2368274 () Bool)

(declare-fun c!1455771 () Bool)

(assert (=> d!2368274 (= c!1455771 ((_ is Nil!74448) (list!19415 (xs!19290 (right!57203 t!4440)))))))

(declare-fun e!4678771 () (InoxSet T!145804))

(assert (=> d!2368274 (= (content!15783 (list!19415 (xs!19290 (right!57203 t!4440)))) e!4678771)))

(declare-fun b!7928024 () Bool)

(assert (=> b!7928024 (= e!4678771 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928025 () Bool)

(assert (=> b!7928025 (= e!4678771 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19415 (xs!19290 (right!57203 t!4440)))) true) (content!15783 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440)))))))))

(assert (= (and d!2368274 c!1455771) b!7928024))

(assert (= (and d!2368274 (not c!1455771)) b!7928025))

(declare-fun m!8310396 () Bool)

(assert (=> b!7928025 m!8310396))

(assert (=> b!7928025 m!8309870))

(assert (=> b!7927587 d!2368274))

(declare-fun d!2368276 () Bool)

(declare-fun lt!2693371 () Int)

(assert (=> d!2368276 (>= lt!2693371 0)))

(declare-fun e!4678772 () Int)

(assert (=> d!2368276 (= lt!2693371 e!4678772)))

(declare-fun c!1455772 () Bool)

(assert (=> d!2368276 (= c!1455772 ((_ is Nil!74448) lt!2693263))))

(assert (=> d!2368276 (= (size!43248 lt!2693263) lt!2693371)))

(declare-fun b!7928026 () Bool)

(assert (=> b!7928026 (= e!4678772 0)))

(declare-fun b!7928027 () Bool)

(assert (=> b!7928027 (= e!4678772 (+ 1 (size!43248 (t!390189 lt!2693263))))))

(assert (= (and d!2368276 c!1455772) b!7928026))

(assert (= (and d!2368276 (not c!1455772)) b!7928027))

(declare-fun m!8310398 () Bool)

(assert (=> b!7928027 m!8310398))

(assert (=> b!7927487 d!2368276))

(declare-fun d!2368278 () Bool)

(declare-fun lt!2693372 () Int)

(assert (=> d!2368278 (>= lt!2693372 0)))

(declare-fun e!4678773 () Int)

(assert (=> d!2368278 (= lt!2693372 e!4678773)))

(declare-fun c!1455773 () Bool)

(assert (=> d!2368278 (= c!1455773 ((_ is Nil!74448) (list!19413 (left!56873 lt!2692978))))))

(assert (=> d!2368278 (= (size!43248 (list!19413 (left!56873 lt!2692978))) lt!2693372)))

(declare-fun b!7928028 () Bool)

(assert (=> b!7928028 (= e!4678773 0)))

(declare-fun b!7928029 () Bool)

(assert (=> b!7928029 (= e!4678773 (+ 1 (size!43248 (t!390189 (list!19413 (left!56873 lt!2692978))))))))

(assert (= (and d!2368278 c!1455773) b!7928028))

(assert (= (and d!2368278 (not c!1455773)) b!7928029))

(assert (=> b!7928029 m!8310144))

(assert (=> b!7927487 d!2368278))

(declare-fun d!2368280 () Bool)

(declare-fun lt!2693373 () Int)

(assert (=> d!2368280 (>= lt!2693373 0)))

(declare-fun e!4678774 () Int)

(assert (=> d!2368280 (= lt!2693373 e!4678774)))

(declare-fun c!1455774 () Bool)

(assert (=> d!2368280 (= c!1455774 ((_ is Nil!74448) (list!19413 (right!57203 lt!2692978))))))

(assert (=> d!2368280 (= (size!43248 (list!19413 (right!57203 lt!2692978))) lt!2693373)))

(declare-fun b!7928030 () Bool)

(assert (=> b!7928030 (= e!4678774 0)))

(declare-fun b!7928031 () Bool)

(assert (=> b!7928031 (= e!4678774 (+ 1 (size!43248 (t!390189 (list!19413 (right!57203 lt!2692978))))))))

(assert (= (and d!2368280 c!1455774) b!7928030))

(assert (= (and d!2368280 (not c!1455774)) b!7928031))

(declare-fun m!8310400 () Bool)

(assert (=> b!7928031 m!8310400))

(assert (=> b!7927487 d!2368280))

(declare-fun d!2368282 () Bool)

(declare-fun c!1455775 () Bool)

(assert (=> d!2368282 (= c!1455775 ((_ is Node!15902) (left!56873 (left!56873 (right!57203 t!4440)))))))

(declare-fun e!4678775 () Bool)

(assert (=> d!2368282 (= (inv!95719 (left!56873 (left!56873 (right!57203 t!4440)))) e!4678775)))

(declare-fun b!7928032 () Bool)

(assert (=> b!7928032 (= e!4678775 (inv!95723 (left!56873 (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7928033 () Bool)

(declare-fun e!4678776 () Bool)

(assert (=> b!7928033 (= e!4678775 e!4678776)))

(declare-fun res!3145914 () Bool)

(assert (=> b!7928033 (= res!3145914 (not ((_ is Leaf!30234) (left!56873 (left!56873 (right!57203 t!4440))))))))

(assert (=> b!7928033 (=> res!3145914 e!4678776)))

(declare-fun b!7928034 () Bool)

(assert (=> b!7928034 (= e!4678776 (inv!95724 (left!56873 (left!56873 (right!57203 t!4440)))))))

(assert (= (and d!2368282 c!1455775) b!7928032))

(assert (= (and d!2368282 (not c!1455775)) b!7928033))

(assert (= (and b!7928033 (not res!3145914)) b!7928034))

(declare-fun m!8310402 () Bool)

(assert (=> b!7928032 m!8310402))

(declare-fun m!8310404 () Bool)

(assert (=> b!7928034 m!8310404))

(assert (=> b!7927595 d!2368282))

(declare-fun d!2368284 () Bool)

(declare-fun c!1455776 () Bool)

(assert (=> d!2368284 (= c!1455776 ((_ is Node!15902) (right!57203 (left!56873 (right!57203 t!4440)))))))

(declare-fun e!4678777 () Bool)

(assert (=> d!2368284 (= (inv!95719 (right!57203 (left!56873 (right!57203 t!4440)))) e!4678777)))

(declare-fun b!7928035 () Bool)

(assert (=> b!7928035 (= e!4678777 (inv!95723 (right!57203 (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7928036 () Bool)

(declare-fun e!4678778 () Bool)

(assert (=> b!7928036 (= e!4678777 e!4678778)))

(declare-fun res!3145915 () Bool)

(assert (=> b!7928036 (= res!3145915 (not ((_ is Leaf!30234) (right!57203 (left!56873 (right!57203 t!4440))))))))

(assert (=> b!7928036 (=> res!3145915 e!4678778)))

(declare-fun b!7928037 () Bool)

(assert (=> b!7928037 (= e!4678778 (inv!95724 (right!57203 (left!56873 (right!57203 t!4440)))))))

(assert (= (and d!2368284 c!1455776) b!7928035))

(assert (= (and d!2368284 (not c!1455776)) b!7928036))

(assert (= (and b!7928036 (not res!3145915)) b!7928037))

(declare-fun m!8310406 () Bool)

(assert (=> b!7928035 m!8310406))

(declare-fun m!8310408 () Bool)

(assert (=> b!7928037 m!8310408))

(assert (=> b!7927595 d!2368284))

(declare-fun d!2368286 () Bool)

(assert (=> d!2368286 (= (list!19415 (xs!19290 (right!57203 lt!2692978))) (innerList!15990 (xs!19290 (right!57203 lt!2692978))))))

(assert (=> b!7927495 d!2368286))

(declare-fun d!2368288 () Bool)

(declare-fun c!1455777 () Bool)

(assert (=> d!2368288 (= c!1455777 ((_ is Nil!74448) (t!390189 (++!18259 lt!2692979 lt!2692980))))))

(declare-fun e!4678779 () (InoxSet T!145804))

(assert (=> d!2368288 (= (content!15783 (t!390189 (++!18259 lt!2692979 lt!2692980))) e!4678779)))

(declare-fun b!7928038 () Bool)

(assert (=> b!7928038 (= e!4678779 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928039 () Bool)

(assert (=> b!7928039 (= e!4678779 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 (++!18259 lt!2692979 lt!2692980))) true) (content!15783 (t!390189 (t!390189 (++!18259 lt!2692979 lt!2692980))))))))

(assert (= (and d!2368288 c!1455777) b!7928038))

(assert (= (and d!2368288 (not c!1455777)) b!7928039))

(declare-fun m!8310410 () Bool)

(assert (=> b!7928039 m!8310410))

(declare-fun m!8310412 () Bool)

(assert (=> b!7928039 m!8310412))

(assert (=> b!7927422 d!2368288))

(declare-fun d!2368290 () Bool)

(declare-fun lt!2693374 () Int)

(assert (=> d!2368290 (= lt!2693374 (size!43248 (list!19413 (left!56873 (left!56873 t!4440)))))))

(assert (=> d!2368290 (= lt!2693374 (ite ((_ is Empty!15902) (left!56873 (left!56873 t!4440))) 0 (ite ((_ is Leaf!30234) (left!56873 (left!56873 t!4440))) (csize!32035 (left!56873 (left!56873 t!4440))) (csize!32034 (left!56873 (left!56873 t!4440))))))))

(assert (=> d!2368290 (= (size!43249 (left!56873 (left!56873 t!4440))) lt!2693374)))

(declare-fun bs!1968877 () Bool)

(assert (= bs!1968877 d!2368290))

(assert (=> bs!1968877 m!8308212))

(assert (=> bs!1968877 m!8308212))

(assert (=> bs!1968877 m!8308538))

(assert (=> d!2367722 d!2368290))

(declare-fun d!2368292 () Bool)

(declare-fun lt!2693375 () Int)

(assert (=> d!2368292 (= lt!2693375 (size!43248 (list!19413 (right!57203 (left!56873 t!4440)))))))

(assert (=> d!2368292 (= lt!2693375 (ite ((_ is Empty!15902) (right!57203 (left!56873 t!4440))) 0 (ite ((_ is Leaf!30234) (right!57203 (left!56873 t!4440))) (csize!32035 (right!57203 (left!56873 t!4440))) (csize!32034 (right!57203 (left!56873 t!4440))))))))

(assert (=> d!2368292 (= (size!43249 (right!57203 (left!56873 t!4440))) lt!2693375)))

(declare-fun bs!1968878 () Bool)

(assert (= bs!1968878 d!2368292))

(assert (=> bs!1968878 m!8308214))

(assert (=> bs!1968878 m!8308214))

(assert (=> bs!1968878 m!8308540))

(assert (=> d!2367722 d!2368292))

(declare-fun d!2368294 () Bool)

(declare-fun c!1455778 () Bool)

(assert (=> d!2368294 (= c!1455778 ((_ is Nil!74448) (t!390189 lt!2693118)))))

(declare-fun e!4678780 () (InoxSet T!145804))

(assert (=> d!2368294 (= (content!15783 (t!390189 lt!2693118)) e!4678780)))

(declare-fun b!7928040 () Bool)

(assert (=> b!7928040 (= e!4678780 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928041 () Bool)

(assert (=> b!7928041 (= e!4678780 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 lt!2693118)) true) (content!15783 (t!390189 (t!390189 lt!2693118)))))))

(assert (= (and d!2368294 c!1455778) b!7928040))

(assert (= (and d!2368294 (not c!1455778)) b!7928041))

(declare-fun m!8310414 () Bool)

(assert (=> b!7928041 m!8310414))

(declare-fun m!8310416 () Bool)

(assert (=> b!7928041 m!8310416))

(assert (=> b!7927342 d!2368294))

(declare-fun d!2368296 () Bool)

(declare-fun c!1455779 () Bool)

(assert (=> d!2368296 (= c!1455779 ((_ is Nil!74448) lt!2693185))))

(declare-fun e!4678781 () (InoxSet T!145804))

(assert (=> d!2368296 (= (content!15783 lt!2693185) e!4678781)))

(declare-fun b!7928042 () Bool)

(assert (=> b!7928042 (= e!4678781 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928043 () Bool)

(assert (=> b!7928043 (= e!4678781 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693185) true) (content!15783 (t!390189 lt!2693185))))))

(assert (= (and d!2368296 c!1455779) b!7928042))

(assert (= (and d!2368296 (not c!1455779)) b!7928043))

(declare-fun m!8310418 () Bool)

(assert (=> b!7928043 m!8310418))

(declare-fun m!8310420 () Bool)

(assert (=> b!7928043 m!8310420))

(assert (=> d!2367686 d!2368296))

(assert (=> d!2367686 d!2368256))

(declare-fun d!2368298 () Bool)

(declare-fun c!1455780 () Bool)

(assert (=> d!2368298 (= c!1455780 ((_ is Nil!74448) (list!19413 lt!2692975)))))

(declare-fun e!4678782 () (InoxSet T!145804))

(assert (=> d!2368298 (= (content!15783 (list!19413 lt!2692975)) e!4678782)))

(declare-fun b!7928044 () Bool)

(assert (=> b!7928044 (= e!4678782 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928045 () Bool)

(assert (=> b!7928045 (= e!4678782 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 lt!2692975)) true) (content!15783 (t!390189 (list!19413 lt!2692975)))))))

(assert (= (and d!2368298 c!1455780) b!7928044))

(assert (= (and d!2368298 (not c!1455780)) b!7928045))

(declare-fun m!8310422 () Bool)

(assert (=> b!7928045 m!8310422))

(declare-fun m!8310424 () Bool)

(assert (=> b!7928045 m!8310424))

(assert (=> d!2367686 d!2368298))

(declare-fun d!2368300 () Bool)

(declare-fun lt!2693376 () Bool)

(assert (=> d!2368300 (= lt!2693376 (isEmpty!42778 (list!19413 (right!57203 (left!56873 lt!2692978)))))))

(assert (=> d!2368300 (= lt!2693376 (= (size!43249 (right!57203 (left!56873 lt!2692978))) 0))))

(assert (=> d!2368300 (= (isEmpty!42776 (right!57203 (left!56873 lt!2692978))) lt!2693376)))

(declare-fun bs!1968879 () Bool)

(assert (= bs!1968879 d!2368300))

(assert (=> bs!1968879 m!8309340))

(assert (=> bs!1968879 m!8309340))

(declare-fun m!8310426 () Bool)

(assert (=> bs!1968879 m!8310426))

(declare-fun m!8310428 () Bool)

(assert (=> bs!1968879 m!8310428))

(assert (=> b!7927506 d!2368300))

(declare-fun d!2368302 () Bool)

(declare-fun lt!2693377 () Int)

(assert (=> d!2368302 (>= lt!2693377 0)))

(declare-fun e!4678783 () Int)

(assert (=> d!2368302 (= lt!2693377 e!4678783)))

(declare-fun c!1455781 () Bool)

(assert (=> d!2368302 (= c!1455781 ((_ is Nil!74448) lt!2693274))))

(assert (=> d!2368302 (= (size!43248 lt!2693274) lt!2693377)))

(declare-fun b!7928046 () Bool)

(assert (=> b!7928046 (= e!4678783 0)))

(declare-fun b!7928047 () Bool)

(assert (=> b!7928047 (= e!4678783 (+ 1 (size!43248 (t!390189 lt!2693274))))))

(assert (= (and d!2368302 c!1455781) b!7928046))

(assert (= (and d!2368302 (not c!1455781)) b!7928047))

(declare-fun m!8310430 () Bool)

(assert (=> b!7928047 m!8310430))

(assert (=> b!7927565 d!2368302))

(assert (=> b!7927565 d!2368056))

(assert (=> b!7927565 d!2367702))

(declare-fun lt!2693378 () Conc!15902)

(declare-fun d!2368304 () Bool)

(assert (=> d!2368304 (= (list!19413 lt!2693378) (++!18259 (list!19413 (left!56873 (right!57203 (right!57203 t!4440)))) (list!19413 (ite c!1455443 lt!2693133 (left!56873 lt!2693133)))))))

(declare-fun e!4678785 () Conc!15902)

(assert (=> d!2368304 (= lt!2693378 e!4678785)))

(declare-fun c!1455782 () Bool)

(assert (=> d!2368304 (= c!1455782 (= (left!56873 (right!57203 (right!57203 t!4440))) Empty!15902))))

(assert (=> d!2368304 (= (<>!424 (left!56873 (right!57203 (right!57203 t!4440))) (ite c!1455443 lt!2693133 (left!56873 lt!2693133))) lt!2693378)))

(declare-fun b!7928050 () Bool)

(declare-fun e!4678784 () Conc!15902)

(assert (=> b!7928050 (= e!4678784 (left!56873 (right!57203 (right!57203 t!4440))))))

(declare-fun b!7928049 () Bool)

(assert (=> b!7928049 (= e!4678785 e!4678784)))

(declare-fun c!1455783 () Bool)

(assert (=> b!7928049 (= c!1455783 (= (ite c!1455443 lt!2693133 (left!56873 lt!2693133)) Empty!15902))))

(declare-fun b!7928051 () Bool)

(assert (=> b!7928051 (= e!4678784 (Node!15902 (left!56873 (right!57203 (right!57203 t!4440))) (ite c!1455443 lt!2693133 (left!56873 lt!2693133)) (+ (size!43249 (left!56873 (right!57203 (right!57203 t!4440)))) (size!43249 (ite c!1455443 lt!2693133 (left!56873 lt!2693133)))) (+ (max!0 (height!2217 (left!56873 (right!57203 (right!57203 t!4440)))) (height!2217 (ite c!1455443 lt!2693133 (left!56873 lt!2693133)))) 1)))))

(declare-fun b!7928048 () Bool)

(assert (=> b!7928048 (= e!4678785 (ite c!1455443 lt!2693133 (left!56873 lt!2693133)))))

(assert (= (and d!2368304 c!1455782) b!7928048))

(assert (= (and d!2368304 (not c!1455782)) b!7928049))

(assert (= (and b!7928049 c!1455783) b!7928050))

(assert (= (and b!7928049 (not c!1455783)) b!7928051))

(declare-fun m!8310432 () Bool)

(assert (=> d!2368304 m!8310432))

(assert (=> d!2368304 m!8308422))

(declare-fun m!8310434 () Bool)

(assert (=> d!2368304 m!8310434))

(assert (=> d!2368304 m!8308422))

(assert (=> d!2368304 m!8310434))

(declare-fun m!8310436 () Bool)

(assert (=> d!2368304 m!8310436))

(assert (=> b!7928051 m!8308352))

(declare-fun m!8310438 () Bool)

(assert (=> b!7928051 m!8310438))

(declare-fun m!8310440 () Bool)

(assert (=> b!7928051 m!8310440))

(declare-fun m!8310442 () Bool)

(assert (=> b!7928051 m!8310442))

(assert (=> b!7928051 m!8310132))

(assert (=> b!7928051 m!8310438))

(assert (=> b!7928051 m!8308352))

(assert (=> bm!735201 d!2368304))

(declare-fun d!2368306 () Bool)

(declare-fun e!4678788 () Bool)

(assert (=> d!2368306 e!4678788))

(declare-fun res!3145918 () Bool)

(assert (=> d!2368306 (=> (not res!3145918) (not e!4678788))))

(declare-fun lt!2693379 () List!74572)

(assert (=> d!2368306 (= res!3145918 ((_ is Cons!74448) lt!2693379))))

(declare-fun e!4678787 () List!74572)

(assert (=> d!2368306 (= lt!2693379 e!4678787)))

(declare-fun c!1455784 () Bool)

(assert (=> d!2368306 (= c!1455784 ((_ is Nil!74448) (t!390189 (t!390189 (list!19413 t!4440)))))))

(assert (=> d!2368306 (= ($colon+!315 (t!390189 (t!390189 (list!19413 t!4440))) v!5484) lt!2693379)))

(declare-fun bm!735232 () Bool)

(declare-fun call!735237 () (_ BitVec 32))

(assert (=> bm!735232 (= call!735237 (isize!119 lt!2693379))))

(declare-fun bm!735233 () Bool)

(declare-fun call!735238 () (_ BitVec 32))

(assert (=> bm!735233 (= call!735238 (isize!119 (t!390189 (t!390189 (list!19413 t!4440)))))))

(declare-fun b!7928052 () Bool)

(declare-fun e!4678786 () Bool)

(assert (=> b!7928052 (= e!4678786 (= call!735237 (bvadd call!735238 #b00000000000000000000000000000001)))))

(declare-fun b!7928053 () Bool)

(assert (=> b!7928053 (= e!4678787 (Cons!74448 (h!80896 (t!390189 (t!390189 (list!19413 t!4440)))) ($colon+!315 (t!390189 (t!390189 (t!390189 (list!19413 t!4440)))) v!5484)))))

(declare-fun b!7928054 () Bool)

(assert (=> b!7928054 (= e!4678786 (= call!735237 call!735238))))

(declare-fun b!7928055 () Bool)

(declare-fun res!3145919 () Bool)

(assert (=> b!7928055 (=> (not res!3145919) (not e!4678788))))

(assert (=> b!7928055 (= res!3145919 (= (content!15783 lt!2693379) ((_ map or) (content!15783 (t!390189 (t!390189 (list!19413 t!4440)))) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun b!7928056 () Bool)

(declare-fun res!3145916 () Bool)

(assert (=> b!7928056 (=> (not res!3145916) (not e!4678788))))

(assert (=> b!7928056 (= res!3145916 e!4678786)))

(declare-fun c!1455785 () Bool)

(assert (=> b!7928056 (= c!1455785 (bvslt (isize!119 (t!390189 (t!390189 (list!19413 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7928057 () Bool)

(assert (=> b!7928057 (= e!4678787 (Cons!74448 v!5484 (t!390189 (t!390189 (list!19413 t!4440)))))))

(declare-fun b!7928058 () Bool)

(declare-fun res!3145917 () Bool)

(assert (=> b!7928058 (=> (not res!3145917) (not e!4678788))))

(assert (=> b!7928058 (= res!3145917 (= (size!43248 lt!2693379) (+ (size!43248 (t!390189 (t!390189 (list!19413 t!4440)))) 1)))))

(declare-fun b!7928059 () Bool)

(assert (=> b!7928059 (= e!4678788 (= lt!2693379 (++!18259 (t!390189 (t!390189 (list!19413 t!4440))) (Cons!74448 v!5484 Nil!74448))))))

(assert (= (and d!2368306 c!1455784) b!7928057))

(assert (= (and d!2368306 (not c!1455784)) b!7928053))

(assert (= (and d!2368306 res!3145918) b!7928058))

(assert (= (and b!7928058 res!3145917) b!7928056))

(assert (= (and b!7928056 c!1455785) b!7928052))

(assert (= (and b!7928056 (not c!1455785)) b!7928054))

(assert (= (or b!7928052 b!7928054) bm!735233))

(assert (= (or b!7928052 b!7928054) bm!735232))

(assert (= (and b!7928056 res!3145916) b!7928055))

(assert (= (and b!7928055 res!3145919) b!7928059))

(declare-fun m!8310444 () Bool)

(assert (=> bm!735232 m!8310444))

(declare-fun m!8310446 () Bool)

(assert (=> b!7928055 m!8310446))

(declare-fun m!8310448 () Bool)

(assert (=> b!7928055 m!8310448))

(assert (=> b!7928055 m!8308156))

(assert (=> bm!735233 m!8309954))

(assert (=> b!7928056 m!8309954))

(assert (=> b!7928059 m!8309678))

(declare-fun m!8310450 () Bool)

(assert (=> b!7928053 m!8310450))

(declare-fun m!8310452 () Bool)

(assert (=> b!7928058 m!8310452))

(declare-fun m!8310454 () Bool)

(assert (=> b!7928058 m!8310454))

(assert (=> b!7927366 d!2368306))

(declare-fun d!2368308 () Bool)

(declare-fun c!1455786 () Bool)

(assert (=> d!2368308 (= c!1455786 ((_ is Nil!74448) lt!2693263))))

(declare-fun e!4678789 () (InoxSet T!145804))

(assert (=> d!2368308 (= (content!15783 lt!2693263) e!4678789)))

(declare-fun b!7928060 () Bool)

(assert (=> b!7928060 (= e!4678789 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928061 () Bool)

(assert (=> b!7928061 (= e!4678789 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693263) true) (content!15783 (t!390189 lt!2693263))))))

(assert (= (and d!2368308 c!1455786) b!7928060))

(assert (= (and d!2368308 (not c!1455786)) b!7928061))

(declare-fun m!8310456 () Bool)

(assert (=> b!7928061 m!8310456))

(declare-fun m!8310458 () Bool)

(assert (=> b!7928061 m!8310458))

(assert (=> d!2367886 d!2368308))

(declare-fun d!2368310 () Bool)

(declare-fun c!1455787 () Bool)

(assert (=> d!2368310 (= c!1455787 ((_ is Nil!74448) (list!19413 (left!56873 lt!2692978))))))

(declare-fun e!4678790 () (InoxSet T!145804))

(assert (=> d!2368310 (= (content!15783 (list!19413 (left!56873 lt!2692978))) e!4678790)))

(declare-fun b!7928062 () Bool)

(assert (=> b!7928062 (= e!4678790 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928063 () Bool)

(assert (=> b!7928063 (= e!4678790 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 (left!56873 lt!2692978))) true) (content!15783 (t!390189 (list!19413 (left!56873 lt!2692978))))))))

(assert (= (and d!2368310 c!1455787) b!7928062))

(assert (= (and d!2368310 (not c!1455787)) b!7928063))

(declare-fun m!8310460 () Bool)

(assert (=> b!7928063 m!8310460))

(assert (=> b!7928063 m!8310148))

(assert (=> d!2367886 d!2368310))

(declare-fun d!2368312 () Bool)

(declare-fun c!1455788 () Bool)

(assert (=> d!2368312 (= c!1455788 ((_ is Nil!74448) (list!19413 (right!57203 lt!2692978))))))

(declare-fun e!4678791 () (InoxSet T!145804))

(assert (=> d!2368312 (= (content!15783 (list!19413 (right!57203 lt!2692978))) e!4678791)))

(declare-fun b!7928064 () Bool)

(assert (=> b!7928064 (= e!4678791 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928065 () Bool)

(assert (=> b!7928065 (= e!4678791 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 (right!57203 lt!2692978))) true) (content!15783 (t!390189 (list!19413 (right!57203 lt!2692978))))))))

(assert (= (and d!2368312 c!1455788) b!7928064))

(assert (= (and d!2368312 (not c!1455788)) b!7928065))

(declare-fun m!8310462 () Bool)

(assert (=> b!7928065 m!8310462))

(declare-fun m!8310464 () Bool)

(assert (=> b!7928065 m!8310464))

(assert (=> d!2367886 d!2368312))

(assert (=> b!7927155 d!2368102))

(declare-fun d!2368314 () Bool)

(assert (=> d!2368314 (= (height!2217 (left!56873 lt!2693102)) (ite ((_ is Empty!15902) (left!56873 lt!2693102)) 0 (ite ((_ is Leaf!30234) (left!56873 lt!2693102)) 1 (cheight!16113 (left!56873 lt!2693102)))))))

(assert (=> b!7927578 d!2368314))

(declare-fun d!2368316 () Bool)

(assert (=> d!2368316 (= (height!2217 (right!57203 lt!2693102)) (ite ((_ is Empty!15902) (right!57203 lt!2693102)) 0 (ite ((_ is Leaf!30234) (right!57203 lt!2693102)) 1 (cheight!16113 (right!57203 lt!2693102)))))))

(assert (=> b!7927578 d!2368316))

(declare-fun b!7928066 () Bool)

(declare-fun e!4678792 () List!74572)

(assert (=> b!7928066 (= e!4678792 (++!18259 lt!2692979 lt!2692980))))

(declare-fun b!7928069 () Bool)

(declare-fun lt!2693380 () List!74572)

(declare-fun e!4678793 () Bool)

(assert (=> b!7928069 (= e!4678793 (or (not (= (++!18259 lt!2692979 lt!2692980) Nil!74448)) (= lt!2693380 (t!390189 (t!390189 lt!2692976)))))))

(declare-fun b!7928067 () Bool)

(assert (=> b!7928067 (= e!4678792 (Cons!74448 (h!80896 (t!390189 (t!390189 lt!2692976))) (++!18259 (t!390189 (t!390189 (t!390189 lt!2692976))) (++!18259 lt!2692979 lt!2692980))))))

(declare-fun b!7928068 () Bool)

(declare-fun res!3145921 () Bool)

(assert (=> b!7928068 (=> (not res!3145921) (not e!4678793))))

(assert (=> b!7928068 (= res!3145921 (= (size!43248 lt!2693380) (+ (size!43248 (t!390189 (t!390189 lt!2692976))) (size!43248 (++!18259 lt!2692979 lt!2692980)))))))

(declare-fun d!2368318 () Bool)

(assert (=> d!2368318 e!4678793))

(declare-fun res!3145920 () Bool)

(assert (=> d!2368318 (=> (not res!3145920) (not e!4678793))))

(assert (=> d!2368318 (= res!3145920 (= (content!15783 lt!2693380) ((_ map or) (content!15783 (t!390189 (t!390189 lt!2692976))) (content!15783 (++!18259 lt!2692979 lt!2692980)))))))

(assert (=> d!2368318 (= lt!2693380 e!4678792)))

(declare-fun c!1455789 () Bool)

(assert (=> d!2368318 (= c!1455789 ((_ is Nil!74448) (t!390189 (t!390189 lt!2692976))))))

(assert (=> d!2368318 (= (++!18259 (t!390189 (t!390189 lt!2692976)) (++!18259 lt!2692979 lt!2692980)) lt!2693380)))

(assert (= (and d!2368318 c!1455789) b!7928066))

(assert (= (and d!2368318 (not c!1455789)) b!7928067))

(assert (= (and d!2368318 res!3145920) b!7928068))

(assert (= (and b!7928068 res!3145921) b!7928069))

(assert (=> b!7928067 m!8307836))

(declare-fun m!8310466 () Bool)

(assert (=> b!7928067 m!8310466))

(declare-fun m!8310468 () Bool)

(assert (=> b!7928068 m!8310468))

(assert (=> b!7928068 m!8309764))

(assert (=> b!7928068 m!8307836))

(assert (=> b!7928068 m!8308248))

(declare-fun m!8310470 () Bool)

(assert (=> d!2368318 m!8310470))

(assert (=> d!2368318 m!8309648))

(assert (=> d!2368318 m!8307836))

(assert (=> d!2368318 m!8308252))

(assert (=> b!7927309 d!2368318))

(declare-fun d!2368320 () Bool)

(declare-fun lt!2693381 () Bool)

(assert (=> d!2368320 (= lt!2693381 (isEmpty!42778 (list!19413 (right!57203 (left!56873 t!4440)))))))

(assert (=> d!2368320 (= lt!2693381 (= (size!43249 (right!57203 (left!56873 t!4440))) 0))))

(assert (=> d!2368320 (= (isEmpty!42776 (right!57203 (left!56873 t!4440))) lt!2693381)))

(declare-fun bs!1968880 () Bool)

(assert (= bs!1968880 d!2368320))

(assert (=> bs!1968880 m!8308214))

(assert (=> bs!1968880 m!8308214))

(declare-fun m!8310472 () Bool)

(assert (=> bs!1968880 m!8310472))

(assert (=> bs!1968880 m!8308906))

(assert (=> b!7927534 d!2368320))

(declare-fun e!4678795 () List!74572)

(declare-fun b!7928073 () Bool)

(assert (=> b!7928073 (= e!4678795 (++!18259 (list!19413 (left!56873 (ite c!1455443 (left!56873 (right!57203 (right!57203 t!4440))) (right!57203 lt!2693133)))) (list!19413 (right!57203 (ite c!1455443 (left!56873 (right!57203 (right!57203 t!4440))) (right!57203 lt!2693133))))))))

(declare-fun b!7928071 () Bool)

(declare-fun e!4678794 () List!74572)

(assert (=> b!7928071 (= e!4678794 e!4678795)))

(declare-fun c!1455791 () Bool)

(assert (=> b!7928071 (= c!1455791 ((_ is Leaf!30234) (ite c!1455443 (left!56873 (right!57203 (right!57203 t!4440))) (right!57203 lt!2693133))))))

(declare-fun b!7928072 () Bool)

(assert (=> b!7928072 (= e!4678795 (list!19415 (xs!19290 (ite c!1455443 (left!56873 (right!57203 (right!57203 t!4440))) (right!57203 lt!2693133)))))))

(declare-fun b!7928070 () Bool)

(assert (=> b!7928070 (= e!4678794 Nil!74448)))

(declare-fun c!1455790 () Bool)

(declare-fun d!2368322 () Bool)

(assert (=> d!2368322 (= c!1455790 ((_ is Empty!15902) (ite c!1455443 (left!56873 (right!57203 (right!57203 t!4440))) (right!57203 lt!2693133))))))

(assert (=> d!2368322 (= (list!19413 (ite c!1455443 (left!56873 (right!57203 (right!57203 t!4440))) (right!57203 lt!2693133))) e!4678794)))

(assert (= (and d!2368322 c!1455790) b!7928070))

(assert (= (and d!2368322 (not c!1455790)) b!7928071))

(assert (= (and b!7928071 c!1455791) b!7928072))

(assert (= (and b!7928071 (not c!1455791)) b!7928073))

(declare-fun m!8310474 () Bool)

(assert (=> b!7928073 m!8310474))

(declare-fun m!8310476 () Bool)

(assert (=> b!7928073 m!8310476))

(assert (=> b!7928073 m!8310474))

(assert (=> b!7928073 m!8310476))

(declare-fun m!8310478 () Bool)

(assert (=> b!7928073 m!8310478))

(declare-fun m!8310480 () Bool)

(assert (=> b!7928072 m!8310480))

(assert (=> bm!735196 d!2368322))

(declare-fun b!7928074 () Bool)

(declare-fun e!4678796 () List!74572)

(assert (=> b!7928074 (= e!4678796 (list!19413 (right!57203 (left!56873 (left!56873 t!4440)))))))

(declare-fun b!7928077 () Bool)

(declare-fun e!4678797 () Bool)

(declare-fun lt!2693382 () List!74572)

(assert (=> b!7928077 (= e!4678797 (or (not (= (list!19413 (right!57203 (left!56873 (left!56873 t!4440)))) Nil!74448)) (= lt!2693382 (list!19413 (left!56873 (left!56873 (left!56873 t!4440)))))))))

(declare-fun b!7928075 () Bool)

(assert (=> b!7928075 (= e!4678796 (Cons!74448 (h!80896 (list!19413 (left!56873 (left!56873 (left!56873 t!4440))))) (++!18259 (t!390189 (list!19413 (left!56873 (left!56873 (left!56873 t!4440))))) (list!19413 (right!57203 (left!56873 (left!56873 t!4440)))))))))

(declare-fun b!7928076 () Bool)

(declare-fun res!3145923 () Bool)

(assert (=> b!7928076 (=> (not res!3145923) (not e!4678797))))

(assert (=> b!7928076 (= res!3145923 (= (size!43248 lt!2693382) (+ (size!43248 (list!19413 (left!56873 (left!56873 (left!56873 t!4440))))) (size!43248 (list!19413 (right!57203 (left!56873 (left!56873 t!4440))))))))))

(declare-fun d!2368324 () Bool)

(assert (=> d!2368324 e!4678797))

(declare-fun res!3145922 () Bool)

(assert (=> d!2368324 (=> (not res!3145922) (not e!4678797))))

(assert (=> d!2368324 (= res!3145922 (= (content!15783 lt!2693382) ((_ map or) (content!15783 (list!19413 (left!56873 (left!56873 (left!56873 t!4440))))) (content!15783 (list!19413 (right!57203 (left!56873 (left!56873 t!4440))))))))))

(assert (=> d!2368324 (= lt!2693382 e!4678796)))

(declare-fun c!1455792 () Bool)

(assert (=> d!2368324 (= c!1455792 ((_ is Nil!74448) (list!19413 (left!56873 (left!56873 (left!56873 t!4440))))))))

(assert (=> d!2368324 (= (++!18259 (list!19413 (left!56873 (left!56873 (left!56873 t!4440)))) (list!19413 (right!57203 (left!56873 (left!56873 t!4440))))) lt!2693382)))

(assert (= (and d!2368324 c!1455792) b!7928074))

(assert (= (and d!2368324 (not c!1455792)) b!7928075))

(assert (= (and d!2368324 res!3145922) b!7928076))

(assert (= (and b!7928076 res!3145923) b!7928077))

(assert (=> b!7928075 m!8308550))

(declare-fun m!8310482 () Bool)

(assert (=> b!7928075 m!8310482))

(declare-fun m!8310484 () Bool)

(assert (=> b!7928076 m!8310484))

(assert (=> b!7928076 m!8308548))

(declare-fun m!8310486 () Bool)

(assert (=> b!7928076 m!8310486))

(assert (=> b!7928076 m!8308550))

(declare-fun m!8310488 () Bool)

(assert (=> b!7928076 m!8310488))

(declare-fun m!8310490 () Bool)

(assert (=> d!2368324 m!8310490))

(assert (=> d!2368324 m!8308548))

(declare-fun m!8310492 () Bool)

(assert (=> d!2368324 m!8310492))

(assert (=> d!2368324 m!8308550))

(declare-fun m!8310494 () Bool)

(assert (=> d!2368324 m!8310494))

(assert (=> b!7927107 d!2368324))

(declare-fun b!7928081 () Bool)

(declare-fun e!4678799 () List!74572)

(assert (=> b!7928081 (= e!4678799 (++!18259 (list!19413 (left!56873 (left!56873 (left!56873 (left!56873 t!4440))))) (list!19413 (right!57203 (left!56873 (left!56873 (left!56873 t!4440)))))))))

(declare-fun b!7928079 () Bool)

(declare-fun e!4678798 () List!74572)

(assert (=> b!7928079 (= e!4678798 e!4678799)))

(declare-fun c!1455794 () Bool)

(assert (=> b!7928079 (= c!1455794 ((_ is Leaf!30234) (left!56873 (left!56873 (left!56873 t!4440)))))))

(declare-fun b!7928080 () Bool)

(assert (=> b!7928080 (= e!4678799 (list!19415 (xs!19290 (left!56873 (left!56873 (left!56873 t!4440))))))))

(declare-fun b!7928078 () Bool)

(assert (=> b!7928078 (= e!4678798 Nil!74448)))

(declare-fun d!2368326 () Bool)

(declare-fun c!1455793 () Bool)

(assert (=> d!2368326 (= c!1455793 ((_ is Empty!15902) (left!56873 (left!56873 (left!56873 t!4440)))))))

(assert (=> d!2368326 (= (list!19413 (left!56873 (left!56873 (left!56873 t!4440)))) e!4678798)))

(assert (= (and d!2368326 c!1455793) b!7928078))

(assert (= (and d!2368326 (not c!1455793)) b!7928079))

(assert (= (and b!7928079 c!1455794) b!7928080))

(assert (= (and b!7928079 (not c!1455794)) b!7928081))

(declare-fun m!8310496 () Bool)

(assert (=> b!7928081 m!8310496))

(declare-fun m!8310498 () Bool)

(assert (=> b!7928081 m!8310498))

(assert (=> b!7928081 m!8310496))

(assert (=> b!7928081 m!8310498))

(declare-fun m!8310500 () Bool)

(assert (=> b!7928081 m!8310500))

(declare-fun m!8310502 () Bool)

(assert (=> b!7928080 m!8310502))

(assert (=> b!7927107 d!2368326))

(declare-fun b!7928085 () Bool)

(declare-fun e!4678801 () List!74572)

(assert (=> b!7928085 (= e!4678801 (++!18259 (list!19413 (left!56873 (right!57203 (left!56873 (left!56873 t!4440))))) (list!19413 (right!57203 (right!57203 (left!56873 (left!56873 t!4440)))))))))

(declare-fun b!7928083 () Bool)

(declare-fun e!4678800 () List!74572)

(assert (=> b!7928083 (= e!4678800 e!4678801)))

(declare-fun c!1455796 () Bool)

(assert (=> b!7928083 (= c!1455796 ((_ is Leaf!30234) (right!57203 (left!56873 (left!56873 t!4440)))))))

(declare-fun b!7928084 () Bool)

(assert (=> b!7928084 (= e!4678801 (list!19415 (xs!19290 (right!57203 (left!56873 (left!56873 t!4440))))))))

(declare-fun b!7928082 () Bool)

(assert (=> b!7928082 (= e!4678800 Nil!74448)))

(declare-fun d!2368328 () Bool)

(declare-fun c!1455795 () Bool)

(assert (=> d!2368328 (= c!1455795 ((_ is Empty!15902) (right!57203 (left!56873 (left!56873 t!4440)))))))

(assert (=> d!2368328 (= (list!19413 (right!57203 (left!56873 (left!56873 t!4440)))) e!4678800)))

(assert (= (and d!2368328 c!1455795) b!7928082))

(assert (= (and d!2368328 (not c!1455795)) b!7928083))

(assert (= (and b!7928083 c!1455796) b!7928084))

(assert (= (and b!7928083 (not c!1455796)) b!7928085))

(declare-fun m!8310504 () Bool)

(assert (=> b!7928085 m!8310504))

(declare-fun m!8310506 () Bool)

(assert (=> b!7928085 m!8310506))

(assert (=> b!7928085 m!8310504))

(assert (=> b!7928085 m!8310506))

(declare-fun m!8310508 () Bool)

(assert (=> b!7928085 m!8310508))

(declare-fun m!8310510 () Bool)

(assert (=> b!7928084 m!8310510))

(assert (=> b!7927107 d!2368328))

(declare-fun e!4678802 () List!74572)

(declare-fun b!7928086 () Bool)

(assert (=> b!7928086 (= e!4678802 (ite c!1455404 call!735191 lt!2693092))))

(declare-fun e!4678803 () Bool)

(declare-fun lt!2693383 () List!74572)

(declare-fun b!7928089 () Bool)

(assert (=> b!7928089 (= e!4678803 (or (not (= (ite c!1455404 call!735191 lt!2693092) Nil!74448)) (= lt!2693383 (t!390189 (ite c!1455404 lt!2693097 lt!2693089)))))))

(declare-fun b!7928087 () Bool)

(assert (=> b!7928087 (= e!4678802 (Cons!74448 (h!80896 (t!390189 (ite c!1455404 lt!2693097 lt!2693089))) (++!18259 (t!390189 (t!390189 (ite c!1455404 lt!2693097 lt!2693089))) (ite c!1455404 call!735191 lt!2693092))))))

(declare-fun b!7928088 () Bool)

(declare-fun res!3145925 () Bool)

(assert (=> b!7928088 (=> (not res!3145925) (not e!4678803))))

(assert (=> b!7928088 (= res!3145925 (= (size!43248 lt!2693383) (+ (size!43248 (t!390189 (ite c!1455404 lt!2693097 lt!2693089))) (size!43248 (ite c!1455404 call!735191 lt!2693092)))))))

(declare-fun d!2368330 () Bool)

(assert (=> d!2368330 e!4678803))

(declare-fun res!3145924 () Bool)

(assert (=> d!2368330 (=> (not res!3145924) (not e!4678803))))

(assert (=> d!2368330 (= res!3145924 (= (content!15783 lt!2693383) ((_ map or) (content!15783 (t!390189 (ite c!1455404 lt!2693097 lt!2693089))) (content!15783 (ite c!1455404 call!735191 lt!2693092)))))))

(assert (=> d!2368330 (= lt!2693383 e!4678802)))

(declare-fun c!1455797 () Bool)

(assert (=> d!2368330 (= c!1455797 ((_ is Nil!74448) (t!390189 (ite c!1455404 lt!2693097 lt!2693089))))))

(assert (=> d!2368330 (= (++!18259 (t!390189 (ite c!1455404 lt!2693097 lt!2693089)) (ite c!1455404 call!735191 lt!2693092)) lt!2693383)))

(assert (= (and d!2368330 c!1455797) b!7928086))

(assert (= (and d!2368330 (not c!1455797)) b!7928087))

(assert (= (and d!2368330 res!3145924) b!7928088))

(assert (= (and b!7928088 res!3145925) b!7928089))

(declare-fun m!8310512 () Bool)

(assert (=> b!7928087 m!8310512))

(declare-fun m!8310514 () Bool)

(assert (=> b!7928088 m!8310514))

(declare-fun m!8310516 () Bool)

(assert (=> b!7928088 m!8310516))

(assert (=> b!7928088 m!8308824))

(declare-fun m!8310518 () Bool)

(assert (=> d!2368330 m!8310518))

(declare-fun m!8310520 () Bool)

(assert (=> d!2368330 m!8310520))

(assert (=> d!2368330 m!8308830))

(assert (=> b!7927240 d!2368330))

(declare-fun d!2368332 () Bool)

(declare-fun lt!2693384 () Int)

(assert (=> d!2368332 (>= lt!2693384 0)))

(declare-fun e!4678804 () Int)

(assert (=> d!2368332 (= lt!2693384 e!4678804)))

(declare-fun c!1455798 () Bool)

(assert (=> d!2368332 (= c!1455798 ((_ is Nil!74448) (t!390189 (++!18259 lt!2692979 lt!2692980))))))

(assert (=> d!2368332 (= (size!43248 (t!390189 (++!18259 lt!2692979 lt!2692980))) lt!2693384)))

(declare-fun b!7928090 () Bool)

(assert (=> b!7928090 (= e!4678804 0)))

(declare-fun b!7928091 () Bool)

(assert (=> b!7928091 (= e!4678804 (+ 1 (size!43248 (t!390189 (t!390189 (++!18259 lt!2692979 lt!2692980))))))))

(assert (= (and d!2368332 c!1455798) b!7928090))

(assert (= (and d!2368332 (not c!1455798)) b!7928091))

(declare-fun m!8310522 () Bool)

(assert (=> b!7928091 m!8310522))

(assert (=> b!7927548 d!2368332))

(assert (=> b!7927178 d!2367558))

(assert (=> b!7927178 d!2368252))

(assert (=> d!2367912 d!2367988))

(assert (=> d!2367912 d!2367878))

(assert (=> b!7927588 d!2368008))

(declare-fun b!7928092 () Bool)

(declare-fun e!4678805 () List!74572)

(assert (=> b!7928092 (= e!4678805 (list!19413 (right!57203 lt!2692975)))))

(declare-fun b!7928095 () Bool)

(declare-fun e!4678806 () Bool)

(declare-fun lt!2693385 () List!74572)

(assert (=> b!7928095 (= e!4678806 (or (not (= (list!19413 (right!57203 lt!2692975)) Nil!74448)) (= lt!2693385 (list!19413 (left!56873 lt!2692975)))))))

(declare-fun b!7928093 () Bool)

(assert (=> b!7928093 (= e!4678805 (Cons!74448 (h!80896 (list!19413 (left!56873 lt!2692975))) (++!18259 (t!390189 (list!19413 (left!56873 lt!2692975))) (list!19413 (right!57203 lt!2692975)))))))

(declare-fun b!7928094 () Bool)

(declare-fun res!3145927 () Bool)

(assert (=> b!7928094 (=> (not res!3145927) (not e!4678806))))

(assert (=> b!7928094 (= res!3145927 (= (size!43248 lt!2693385) (+ (size!43248 (list!19413 (left!56873 lt!2692975))) (size!43248 (list!19413 (right!57203 lt!2692975))))))))

(declare-fun d!2368334 () Bool)

(assert (=> d!2368334 e!4678806))

(declare-fun res!3145926 () Bool)

(assert (=> d!2368334 (=> (not res!3145926) (not e!4678806))))

(assert (=> d!2368334 (= res!3145926 (= (content!15783 lt!2693385) ((_ map or) (content!15783 (list!19413 (left!56873 lt!2692975))) (content!15783 (list!19413 (right!57203 lt!2692975))))))))

(assert (=> d!2368334 (= lt!2693385 e!4678805)))

(declare-fun c!1455799 () Bool)

(assert (=> d!2368334 (= c!1455799 ((_ is Nil!74448) (list!19413 (left!56873 lt!2692975))))))

(assert (=> d!2368334 (= (++!18259 (list!19413 (left!56873 lt!2692975)) (list!19413 (right!57203 lt!2692975))) lt!2693385)))

(assert (= (and d!2368334 c!1455799) b!7928092))

(assert (= (and d!2368334 (not c!1455799)) b!7928093))

(assert (= (and d!2368334 res!3145926) b!7928094))

(assert (= (and b!7928094 res!3145927) b!7928095))

(assert (=> b!7928093 m!8308762))

(declare-fun m!8310524 () Bool)

(assert (=> b!7928093 m!8310524))

(declare-fun m!8310526 () Bool)

(assert (=> b!7928094 m!8310526))

(assert (=> b!7928094 m!8308754))

(declare-fun m!8310528 () Bool)

(assert (=> b!7928094 m!8310528))

(assert (=> b!7928094 m!8308762))

(declare-fun m!8310530 () Bool)

(assert (=> b!7928094 m!8310530))

(declare-fun m!8310532 () Bool)

(assert (=> d!2368334 m!8310532))

(assert (=> d!2368334 m!8308754))

(declare-fun m!8310534 () Bool)

(assert (=> d!2368334 m!8310534))

(assert (=> d!2368334 m!8308762))

(declare-fun m!8310536 () Bool)

(assert (=> d!2368334 m!8310536))

(assert (=> b!7927218 d!2368334))

(declare-fun b!7928099 () Bool)

(declare-fun e!4678808 () List!74572)

(assert (=> b!7928099 (= e!4678808 (++!18259 (list!19413 (left!56873 (left!56873 lt!2692975))) (list!19413 (right!57203 (left!56873 lt!2692975)))))))

(declare-fun b!7928097 () Bool)

(declare-fun e!4678807 () List!74572)

(assert (=> b!7928097 (= e!4678807 e!4678808)))

(declare-fun c!1455801 () Bool)

(assert (=> b!7928097 (= c!1455801 ((_ is Leaf!30234) (left!56873 lt!2692975)))))

(declare-fun b!7928098 () Bool)

(assert (=> b!7928098 (= e!4678808 (list!19415 (xs!19290 (left!56873 lt!2692975))))))

(declare-fun b!7928096 () Bool)

(assert (=> b!7928096 (= e!4678807 Nil!74448)))

(declare-fun d!2368336 () Bool)

(declare-fun c!1455800 () Bool)

(assert (=> d!2368336 (= c!1455800 ((_ is Empty!15902) (left!56873 lt!2692975)))))

(assert (=> d!2368336 (= (list!19413 (left!56873 lt!2692975)) e!4678807)))

(assert (= (and d!2368336 c!1455800) b!7928096))

(assert (= (and d!2368336 (not c!1455800)) b!7928097))

(assert (= (and b!7928097 c!1455801) b!7928098))

(assert (= (and b!7928097 (not c!1455801)) b!7928099))

(declare-fun m!8310538 () Bool)

(assert (=> b!7928099 m!8310538))

(declare-fun m!8310540 () Bool)

(assert (=> b!7928099 m!8310540))

(assert (=> b!7928099 m!8310538))

(assert (=> b!7928099 m!8310540))

(declare-fun m!8310542 () Bool)

(assert (=> b!7928099 m!8310542))

(declare-fun m!8310544 () Bool)

(assert (=> b!7928098 m!8310544))

(assert (=> b!7927218 d!2368336))

(declare-fun b!7928103 () Bool)

(declare-fun e!4678810 () List!74572)

(assert (=> b!7928103 (= e!4678810 (++!18259 (list!19413 (left!56873 (right!57203 lt!2692975))) (list!19413 (right!57203 (right!57203 lt!2692975)))))))

(declare-fun b!7928101 () Bool)

(declare-fun e!4678809 () List!74572)

(assert (=> b!7928101 (= e!4678809 e!4678810)))

(declare-fun c!1455803 () Bool)

(assert (=> b!7928101 (= c!1455803 ((_ is Leaf!30234) (right!57203 lt!2692975)))))

(declare-fun b!7928102 () Bool)

(assert (=> b!7928102 (= e!4678810 (list!19415 (xs!19290 (right!57203 lt!2692975))))))

(declare-fun b!7928100 () Bool)

(assert (=> b!7928100 (= e!4678809 Nil!74448)))

(declare-fun d!2368338 () Bool)

(declare-fun c!1455802 () Bool)

(assert (=> d!2368338 (= c!1455802 ((_ is Empty!15902) (right!57203 lt!2692975)))))

(assert (=> d!2368338 (= (list!19413 (right!57203 lt!2692975)) e!4678809)))

(assert (= (and d!2368338 c!1455802) b!7928100))

(assert (= (and d!2368338 (not c!1455802)) b!7928101))

(assert (= (and b!7928101 c!1455803) b!7928102))

(assert (= (and b!7928101 (not c!1455803)) b!7928103))

(declare-fun m!8310546 () Bool)

(assert (=> b!7928103 m!8310546))

(declare-fun m!8310548 () Bool)

(assert (=> b!7928103 m!8310548))

(assert (=> b!7928103 m!8310546))

(assert (=> b!7928103 m!8310548))

(declare-fun m!8310550 () Bool)

(assert (=> b!7928103 m!8310550))

(declare-fun m!8310552 () Bool)

(assert (=> b!7928102 m!8310552))

(assert (=> b!7927218 d!2368338))

(declare-fun d!2368340 () Bool)

(declare-fun res!3145928 () Bool)

(declare-fun e!4678811 () Bool)

(assert (=> d!2368340 (=> (not res!3145928) (not e!4678811))))

(assert (=> d!2368340 (= res!3145928 (<= (size!43248 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440))))) 512))))

(assert (=> d!2368340 (= (inv!95724 (right!57203 (right!57203 t!4440))) e!4678811)))

(declare-fun b!7928104 () Bool)

(declare-fun res!3145929 () Bool)

(assert (=> b!7928104 (=> (not res!3145929) (not e!4678811))))

(assert (=> b!7928104 (= res!3145929 (= (csize!32035 (right!57203 (right!57203 t!4440))) (size!43248 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440)))))))))

(declare-fun b!7928105 () Bool)

(assert (=> b!7928105 (= e!4678811 (and (> (csize!32035 (right!57203 (right!57203 t!4440))) 0) (<= (csize!32035 (right!57203 (right!57203 t!4440))) 512)))))

(assert (= (and d!2368340 res!3145928) b!7928104))

(assert (= (and b!7928104 res!3145929) b!7928105))

(assert (=> d!2368340 m!8308312))

(assert (=> d!2368340 m!8308312))

(declare-fun m!8310554 () Bool)

(assert (=> d!2368340 m!8310554))

(assert (=> b!7928104 m!8308312))

(assert (=> b!7928104 m!8308312))

(assert (=> b!7928104 m!8310554))

(assert (=> b!7927516 d!2368340))

(declare-fun d!2368342 () Bool)

(declare-fun c!1455804 () Bool)

(assert (=> d!2368342 (= c!1455804 ((_ is Nil!74448) lt!2693267))))

(declare-fun e!4678812 () (InoxSet T!145804))

(assert (=> d!2368342 (= (content!15783 lt!2693267) e!4678812)))

(declare-fun b!7928106 () Bool)

(assert (=> b!7928106 (= e!4678812 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928107 () Bool)

(assert (=> b!7928107 (= e!4678812 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693267) true) (content!15783 (t!390189 lt!2693267))))))

(assert (= (and d!2368342 c!1455804) b!7928106))

(assert (= (and d!2368342 (not c!1455804)) b!7928107))

(declare-fun m!8310556 () Bool)

(assert (=> b!7928107 m!8310556))

(declare-fun m!8310558 () Bool)

(assert (=> b!7928107 m!8310558))

(assert (=> b!7927524 d!2368342))

(assert (=> b!7927524 d!2368258))

(declare-fun d!2368344 () Bool)

(assert (=> d!2368344 (= (inv!95720 (xs!19290 (left!56873 (right!57203 t!4440)))) (<= (size!43248 (innerList!15990 (xs!19290 (left!56873 (right!57203 t!4440))))) 2147483647))))

(declare-fun bs!1968881 () Bool)

(assert (= bs!1968881 d!2368344))

(declare-fun m!8310560 () Bool)

(assert (=> bs!1968881 m!8310560))

(assert (=> b!7927596 d!2368344))

(declare-fun b!7928108 () Bool)

(declare-fun e!4678813 () List!74572)

(assert (=> b!7928108 (= e!4678813 (list!19413 (right!57203 (right!57203 lt!2692978))))))

(declare-fun b!7928111 () Bool)

(declare-fun e!4678814 () Bool)

(declare-fun lt!2693386 () List!74572)

(assert (=> b!7928111 (= e!4678814 (or (not (= (list!19413 (right!57203 (right!57203 lt!2692978))) Nil!74448)) (= lt!2693386 (list!19413 (left!56873 (right!57203 lt!2692978))))))))

(declare-fun b!7928109 () Bool)

(assert (=> b!7928109 (= e!4678813 (Cons!74448 (h!80896 (list!19413 (left!56873 (right!57203 lt!2692978)))) (++!18259 (t!390189 (list!19413 (left!56873 (right!57203 lt!2692978)))) (list!19413 (right!57203 (right!57203 lt!2692978))))))))

(declare-fun b!7928110 () Bool)

(declare-fun res!3145931 () Bool)

(assert (=> b!7928110 (=> (not res!3145931) (not e!4678814))))

(assert (=> b!7928110 (= res!3145931 (= (size!43248 lt!2693386) (+ (size!43248 (list!19413 (left!56873 (right!57203 lt!2692978)))) (size!43248 (list!19413 (right!57203 (right!57203 lt!2692978)))))))))

(declare-fun d!2368346 () Bool)

(assert (=> d!2368346 e!4678814))

(declare-fun res!3145930 () Bool)

(assert (=> d!2368346 (=> (not res!3145930) (not e!4678814))))

(assert (=> d!2368346 (= res!3145930 (= (content!15783 lt!2693386) ((_ map or) (content!15783 (list!19413 (left!56873 (right!57203 lt!2692978)))) (content!15783 (list!19413 (right!57203 (right!57203 lt!2692978)))))))))

(assert (=> d!2368346 (= lt!2693386 e!4678813)))

(declare-fun c!1455805 () Bool)

(assert (=> d!2368346 (= c!1455805 ((_ is Nil!74448) (list!19413 (left!56873 (right!57203 lt!2692978)))))))

(assert (=> d!2368346 (= (++!18259 (list!19413 (left!56873 (right!57203 lt!2692978))) (list!19413 (right!57203 (right!57203 lt!2692978)))) lt!2693386)))

(assert (= (and d!2368346 c!1455805) b!7928108))

(assert (= (and d!2368346 (not c!1455805)) b!7928109))

(assert (= (and d!2368346 res!3145930) b!7928110))

(assert (= (and b!7928110 res!3145931) b!7928111))

(assert (=> b!7928109 m!8309348))

(declare-fun m!8310562 () Bool)

(assert (=> b!7928109 m!8310562))

(declare-fun m!8310564 () Bool)

(assert (=> b!7928110 m!8310564))

(assert (=> b!7928110 m!8309346))

(declare-fun m!8310566 () Bool)

(assert (=> b!7928110 m!8310566))

(assert (=> b!7928110 m!8309348))

(declare-fun m!8310568 () Bool)

(assert (=> b!7928110 m!8310568))

(declare-fun m!8310570 () Bool)

(assert (=> d!2368346 m!8310570))

(assert (=> d!2368346 m!8309346))

(declare-fun m!8310572 () Bool)

(assert (=> d!2368346 m!8310572))

(assert (=> d!2368346 m!8309348))

(declare-fun m!8310574 () Bool)

(assert (=> d!2368346 m!8310574))

(assert (=> b!7927496 d!2368346))

(declare-fun b!7928115 () Bool)

(declare-fun e!4678816 () List!74572)

(assert (=> b!7928115 (= e!4678816 (++!18259 (list!19413 (left!56873 (left!56873 (right!57203 lt!2692978)))) (list!19413 (right!57203 (left!56873 (right!57203 lt!2692978))))))))

(declare-fun b!7928113 () Bool)

(declare-fun e!4678815 () List!74572)

(assert (=> b!7928113 (= e!4678815 e!4678816)))

(declare-fun c!1455807 () Bool)

(assert (=> b!7928113 (= c!1455807 ((_ is Leaf!30234) (left!56873 (right!57203 lt!2692978))))))

(declare-fun b!7928114 () Bool)

(assert (=> b!7928114 (= e!4678816 (list!19415 (xs!19290 (left!56873 (right!57203 lt!2692978)))))))

(declare-fun b!7928112 () Bool)

(assert (=> b!7928112 (= e!4678815 Nil!74448)))

(declare-fun d!2368348 () Bool)

(declare-fun c!1455806 () Bool)

(assert (=> d!2368348 (= c!1455806 ((_ is Empty!15902) (left!56873 (right!57203 lt!2692978))))))

(assert (=> d!2368348 (= (list!19413 (left!56873 (right!57203 lt!2692978))) e!4678815)))

(assert (= (and d!2368348 c!1455806) b!7928112))

(assert (= (and d!2368348 (not c!1455806)) b!7928113))

(assert (= (and b!7928113 c!1455807) b!7928114))

(assert (= (and b!7928113 (not c!1455807)) b!7928115))

(declare-fun m!8310576 () Bool)

(assert (=> b!7928115 m!8310576))

(declare-fun m!8310578 () Bool)

(assert (=> b!7928115 m!8310578))

(assert (=> b!7928115 m!8310576))

(assert (=> b!7928115 m!8310578))

(declare-fun m!8310580 () Bool)

(assert (=> b!7928115 m!8310580))

(declare-fun m!8310582 () Bool)

(assert (=> b!7928114 m!8310582))

(assert (=> b!7927496 d!2368348))

(declare-fun b!7928119 () Bool)

(declare-fun e!4678818 () List!74572)

(assert (=> b!7928119 (= e!4678818 (++!18259 (list!19413 (left!56873 (right!57203 (right!57203 lt!2692978)))) (list!19413 (right!57203 (right!57203 (right!57203 lt!2692978))))))))

(declare-fun b!7928117 () Bool)

(declare-fun e!4678817 () List!74572)

(assert (=> b!7928117 (= e!4678817 e!4678818)))

(declare-fun c!1455809 () Bool)

(assert (=> b!7928117 (= c!1455809 ((_ is Leaf!30234) (right!57203 (right!57203 lt!2692978))))))

(declare-fun b!7928118 () Bool)

(assert (=> b!7928118 (= e!4678818 (list!19415 (xs!19290 (right!57203 (right!57203 lt!2692978)))))))

(declare-fun b!7928116 () Bool)

(assert (=> b!7928116 (= e!4678817 Nil!74448)))

(declare-fun d!2368350 () Bool)

(declare-fun c!1455808 () Bool)

(assert (=> d!2368350 (= c!1455808 ((_ is Empty!15902) (right!57203 (right!57203 lt!2692978))))))

(assert (=> d!2368350 (= (list!19413 (right!57203 (right!57203 lt!2692978))) e!4678817)))

(assert (= (and d!2368350 c!1455808) b!7928116))

(assert (= (and d!2368350 (not c!1455808)) b!7928117))

(assert (= (and b!7928117 c!1455809) b!7928118))

(assert (= (and b!7928117 (not c!1455809)) b!7928119))

(declare-fun m!8310584 () Bool)

(assert (=> b!7928119 m!8310584))

(declare-fun m!8310586 () Bool)

(assert (=> b!7928119 m!8310586))

(assert (=> b!7928119 m!8310584))

(assert (=> b!7928119 m!8310586))

(declare-fun m!8310588 () Bool)

(assert (=> b!7928119 m!8310588))

(declare-fun m!8310590 () Bool)

(assert (=> b!7928118 m!8310590))

(assert (=> b!7927496 d!2368350))

(declare-fun d!2368352 () Bool)

(declare-fun c!1455810 () Bool)

(assert (=> d!2368352 (= c!1455810 ((_ is Nil!74448) (t!390189 lt!2693117)))))

(declare-fun e!4678819 () (InoxSet T!145804))

(assert (=> d!2368352 (= (content!15783 (t!390189 lt!2693117)) e!4678819)))

(declare-fun b!7928120 () Bool)

(assert (=> b!7928120 (= e!4678819 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928121 () Bool)

(assert (=> b!7928121 (= e!4678819 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 lt!2693117)) true) (content!15783 (t!390189 (t!390189 lt!2693117)))))))

(assert (= (and d!2368352 c!1455810) b!7928120))

(assert (= (and d!2368352 (not c!1455810)) b!7928121))

(declare-fun m!8310592 () Bool)

(assert (=> b!7928121 m!8310592))

(declare-fun m!8310594 () Bool)

(assert (=> b!7928121 m!8310594))

(assert (=> b!7927482 d!2368352))

(declare-fun d!2368354 () Bool)

(declare-fun lt!2693387 () Int)

(assert (=> d!2368354 (>= lt!2693387 0)))

(declare-fun e!4678820 () Int)

(assert (=> d!2368354 (= lt!2693387 e!4678820)))

(declare-fun c!1455811 () Bool)

(assert (=> d!2368354 (= c!1455811 ((_ is Nil!74448) (innerList!15990 (xs!19290 (right!57203 t!4440)))))))

(assert (=> d!2368354 (= (size!43248 (innerList!15990 (xs!19290 (right!57203 t!4440)))) lt!2693387)))

(declare-fun b!7928122 () Bool)

(assert (=> b!7928122 (= e!4678820 0)))

(declare-fun b!7928123 () Bool)

(assert (=> b!7928123 (= e!4678820 (+ 1 (size!43248 (t!390189 (innerList!15990 (xs!19290 (right!57203 t!4440)))))))))

(assert (= (and d!2368354 c!1455811) b!7928122))

(assert (= (and d!2368354 (not c!1455811)) b!7928123))

(declare-fun m!8310596 () Bool)

(assert (=> b!7928123 m!8310596))

(assert (=> d!2367658 d!2368354))

(declare-fun d!2368356 () Bool)

(declare-fun lt!2693388 () Int)

(assert (=> d!2368356 (>= lt!2693388 0)))

(declare-fun e!4678821 () Int)

(assert (=> d!2368356 (= lt!2693388 e!4678821)))

(declare-fun c!1455812 () Bool)

(assert (=> d!2368356 (= c!1455812 ((_ is Nil!74448) (t!390189 lt!2693120)))))

(assert (=> d!2368356 (= (size!43248 (t!390189 lt!2693120)) lt!2693388)))

(declare-fun b!7928124 () Bool)

(assert (=> b!7928124 (= e!4678821 0)))

(declare-fun b!7928125 () Bool)

(assert (=> b!7928125 (= e!4678821 (+ 1 (size!43248 (t!390189 (t!390189 lt!2693120)))))))

(assert (= (and d!2368356 c!1455812) b!7928124))

(assert (= (and d!2368356 (not c!1455812)) b!7928125))

(declare-fun m!8310598 () Bool)

(assert (=> b!7928125 m!8310598))

(assert (=> b!7927546 d!2368356))

(declare-fun d!2368358 () Bool)

(assert (=> d!2368358 (= (max!0 (height!2217 (left!56873 (left!56873 t!4440))) (height!2217 (right!57203 (left!56873 t!4440)))) (ite (< (height!2217 (left!56873 (left!56873 t!4440))) (height!2217 (right!57203 (left!56873 t!4440)))) (height!2217 (right!57203 (left!56873 t!4440))) (height!2217 (left!56873 (left!56873 t!4440)))))))

(assert (=> b!7927285 d!2368358))

(declare-fun d!2368360 () Bool)

(assert (=> d!2368360 (= (height!2217 (left!56873 (left!56873 t!4440))) (ite ((_ is Empty!15902) (left!56873 (left!56873 t!4440))) 0 (ite ((_ is Leaf!30234) (left!56873 (left!56873 t!4440))) 1 (cheight!16113 (left!56873 (left!56873 t!4440))))))))

(assert (=> b!7927285 d!2368360))

(declare-fun d!2368362 () Bool)

(assert (=> d!2368362 (= (height!2217 (right!57203 (left!56873 t!4440))) (ite ((_ is Empty!15902) (right!57203 (left!56873 t!4440))) 0 (ite ((_ is Leaf!30234) (right!57203 (left!56873 t!4440))) 1 (cheight!16113 (right!57203 (left!56873 t!4440))))))))

(assert (=> b!7927285 d!2368362))

(assert (=> b!7927579 d!2368314))

(assert (=> b!7927579 d!2368316))

(declare-fun d!2368364 () Bool)

(assert (=> d!2368364 (= (isEmpty!42778 (list!19413 (right!57203 t!4440))) ((_ is Nil!74448) (list!19413 (right!57203 t!4440))))))

(assert (=> d!2367894 d!2368364))

(assert (=> d!2367894 d!2367546))

(declare-fun d!2368366 () Bool)

(declare-fun lt!2693389 () Int)

(assert (=> d!2368366 (= lt!2693389 (size!43248 (list!19413 (right!57203 t!4440))))))

(assert (=> d!2368366 (= lt!2693389 (ite ((_ is Empty!15902) (right!57203 t!4440)) 0 (ite ((_ is Leaf!30234) (right!57203 t!4440)) (csize!32035 (right!57203 t!4440)) (csize!32034 (right!57203 t!4440)))))))

(assert (=> d!2368366 (= (size!43249 (right!57203 t!4440)) lt!2693389)))

(declare-fun bs!1968882 () Bool)

(assert (= bs!1968882 d!2368366))

(assert (=> bs!1968882 m!8307842))

(assert (=> bs!1968882 m!8307842))

(assert (=> bs!1968882 m!8308578))

(assert (=> d!2367894 d!2368366))

(declare-fun d!2368368 () Bool)

(declare-fun lt!2693390 () Int)

(assert (=> d!2368368 (>= lt!2693390 0)))

(declare-fun e!4678822 () Int)

(assert (=> d!2368368 (= lt!2693390 e!4678822)))

(declare-fun c!1455813 () Bool)

(assert (=> d!2368368 (= c!1455813 ((_ is Nil!74448) lt!2693205))))

(assert (=> d!2368368 (= (size!43248 lt!2693205) lt!2693390)))

(declare-fun b!7928126 () Bool)

(assert (=> b!7928126 (= e!4678822 0)))

(declare-fun b!7928127 () Bool)

(assert (=> b!7928127 (= e!4678822 (+ 1 (size!43248 (t!390189 lt!2693205))))))

(assert (= (and d!2368368 c!1455813) b!7928126))

(assert (= (and d!2368368 (not c!1455813)) b!7928127))

(declare-fun m!8310600 () Bool)

(assert (=> b!7928127 m!8310600))

(assert (=> b!7927310 d!2368368))

(assert (=> b!7927310 d!2368102))

(assert (=> b!7927310 d!2367920))

(declare-fun b!7928128 () Bool)

(declare-fun e!4678823 () List!74572)

(assert (=> b!7928128 (= e!4678823 lt!2693104)))

(declare-fun b!7928131 () Bool)

(declare-fun e!4678824 () Bool)

(declare-fun lt!2693391 () List!74572)

(assert (=> b!7928131 (= e!4678824 (or (not (= lt!2693104 Nil!74448)) (= lt!2693391 (t!390189 call!735191))))))

(declare-fun b!7928129 () Bool)

(assert (=> b!7928129 (= e!4678823 (Cons!74448 (h!80896 (t!390189 call!735191)) (++!18259 (t!390189 (t!390189 call!735191)) lt!2693104)))))

(declare-fun b!7928130 () Bool)

(declare-fun res!3145933 () Bool)

(assert (=> b!7928130 (=> (not res!3145933) (not e!4678824))))

(assert (=> b!7928130 (= res!3145933 (= (size!43248 lt!2693391) (+ (size!43248 (t!390189 call!735191)) (size!43248 lt!2693104))))))

(declare-fun d!2368370 () Bool)

(assert (=> d!2368370 e!4678824))

(declare-fun res!3145932 () Bool)

(assert (=> d!2368370 (=> (not res!3145932) (not e!4678824))))

(assert (=> d!2368370 (= res!3145932 (= (content!15783 lt!2693391) ((_ map or) (content!15783 (t!390189 call!735191)) (content!15783 lt!2693104))))))

(assert (=> d!2368370 (= lt!2693391 e!4678823)))

(declare-fun c!1455814 () Bool)

(assert (=> d!2368370 (= c!1455814 ((_ is Nil!74448) (t!390189 call!735191)))))

(assert (=> d!2368370 (= (++!18259 (t!390189 call!735191) lt!2693104) lt!2693391)))

(assert (= (and d!2368370 c!1455814) b!7928128))

(assert (= (and d!2368370 (not c!1455814)) b!7928129))

(assert (= (and d!2368370 res!3145932) b!7928130))

(assert (= (and b!7928130 res!3145933) b!7928131))

(declare-fun m!8310602 () Bool)

(assert (=> b!7928129 m!8310602))

(declare-fun m!8310604 () Bool)

(assert (=> b!7928130 m!8310604))

(declare-fun m!8310606 () Bool)

(assert (=> b!7928130 m!8310606))

(assert (=> b!7928130 m!8309242))

(declare-fun m!8310608 () Bool)

(assert (=> d!2368370 m!8310608))

(assert (=> d!2368370 m!8309694))

(assert (=> d!2368370 m!8309248))

(assert (=> b!7927454 d!2368370))

(declare-fun d!2368372 () Bool)

(assert (=> d!2368372 (= (max!0 (height!2217 (ite c!1455405 call!735183 (right!57203 t!4440))) (height!2217 e!4678215)) (ite (< (height!2217 (ite c!1455405 call!735183 (right!57203 t!4440))) (height!2217 e!4678215)) (height!2217 e!4678215) (height!2217 (ite c!1455405 call!735183 (right!57203 t!4440)))))))

(assert (=> b!7927570 d!2368372))

(declare-fun d!2368374 () Bool)

(assert (=> d!2368374 (= (height!2217 e!4678215) (ite ((_ is Empty!15902) e!4678215) 0 (ite ((_ is Leaf!30234) e!4678215) 1 (cheight!16113 e!4678215))))))

(assert (=> b!7927570 d!2368374))

(declare-fun lt!2693392 () Int)

(declare-fun d!2368376 () Bool)

(assert (=> d!2368376 (= lt!2693392 (size!43248 (list!19413 (ite c!1455405 call!735183 (right!57203 t!4440)))))))

(assert (=> d!2368376 (= lt!2693392 (ite ((_ is Empty!15902) (ite c!1455405 call!735183 (right!57203 t!4440))) 0 (ite ((_ is Leaf!30234) (ite c!1455405 call!735183 (right!57203 t!4440))) (csize!32035 (ite c!1455405 call!735183 (right!57203 t!4440))) (csize!32034 (ite c!1455405 call!735183 (right!57203 t!4440))))))))

(assert (=> d!2368376 (= (size!43249 (ite c!1455405 call!735183 (right!57203 t!4440))) lt!2693392)))

(declare-fun bs!1968883 () Bool)

(assert (= bs!1968883 d!2368376))

(assert (=> bs!1968883 m!8309478))

(assert (=> bs!1968883 m!8309478))

(assert (=> bs!1968883 m!8310366))

(assert (=> b!7927570 d!2368376))

(declare-fun d!2368378 () Bool)

(declare-fun lt!2693393 () Int)

(assert (=> d!2368378 (= lt!2693393 (size!43248 (list!19413 e!4678215)))))

(assert (=> d!2368378 (= lt!2693393 (ite ((_ is Empty!15902) e!4678215) 0 (ite ((_ is Leaf!30234) e!4678215) (csize!32035 e!4678215) (csize!32034 e!4678215))))))

(assert (=> d!2368378 (= (size!43249 e!4678215) lt!2693393)))

(declare-fun bs!1968884 () Bool)

(assert (= bs!1968884 d!2368378))

(assert (=> bs!1968884 m!8309480))

(assert (=> bs!1968884 m!8309480))

(assert (=> bs!1968884 m!8310368))

(assert (=> b!7927570 d!2368378))

(declare-fun d!2368380 () Bool)

(assert (=> d!2368380 (= (height!2217 (ite c!1455405 call!735183 (right!57203 t!4440))) (ite ((_ is Empty!15902) (ite c!1455405 call!735183 (right!57203 t!4440))) 0 (ite ((_ is Leaf!30234) (ite c!1455405 call!735183 (right!57203 t!4440))) 1 (cheight!16113 (ite c!1455405 call!735183 (right!57203 t!4440))))))))

(assert (=> b!7927570 d!2368380))

(assert (=> b!7927484 d!2368158))

(declare-fun d!2368382 () Bool)

(declare-fun lt!2693394 () Int)

(assert (=> d!2368382 (>= lt!2693394 0)))

(declare-fun e!4678825 () Int)

(assert (=> d!2368382 (= lt!2693394 e!4678825)))

(declare-fun c!1455815 () Bool)

(assert (=> d!2368382 (= c!1455815 ((_ is Nil!74448) lt!2693193))))

(assert (=> d!2368382 (= (size!43248 lt!2693193) lt!2693394)))

(declare-fun b!7928132 () Bool)

(assert (=> b!7928132 (= e!4678825 0)))

(declare-fun b!7928133 () Bool)

(assert (=> b!7928133 (= e!4678825 (+ 1 (size!43248 (t!390189 lt!2693193))))))

(assert (= (and d!2368382 c!1455815) b!7928132))

(assert (= (and d!2368382 (not c!1455815)) b!7928133))

(declare-fun m!8310610 () Bool)

(assert (=> b!7928133 m!8310610))

(assert (=> b!7927241 d!2368382))

(declare-fun d!2368384 () Bool)

(declare-fun lt!2693395 () Int)

(assert (=> d!2368384 (>= lt!2693395 0)))

(declare-fun e!4678826 () Int)

(assert (=> d!2368384 (= lt!2693395 e!4678826)))

(declare-fun c!1455816 () Bool)

(assert (=> d!2368384 (= c!1455816 ((_ is Nil!74448) (ite c!1455404 lt!2693097 lt!2693089)))))

(assert (=> d!2368384 (= (size!43248 (ite c!1455404 lt!2693097 lt!2693089)) lt!2693395)))

(declare-fun b!7928134 () Bool)

(assert (=> b!7928134 (= e!4678826 0)))

(declare-fun b!7928135 () Bool)

(assert (=> b!7928135 (= e!4678826 (+ 1 (size!43248 (t!390189 (ite c!1455404 lt!2693097 lt!2693089)))))))

(assert (= (and d!2368384 c!1455816) b!7928134))

(assert (= (and d!2368384 (not c!1455816)) b!7928135))

(assert (=> b!7928135 m!8310516))

(assert (=> b!7927241 d!2368384))

(declare-fun d!2368386 () Bool)

(declare-fun lt!2693396 () Int)

(assert (=> d!2368386 (>= lt!2693396 0)))

(declare-fun e!4678827 () Int)

(assert (=> d!2368386 (= lt!2693396 e!4678827)))

(declare-fun c!1455817 () Bool)

(assert (=> d!2368386 (= c!1455817 ((_ is Nil!74448) (ite c!1455404 call!735191 lt!2693092)))))

(assert (=> d!2368386 (= (size!43248 (ite c!1455404 call!735191 lt!2693092)) lt!2693396)))

(declare-fun b!7928136 () Bool)

(assert (=> b!7928136 (= e!4678827 0)))

(declare-fun b!7928137 () Bool)

(assert (=> b!7928137 (= e!4678827 (+ 1 (size!43248 (t!390189 (ite c!1455404 call!735191 lt!2693092)))))))

(assert (= (and d!2368386 c!1455817) b!7928136))

(assert (= (and d!2368386 (not c!1455817)) b!7928137))

(declare-fun m!8310612 () Bool)

(assert (=> b!7928137 m!8310612))

(assert (=> b!7927241 d!2368386))

(declare-fun d!2368388 () Bool)

(declare-fun res!3145934 () Bool)

(declare-fun e!4678828 () Bool)

(assert (=> d!2368388 (=> (not res!3145934) (not e!4678828))))

(assert (=> d!2368388 (= res!3145934 (= (csize!32034 (left!56873 (left!56873 t!4440))) (+ (size!43249 (left!56873 (left!56873 (left!56873 t!4440)))) (size!43249 (right!57203 (left!56873 (left!56873 t!4440)))))))))

(assert (=> d!2368388 (= (inv!95723 (left!56873 (left!56873 t!4440))) e!4678828)))

(declare-fun b!7928138 () Bool)

(declare-fun res!3145935 () Bool)

(assert (=> b!7928138 (=> (not res!3145935) (not e!4678828))))

(assert (=> b!7928138 (= res!3145935 (and (not (= (left!56873 (left!56873 (left!56873 t!4440))) Empty!15902)) (not (= (right!57203 (left!56873 (left!56873 t!4440))) Empty!15902))))))

(declare-fun b!7928139 () Bool)

(declare-fun res!3145936 () Bool)

(assert (=> b!7928139 (=> (not res!3145936) (not e!4678828))))

(assert (=> b!7928139 (= res!3145936 (= (cheight!16113 (left!56873 (left!56873 t!4440))) (+ (max!0 (height!2217 (left!56873 (left!56873 (left!56873 t!4440)))) (height!2217 (right!57203 (left!56873 (left!56873 t!4440))))) 1)))))

(declare-fun b!7928140 () Bool)

(assert (=> b!7928140 (= e!4678828 (<= 0 (cheight!16113 (left!56873 (left!56873 t!4440)))))))

(assert (= (and d!2368388 res!3145934) b!7928138))

(assert (= (and b!7928138 res!3145935) b!7928139))

(assert (= (and b!7928139 res!3145936) b!7928140))

(declare-fun m!8310614 () Bool)

(assert (=> d!2368388 m!8310614))

(declare-fun m!8310616 () Bool)

(assert (=> d!2368388 m!8310616))

(assert (=> b!7928139 m!8310012))

(assert (=> b!7928139 m!8310014))

(assert (=> b!7928139 m!8310012))

(assert (=> b!7928139 m!8310014))

(declare-fun m!8310618 () Bool)

(assert (=> b!7928139 m!8310618))

(assert (=> b!7927444 d!2368388))

(declare-fun e!4678829 () List!74572)

(declare-fun b!7928141 () Bool)

(assert (=> b!7928141 (= e!4678829 (ite c!1455404 lt!2693093 lt!2693104))))

(declare-fun b!7928144 () Bool)

(declare-fun lt!2693397 () List!74572)

(declare-fun e!4678830 () Bool)

(assert (=> b!7928144 (= e!4678830 (or (not (= (ite c!1455404 lt!2693093 lt!2693104) Nil!74448)) (= lt!2693397 (t!390189 (ite c!1455404 call!735184 lt!2693095)))))))

(declare-fun b!7928142 () Bool)

(assert (=> b!7928142 (= e!4678829 (Cons!74448 (h!80896 (t!390189 (ite c!1455404 call!735184 lt!2693095))) (++!18259 (t!390189 (t!390189 (ite c!1455404 call!735184 lt!2693095))) (ite c!1455404 lt!2693093 lt!2693104))))))

(declare-fun b!7928143 () Bool)

(declare-fun res!3145938 () Bool)

(assert (=> b!7928143 (=> (not res!3145938) (not e!4678830))))

(assert (=> b!7928143 (= res!3145938 (= (size!43248 lt!2693397) (+ (size!43248 (t!390189 (ite c!1455404 call!735184 lt!2693095))) (size!43248 (ite c!1455404 lt!2693093 lt!2693104)))))))

(declare-fun d!2368390 () Bool)

(assert (=> d!2368390 e!4678830))

(declare-fun res!3145937 () Bool)

(assert (=> d!2368390 (=> (not res!3145937) (not e!4678830))))

(assert (=> d!2368390 (= res!3145937 (= (content!15783 lt!2693397) ((_ map or) (content!15783 (t!390189 (ite c!1455404 call!735184 lt!2693095))) (content!15783 (ite c!1455404 lt!2693093 lt!2693104)))))))

(assert (=> d!2368390 (= lt!2693397 e!4678829)))

(declare-fun c!1455818 () Bool)

(assert (=> d!2368390 (= c!1455818 ((_ is Nil!74448) (t!390189 (ite c!1455404 call!735184 lt!2693095))))))

(assert (=> d!2368390 (= (++!18259 (t!390189 (ite c!1455404 call!735184 lt!2693095)) (ite c!1455404 lt!2693093 lt!2693104)) lt!2693397)))

(assert (= (and d!2368390 c!1455818) b!7928141))

(assert (= (and d!2368390 (not c!1455818)) b!7928142))

(assert (= (and d!2368390 res!3145937) b!7928143))

(assert (= (and b!7928143 res!3145938) b!7928144))

(declare-fun m!8310620 () Bool)

(assert (=> b!7928142 m!8310620))

(declare-fun m!8310622 () Bool)

(assert (=> b!7928143 m!8310622))

(declare-fun m!8310624 () Bool)

(assert (=> b!7928143 m!8310624))

(assert (=> b!7928143 m!8308644))

(declare-fun m!8310626 () Bool)

(assert (=> d!2368390 m!8310626))

(declare-fun m!8310628 () Bool)

(assert (=> d!2368390 m!8310628))

(assert (=> d!2368390 m!8308650))

(assert (=> b!7927171 d!2368390))

(declare-fun d!2368392 () Bool)

(declare-fun lt!2693398 () Bool)

(assert (=> d!2368392 (= lt!2693398 (isEmpty!42778 (list!19413 (left!56873 (right!57203 t!4440)))))))

(assert (=> d!2368392 (= lt!2693398 (= (size!43249 (left!56873 (right!57203 t!4440))) 0))))

(assert (=> d!2368392 (= (isEmpty!42776 (left!56873 (right!57203 t!4440))) lt!2693398)))

(declare-fun bs!1968885 () Bool)

(assert (= bs!1968885 d!2368392))

(assert (=> bs!1968885 m!8308234))

(assert (=> bs!1968885 m!8308234))

(declare-fun m!8310630 () Bool)

(assert (=> bs!1968885 m!8310630))

(assert (=> bs!1968885 m!8309188))

(assert (=> b!7927179 d!2368392))

(assert (=> b!7927525 d!2368006))

(assert (=> b!7926992 d!2367902))

(assert (=> b!7926992 d!2367904))

(declare-fun b!7928145 () Bool)

(declare-fun e!4678832 () Bool)

(declare-fun e!4678831 () Bool)

(assert (=> b!7928145 (= e!4678832 e!4678831)))

(declare-fun res!3145940 () Bool)

(assert (=> b!7928145 (=> (not res!3145940) (not e!4678831))))

(assert (=> b!7928145 (= res!3145940 (<= (- 1) (- (height!2217 (left!56873 lt!2693135)) (height!2217 (right!57203 lt!2693135)))))))

(declare-fun b!7928147 () Bool)

(declare-fun res!3145943 () Bool)

(assert (=> b!7928147 (=> (not res!3145943) (not e!4678831))))

(assert (=> b!7928147 (= res!3145943 (not (isEmpty!42776 (left!56873 lt!2693135))))))

(declare-fun b!7928148 () Bool)

(declare-fun res!3145944 () Bool)

(assert (=> b!7928148 (=> (not res!3145944) (not e!4678831))))

(assert (=> b!7928148 (= res!3145944 (isBalanced!4528 (left!56873 lt!2693135)))))

(declare-fun b!7928149 () Bool)

(declare-fun res!3145939 () Bool)

(assert (=> b!7928149 (=> (not res!3145939) (not e!4678831))))

(assert (=> b!7928149 (= res!3145939 (isBalanced!4528 (right!57203 lt!2693135)))))

(declare-fun b!7928150 () Bool)

(assert (=> b!7928150 (= e!4678831 (not (isEmpty!42776 (right!57203 lt!2693135))))))

(declare-fun b!7928146 () Bool)

(declare-fun res!3145941 () Bool)

(assert (=> b!7928146 (=> (not res!3145941) (not e!4678831))))

(assert (=> b!7928146 (= res!3145941 (<= (- (height!2217 (left!56873 lt!2693135)) (height!2217 (right!57203 lt!2693135))) 1))))

(declare-fun d!2368394 () Bool)

(declare-fun res!3145942 () Bool)

(assert (=> d!2368394 (=> res!3145942 e!4678832)))

(assert (=> d!2368394 (= res!3145942 (not ((_ is Node!15902) lt!2693135)))))

(assert (=> d!2368394 (= (isBalanced!4528 lt!2693135) e!4678832)))

(assert (= (and d!2368394 (not res!3145942)) b!7928145))

(assert (= (and b!7928145 res!3145940) b!7928146))

(assert (= (and b!7928146 res!3145941) b!7928148))

(assert (= (and b!7928148 res!3145944) b!7928149))

(assert (= (and b!7928149 res!3145939) b!7928147))

(assert (= (and b!7928147 res!3145943) b!7928150))

(declare-fun m!8310632 () Bool)

(assert (=> b!7928146 m!8310632))

(declare-fun m!8310634 () Bool)

(assert (=> b!7928146 m!8310634))

(declare-fun m!8310636 () Bool)

(assert (=> b!7928149 m!8310636))

(declare-fun m!8310638 () Bool)

(assert (=> b!7928147 m!8310638))

(declare-fun m!8310640 () Bool)

(assert (=> b!7928148 m!8310640))

(declare-fun m!8310642 () Bool)

(assert (=> b!7928150 m!8310642))

(assert (=> b!7928145 m!8310632))

(assert (=> b!7928145 m!8310634))

(assert (=> d!2367560 d!2368394))

(declare-fun b!7928151 () Bool)

(declare-fun e!4678834 () Bool)

(declare-fun e!4678833 () Bool)

(assert (=> b!7928151 (= e!4678834 e!4678833)))

(declare-fun res!3145946 () Bool)

(assert (=> b!7928151 (=> (not res!3145946) (not e!4678833))))

(assert (=> b!7928151 (= res!3145946 (<= (- 1) (- (height!2217 (left!56873 (right!57203 (right!57203 t!4440)))) (height!2217 (right!57203 (right!57203 (right!57203 t!4440)))))))))

(declare-fun b!7928153 () Bool)

(declare-fun res!3145949 () Bool)

(assert (=> b!7928153 (=> (not res!3145949) (not e!4678833))))

(assert (=> b!7928153 (= res!3145949 (not (isEmpty!42776 (left!56873 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7928154 () Bool)

(declare-fun res!3145950 () Bool)

(assert (=> b!7928154 (=> (not res!3145950) (not e!4678833))))

(assert (=> b!7928154 (= res!3145950 (isBalanced!4528 (left!56873 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7928155 () Bool)

(declare-fun res!3145945 () Bool)

(assert (=> b!7928155 (=> (not res!3145945) (not e!4678833))))

(assert (=> b!7928155 (= res!3145945 (isBalanced!4528 (right!57203 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7928156 () Bool)

(assert (=> b!7928156 (= e!4678833 (not (isEmpty!42776 (right!57203 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7928152 () Bool)

(declare-fun res!3145947 () Bool)

(assert (=> b!7928152 (=> (not res!3145947) (not e!4678833))))

(assert (=> b!7928152 (= res!3145947 (<= (- (height!2217 (left!56873 (right!57203 (right!57203 t!4440)))) (height!2217 (right!57203 (right!57203 (right!57203 t!4440))))) 1))))

(declare-fun d!2368396 () Bool)

(declare-fun res!3145948 () Bool)

(assert (=> d!2368396 (=> res!3145948 e!4678834)))

(assert (=> d!2368396 (= res!3145948 (not ((_ is Node!15902) (right!57203 (right!57203 t!4440)))))))

(assert (=> d!2368396 (= (isBalanced!4528 (right!57203 (right!57203 t!4440))) e!4678834)))

(assert (= (and d!2368396 (not res!3145948)) b!7928151))

(assert (= (and b!7928151 res!3145946) b!7928152))

(assert (= (and b!7928152 res!3145947) b!7928154))

(assert (= (and b!7928154 res!3145950) b!7928155))

(assert (= (and b!7928155 res!3145945) b!7928153))

(assert (= (and b!7928153 res!3145949) b!7928156))

(assert (=> b!7928152 m!8308352))

(assert (=> b!7928152 m!8310136))

(declare-fun m!8310644 () Bool)

(assert (=> b!7928155 m!8310644))

(declare-fun m!8310646 () Bool)

(assert (=> b!7928153 m!8310646))

(declare-fun m!8310648 () Bool)

(assert (=> b!7928154 m!8310648))

(declare-fun m!8310650 () Bool)

(assert (=> b!7928156 m!8310650))

(assert (=> b!7928151 m!8308352))

(assert (=> b!7928151 m!8310136))

(assert (=> d!2367560 d!2368396))

(declare-fun d!2368398 () Bool)

(declare-fun lt!2693399 () Int)

(assert (=> d!2368398 (>= lt!2693399 0)))

(declare-fun e!4678835 () Int)

(assert (=> d!2368398 (= lt!2693399 e!4678835)))

(declare-fun c!1455819 () Bool)

(assert (=> d!2368398 (= c!1455819 ((_ is Nil!74448) lt!2693268))))

(assert (=> d!2368398 (= (size!43248 lt!2693268) lt!2693399)))

(declare-fun b!7928157 () Bool)

(assert (=> b!7928157 (= e!4678835 0)))

(declare-fun b!7928158 () Bool)

(assert (=> b!7928158 (= e!4678835 (+ 1 (size!43248 (t!390189 lt!2693268))))))

(assert (= (and d!2368398 c!1455819) b!7928157))

(assert (= (and d!2368398 (not c!1455819)) b!7928158))

(declare-fun m!8310652 () Bool)

(assert (=> b!7928158 m!8310652))

(assert (=> b!7927539 d!2368398))

(assert (=> b!7927539 d!2368028))

(assert (=> b!7927539 d!2367702))

(assert (=> b!7927561 d!2368186))

(assert (=> b!7927561 d!2367896))

(declare-fun d!2368400 () Bool)

(declare-fun c!1455820 () Bool)

(assert (=> d!2368400 (= c!1455820 ((_ is Nil!74448) lt!2693178))))

(declare-fun e!4678836 () (InoxSet T!145804))

(assert (=> d!2368400 (= (content!15783 lt!2693178) e!4678836)))

(declare-fun b!7928159 () Bool)

(assert (=> b!7928159 (= e!4678836 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928160 () Bool)

(assert (=> b!7928160 (= e!4678836 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693178) true) (content!15783 (t!390189 lt!2693178))))))

(assert (= (and d!2368400 c!1455820) b!7928159))

(assert (= (and d!2368400 (not c!1455820)) b!7928160))

(declare-fun m!8310654 () Bool)

(assert (=> b!7928160 m!8310654))

(declare-fun m!8310656 () Bool)

(assert (=> b!7928160 m!8310656))

(assert (=> d!2367664 d!2368400))

(declare-fun d!2368402 () Bool)

(declare-fun c!1455821 () Bool)

(assert (=> d!2368402 (= c!1455821 ((_ is Nil!74448) (ite c!1455404 call!735184 lt!2693095)))))

(declare-fun e!4678837 () (InoxSet T!145804))

(assert (=> d!2368402 (= (content!15783 (ite c!1455404 call!735184 lt!2693095)) e!4678837)))

(declare-fun b!7928161 () Bool)

(assert (=> b!7928161 (= e!4678837 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928162 () Bool)

(assert (=> b!7928162 (= e!4678837 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (ite c!1455404 call!735184 lt!2693095)) true) (content!15783 (t!390189 (ite c!1455404 call!735184 lt!2693095)))))))

(assert (= (and d!2368402 c!1455821) b!7928161))

(assert (= (and d!2368402 (not c!1455821)) b!7928162))

(declare-fun m!8310658 () Bool)

(assert (=> b!7928162 m!8310658))

(assert (=> b!7928162 m!8310628))

(assert (=> d!2367664 d!2368402))

(declare-fun d!2368404 () Bool)

(declare-fun c!1455822 () Bool)

(assert (=> d!2368404 (= c!1455822 ((_ is Nil!74448) (ite c!1455404 lt!2693093 lt!2693104)))))

(declare-fun e!4678838 () (InoxSet T!145804))

(assert (=> d!2368404 (= (content!15783 (ite c!1455404 lt!2693093 lt!2693104)) e!4678838)))

(declare-fun b!7928163 () Bool)

(assert (=> b!7928163 (= e!4678838 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928164 () Bool)

(assert (=> b!7928164 (= e!4678838 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (ite c!1455404 lt!2693093 lt!2693104)) true) (content!15783 (t!390189 (ite c!1455404 lt!2693093 lt!2693104)))))))

(assert (= (and d!2368404 c!1455822) b!7928163))

(assert (= (and d!2368404 (not c!1455822)) b!7928164))

(declare-fun m!8310660 () Bool)

(assert (=> b!7928164 m!8310660))

(declare-fun m!8310662 () Bool)

(assert (=> b!7928164 m!8310662))

(assert (=> d!2367664 d!2368404))

(assert (=> b!7927418 d!2368108))

(declare-fun d!2368406 () Bool)

(declare-fun c!1455823 () Bool)

(assert (=> d!2368406 (= c!1455823 ((_ is Nil!74448) lt!2693229))))

(declare-fun e!4678839 () (InoxSet T!145804))

(assert (=> d!2368406 (= (content!15783 lt!2693229) e!4678839)))

(declare-fun b!7928165 () Bool)

(assert (=> b!7928165 (= e!4678839 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928166 () Bool)

(assert (=> b!7928166 (= e!4678839 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693229) true) (content!15783 (t!390189 lt!2693229))))))

(assert (= (and d!2368406 c!1455823) b!7928165))

(assert (= (and d!2368406 (not c!1455823)) b!7928166))

(declare-fun m!8310664 () Bool)

(assert (=> b!7928166 m!8310664))

(declare-fun m!8310666 () Bool)

(assert (=> b!7928166 m!8310666))

(assert (=> b!7927368 d!2368406))

(declare-fun d!2368408 () Bool)

(declare-fun c!1455824 () Bool)

(assert (=> d!2368408 (= c!1455824 ((_ is Nil!74448) (t!390189 (list!19413 t!4440))))))

(declare-fun e!4678840 () (InoxSet T!145804))

(assert (=> d!2368408 (= (content!15783 (t!390189 (list!19413 t!4440))) e!4678840)))

(declare-fun b!7928167 () Bool)

(assert (=> b!7928167 (= e!4678840 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928168 () Bool)

(assert (=> b!7928168 (= e!4678840 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 (list!19413 t!4440))) true) (content!15783 (t!390189 (t!390189 (list!19413 t!4440))))))))

(assert (= (and d!2368408 c!1455824) b!7928167))

(assert (= (and d!2368408 (not c!1455824)) b!7928168))

(declare-fun m!8310668 () Bool)

(assert (=> b!7928168 m!8310668))

(assert (=> b!7928168 m!8310448))

(assert (=> b!7927368 d!2368408))

(declare-fun b!7928169 () Bool)

(declare-fun e!4678841 () List!74572)

(assert (=> b!7928169 (= e!4678841 lt!2692980)))

(declare-fun e!4678842 () Bool)

(declare-fun lt!2693400 () List!74572)

(declare-fun b!7928172 () Bool)

(assert (=> b!7928172 (= e!4678842 (or (not (= lt!2692980 Nil!74448)) (= lt!2693400 (t!390189 (t!390189 lt!2692979)))))))

(declare-fun b!7928170 () Bool)

(assert (=> b!7928170 (= e!4678841 (Cons!74448 (h!80896 (t!390189 (t!390189 lt!2692979))) (++!18259 (t!390189 (t!390189 (t!390189 lt!2692979))) lt!2692980)))))

(declare-fun b!7928171 () Bool)

(declare-fun res!3145952 () Bool)

(assert (=> b!7928171 (=> (not res!3145952) (not e!4678842))))

(assert (=> b!7928171 (= res!3145952 (= (size!43248 lt!2693400) (+ (size!43248 (t!390189 (t!390189 lt!2692979))) (size!43248 lt!2692980))))))

(declare-fun d!2368410 () Bool)

(assert (=> d!2368410 e!4678842))

(declare-fun res!3145951 () Bool)

(assert (=> d!2368410 (=> (not res!3145951) (not e!4678842))))

(assert (=> d!2368410 (= res!3145951 (= (content!15783 lt!2693400) ((_ map or) (content!15783 (t!390189 (t!390189 lt!2692979))) (content!15783 lt!2692980))))))

(assert (=> d!2368410 (= lt!2693400 e!4678841)))

(declare-fun c!1455825 () Bool)

(assert (=> d!2368410 (= c!1455825 ((_ is Nil!74448) (t!390189 (t!390189 lt!2692979))))))

(assert (=> d!2368410 (= (++!18259 (t!390189 (t!390189 lt!2692979)) lt!2692980) lt!2693400)))

(assert (= (and d!2368410 c!1455825) b!7928169))

(assert (= (and d!2368410 (not c!1455825)) b!7928170))

(assert (= (and d!2368410 res!3145951) b!7928171))

(assert (= (and b!7928171 res!3145952) b!7928172))

(declare-fun m!8310670 () Bool)

(assert (=> b!7928170 m!8310670))

(declare-fun m!8310672 () Bool)

(assert (=> b!7928171 m!8310672))

(assert (=> b!7928171 m!8309758))

(assert (=> b!7928171 m!8308192))

(declare-fun m!8310674 () Bool)

(assert (=> d!2368410 m!8310674))

(declare-fun m!8310676 () Bool)

(assert (=> d!2368410 m!8310676))

(assert (=> d!2368410 m!8308198))

(assert (=> b!7927538 d!2368410))

(declare-fun d!2368412 () Bool)

(declare-fun lt!2693401 () Bool)

(assert (=> d!2368412 (= lt!2693401 (isEmpty!42778 (list!19413 (left!56873 lt!2693102))))))

(assert (=> d!2368412 (= lt!2693401 (= (size!43249 (left!56873 lt!2693102)) 0))))

(assert (=> d!2368412 (= (isEmpty!42776 (left!56873 lt!2693102)) lt!2693401)))

(declare-fun bs!1968886 () Bool)

(assert (= bs!1968886 d!2368412))

(assert (=> bs!1968886 m!8309396))

(assert (=> bs!1968886 m!8309396))

(declare-fun m!8310678 () Bool)

(assert (=> bs!1968886 m!8310678))

(declare-fun m!8310680 () Bool)

(assert (=> bs!1968886 m!8310680))

(assert (=> b!7927580 d!2368412))

(declare-fun b!7928173 () Bool)

(declare-fun e!4678843 () List!74572)

(assert (=> b!7928173 (= e!4678843 (list!19413 lt!2692975))))

(declare-fun b!7928176 () Bool)

(declare-fun e!4678844 () Bool)

(declare-fun lt!2693402 () List!74572)

(assert (=> b!7928176 (= e!4678844 (or (not (= (list!19413 lt!2692975) Nil!74448)) (= lt!2693402 (t!390189 (list!19413 (left!56873 t!4440))))))))

(declare-fun b!7928174 () Bool)

(assert (=> b!7928174 (= e!4678843 (Cons!74448 (h!80896 (t!390189 (list!19413 (left!56873 t!4440)))) (++!18259 (t!390189 (t!390189 (list!19413 (left!56873 t!4440)))) (list!19413 lt!2692975))))))

(declare-fun b!7928175 () Bool)

(declare-fun res!3145954 () Bool)

(assert (=> b!7928175 (=> (not res!3145954) (not e!4678844))))

(assert (=> b!7928175 (= res!3145954 (= (size!43248 lt!2693402) (+ (size!43248 (t!390189 (list!19413 (left!56873 t!4440)))) (size!43248 (list!19413 lt!2692975)))))))

(declare-fun d!2368414 () Bool)

(assert (=> d!2368414 e!4678844))

(declare-fun res!3145953 () Bool)

(assert (=> d!2368414 (=> (not res!3145953) (not e!4678844))))

(assert (=> d!2368414 (= res!3145953 (= (content!15783 lt!2693402) ((_ map or) (content!15783 (t!390189 (list!19413 (left!56873 t!4440)))) (content!15783 (list!19413 lt!2692975)))))))

(assert (=> d!2368414 (= lt!2693402 e!4678843)))

(declare-fun c!1455826 () Bool)

(assert (=> d!2368414 (= c!1455826 ((_ is Nil!74448) (t!390189 (list!19413 (left!56873 t!4440)))))))

(assert (=> d!2368414 (= (++!18259 (t!390189 (list!19413 (left!56873 t!4440))) (list!19413 lt!2692975)) lt!2693402)))

(assert (= (and d!2368414 c!1455826) b!7928173))

(assert (= (and d!2368414 (not c!1455826)) b!7928174))

(assert (= (and d!2368414 res!3145953) b!7928175))

(assert (= (and b!7928175 res!3145954) b!7928176))

(assert (=> b!7928174 m!8308176))

(declare-fun m!8310682 () Bool)

(assert (=> b!7928174 m!8310682))

(declare-fun m!8310684 () Bool)

(assert (=> b!7928175 m!8310684))

(assert (=> b!7928175 m!8309718))

(assert (=> b!7928175 m!8308176))

(assert (=> b!7928175 m!8308732))

(declare-fun m!8310686 () Bool)

(assert (=> d!2368414 m!8310686))

(assert (=> d!2368414 m!8309722))

(assert (=> d!2368414 m!8308176))

(assert (=> d!2368414 m!8308740))

(assert (=> b!7927212 d!2368414))

(declare-fun d!2368416 () Bool)

(assert (=> d!2368416 (= (max!0 (height!2217 (left!56873 t!4440)) (height!2217 (right!57203 t!4440))) (ite (< (height!2217 (left!56873 t!4440)) (height!2217 (right!57203 t!4440))) (height!2217 (right!57203 t!4440)) (height!2217 (left!56873 t!4440))))))

(assert (=> b!7927572 d!2368416))

(assert (=> b!7927572 d!2367484))

(assert (=> b!7927572 d!2367802))

(declare-fun d!2368418 () Bool)

(declare-fun lt!2693403 () Int)

(assert (=> d!2368418 (>= lt!2693403 0)))

(declare-fun e!4678845 () Int)

(assert (=> d!2368418 (= lt!2693403 e!4678845)))

(declare-fun c!1455827 () Bool)

(assert (=> d!2368418 (= c!1455827 ((_ is Nil!74448) lt!2693256))))

(assert (=> d!2368418 (= (size!43248 lt!2693256) lt!2693403)))

(declare-fun b!7928177 () Bool)

(assert (=> b!7928177 (= e!4678845 0)))

(declare-fun b!7928178 () Bool)

(assert (=> b!7928178 (= e!4678845 (+ 1 (size!43248 (t!390189 lt!2693256))))))

(assert (= (and d!2368418 c!1455827) b!7928177))

(assert (= (and d!2368418 (not c!1455827)) b!7928178))

(declare-fun m!8310688 () Bool)

(assert (=> b!7928178 m!8310688))

(assert (=> b!7927455 d!2368418))

(declare-fun d!2368420 () Bool)

(declare-fun lt!2693404 () Int)

(assert (=> d!2368420 (>= lt!2693404 0)))

(declare-fun e!4678846 () Int)

(assert (=> d!2368420 (= lt!2693404 e!4678846)))

(declare-fun c!1455828 () Bool)

(assert (=> d!2368420 (= c!1455828 ((_ is Nil!74448) call!735191))))

(assert (=> d!2368420 (= (size!43248 call!735191) lt!2693404)))

(declare-fun b!7928179 () Bool)

(assert (=> b!7928179 (= e!4678846 0)))

(declare-fun b!7928180 () Bool)

(assert (=> b!7928180 (= e!4678846 (+ 1 (size!43248 (t!390189 call!735191))))))

(assert (= (and d!2368420 c!1455828) b!7928179))

(assert (= (and d!2368420 (not c!1455828)) b!7928180))

(assert (=> b!7928180 m!8310606))

(assert (=> b!7927455 d!2368420))

(declare-fun d!2368422 () Bool)

(declare-fun lt!2693405 () Int)

(assert (=> d!2368422 (>= lt!2693405 0)))

(declare-fun e!4678847 () Int)

(assert (=> d!2368422 (= lt!2693405 e!4678847)))

(declare-fun c!1455829 () Bool)

(assert (=> d!2368422 (= c!1455829 ((_ is Nil!74448) lt!2693104))))

(assert (=> d!2368422 (= (size!43248 lt!2693104) lt!2693405)))

(declare-fun b!7928181 () Bool)

(assert (=> b!7928181 (= e!4678847 0)))

(declare-fun b!7928182 () Bool)

(assert (=> b!7928182 (= e!4678847 (+ 1 (size!43248 (t!390189 lt!2693104))))))

(assert (= (and d!2368422 c!1455829) b!7928181))

(assert (= (and d!2368422 (not c!1455829)) b!7928182))

(declare-fun m!8310690 () Bool)

(assert (=> b!7928182 m!8310690))

(assert (=> b!7927455 d!2368422))

(assert (=> d!2367942 d!2367944))

(assert (=> d!2367942 d!2367874))

(declare-fun d!2368424 () Bool)

(declare-fun _$6!626 () IArray!31865)

(assert (=> d!2368424 (= _$6!626 (IArray!31866 ($colon+!315 (list!19415 (xs!19290 (right!57203 t!4440))) v!5484)))))

(declare-fun e!4678850 () Bool)

(assert (=> d!2368424 (and (inv!95720 _$6!626) e!4678850)))

(assert (=> d!2368424 (= (choose!59830 (xs!19290 (right!57203 t!4440)) v!5484) _$6!626)))

(declare-fun b!7928185 () Bool)

(declare-fun tp!2358763 () Bool)

(assert (=> b!7928185 (= e!4678850 tp!2358763)))

(assert (= d!2368424 b!7928185))

(assert (=> d!2368424 m!8308086))

(assert (=> d!2368424 m!8308086))

(assert (=> d!2368424 m!8308088))

(declare-fun m!8310692 () Bool)

(assert (=> d!2368424 m!8310692))

(assert (=> d!2367942 d!2368424))

(declare-fun d!2368426 () Bool)

(declare-fun lt!2693408 () Int)

(assert (=> d!2368426 (= lt!2693408 (size!43248 (list!19415 (xs!19290 (right!57203 t!4440)))))))

(declare-fun choose!59831 (IArray!31865) Int)

(assert (=> d!2368426 (= lt!2693408 (choose!59831 (xs!19290 (right!57203 t!4440))))))

(assert (=> d!2368426 (= (size!43251 (xs!19290 (right!57203 t!4440))) lt!2693408)))

(declare-fun bs!1968887 () Bool)

(assert (= bs!1968887 d!2368426))

(assert (=> bs!1968887 m!8308086))

(assert (=> bs!1968887 m!8308086))

(assert (=> bs!1968887 m!8309118))

(declare-fun m!8310694 () Bool)

(assert (=> bs!1968887 m!8310694))

(assert (=> d!2367942 d!2368426))

(declare-fun d!2368428 () Bool)

(declare-fun c!1455830 () Bool)

(assert (=> d!2368428 (= c!1455830 ((_ is Nil!74448) lt!2693268))))

(declare-fun e!4678851 () (InoxSet T!145804))

(assert (=> d!2368428 (= (content!15783 lt!2693268) e!4678851)))

(declare-fun b!7928186 () Bool)

(assert (=> b!7928186 (= e!4678851 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928187 () Bool)

(assert (=> b!7928187 (= e!4678851 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693268) true) (content!15783 (t!390189 lt!2693268))))))

(assert (= (and d!2368428 c!1455830) b!7928186))

(assert (= (and d!2368428 (not c!1455830)) b!7928187))

(declare-fun m!8310696 () Bool)

(assert (=> b!7928187 m!8310696))

(declare-fun m!8310698 () Bool)

(assert (=> b!7928187 m!8310698))

(assert (=> d!2367914 d!2368428))

(declare-fun d!2368430 () Bool)

(declare-fun c!1455831 () Bool)

(assert (=> d!2368430 (= c!1455831 ((_ is Nil!74448) (t!390189 lt!2692979)))))

(declare-fun e!4678852 () (InoxSet T!145804))

(assert (=> d!2368430 (= (content!15783 (t!390189 lt!2692979)) e!4678852)))

(declare-fun b!7928188 () Bool)

(assert (=> b!7928188 (= e!4678852 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928189 () Bool)

(assert (=> b!7928189 (= e!4678852 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 lt!2692979)) true) (content!15783 (t!390189 (t!390189 lt!2692979)))))))

(assert (= (and d!2368430 c!1455831) b!7928188))

(assert (= (and d!2368430 (not c!1455831)) b!7928189))

(declare-fun m!8310700 () Bool)

(assert (=> b!7928189 m!8310700))

(assert (=> b!7928189 m!8310676))

(assert (=> d!2367914 d!2368430))

(assert (=> d!2367914 d!2367800))

(declare-fun d!2368432 () Bool)

(declare-fun lt!2693409 () Int)

(assert (=> d!2368432 (>= lt!2693409 0)))

(declare-fun e!4678853 () Int)

(assert (=> d!2368432 (= lt!2693409 e!4678853)))

(declare-fun c!1455832 () Bool)

(assert (=> d!2368432 (= c!1455832 ((_ is Nil!74448) (t!390189 lt!2693119)))))

(assert (=> d!2368432 (= (size!43248 (t!390189 lt!2693119)) lt!2693409)))

(declare-fun b!7928190 () Bool)

(assert (=> b!7928190 (= e!4678853 0)))

(declare-fun b!7928191 () Bool)

(assert (=> b!7928191 (= e!4678853 (+ 1 (size!43248 (t!390189 (t!390189 lt!2693119)))))))

(assert (= (and d!2368432 c!1455832) b!7928190))

(assert (= (and d!2368432 (not c!1455832)) b!7928191))

(declare-fun m!8310702 () Bool)

(assert (=> b!7928191 m!8310702))

(assert (=> b!7927228 d!2368432))

(declare-fun d!2368434 () Bool)

(declare-fun c!1455833 () Bool)

(assert (=> d!2368434 (= c!1455833 ((_ is Nil!74448) lt!2693269))))

(declare-fun e!4678854 () (InoxSet T!145804))

(assert (=> d!2368434 (= (content!15783 lt!2693269) e!4678854)))

(declare-fun b!7928192 () Bool)

(assert (=> b!7928192 (= e!4678854 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928193 () Bool)

(assert (=> b!7928193 (= e!4678854 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693269) true) (content!15783 (t!390189 lt!2693269))))))

(assert (= (and d!2368434 c!1455833) b!7928192))

(assert (= (and d!2368434 (not c!1455833)) b!7928193))

(declare-fun m!8310704 () Bool)

(assert (=> b!7928193 m!8310704))

(declare-fun m!8310706 () Bool)

(assert (=> b!7928193 m!8310706))

(assert (=> d!2367916 d!2368434))

(declare-fun d!2368436 () Bool)

(declare-fun c!1455834 () Bool)

(assert (=> d!2368436 (= c!1455834 ((_ is Nil!74448) (ite c!1455404 lt!2693099 lt!2693091)))))

(declare-fun e!4678855 () (InoxSet T!145804))

(assert (=> d!2368436 (= (content!15783 (ite c!1455404 lt!2693099 lt!2693091)) e!4678855)))

(declare-fun b!7928194 () Bool)

(assert (=> b!7928194 (= e!4678855 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928195 () Bool)

(assert (=> b!7928195 (= e!4678855 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (ite c!1455404 lt!2693099 lt!2693091)) true) (content!15783 (t!390189 (ite c!1455404 lt!2693099 lt!2693091)))))))

(assert (= (and d!2368436 c!1455834) b!7928194))

(assert (= (and d!2368436 (not c!1455834)) b!7928195))

(declare-fun m!8310708 () Bool)

(assert (=> b!7928195 m!8310708))

(declare-fun m!8310710 () Bool)

(assert (=> b!7928195 m!8310710))

(assert (=> d!2367916 d!2368436))

(declare-fun c!1455835 () Bool)

(declare-fun d!2368438 () Bool)

(assert (=> d!2368438 (= c!1455835 ((_ is Nil!74448) (ite c!1455404 lt!2693093 lt!2693095)))))

(declare-fun e!4678856 () (InoxSet T!145804))

(assert (=> d!2368438 (= (content!15783 (ite c!1455404 lt!2693093 lt!2693095)) e!4678856)))

(declare-fun b!7928196 () Bool)

(assert (=> b!7928196 (= e!4678856 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928197 () Bool)

(assert (=> b!7928197 (= e!4678856 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (ite c!1455404 lt!2693093 lt!2693095)) true) (content!15783 (t!390189 (ite c!1455404 lt!2693093 lt!2693095)))))))

(assert (= (and d!2368438 c!1455835) b!7928196))

(assert (= (and d!2368438 (not c!1455835)) b!7928197))

(declare-fun m!8310712 () Bool)

(assert (=> b!7928197 m!8310712))

(declare-fun m!8310714 () Bool)

(assert (=> b!7928197 m!8310714))

(assert (=> d!2367916 d!2368438))

(declare-fun e!4678857 () List!74572)

(declare-fun b!7928198 () Bool)

(assert (=> b!7928198 (= e!4678857 (++!18259 (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103)))))

(declare-fun lt!2693410 () List!74572)

(declare-fun b!7928201 () Bool)

(declare-fun e!4678858 () Bool)

(assert (=> b!7928201 (= e!4678858 (or (not (= (++!18259 (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103)) Nil!74448)) (= lt!2693410 (ite c!1455404 lt!2693097 lt!2693089))))))

(declare-fun b!7928199 () Bool)

(assert (=> b!7928199 (= e!4678857 (Cons!74448 (h!80896 (ite c!1455404 lt!2693097 lt!2693089)) (++!18259 (t!390189 (ite c!1455404 lt!2693097 lt!2693089)) (++!18259 (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103)))))))

(declare-fun b!7928200 () Bool)

(declare-fun res!3145956 () Bool)

(assert (=> b!7928200 (=> (not res!3145956) (not e!4678858))))

(assert (=> b!7928200 (= res!3145956 (= (size!43248 lt!2693410) (+ (size!43248 (ite c!1455404 lt!2693097 lt!2693089)) (size!43248 (++!18259 (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103))))))))

(declare-fun d!2368440 () Bool)

(assert (=> d!2368440 e!4678858))

(declare-fun res!3145955 () Bool)

(assert (=> d!2368440 (=> (not res!3145955) (not e!4678858))))

(assert (=> d!2368440 (= res!3145955 (= (content!15783 lt!2693410) ((_ map or) (content!15783 (ite c!1455404 lt!2693097 lt!2693089)) (content!15783 (++!18259 (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103))))))))

(assert (=> d!2368440 (= lt!2693410 e!4678857)))

(declare-fun c!1455836 () Bool)

(assert (=> d!2368440 (= c!1455836 ((_ is Nil!74448) (ite c!1455404 lt!2693097 lt!2693089)))))

(assert (=> d!2368440 (= (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (++!18259 (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103))) lt!2693410)))

(assert (= (and d!2368440 c!1455836) b!7928198))

(assert (= (and d!2368440 (not c!1455836)) b!7928199))

(assert (= (and d!2368440 res!3145955) b!7928200))

(assert (= (and b!7928200 res!3145956) b!7928201))

(assert (=> b!7928199 m!8309194))

(declare-fun m!8310716 () Bool)

(assert (=> b!7928199 m!8310716))

(declare-fun m!8310718 () Bool)

(assert (=> b!7928200 m!8310718))

(assert (=> b!7928200 m!8308822))

(assert (=> b!7928200 m!8309194))

(declare-fun m!8310720 () Bool)

(assert (=> b!7928200 m!8310720))

(declare-fun m!8310722 () Bool)

(assert (=> d!2368440 m!8310722))

(assert (=> d!2368440 m!8308828))

(assert (=> d!2368440 m!8309194))

(declare-fun m!8310724 () Bool)

(assert (=> d!2368440 m!8310724))

(assert (=> d!2367856 d!2368440))

(declare-fun e!4678859 () List!74572)

(declare-fun b!7928202 () Bool)

(assert (=> b!7928202 (= e!4678859 (ite c!1455404 lt!2693093 lt!2693103))))

(declare-fun e!4678860 () Bool)

(declare-fun lt!2693411 () List!74572)

(declare-fun b!7928205 () Bool)

(assert (=> b!7928205 (= e!4678860 (or (not (= (ite c!1455404 lt!2693093 lt!2693103) Nil!74448)) (= lt!2693411 (ite c!1455404 lt!2693099 lt!2693092))))))

(declare-fun b!7928203 () Bool)

(assert (=> b!7928203 (= e!4678859 (Cons!74448 (h!80896 (ite c!1455404 lt!2693099 lt!2693092)) (++!18259 (t!390189 (ite c!1455404 lt!2693099 lt!2693092)) (ite c!1455404 lt!2693093 lt!2693103))))))

(declare-fun b!7928204 () Bool)

(declare-fun res!3145958 () Bool)

(assert (=> b!7928204 (=> (not res!3145958) (not e!4678860))))

(assert (=> b!7928204 (= res!3145958 (= (size!43248 lt!2693411) (+ (size!43248 (ite c!1455404 lt!2693099 lt!2693092)) (size!43248 (ite c!1455404 lt!2693093 lt!2693103)))))))

(declare-fun d!2368442 () Bool)

(assert (=> d!2368442 e!4678860))

(declare-fun res!3145957 () Bool)

(assert (=> d!2368442 (=> (not res!3145957) (not e!4678860))))

(assert (=> d!2368442 (= res!3145957 (= (content!15783 lt!2693411) ((_ map or) (content!15783 (ite c!1455404 lt!2693099 lt!2693092)) (content!15783 (ite c!1455404 lt!2693093 lt!2693103)))))))

(assert (=> d!2368442 (= lt!2693411 e!4678859)))

(declare-fun c!1455837 () Bool)

(assert (=> d!2368442 (= c!1455837 ((_ is Nil!74448) (ite c!1455404 lt!2693099 lt!2693092)))))

(assert (=> d!2368442 (= (++!18259 (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103)) lt!2693411)))

(assert (= (and d!2368442 c!1455837) b!7928202))

(assert (= (and d!2368442 (not c!1455837)) b!7928203))

(assert (= (and d!2368442 res!3145957) b!7928204))

(assert (= (and b!7928204 res!3145958) b!7928205))

(declare-fun m!8310726 () Bool)

(assert (=> b!7928203 m!8310726))

(declare-fun m!8310728 () Bool)

(assert (=> b!7928204 m!8310728))

(declare-fun m!8310730 () Bool)

(assert (=> b!7928204 m!8310730))

(declare-fun m!8310732 () Bool)

(assert (=> b!7928204 m!8310732))

(declare-fun m!8310734 () Bool)

(assert (=> d!2368442 m!8310734))

(declare-fun m!8310736 () Bool)

(assert (=> d!2368442 m!8310736))

(declare-fun m!8310738 () Bool)

(assert (=> d!2368442 m!8310738))

(assert (=> d!2367856 d!2368442))

(declare-fun b!7928206 () Bool)

(declare-fun e!4678861 () List!74572)

(assert (=> b!7928206 (= e!4678861 (ite c!1455404 lt!2693099 lt!2693092))))

(declare-fun lt!2693412 () List!74572)

(declare-fun e!4678862 () Bool)

(declare-fun b!7928209 () Bool)

(assert (=> b!7928209 (= e!4678862 (or (not (= (ite c!1455404 lt!2693099 lt!2693092) Nil!74448)) (= lt!2693412 (ite c!1455404 lt!2693097 lt!2693089))))))

(declare-fun b!7928207 () Bool)

(assert (=> b!7928207 (= e!4678861 (Cons!74448 (h!80896 (ite c!1455404 lt!2693097 lt!2693089)) (++!18259 (t!390189 (ite c!1455404 lt!2693097 lt!2693089)) (ite c!1455404 lt!2693099 lt!2693092))))))

(declare-fun b!7928208 () Bool)

(declare-fun res!3145960 () Bool)

(assert (=> b!7928208 (=> (not res!3145960) (not e!4678862))))

(assert (=> b!7928208 (= res!3145960 (= (size!43248 lt!2693412) (+ (size!43248 (ite c!1455404 lt!2693097 lt!2693089)) (size!43248 (ite c!1455404 lt!2693099 lt!2693092)))))))

(declare-fun d!2368444 () Bool)

(assert (=> d!2368444 e!4678862))

(declare-fun res!3145959 () Bool)

(assert (=> d!2368444 (=> (not res!3145959) (not e!4678862))))

(assert (=> d!2368444 (= res!3145959 (= (content!15783 lt!2693412) ((_ map or) (content!15783 (ite c!1455404 lt!2693097 lt!2693089)) (content!15783 (ite c!1455404 lt!2693099 lt!2693092)))))))

(assert (=> d!2368444 (= lt!2693412 e!4678861)))

(declare-fun c!1455838 () Bool)

(assert (=> d!2368444 (= c!1455838 ((_ is Nil!74448) (ite c!1455404 lt!2693097 lt!2693089)))))

(assert (=> d!2368444 (= (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092)) lt!2693412)))

(assert (= (and d!2368444 c!1455838) b!7928206))

(assert (= (and d!2368444 (not c!1455838)) b!7928207))

(assert (= (and d!2368444 res!3145959) b!7928208))

(assert (= (and b!7928208 res!3145960) b!7928209))

(declare-fun m!8310740 () Bool)

(assert (=> b!7928207 m!8310740))

(declare-fun m!8310742 () Bool)

(assert (=> b!7928208 m!8310742))

(assert (=> b!7928208 m!8308822))

(assert (=> b!7928208 m!8310730))

(declare-fun m!8310744 () Bool)

(assert (=> d!2368444 m!8310744))

(assert (=> d!2368444 m!8308828))

(assert (=> d!2368444 m!8310736))

(assert (=> d!2367856 d!2368444))

(declare-fun d!2368446 () Bool)

(assert (=> d!2368446 (= (++!18259 (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092)) (ite c!1455404 lt!2693093 lt!2693103)) (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (++!18259 (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103))))))

(assert (=> d!2368446 true))

(declare-fun _$15!894 () Unit!169565)

(assert (=> d!2368446 (= (choose!59826 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092) (ite c!1455404 lt!2693093 lt!2693103)) _$15!894)))

(declare-fun bs!1968888 () Bool)

(assert (= bs!1968888 d!2368446))

(assert (=> bs!1968888 m!8309198))

(assert (=> bs!1968888 m!8309198))

(assert (=> bs!1968888 m!8309202))

(assert (=> bs!1968888 m!8309194))

(assert (=> bs!1968888 m!8309194))

(assert (=> bs!1968888 m!8309196))

(assert (=> d!2367856 d!2368446))

(declare-fun e!4678863 () List!74572)

(declare-fun b!7928210 () Bool)

(assert (=> b!7928210 (= e!4678863 (ite c!1455404 lt!2693093 lt!2693103))))

(declare-fun e!4678864 () Bool)

(declare-fun lt!2693413 () List!74572)

(declare-fun b!7928213 () Bool)

(assert (=> b!7928213 (= e!4678864 (or (not (= (ite c!1455404 lt!2693093 lt!2693103) Nil!74448)) (= lt!2693413 (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092)))))))

(declare-fun b!7928211 () Bool)

(assert (=> b!7928211 (= e!4678863 (Cons!74448 (h!80896 (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092))) (++!18259 (t!390189 (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092))) (ite c!1455404 lt!2693093 lt!2693103))))))

(declare-fun b!7928212 () Bool)

(declare-fun res!3145962 () Bool)

(assert (=> b!7928212 (=> (not res!3145962) (not e!4678864))))

(assert (=> b!7928212 (= res!3145962 (= (size!43248 lt!2693413) (+ (size!43248 (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092))) (size!43248 (ite c!1455404 lt!2693093 lt!2693103)))))))

(declare-fun d!2368448 () Bool)

(assert (=> d!2368448 e!4678864))

(declare-fun res!3145961 () Bool)

(assert (=> d!2368448 (=> (not res!3145961) (not e!4678864))))

(assert (=> d!2368448 (= res!3145961 (= (content!15783 lt!2693413) ((_ map or) (content!15783 (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092))) (content!15783 (ite c!1455404 lt!2693093 lt!2693103)))))))

(assert (=> d!2368448 (= lt!2693413 e!4678863)))

(declare-fun c!1455839 () Bool)

(assert (=> d!2368448 (= c!1455839 ((_ is Nil!74448) (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092))))))

(assert (=> d!2368448 (= (++!18259 (++!18259 (ite c!1455404 lt!2693097 lt!2693089) (ite c!1455404 lt!2693099 lt!2693092)) (ite c!1455404 lt!2693093 lt!2693103)) lt!2693413)))

(assert (= (and d!2368448 c!1455839) b!7928210))

(assert (= (and d!2368448 (not c!1455839)) b!7928211))

(assert (= (and d!2368448 res!3145961) b!7928212))

(assert (= (and b!7928212 res!3145962) b!7928213))

(declare-fun m!8310746 () Bool)

(assert (=> b!7928211 m!8310746))

(declare-fun m!8310748 () Bool)

(assert (=> b!7928212 m!8310748))

(assert (=> b!7928212 m!8309198))

(declare-fun m!8310750 () Bool)

(assert (=> b!7928212 m!8310750))

(assert (=> b!7928212 m!8310732))

(declare-fun m!8310752 () Bool)

(assert (=> d!2368448 m!8310752))

(assert (=> d!2368448 m!8309198))

(declare-fun m!8310754 () Bool)

(assert (=> d!2368448 m!8310754))

(assert (=> d!2368448 m!8310738))

(assert (=> d!2367856 d!2368448))

(declare-fun b!7928214 () Bool)

(declare-fun e!4678866 () Bool)

(declare-fun e!4678865 () Bool)

(assert (=> b!7928214 (= e!4678866 e!4678865)))

(declare-fun res!3145964 () Bool)

(assert (=> b!7928214 (=> (not res!3145964) (not e!4678865))))

(assert (=> b!7928214 (= res!3145964 (<= (- 1) (- (height!2217 (left!56873 (left!56873 (right!57203 t!4440)))) (height!2217 (right!57203 (left!56873 (right!57203 t!4440)))))))))

(declare-fun b!7928216 () Bool)

(declare-fun res!3145967 () Bool)

(assert (=> b!7928216 (=> (not res!3145967) (not e!4678865))))

(assert (=> b!7928216 (= res!3145967 (not (isEmpty!42776 (left!56873 (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7928217 () Bool)

(declare-fun res!3145968 () Bool)

(assert (=> b!7928217 (=> (not res!3145968) (not e!4678865))))

(assert (=> b!7928217 (= res!3145968 (isBalanced!4528 (left!56873 (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7928218 () Bool)

(declare-fun res!3145963 () Bool)

(assert (=> b!7928218 (=> (not res!3145963) (not e!4678865))))

(assert (=> b!7928218 (= res!3145963 (isBalanced!4528 (right!57203 (left!56873 (right!57203 t!4440)))))))

(declare-fun b!7928219 () Bool)

(assert (=> b!7928219 (= e!4678865 (not (isEmpty!42776 (right!57203 (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7928215 () Bool)

(declare-fun res!3145965 () Bool)

(assert (=> b!7928215 (=> (not res!3145965) (not e!4678865))))

(assert (=> b!7928215 (= res!3145965 (<= (- (height!2217 (left!56873 (left!56873 (right!57203 t!4440)))) (height!2217 (right!57203 (left!56873 (right!57203 t!4440))))) 1))))

(declare-fun d!2368450 () Bool)

(declare-fun res!3145966 () Bool)

(assert (=> d!2368450 (=> res!3145966 e!4678866)))

(assert (=> d!2368450 (= res!3145966 (not ((_ is Node!15902) (left!56873 (right!57203 t!4440)))))))

(assert (=> d!2368450 (= (isBalanced!4528 (left!56873 (right!57203 t!4440))) e!4678866)))

(assert (= (and d!2368450 (not res!3145966)) b!7928214))

(assert (= (and b!7928214 res!3145964) b!7928215))

(assert (= (and b!7928215 res!3145965) b!7928217))

(assert (= (and b!7928217 res!3145968) b!7928218))

(assert (= (and b!7928218 res!3145963) b!7928216))

(assert (= (and b!7928216 res!3145967) b!7928219))

(declare-fun m!8310756 () Bool)

(assert (=> b!7928215 m!8310756))

(declare-fun m!8310758 () Bool)

(assert (=> b!7928215 m!8310758))

(declare-fun m!8310760 () Bool)

(assert (=> b!7928218 m!8310760))

(declare-fun m!8310762 () Bool)

(assert (=> b!7928216 m!8310762))

(declare-fun m!8310764 () Bool)

(assert (=> b!7928217 m!8310764))

(declare-fun m!8310766 () Bool)

(assert (=> b!7928219 m!8310766))

(assert (=> b!7928214 m!8310756))

(assert (=> b!7928214 m!8310758))

(assert (=> b!7927180 d!2368450))

(declare-fun d!2368452 () Bool)

(declare-fun lt!2693414 () Int)

(assert (=> d!2368452 (>= lt!2693414 0)))

(declare-fun e!4678867 () Int)

(assert (=> d!2368452 (= lt!2693414 e!4678867)))

(declare-fun c!1455840 () Bool)

(assert (=> d!2368452 (= c!1455840 ((_ is Nil!74448) lt!2693178))))

(assert (=> d!2368452 (= (size!43248 lt!2693178) lt!2693414)))

(declare-fun b!7928220 () Bool)

(assert (=> b!7928220 (= e!4678867 0)))

(declare-fun b!7928221 () Bool)

(assert (=> b!7928221 (= e!4678867 (+ 1 (size!43248 (t!390189 lt!2693178))))))

(assert (= (and d!2368452 c!1455840) b!7928220))

(assert (= (and d!2368452 (not c!1455840)) b!7928221))

(declare-fun m!8310768 () Bool)

(assert (=> b!7928221 m!8310768))

(assert (=> b!7927172 d!2368452))

(declare-fun d!2368454 () Bool)

(declare-fun lt!2693415 () Int)

(assert (=> d!2368454 (>= lt!2693415 0)))

(declare-fun e!4678868 () Int)

(assert (=> d!2368454 (= lt!2693415 e!4678868)))

(declare-fun c!1455841 () Bool)

(assert (=> d!2368454 (= c!1455841 ((_ is Nil!74448) (ite c!1455404 call!735184 lt!2693095)))))

(assert (=> d!2368454 (= (size!43248 (ite c!1455404 call!735184 lt!2693095)) lt!2693415)))

(declare-fun b!7928222 () Bool)

(assert (=> b!7928222 (= e!4678868 0)))

(declare-fun b!7928223 () Bool)

(assert (=> b!7928223 (= e!4678868 (+ 1 (size!43248 (t!390189 (ite c!1455404 call!735184 lt!2693095)))))))

(assert (= (and d!2368454 c!1455841) b!7928222))

(assert (= (and d!2368454 (not c!1455841)) b!7928223))

(assert (=> b!7928223 m!8310624))

(assert (=> b!7927172 d!2368454))

(declare-fun d!2368456 () Bool)

(declare-fun lt!2693416 () Int)

(assert (=> d!2368456 (>= lt!2693416 0)))

(declare-fun e!4678869 () Int)

(assert (=> d!2368456 (= lt!2693416 e!4678869)))

(declare-fun c!1455842 () Bool)

(assert (=> d!2368456 (= c!1455842 ((_ is Nil!74448) (ite c!1455404 lt!2693093 lt!2693104)))))

(assert (=> d!2368456 (= (size!43248 (ite c!1455404 lt!2693093 lt!2693104)) lt!2693416)))

(declare-fun b!7928224 () Bool)

(assert (=> b!7928224 (= e!4678869 0)))

(declare-fun b!7928225 () Bool)

(assert (=> b!7928225 (= e!4678869 (+ 1 (size!43248 (t!390189 (ite c!1455404 lt!2693093 lt!2693104)))))))

(assert (= (and d!2368456 c!1455842) b!7928224))

(assert (= (and d!2368456 (not c!1455842)) b!7928225))

(declare-fun m!8310770 () Bool)

(assert (=> b!7928225 m!8310770))

(assert (=> b!7927172 d!2368456))

(assert (=> b!7927529 d!2368360))

(assert (=> b!7927529 d!2368362))

(declare-fun d!2368458 () Bool)

(assert (=> d!2368458 (= (list!19415 (xs!19290 (right!57203 (right!57203 t!4440)))) (innerList!15990 (xs!19290 (right!57203 (right!57203 t!4440)))))))

(assert (=> b!7927052 d!2368458))

(declare-fun d!2368460 () Bool)

(declare-fun c!1455843 () Bool)

(assert (=> d!2368460 (= c!1455843 ((_ is Node!15902) (left!56873 (right!57203 (left!56873 t!4440)))))))

(declare-fun e!4678870 () Bool)

(assert (=> d!2368460 (= (inv!95719 (left!56873 (right!57203 (left!56873 t!4440)))) e!4678870)))

(declare-fun b!7928226 () Bool)

(assert (=> b!7928226 (= e!4678870 (inv!95723 (left!56873 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7928227 () Bool)

(declare-fun e!4678871 () Bool)

(assert (=> b!7928227 (= e!4678870 e!4678871)))

(declare-fun res!3145969 () Bool)

(assert (=> b!7928227 (= res!3145969 (not ((_ is Leaf!30234) (left!56873 (right!57203 (left!56873 t!4440))))))))

(assert (=> b!7928227 (=> res!3145969 e!4678871)))

(declare-fun b!7928228 () Bool)

(assert (=> b!7928228 (= e!4678871 (inv!95724 (left!56873 (right!57203 (left!56873 t!4440)))))))

(assert (= (and d!2368460 c!1455843) b!7928226))

(assert (= (and d!2368460 (not c!1455843)) b!7928227))

(assert (= (and b!7928227 (not res!3145969)) b!7928228))

(declare-fun m!8310772 () Bool)

(assert (=> b!7928226 m!8310772))

(declare-fun m!8310774 () Bool)

(assert (=> b!7928228 m!8310774))

(assert (=> b!7927605 d!2368460))

(declare-fun d!2368462 () Bool)

(declare-fun c!1455844 () Bool)

(assert (=> d!2368462 (= c!1455844 ((_ is Node!15902) (right!57203 (right!57203 (left!56873 t!4440)))))))

(declare-fun e!4678872 () Bool)

(assert (=> d!2368462 (= (inv!95719 (right!57203 (right!57203 (left!56873 t!4440)))) e!4678872)))

(declare-fun b!7928229 () Bool)

(assert (=> b!7928229 (= e!4678872 (inv!95723 (right!57203 (right!57203 (left!56873 t!4440)))))))

(declare-fun b!7928230 () Bool)

(declare-fun e!4678873 () Bool)

(assert (=> b!7928230 (= e!4678872 e!4678873)))

(declare-fun res!3145970 () Bool)

(assert (=> b!7928230 (= res!3145970 (not ((_ is Leaf!30234) (right!57203 (right!57203 (left!56873 t!4440))))))))

(assert (=> b!7928230 (=> res!3145970 e!4678873)))

(declare-fun b!7928231 () Bool)

(assert (=> b!7928231 (= e!4678873 (inv!95724 (right!57203 (right!57203 (left!56873 t!4440)))))))

(assert (= (and d!2368462 c!1455844) b!7928229))

(assert (= (and d!2368462 (not c!1455844)) b!7928230))

(assert (= (and b!7928230 (not res!3145970)) b!7928231))

(declare-fun m!8310776 () Bool)

(assert (=> b!7928229 m!8310776))

(declare-fun m!8310778 () Bool)

(assert (=> b!7928231 m!8310778))

(assert (=> b!7927605 d!2368462))

(declare-fun d!2368464 () Bool)

(declare-fun lt!2693417 () Int)

(assert (=> d!2368464 (>= lt!2693417 0)))

(declare-fun e!4678874 () Int)

(assert (=> d!2368464 (= lt!2693417 e!4678874)))

(declare-fun c!1455845 () Bool)

(assert (=> d!2368464 (= c!1455845 ((_ is Nil!74448) (list!19413 lt!2692975)))))

(assert (=> d!2368464 (= (size!43248 (list!19413 lt!2692975)) lt!2693417)))

(declare-fun b!7928232 () Bool)

(assert (=> b!7928232 (= e!4678874 0)))

(declare-fun b!7928233 () Bool)

(assert (=> b!7928233 (= e!4678874 (+ 1 (size!43248 (t!390189 (list!19413 lt!2692975)))))))

(assert (= (and d!2368464 c!1455845) b!7928232))

(assert (= (and d!2368464 (not c!1455845)) b!7928233))

(declare-fun m!8310780 () Bool)

(assert (=> b!7928233 m!8310780))

(assert (=> d!2367834 d!2368464))

(assert (=> d!2367834 d!2367692))

(declare-fun d!2368466 () Bool)

(declare-fun lt!2693418 () IArray!31865)

(assert (=> d!2368466 (= lt!2693418 (IArray!31866 ($colon+!315 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440)))) v!5484)))))

(assert (=> d!2368466 (= lt!2693418 (choose!59830 (xs!19290 (right!57203 (right!57203 t!4440))) v!5484))))

(assert (=> d!2368466 (<= (+ (size!43251 (xs!19290 (right!57203 (right!57203 t!4440)))) 1) 2147483647)))

(assert (=> d!2368466 (= (append!1146 (xs!19290 (right!57203 (right!57203 t!4440))) v!5484) lt!2693418)))

(declare-fun bs!1968889 () Bool)

(assert (= bs!1968889 d!2368466))

(assert (=> bs!1968889 m!8308312))

(assert (=> bs!1968889 m!8308312))

(assert (=> bs!1968889 m!8308314))

(declare-fun m!8310782 () Bool)

(assert (=> bs!1968889 m!8310782))

(declare-fun m!8310784 () Bool)

(assert (=> bs!1968889 m!8310784))

(assert (=> b!7926999 d!2368466))

(declare-fun d!2368468 () Bool)

(declare-fun e!4678877 () Bool)

(assert (=> d!2368468 e!4678877))

(declare-fun res!3145973 () Bool)

(assert (=> d!2368468 (=> (not res!3145973) (not e!4678877))))

(declare-fun lt!2693419 () List!74572)

(assert (=> d!2368468 (= res!3145973 ((_ is Cons!74448) lt!2693419))))

(declare-fun e!4678876 () List!74572)

(assert (=> d!2368468 (= lt!2693419 e!4678876)))

(declare-fun c!1455846 () Bool)

(assert (=> d!2368468 (= c!1455846 ((_ is Nil!74448) (list!19415 (xs!19290 (right!57203 (right!57203 t!4440))))))))

(assert (=> d!2368468 (= ($colon+!315 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440)))) v!5484) lt!2693419)))

(declare-fun bm!735234 () Bool)

(declare-fun call!735239 () (_ BitVec 32))

(assert (=> bm!735234 (= call!735239 (isize!119 lt!2693419))))

(declare-fun bm!735235 () Bool)

(declare-fun call!735240 () (_ BitVec 32))

(assert (=> bm!735235 (= call!735240 (isize!119 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7928234 () Bool)

(declare-fun e!4678875 () Bool)

(assert (=> b!7928234 (= e!4678875 (= call!735239 (bvadd call!735240 #b00000000000000000000000000000001)))))

(declare-fun b!7928235 () Bool)

(assert (=> b!7928235 (= e!4678876 (Cons!74448 (h!80896 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440))))) ($colon+!315 (t!390189 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440))))) v!5484)))))

(declare-fun b!7928236 () Bool)

(assert (=> b!7928236 (= e!4678875 (= call!735239 call!735240))))

(declare-fun b!7928237 () Bool)

(declare-fun res!3145974 () Bool)

(assert (=> b!7928237 (=> (not res!3145974) (not e!4678877))))

(assert (=> b!7928237 (= res!3145974 (= (content!15783 lt!2693419) ((_ map or) (content!15783 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440))))) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun b!7928238 () Bool)

(declare-fun res!3145971 () Bool)

(assert (=> b!7928238 (=> (not res!3145971) (not e!4678877))))

(assert (=> b!7928238 (= res!3145971 e!4678875)))

(declare-fun c!1455847 () Bool)

(assert (=> b!7928238 (= c!1455847 (bvslt (isize!119 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440))))) #b01111111111111111111111111111111))))

(declare-fun b!7928239 () Bool)

(assert (=> b!7928239 (= e!4678876 (Cons!74448 v!5484 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7928240 () Bool)

(declare-fun res!3145972 () Bool)

(assert (=> b!7928240 (=> (not res!3145972) (not e!4678877))))

(assert (=> b!7928240 (= res!3145972 (= (size!43248 lt!2693419) (+ (size!43248 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440))))) 1)))))

(declare-fun b!7928241 () Bool)

(assert (=> b!7928241 (= e!4678877 (= lt!2693419 (++!18259 (list!19415 (xs!19290 (right!57203 (right!57203 t!4440)))) (Cons!74448 v!5484 Nil!74448))))))

(assert (= (and d!2368468 c!1455846) b!7928239))

(assert (= (and d!2368468 (not c!1455846)) b!7928235))

(assert (= (and d!2368468 res!3145973) b!7928240))

(assert (= (and b!7928240 res!3145972) b!7928238))

(assert (= (and b!7928238 c!1455847) b!7928234))

(assert (= (and b!7928238 (not c!1455847)) b!7928236))

(assert (= (or b!7928234 b!7928236) bm!735235))

(assert (= (or b!7928234 b!7928236) bm!735234))

(assert (= (and b!7928238 res!3145971) b!7928237))

(assert (= (and b!7928237 res!3145974) b!7928241))

(declare-fun m!8310786 () Bool)

(assert (=> bm!735234 m!8310786))

(declare-fun m!8310788 () Bool)

(assert (=> b!7928237 m!8310788))

(assert (=> b!7928237 m!8308312))

(declare-fun m!8310790 () Bool)

(assert (=> b!7928237 m!8310790))

(assert (=> b!7928237 m!8308156))

(assert (=> bm!735235 m!8308312))

(declare-fun m!8310792 () Bool)

(assert (=> bm!735235 m!8310792))

(assert (=> b!7928238 m!8308312))

(assert (=> b!7928238 m!8310792))

(assert (=> b!7928241 m!8308312))

(declare-fun m!8310794 () Bool)

(assert (=> b!7928241 m!8310794))

(declare-fun m!8310796 () Bool)

(assert (=> b!7928235 m!8310796))

(declare-fun m!8310798 () Bool)

(assert (=> b!7928240 m!8310798))

(assert (=> b!7928240 m!8308312))

(assert (=> b!7928240 m!8310554))

(assert (=> b!7926999 d!2368468))

(assert (=> b!7926999 d!2368458))

(declare-fun d!2368470 () Bool)

(declare-fun lt!2693420 () Int)

(assert (=> d!2368470 (>= lt!2693420 0)))

(declare-fun e!4678878 () Int)

(assert (=> d!2368470 (= lt!2693420 e!4678878)))

(declare-fun c!1455848 () Bool)

(assert (=> d!2368470 (= c!1455848 ((_ is Nil!74448) lt!2693280))))

(assert (=> d!2368470 (= (size!43248 lt!2693280) lt!2693420)))

(declare-fun b!7928242 () Bool)

(assert (=> b!7928242 (= e!4678878 0)))

(declare-fun b!7928243 () Bool)

(assert (=> b!7928243 (= e!4678878 (+ 1 (size!43248 (t!390189 lt!2693280))))))

(assert (= (and d!2368470 c!1455848) b!7928242))

(assert (= (and d!2368470 (not c!1455848)) b!7928243))

(declare-fun m!8310800 () Bool)

(assert (=> b!7928243 m!8310800))

(assert (=> b!7927590 d!2368470))

(assert (=> b!7927590 d!2368068))

(declare-fun d!2368472 () Bool)

(declare-fun lt!2693421 () Int)

(assert (=> d!2368472 (>= lt!2693421 0)))

(declare-fun e!4678879 () Int)

(assert (=> d!2368472 (= lt!2693421 e!4678879)))

(declare-fun c!1455849 () Bool)

(assert (=> d!2368472 (= c!1455849 ((_ is Nil!74448) (t!390189 lt!2692980)))))

(assert (=> d!2368472 (= (size!43248 (t!390189 lt!2692980)) lt!2693421)))

(declare-fun b!7928244 () Bool)

(assert (=> b!7928244 (= e!4678879 0)))

(declare-fun b!7928245 () Bool)

(assert (=> b!7928245 (= e!4678879 (+ 1 (size!43248 (t!390189 (t!390189 lt!2692980)))))))

(assert (= (and d!2368472 c!1455849) b!7928244))

(assert (= (and d!2368472 (not c!1455849)) b!7928245))

(declare-fun m!8310802 () Bool)

(assert (=> b!7928245 m!8310802))

(assert (=> b!7927234 d!2368472))

(declare-fun d!2368474 () Bool)

(declare-fun lt!2693422 () Int)

(assert (=> d!2368474 (>= lt!2693422 0)))

(declare-fun e!4678880 () Int)

(assert (=> d!2368474 (= lt!2693422 e!4678880)))

(declare-fun c!1455850 () Bool)

(assert (=> d!2368474 (= c!1455850 ((_ is Nil!74448) (innerList!15990 (xs!19290 (left!56873 t!4440)))))))

(assert (=> d!2368474 (= (size!43248 (innerList!15990 (xs!19290 (left!56873 t!4440)))) lt!2693422)))

(declare-fun b!7928246 () Bool)

(assert (=> b!7928246 (= e!4678880 0)))

(declare-fun b!7928247 () Bool)

(assert (=> b!7928247 (= e!4678880 (+ 1 (size!43248 (t!390189 (innerList!15990 (xs!19290 (left!56873 t!4440)))))))))

(assert (= (and d!2368474 c!1455850) b!7928246))

(assert (= (and d!2368474 (not c!1455850)) b!7928247))

(declare-fun m!8310804 () Bool)

(assert (=> b!7928247 m!8310804))

(assert (=> d!2367946 d!2368474))

(declare-fun d!2368476 () Bool)

(assert (=> d!2368476 (= (max!0 (height!2217 (left!56873 (right!57203 t!4440))) (height!2217 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))) (ite (< (height!2217 (left!56873 (right!57203 t!4440))) (height!2217 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))) (height!2217 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) (height!2217 (left!56873 (right!57203 t!4440)))))))

(assert (=> b!7927500 d!2368476))

(assert (=> b!7927500 d!2367558))

(declare-fun d!2368478 () Bool)

(declare-fun lt!2693423 () Int)

(assert (=> d!2368478 (= lt!2693423 (size!43248 (list!19413 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))))))

(assert (=> d!2368478 (= lt!2693423 (ite ((_ is Empty!15902) (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) 0 (ite ((_ is Leaf!30234) (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) (csize!32035 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) (csize!32034 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))))))))

(assert (=> d!2368478 (= (size!43249 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) lt!2693423)))

(declare-fun bs!1968890 () Bool)

(assert (= bs!1968890 d!2368478))

(assert (=> bs!1968890 m!8309356))

(assert (=> bs!1968890 m!8309356))

(declare-fun m!8310806 () Bool)

(assert (=> bs!1968890 m!8310806))

(assert (=> b!7927500 d!2368478))

(declare-fun d!2368480 () Bool)

(assert (=> d!2368480 (= (height!2217 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) (ite ((_ is Empty!15902) (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) 0 (ite ((_ is Leaf!30234) (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) 1 (cheight!16113 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))))))))

(assert (=> b!7927500 d!2368480))

(assert (=> b!7927500 d!2367964))

(declare-fun d!2368482 () Bool)

(assert (=> d!2368482 (= (height!2217 (left!56873 (right!57203 lt!2692978))) (ite ((_ is Empty!15902) (left!56873 (right!57203 lt!2692978))) 0 (ite ((_ is Leaf!30234) (left!56873 (right!57203 lt!2692978))) 1 (cheight!16113 (left!56873 (right!57203 lt!2692978))))))))

(assert (=> b!7927129 d!2368482))

(declare-fun d!2368484 () Bool)

(assert (=> d!2368484 (= (height!2217 (right!57203 (right!57203 lt!2692978))) (ite ((_ is Empty!15902) (right!57203 (right!57203 lt!2692978))) 0 (ite ((_ is Leaf!30234) (right!57203 (right!57203 lt!2692978))) 1 (cheight!16113 (right!57203 (right!57203 lt!2692978))))))))

(assert (=> b!7927129 d!2368484))

(assert (=> b!7927369 d!2368108))

(assert (=> bm!735202 d!2367584))

(declare-fun e!4678881 () List!74572)

(declare-fun b!7928248 () Bool)

(assert (=> b!7928248 (= e!4678881 (ite c!1455404 lt!2693093 lt!2693095))))

(declare-fun lt!2693424 () List!74572)

(declare-fun e!4678882 () Bool)

(declare-fun b!7928251 () Bool)

(assert (=> b!7928251 (= e!4678882 (or (not (= (ite c!1455404 lt!2693093 lt!2693095) Nil!74448)) (= lt!2693424 (t!390189 (ite c!1455404 lt!2693099 lt!2693091)))))))

(declare-fun b!7928249 () Bool)

(assert (=> b!7928249 (= e!4678881 (Cons!74448 (h!80896 (t!390189 (ite c!1455404 lt!2693099 lt!2693091))) (++!18259 (t!390189 (t!390189 (ite c!1455404 lt!2693099 lt!2693091))) (ite c!1455404 lt!2693093 lt!2693095))))))

(declare-fun b!7928250 () Bool)

(declare-fun res!3145976 () Bool)

(assert (=> b!7928250 (=> (not res!3145976) (not e!4678882))))

(assert (=> b!7928250 (= res!3145976 (= (size!43248 lt!2693424) (+ (size!43248 (t!390189 (ite c!1455404 lt!2693099 lt!2693091))) (size!43248 (ite c!1455404 lt!2693093 lt!2693095)))))))

(declare-fun d!2368486 () Bool)

(assert (=> d!2368486 e!4678882))

(declare-fun res!3145975 () Bool)

(assert (=> d!2368486 (=> (not res!3145975) (not e!4678882))))

(assert (=> d!2368486 (= res!3145975 (= (content!15783 lt!2693424) ((_ map or) (content!15783 (t!390189 (ite c!1455404 lt!2693099 lt!2693091))) (content!15783 (ite c!1455404 lt!2693093 lt!2693095)))))))

(assert (=> d!2368486 (= lt!2693424 e!4678881)))

(declare-fun c!1455851 () Bool)

(assert (=> d!2368486 (= c!1455851 ((_ is Nil!74448) (t!390189 (ite c!1455404 lt!2693099 lt!2693091))))))

(assert (=> d!2368486 (= (++!18259 (t!390189 (ite c!1455404 lt!2693099 lt!2693091)) (ite c!1455404 lt!2693093 lt!2693095)) lt!2693424)))

(assert (= (and d!2368486 c!1455851) b!7928248))

(assert (= (and d!2368486 (not c!1455851)) b!7928249))

(assert (= (and d!2368486 res!3145975) b!7928250))

(assert (= (and b!7928250 res!3145976) b!7928251))

(declare-fun m!8310808 () Bool)

(assert (=> b!7928249 m!8310808))

(declare-fun m!8310810 () Bool)

(assert (=> b!7928250 m!8310810))

(declare-fun m!8310812 () Bool)

(assert (=> b!7928250 m!8310812))

(assert (=> b!7928250 m!8309438))

(declare-fun m!8310814 () Bool)

(assert (=> d!2368486 m!8310814))

(assert (=> d!2368486 m!8310710))

(assert (=> d!2368486 m!8309444))

(assert (=> b!7927542 d!2368486))

(declare-fun d!2368488 () Bool)

(declare-fun lt!2693425 () Int)

(assert (=> d!2368488 (>= lt!2693425 0)))

(declare-fun e!4678883 () Int)

(assert (=> d!2368488 (= lt!2693425 e!4678883)))

(declare-fun c!1455852 () Bool)

(assert (=> d!2368488 (= c!1455852 ((_ is Nil!74448) lt!2693185))))

(assert (=> d!2368488 (= (size!43248 lt!2693185) lt!2693425)))

(declare-fun b!7928252 () Bool)

(assert (=> b!7928252 (= e!4678883 0)))

(declare-fun b!7928253 () Bool)

(assert (=> b!7928253 (= e!4678883 (+ 1 (size!43248 (t!390189 lt!2693185))))))

(assert (= (and d!2368488 c!1455852) b!7928252))

(assert (= (and d!2368488 (not c!1455852)) b!7928253))

(declare-fun m!8310816 () Bool)

(assert (=> b!7928253 m!8310816))

(assert (=> b!7927213 d!2368488))

(assert (=> b!7927213 d!2368084))

(assert (=> b!7927213 d!2368464))

(assert (=> b!7927364 d!2368408))

(declare-fun b!7928254 () Bool)

(declare-fun e!4678885 () Bool)

(declare-fun e!4678884 () Bool)

(assert (=> b!7928254 (= e!4678885 e!4678884)))

(declare-fun res!3145978 () Bool)

(assert (=> b!7928254 (=> (not res!3145978) (not e!4678884))))

(assert (=> b!7928254 (= res!3145978 (<= (- 1) (- (height!2217 (left!56873 (left!56873 lt!2693102))) (height!2217 (right!57203 (left!56873 lt!2693102))))))))

(declare-fun b!7928256 () Bool)

(declare-fun res!3145981 () Bool)

(assert (=> b!7928256 (=> (not res!3145981) (not e!4678884))))

(assert (=> b!7928256 (= res!3145981 (not (isEmpty!42776 (left!56873 (left!56873 lt!2693102)))))))

(declare-fun b!7928257 () Bool)

(declare-fun res!3145982 () Bool)

(assert (=> b!7928257 (=> (not res!3145982) (not e!4678884))))

(assert (=> b!7928257 (= res!3145982 (isBalanced!4528 (left!56873 (left!56873 lt!2693102))))))

(declare-fun b!7928258 () Bool)

(declare-fun res!3145977 () Bool)

(assert (=> b!7928258 (=> (not res!3145977) (not e!4678884))))

(assert (=> b!7928258 (= res!3145977 (isBalanced!4528 (right!57203 (left!56873 lt!2693102))))))

(declare-fun b!7928259 () Bool)

(assert (=> b!7928259 (= e!4678884 (not (isEmpty!42776 (right!57203 (left!56873 lt!2693102)))))))

(declare-fun b!7928255 () Bool)

(declare-fun res!3145979 () Bool)

(assert (=> b!7928255 (=> (not res!3145979) (not e!4678884))))

(assert (=> b!7928255 (= res!3145979 (<= (- (height!2217 (left!56873 (left!56873 lt!2693102))) (height!2217 (right!57203 (left!56873 lt!2693102)))) 1))))

(declare-fun d!2368490 () Bool)

(declare-fun res!3145980 () Bool)

(assert (=> d!2368490 (=> res!3145980 e!4678885)))

(assert (=> d!2368490 (= res!3145980 (not ((_ is Node!15902) (left!56873 lt!2693102))))))

(assert (=> d!2368490 (= (isBalanced!4528 (left!56873 lt!2693102)) e!4678885)))

(assert (= (and d!2368490 (not res!3145980)) b!7928254))

(assert (= (and b!7928254 res!3145978) b!7928255))

(assert (= (and b!7928255 res!3145979) b!7928257))

(assert (= (and b!7928257 res!3145982) b!7928258))

(assert (= (and b!7928258 res!3145977) b!7928256))

(assert (= (and b!7928256 res!3145981) b!7928259))

(declare-fun m!8310818 () Bool)

(assert (=> b!7928255 m!8310818))

(declare-fun m!8310820 () Bool)

(assert (=> b!7928255 m!8310820))

(declare-fun m!8310822 () Bool)

(assert (=> b!7928258 m!8310822))

(declare-fun m!8310824 () Bool)

(assert (=> b!7928256 m!8310824))

(declare-fun m!8310826 () Bool)

(assert (=> b!7928257 m!8310826))

(declare-fun m!8310828 () Bool)

(assert (=> b!7928259 m!8310828))

(assert (=> b!7928254 m!8310818))

(assert (=> b!7928254 m!8310820))

(assert (=> b!7927581 d!2368490))

(declare-fun d!2368492 () Bool)

(assert (=> d!2368492 (= (max!0 (height!2217 (left!56873 (right!57203 t!4440))) (height!2217 (right!57203 (right!57203 t!4440)))) (ite (< (height!2217 (left!56873 (right!57203 t!4440))) (height!2217 (right!57203 (right!57203 t!4440)))) (height!2217 (right!57203 (right!57203 t!4440))) (height!2217 (left!56873 (right!57203 t!4440)))))))

(assert (=> b!7927436 d!2368492))

(assert (=> b!7927436 d!2367558))

(assert (=> b!7927436 d!2368252))

(declare-fun d!2368494 () Bool)

(assert (=> d!2368494 (= (height!2217 (left!56873 (left!56873 lt!2692978))) (ite ((_ is Empty!15902) (left!56873 (left!56873 lt!2692978))) 0 (ite ((_ is Leaf!30234) (left!56873 (left!56873 lt!2692978))) 1 (cheight!16113 (left!56873 (left!56873 lt!2692978))))))))

(assert (=> b!7927501 d!2368494))

(declare-fun d!2368496 () Bool)

(assert (=> d!2368496 (= (height!2217 (right!57203 (left!56873 lt!2692978))) (ite ((_ is Empty!15902) (right!57203 (left!56873 lt!2692978))) 0 (ite ((_ is Leaf!30234) (right!57203 (left!56873 lt!2692978))) 1 (cheight!16113 (right!57203 (left!56873 lt!2692978))))))))

(assert (=> b!7927501 d!2368496))

(declare-fun d!2368498 () Bool)

(declare-fun res!3145983 () Bool)

(declare-fun e!4678886 () Bool)

(assert (=> d!2368498 (=> (not res!3145983) (not e!4678886))))

(assert (=> d!2368498 (= res!3145983 (= (csize!32034 (left!56873 (right!57203 t!4440))) (+ (size!43249 (left!56873 (left!56873 (right!57203 t!4440)))) (size!43249 (right!57203 (left!56873 (right!57203 t!4440)))))))))

(assert (=> d!2368498 (= (inv!95723 (left!56873 (right!57203 t!4440))) e!4678886)))

(declare-fun b!7928260 () Bool)

(declare-fun res!3145984 () Bool)

(assert (=> b!7928260 (=> (not res!3145984) (not e!4678886))))

(assert (=> b!7928260 (= res!3145984 (and (not (= (left!56873 (left!56873 (right!57203 t!4440))) Empty!15902)) (not (= (right!57203 (left!56873 (right!57203 t!4440))) Empty!15902))))))

(declare-fun b!7928261 () Bool)

(declare-fun res!3145985 () Bool)

(assert (=> b!7928261 (=> (not res!3145985) (not e!4678886))))

(assert (=> b!7928261 (= res!3145985 (= (cheight!16113 (left!56873 (right!57203 t!4440))) (+ (max!0 (height!2217 (left!56873 (left!56873 (right!57203 t!4440)))) (height!2217 (right!57203 (left!56873 (right!57203 t!4440))))) 1)))))

(declare-fun b!7928262 () Bool)

(assert (=> b!7928262 (= e!4678886 (<= 0 (cheight!16113 (left!56873 (right!57203 t!4440)))))))

(assert (= (and d!2368498 res!3145983) b!7928260))

(assert (= (and b!7928260 res!3145984) b!7928261))

(assert (= (and b!7928261 res!3145985) b!7928262))

(declare-fun m!8310830 () Bool)

(assert (=> d!2368498 m!8310830))

(declare-fun m!8310832 () Bool)

(assert (=> d!2368498 m!8310832))

(assert (=> b!7928261 m!8310756))

(assert (=> b!7928261 m!8310758))

(assert (=> b!7928261 m!8310756))

(assert (=> b!7928261 m!8310758))

(declare-fun m!8310834 () Bool)

(assert (=> b!7928261 m!8310834))

(assert (=> b!7927511 d!2368498))

(declare-fun b!7928266 () Bool)

(declare-fun e!4678888 () List!74572)

(assert (=> b!7928266 (= e!4678888 (++!18259 (list!19413 (left!56873 (ite c!1455443 (right!57203 (right!57203 (right!57203 t!4440))) (left!56873 (right!57203 (right!57203 t!4440)))))) (list!19413 (right!57203 (ite c!1455443 (right!57203 (right!57203 (right!57203 t!4440))) (left!56873 (right!57203 (right!57203 t!4440))))))))))

(declare-fun b!7928264 () Bool)

(declare-fun e!4678887 () List!74572)

(assert (=> b!7928264 (= e!4678887 e!4678888)))

(declare-fun c!1455854 () Bool)

(assert (=> b!7928264 (= c!1455854 ((_ is Leaf!30234) (ite c!1455443 (right!57203 (right!57203 (right!57203 t!4440))) (left!56873 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7928265 () Bool)

(assert (=> b!7928265 (= e!4678888 (list!19415 (xs!19290 (ite c!1455443 (right!57203 (right!57203 (right!57203 t!4440))) (left!56873 (right!57203 (right!57203 t!4440)))))))))

(declare-fun b!7928263 () Bool)

(assert (=> b!7928263 (= e!4678887 Nil!74448)))

(declare-fun d!2368500 () Bool)

(declare-fun c!1455853 () Bool)

(assert (=> d!2368500 (= c!1455853 ((_ is Empty!15902) (ite c!1455443 (right!57203 (right!57203 (right!57203 t!4440))) (left!56873 (right!57203 (right!57203 t!4440))))))))

(assert (=> d!2368500 (= (list!19413 (ite c!1455443 (right!57203 (right!57203 (right!57203 t!4440))) (left!56873 (right!57203 (right!57203 t!4440))))) e!4678887)))

(assert (= (and d!2368500 c!1455853) b!7928263))

(assert (= (and d!2368500 (not c!1455853)) b!7928264))

(assert (= (and b!7928264 c!1455854) b!7928265))

(assert (= (and b!7928264 (not c!1455854)) b!7928266))

(declare-fun m!8310836 () Bool)

(assert (=> b!7928266 m!8310836))

(declare-fun m!8310838 () Bool)

(assert (=> b!7928266 m!8310838))

(assert (=> b!7928266 m!8310836))

(assert (=> b!7928266 m!8310838))

(declare-fun m!8310840 () Bool)

(assert (=> b!7928266 m!8310840))

(declare-fun m!8310842 () Bool)

(assert (=> b!7928265 m!8310842))

(assert (=> bm!735197 d!2368500))

(declare-fun b!7928270 () Bool)

(declare-fun e!4678890 () List!74572)

(assert (=> b!7928270 (= e!4678890 (++!18259 (list!19413 (left!56873 lt!2693264)) (list!19413 (right!57203 lt!2693264))))))

(declare-fun b!7928268 () Bool)

(declare-fun e!4678889 () List!74572)

(assert (=> b!7928268 (= e!4678889 e!4678890)))

(declare-fun c!1455856 () Bool)

(assert (=> b!7928268 (= c!1455856 ((_ is Leaf!30234) lt!2693264))))

(declare-fun b!7928269 () Bool)

(assert (=> b!7928269 (= e!4678890 (list!19415 (xs!19290 lt!2693264)))))

(declare-fun b!7928267 () Bool)

(assert (=> b!7928267 (= e!4678889 Nil!74448)))

(declare-fun d!2368502 () Bool)

(declare-fun c!1455855 () Bool)

(assert (=> d!2368502 (= c!1455855 ((_ is Empty!15902) lt!2693264))))

(assert (=> d!2368502 (= (list!19413 lt!2693264) e!4678889)))

(assert (= (and d!2368502 c!1455855) b!7928267))

(assert (= (and d!2368502 (not c!1455855)) b!7928268))

(assert (= (and b!7928268 c!1455856) b!7928269))

(assert (= (and b!7928268 (not c!1455856)) b!7928270))

(declare-fun m!8310844 () Bool)

(assert (=> b!7928270 m!8310844))

(declare-fun m!8310846 () Bool)

(assert (=> b!7928270 m!8310846))

(assert (=> b!7928270 m!8310844))

(assert (=> b!7928270 m!8310846))

(declare-fun m!8310848 () Bool)

(assert (=> b!7928270 m!8310848))

(declare-fun m!8310850 () Bool)

(assert (=> b!7928269 m!8310850))

(assert (=> d!2367892 d!2368502))

(declare-fun b!7928271 () Bool)

(declare-fun e!4678891 () List!74572)

(assert (=> b!7928271 (= e!4678891 (list!19413 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))))))

(declare-fun lt!2693426 () List!74572)

(declare-fun e!4678892 () Bool)

(declare-fun b!7928274 () Bool)

(assert (=> b!7928274 (= e!4678892 (or (not (= (list!19413 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) Nil!74448)) (= lt!2693426 (list!19413 (left!56873 (right!57203 t!4440))))))))

(declare-fun b!7928272 () Bool)

(assert (=> b!7928272 (= e!4678891 (Cons!74448 (h!80896 (list!19413 (left!56873 (right!57203 t!4440)))) (++!18259 (t!390189 (list!19413 (left!56873 (right!57203 t!4440)))) (list!19413 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))))))))

(declare-fun b!7928273 () Bool)

(declare-fun res!3145987 () Bool)

(assert (=> b!7928273 (=> (not res!3145987) (not e!4678892))))

(assert (=> b!7928273 (= res!3145987 (= (size!43248 lt!2693426) (+ (size!43248 (list!19413 (left!56873 (right!57203 t!4440)))) (size!43248 (list!19413 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))))))))

(declare-fun d!2368504 () Bool)

(assert (=> d!2368504 e!4678892))

(declare-fun res!3145986 () Bool)

(assert (=> d!2368504 (=> (not res!3145986) (not e!4678892))))

(assert (=> d!2368504 (= res!3145986 (= (content!15783 lt!2693426) ((_ map or) (content!15783 (list!19413 (left!56873 (right!57203 t!4440)))) (content!15783 (list!19413 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))))))))

(assert (=> d!2368504 (= lt!2693426 e!4678891)))

(declare-fun c!1455857 () Bool)

(assert (=> d!2368504 (= c!1455857 ((_ is Nil!74448) (list!19413 (left!56873 (right!57203 t!4440)))))))

(assert (=> d!2368504 (= (++!18259 (list!19413 (left!56873 (right!57203 t!4440))) (list!19413 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))) lt!2693426)))

(assert (= (and d!2368504 c!1455857) b!7928271))

(assert (= (and d!2368504 (not c!1455857)) b!7928272))

(assert (= (and d!2368504 res!3145986) b!7928273))

(assert (= (and b!7928273 res!3145987) b!7928274))

(assert (=> b!7928272 m!8309356))

(declare-fun m!8310852 () Bool)

(assert (=> b!7928272 m!8310852))

(declare-fun m!8310854 () Bool)

(assert (=> b!7928273 m!8310854))

(assert (=> b!7928273 m!8308234))

(assert (=> b!7928273 m!8308392))

(assert (=> b!7928273 m!8309356))

(assert (=> b!7928273 m!8310806))

(declare-fun m!8310856 () Bool)

(assert (=> d!2368504 m!8310856))

(assert (=> d!2368504 m!8308234))

(assert (=> d!2368504 m!8308398))

(assert (=> d!2368504 m!8309356))

(declare-fun m!8310858 () Bool)

(assert (=> d!2368504 m!8310858))

(assert (=> d!2367892 d!2368504))

(assert (=> d!2367892 d!2367578))

(declare-fun b!7928278 () Bool)

(declare-fun e!4678894 () List!74572)

(assert (=> b!7928278 (= e!4678894 (++!18259 (list!19413 (left!56873 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))) (list!19413 (right!57203 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))))))))

(declare-fun b!7928276 () Bool)

(declare-fun e!4678893 () List!74572)

(assert (=> b!7928276 (= e!4678893 e!4678894)))

(declare-fun c!1455859 () Bool)

(assert (=> b!7928276 (= c!1455859 ((_ is Leaf!30234) (ite c!1455404 lt!2693100 (left!56873 lt!2693100))))))

(declare-fun b!7928277 () Bool)

(assert (=> b!7928277 (= e!4678894 (list!19415 (xs!19290 (ite c!1455404 lt!2693100 (left!56873 lt!2693100)))))))

(declare-fun b!7928275 () Bool)

(assert (=> b!7928275 (= e!4678893 Nil!74448)))

(declare-fun d!2368506 () Bool)

(declare-fun c!1455858 () Bool)

(assert (=> d!2368506 (= c!1455858 ((_ is Empty!15902) (ite c!1455404 lt!2693100 (left!56873 lt!2693100))))))

(assert (=> d!2368506 (= (list!19413 (ite c!1455404 lt!2693100 (left!56873 lt!2693100))) e!4678893)))

(assert (= (and d!2368506 c!1455858) b!7928275))

(assert (= (and d!2368506 (not c!1455858)) b!7928276))

(assert (= (and b!7928276 c!1455859) b!7928277))

(assert (= (and b!7928276 (not c!1455859)) b!7928278))

(declare-fun m!8310860 () Bool)

(assert (=> b!7928278 m!8310860))

(declare-fun m!8310862 () Bool)

(assert (=> b!7928278 m!8310862))

(assert (=> b!7928278 m!8310860))

(assert (=> b!7928278 m!8310862))

(declare-fun m!8310864 () Bool)

(assert (=> b!7928278 m!8310864))

(declare-fun m!8310866 () Bool)

(assert (=> b!7928277 m!8310866))

(assert (=> d!2367892 d!2368506))

(declare-fun d!2368508 () Bool)

(declare-fun lt!2693427 () Int)

(assert (=> d!2368508 (>= lt!2693427 0)))

(declare-fun e!4678895 () Int)

(assert (=> d!2368508 (= lt!2693427 e!4678895)))

(declare-fun c!1455860 () Bool)

(assert (=> d!2368508 (= c!1455860 ((_ is Nil!74448) (t!390189 lt!2693108)))))

(assert (=> d!2368508 (= (size!43248 (t!390189 lt!2693108)) lt!2693427)))

(declare-fun b!7928279 () Bool)

(assert (=> b!7928279 (= e!4678895 0)))

(declare-fun b!7928280 () Bool)

(assert (=> b!7928280 (= e!4678895 (+ 1 (size!43248 (t!390189 (t!390189 lt!2693108)))))))

(assert (= (and d!2368508 c!1455860) b!7928279))

(assert (= (and d!2368508 (not c!1455860)) b!7928280))

(declare-fun m!8310868 () Bool)

(assert (=> b!7928280 m!8310868))

(assert (=> b!7927554 d!2368508))

(assert (=> b!7927181 d!2368396))

(declare-fun d!2368510 () Bool)

(assert (=> d!2368510 (= (list!19415 (xs!19290 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))) (innerList!15990 (xs!19290 (ite c!1455404 (left!56873 (right!57203 t!4440)) (right!57203 lt!2693100)))))))

(assert (=> b!7927559 d!2368510))

(declare-fun d!2368512 () Bool)

(declare-fun res!3145988 () Bool)

(declare-fun e!4678896 () Bool)

(assert (=> d!2368512 (=> (not res!3145988) (not e!4678896))))

(assert (=> d!2368512 (= res!3145988 (<= (size!43248 (list!19415 (xs!19290 (left!56873 (left!56873 t!4440))))) 512))))

(assert (=> d!2368512 (= (inv!95724 (left!56873 (left!56873 t!4440))) e!4678896)))

(declare-fun b!7928281 () Bool)

(declare-fun res!3145989 () Bool)

(assert (=> b!7928281 (=> (not res!3145989) (not e!4678896))))

(assert (=> b!7928281 (= res!3145989 (= (csize!32035 (left!56873 (left!56873 t!4440))) (size!43248 (list!19415 (xs!19290 (left!56873 (left!56873 t!4440)))))))))

(declare-fun b!7928282 () Bool)

(assert (=> b!7928282 (= e!4678896 (and (> (csize!32035 (left!56873 (left!56873 t!4440))) 0) (<= (csize!32035 (left!56873 (left!56873 t!4440))) 512)))))

(assert (= (and d!2368512 res!3145988) b!7928281))

(assert (= (and b!7928281 res!3145989) b!7928282))

(assert (=> d!2368512 m!8308554))

(assert (=> d!2368512 m!8308554))

(declare-fun m!8310870 () Bool)

(assert (=> d!2368512 m!8310870))

(assert (=> b!7928281 m!8308554))

(assert (=> b!7928281 m!8308554))

(assert (=> b!7928281 m!8310870))

(assert (=> b!7927446 d!2368512))

(assert (=> b!7927355 d!2368430))

(declare-fun b!7928283 () Bool)

(declare-fun e!4678897 () List!74572)

(assert (=> b!7928283 (= e!4678897 (list!19413 (right!57203 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7928286 () Bool)

(declare-fun e!4678898 () Bool)

(declare-fun lt!2693428 () List!74572)

(assert (=> b!7928286 (= e!4678898 (or (not (= (list!19413 (right!57203 (right!57203 (right!57203 t!4440)))) Nil!74448)) (= lt!2693428 (list!19413 (left!56873 (right!57203 (right!57203 t!4440)))))))))

(declare-fun b!7928284 () Bool)

(assert (=> b!7928284 (= e!4678897 (Cons!74448 (h!80896 (list!19413 (left!56873 (right!57203 (right!57203 t!4440))))) (++!18259 (t!390189 (list!19413 (left!56873 (right!57203 (right!57203 t!4440))))) (list!19413 (right!57203 (right!57203 (right!57203 t!4440)))))))))

(declare-fun b!7928285 () Bool)

(declare-fun res!3145991 () Bool)

(assert (=> b!7928285 (=> (not res!3145991) (not e!4678898))))

(assert (=> b!7928285 (= res!3145991 (= (size!43248 lt!2693428) (+ (size!43248 (list!19413 (left!56873 (right!57203 (right!57203 t!4440))))) (size!43248 (list!19413 (right!57203 (right!57203 (right!57203 t!4440))))))))))

(declare-fun d!2368514 () Bool)

(assert (=> d!2368514 e!4678898))

(declare-fun res!3145990 () Bool)

(assert (=> d!2368514 (=> (not res!3145990) (not e!4678898))))

(assert (=> d!2368514 (= res!3145990 (= (content!15783 lt!2693428) ((_ map or) (content!15783 (list!19413 (left!56873 (right!57203 (right!57203 t!4440))))) (content!15783 (list!19413 (right!57203 (right!57203 (right!57203 t!4440))))))))))

(assert (=> d!2368514 (= lt!2693428 e!4678897)))

(declare-fun c!1455861 () Bool)

(assert (=> d!2368514 (= c!1455861 ((_ is Nil!74448) (list!19413 (left!56873 (right!57203 (right!57203 t!4440))))))))

(assert (=> d!2368514 (= (++!18259 (list!19413 (left!56873 (right!57203 (right!57203 t!4440)))) (list!19413 (right!57203 (right!57203 (right!57203 t!4440))))) lt!2693428)))

(assert (= (and d!2368514 c!1455861) b!7928283))

(assert (= (and d!2368514 (not c!1455861)) b!7928284))

(assert (= (and d!2368514 res!3145990) b!7928285))

(assert (= (and b!7928285 res!3145991) b!7928286))

(assert (=> b!7928284 m!8308322))

(declare-fun m!8310872 () Bool)

(assert (=> b!7928284 m!8310872))

(declare-fun m!8310874 () Bool)

(assert (=> b!7928285 m!8310874))

(assert (=> b!7928285 m!8308422))

(declare-fun m!8310876 () Bool)

(assert (=> b!7928285 m!8310876))

(assert (=> b!7928285 m!8308322))

(declare-fun m!8310878 () Bool)

(assert (=> b!7928285 m!8310878))

(declare-fun m!8310880 () Bool)

(assert (=> d!2368514 m!8310880))

(assert (=> d!2368514 m!8308422))

(declare-fun m!8310882 () Bool)

(assert (=> d!2368514 m!8310882))

(assert (=> d!2368514 m!8308322))

(declare-fun m!8310884 () Bool)

(assert (=> d!2368514 m!8310884))

(assert (=> b!7927053 d!2368514))

(declare-fun b!7928290 () Bool)

(declare-fun e!4678900 () List!74572)

(assert (=> b!7928290 (= e!4678900 (++!18259 (list!19413 (left!56873 (left!56873 (right!57203 (right!57203 t!4440))))) (list!19413 (right!57203 (left!56873 (right!57203 (right!57203 t!4440)))))))))

(declare-fun b!7928288 () Bool)

(declare-fun e!4678899 () List!74572)

(assert (=> b!7928288 (= e!4678899 e!4678900)))

(declare-fun c!1455863 () Bool)

(assert (=> b!7928288 (= c!1455863 ((_ is Leaf!30234) (left!56873 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7928289 () Bool)

(assert (=> b!7928289 (= e!4678900 (list!19415 (xs!19290 (left!56873 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7928287 () Bool)

(assert (=> b!7928287 (= e!4678899 Nil!74448)))

(declare-fun d!2368516 () Bool)

(declare-fun c!1455862 () Bool)

(assert (=> d!2368516 (= c!1455862 ((_ is Empty!15902) (left!56873 (right!57203 (right!57203 t!4440)))))))

(assert (=> d!2368516 (= (list!19413 (left!56873 (right!57203 (right!57203 t!4440)))) e!4678899)))

(assert (= (and d!2368516 c!1455862) b!7928287))

(assert (= (and d!2368516 (not c!1455862)) b!7928288))

(assert (= (and b!7928288 c!1455863) b!7928289))

(assert (= (and b!7928288 (not c!1455863)) b!7928290))

(declare-fun m!8310886 () Bool)

(assert (=> b!7928290 m!8310886))

(declare-fun m!8310888 () Bool)

(assert (=> b!7928290 m!8310888))

(assert (=> b!7928290 m!8310886))

(assert (=> b!7928290 m!8310888))

(declare-fun m!8310890 () Bool)

(assert (=> b!7928290 m!8310890))

(declare-fun m!8310892 () Bool)

(assert (=> b!7928289 m!8310892))

(assert (=> b!7927053 d!2368516))

(declare-fun b!7928294 () Bool)

(declare-fun e!4678902 () List!74572)

(assert (=> b!7928294 (= e!4678902 (++!18259 (list!19413 (left!56873 (right!57203 (right!57203 (right!57203 t!4440))))) (list!19413 (right!57203 (right!57203 (right!57203 (right!57203 t!4440)))))))))

(declare-fun b!7928292 () Bool)

(declare-fun e!4678901 () List!74572)

(assert (=> b!7928292 (= e!4678901 e!4678902)))

(declare-fun c!1455865 () Bool)

(assert (=> b!7928292 (= c!1455865 ((_ is Leaf!30234) (right!57203 (right!57203 (right!57203 t!4440)))))))

(declare-fun b!7928293 () Bool)

(assert (=> b!7928293 (= e!4678902 (list!19415 (xs!19290 (right!57203 (right!57203 (right!57203 t!4440))))))))

(declare-fun b!7928291 () Bool)

(assert (=> b!7928291 (= e!4678901 Nil!74448)))

(declare-fun d!2368518 () Bool)

(declare-fun c!1455864 () Bool)

(assert (=> d!2368518 (= c!1455864 ((_ is Empty!15902) (right!57203 (right!57203 (right!57203 t!4440)))))))

(assert (=> d!2368518 (= (list!19413 (right!57203 (right!57203 (right!57203 t!4440)))) e!4678901)))

(assert (= (and d!2368518 c!1455864) b!7928291))

(assert (= (and d!2368518 (not c!1455864)) b!7928292))

(assert (= (and b!7928292 c!1455865) b!7928293))

(assert (= (and b!7928292 (not c!1455865)) b!7928294))

(declare-fun m!8310894 () Bool)

(assert (=> b!7928294 m!8310894))

(declare-fun m!8310896 () Bool)

(assert (=> b!7928294 m!8310896))

(assert (=> b!7928294 m!8310894))

(assert (=> b!7928294 m!8310896))

(declare-fun m!8310898 () Bool)

(assert (=> b!7928294 m!8310898))

(declare-fun m!8310900 () Bool)

(assert (=> b!7928293 m!8310900))

(assert (=> b!7927053 d!2368518))

(declare-fun b!7928295 () Bool)

(declare-fun e!4678903 () List!74572)

(assert (=> b!7928295 (= e!4678903 (Cons!74448 v!5484 Nil!74448))))

(declare-fun b!7928298 () Bool)

(declare-fun lt!2693429 () List!74572)

(declare-fun e!4678904 () Bool)

(assert (=> b!7928298 (= e!4678904 (or (not (= (Cons!74448 v!5484 Nil!74448) Nil!74448)) (= lt!2693429 (list!19415 (xs!19290 (right!57203 t!4440))))))))

(declare-fun b!7928296 () Bool)

(assert (=> b!7928296 (= e!4678903 (Cons!74448 (h!80896 (list!19415 (xs!19290 (right!57203 t!4440)))) (++!18259 (t!390189 (list!19415 (xs!19290 (right!57203 t!4440)))) (Cons!74448 v!5484 Nil!74448))))))

(declare-fun b!7928297 () Bool)

(declare-fun res!3145993 () Bool)

(assert (=> b!7928297 (=> (not res!3145993) (not e!4678904))))

(assert (=> b!7928297 (= res!3145993 (= (size!43248 lt!2693429) (+ (size!43248 (list!19415 (xs!19290 (right!57203 t!4440)))) (size!43248 (Cons!74448 v!5484 Nil!74448)))))))

(declare-fun d!2368520 () Bool)

(assert (=> d!2368520 e!4678904))

(declare-fun res!3145992 () Bool)

(assert (=> d!2368520 (=> (not res!3145992) (not e!4678904))))

(assert (=> d!2368520 (= res!3145992 (= (content!15783 lt!2693429) ((_ map or) (content!15783 (list!19415 (xs!19290 (right!57203 t!4440)))) (content!15783 (Cons!74448 v!5484 Nil!74448)))))))

(assert (=> d!2368520 (= lt!2693429 e!4678903)))

(declare-fun c!1455866 () Bool)

(assert (=> d!2368520 (= c!1455866 ((_ is Nil!74448) (list!19415 (xs!19290 (right!57203 t!4440)))))))

(assert (=> d!2368520 (= (++!18259 (list!19415 (xs!19290 (right!57203 t!4440))) (Cons!74448 v!5484 Nil!74448)) lt!2693429)))

(assert (= (and d!2368520 c!1455866) b!7928295))

(assert (= (and d!2368520 (not c!1455866)) b!7928296))

(assert (= (and d!2368520 res!3145992) b!7928297))

(assert (= (and b!7928297 res!3145993) b!7928298))

(assert (=> b!7928296 m!8309872))

(declare-fun m!8310902 () Bool)

(assert (=> b!7928297 m!8310902))

(assert (=> b!7928297 m!8308086))

(assert (=> b!7928297 m!8309118))

(assert (=> b!7928297 m!8308940))

(declare-fun m!8310904 () Bool)

(assert (=> d!2368520 m!8310904))

(assert (=> d!2368520 m!8308086))

(assert (=> d!2368520 m!8309530))

(assert (=> d!2368520 m!8308944))

(assert (=> b!7927591 d!2368520))

(declare-fun d!2368522 () Bool)

(declare-fun lt!2693430 () Int)

(assert (=> d!2368522 (>= lt!2693430 0)))

(declare-fun e!4678905 () Int)

(assert (=> d!2368522 (= lt!2693430 e!4678905)))

(declare-fun c!1455867 () Bool)

(assert (=> d!2368522 (= c!1455867 ((_ is Nil!74448) lt!2693267))))

(assert (=> d!2368522 (= (size!43248 lt!2693267) lt!2693430)))

(declare-fun b!7928299 () Bool)

(assert (=> b!7928299 (= e!4678905 0)))

(declare-fun b!7928300 () Bool)

(assert (=> b!7928300 (= e!4678905 (+ 1 (size!43248 (t!390189 lt!2693267))))))

(assert (= (and d!2368522 c!1455867) b!7928299))

(assert (= (and d!2368522 (not c!1455867)) b!7928300))

(declare-fun m!8310906 () Bool)

(assert (=> b!7928300 m!8310906))

(assert (=> b!7927527 d!2368522))

(assert (=> b!7927527 d!2368086))

(assert (=> b!7927000 d!2368252))

(assert (=> b!7927000 d!2368260))

(declare-fun d!2368524 () Bool)

(declare-fun e!4678911 () Bool)

(assert (=> d!2368524 e!4678911))

(declare-fun res!3145996 () Bool)

(assert (=> d!2368524 (=> (not res!3145996) (not e!4678911))))

(declare-fun lt!2693433 () List!74572)

(assert (=> d!2368524 (= res!3145996 (= (content!15783 lt!2693433) (ite (<= 1 0) ((as const (Array T!145804 Bool)) false) (store ((as const (Array T!145804 Bool)) false) v!5484 true))))))

(declare-fun e!4678910 () List!74572)

(assert (=> d!2368524 (= lt!2693433 e!4678910)))

(declare-fun c!1455870 () Bool)

(assert (=> d!2368524 (= c!1455870 (<= 1 0))))

(assert (=> d!2368524 (= (fill!280 1 v!5484) lt!2693433)))

(declare-fun b!7928307 () Bool)

(assert (=> b!7928307 (= e!4678910 Nil!74448)))

(declare-fun b!7928308 () Bool)

(assert (=> b!7928308 (= e!4678910 (Cons!74448 v!5484 (fill!280 (- 1 1) v!5484)))))

(declare-fun b!7928309 () Bool)

(assert (=> b!7928309 (= e!4678911 (= (size!43248 lt!2693433) (ite (<= 1 0) 0 1)))))

(assert (= (and d!2368524 c!1455870) b!7928307))

(assert (= (and d!2368524 (not c!1455870)) b!7928308))

(assert (= (and d!2368524 res!3145996) b!7928309))

(declare-fun m!8310908 () Bool)

(assert (=> d!2368524 m!8310908))

(assert (=> d!2368524 m!8308156))

(declare-fun m!8310910 () Bool)

(assert (=> b!7928308 m!8310910))

(declare-fun m!8310912 () Bool)

(assert (=> b!7928309 m!8310912))

(assert (=> d!2367584 d!2368524))

(declare-fun d!2368526 () Bool)

(declare-fun _$14!1627 () IArray!31865)

(assert (=> d!2368526 (= _$14!1627 (IArray!31866 (fill!280 1 v!5484)))))

(declare-fun e!4678914 () Bool)

(assert (=> d!2368526 (and (inv!95720 _$14!1627) e!4678914)))

(assert (=> d!2368526 (= (choose!59827 1 v!5484) _$14!1627)))

(declare-fun b!7928312 () Bool)

(declare-fun tp!2358766 () Bool)

(assert (=> b!7928312 (= e!4678914 tp!2358766)))

(assert (= d!2368526 b!7928312))

(assert (=> d!2368526 m!8308502))

(declare-fun m!8310914 () Bool)

(assert (=> d!2368526 m!8310914))

(assert (=> d!2367584 d!2368526))

(declare-fun d!2368528 () Bool)

(assert (=> d!2368528 (= (inv!95720 (xs!19290 (right!57203 (left!56873 t!4440)))) (<= (size!43248 (innerList!15990 (xs!19290 (right!57203 (left!56873 t!4440))))) 2147483647))))

(declare-fun bs!1968891 () Bool)

(assert (= bs!1968891 d!2368528))

(declare-fun m!8310916 () Bool)

(assert (=> bs!1968891 m!8310916))

(assert (=> b!7927606 d!2368528))

(declare-fun d!2368530 () Bool)

(declare-fun c!1455871 () Bool)

(assert (=> d!2368530 (= c!1455871 ((_ is Nil!74448) lt!2693205))))

(declare-fun e!4678915 () (InoxSet T!145804))

(assert (=> d!2368530 (= (content!15783 lt!2693205) e!4678915)))

(declare-fun b!7928313 () Bool)

(assert (=> b!7928313 (= e!4678915 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928314 () Bool)

(assert (=> b!7928314 (= e!4678915 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693205) true) (content!15783 (t!390189 lt!2693205))))))

(assert (= (and d!2368530 c!1455871) b!7928313))

(assert (= (and d!2368530 (not c!1455871)) b!7928314))

(declare-fun m!8310918 () Bool)

(assert (=> b!7928314 m!8310918))

(declare-fun m!8310920 () Bool)

(assert (=> b!7928314 m!8310920))

(assert (=> d!2367756 d!2368530))

(assert (=> d!2367756 d!2367976))

(assert (=> d!2367756 d!2367844))

(declare-fun d!2368532 () Bool)

(declare-fun c!1455872 () Bool)

(assert (=> d!2368532 (= c!1455872 ((_ is Nil!74448) lt!2693154))))

(declare-fun e!4678916 () (InoxSet T!145804))

(assert (=> d!2368532 (= (content!15783 lt!2693154) e!4678916)))

(declare-fun b!7928315 () Bool)

(assert (=> b!7928315 (= e!4678916 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928316 () Bool)

(assert (=> b!7928316 (= e!4678916 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693154) true) (content!15783 (t!390189 lt!2693154))))))

(assert (= (and d!2368532 c!1455872) b!7928315))

(assert (= (and d!2368532 (not c!1455872)) b!7928316))

(declare-fun m!8310922 () Bool)

(assert (=> b!7928316 m!8310922))

(declare-fun m!8310924 () Bool)

(assert (=> b!7928316 m!8310924))

(assert (=> d!2367614 d!2368532))

(declare-fun d!2368534 () Bool)

(declare-fun c!1455873 () Bool)

(assert (=> d!2368534 (= c!1455873 ((_ is Nil!74448) (list!19413 (left!56873 (left!56873 t!4440)))))))

(declare-fun e!4678917 () (InoxSet T!145804))

(assert (=> d!2368534 (= (content!15783 (list!19413 (left!56873 (left!56873 t!4440)))) e!4678917)))

(declare-fun b!7928317 () Bool)

(assert (=> b!7928317 (= e!4678917 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928318 () Bool)

(assert (=> b!7928318 (= e!4678917 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 (left!56873 (left!56873 t!4440)))) true) (content!15783 (t!390189 (list!19413 (left!56873 (left!56873 t!4440)))))))))

(assert (= (and d!2368534 c!1455873) b!7928317))

(assert (= (and d!2368534 (not c!1455873)) b!7928318))

(declare-fun m!8310926 () Bool)

(assert (=> b!7928318 m!8310926))

(assert (=> b!7928318 m!8309950))

(assert (=> d!2367614 d!2368534))

(declare-fun d!2368536 () Bool)

(declare-fun c!1455874 () Bool)

(assert (=> d!2368536 (= c!1455874 ((_ is Nil!74448) (list!19413 (right!57203 (left!56873 t!4440)))))))

(declare-fun e!4678918 () (InoxSet T!145804))

(assert (=> d!2368536 (= (content!15783 (list!19413 (right!57203 (left!56873 t!4440)))) e!4678918)))

(declare-fun b!7928319 () Bool)

(assert (=> b!7928319 (= e!4678918 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928320 () Bool)

(assert (=> b!7928320 (= e!4678918 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (list!19413 (right!57203 (left!56873 t!4440)))) true) (content!15783 (t!390189 (list!19413 (right!57203 (left!56873 t!4440)))))))))

(assert (= (and d!2368536 c!1455874) b!7928319))

(assert (= (and d!2368536 (not c!1455874)) b!7928320))

(declare-fun m!8310928 () Bool)

(assert (=> b!7928320 m!8310928))

(declare-fun m!8310930 () Bool)

(assert (=> b!7928320 m!8310930))

(assert (=> d!2367614 d!2368536))

(declare-fun d!2368538 () Bool)

(assert (=> d!2368538 (= (height!2217 lt!2693133) (ite ((_ is Empty!15902) lt!2693133) 0 (ite ((_ is Leaf!30234) lt!2693133) 1 (cheight!16113 lt!2693133))))))

(assert (=> b!7927008 d!2368538))

(declare-fun d!2368540 () Bool)

(assert (=> d!2368540 (= (height!2217 (left!56873 (right!57203 (right!57203 t!4440)))) (ite ((_ is Empty!15902) (left!56873 (right!57203 (right!57203 t!4440)))) 0 (ite ((_ is Leaf!30234) (left!56873 (right!57203 (right!57203 t!4440)))) 1 (cheight!16113 (left!56873 (right!57203 (right!57203 t!4440)))))))))

(assert (=> b!7927008 d!2368540))

(declare-fun b!7928321 () Bool)

(declare-fun e!4678920 () Conc!15902)

(assert (=> b!7928321 (= e!4678920 (Leaf!30234 (append!1146 (xs!19290 (right!57203 (right!57203 (right!57203 t!4440)))) v!5484) (+ (csize!32035 (right!57203 (right!57203 (right!57203 t!4440)))) 1)))))

(declare-fun lt!2693434 () List!74572)

(assert (=> b!7928321 (= lt!2693434 ($colon+!315 (list!19415 (xs!19290 (right!57203 (right!57203 (right!57203 t!4440))))) v!5484))))

(declare-fun b!7928322 () Bool)

(declare-fun res!3145997 () Bool)

(declare-fun e!4678923 () Bool)

(assert (=> b!7928322 (=> (not res!3145997) (not e!4678923))))

(declare-fun lt!2693448 () Conc!15902)

(assert (=> b!7928322 (= res!3145997 (<= (height!2217 (right!57203 (right!57203 (right!57203 t!4440)))) (height!2217 lt!2693448)))))

(declare-fun call!735242 () List!74572)

(declare-fun lt!2693443 () List!74572)

(declare-fun lt!2693445 () List!74572)

(declare-fun lt!2693438 () List!74572)

(declare-fun c!1455877 () Bool)

(declare-fun lt!2693449 () List!74572)

(declare-fun bm!735236 () Bool)

(assert (=> bm!735236 (= call!735242 (++!18259 (ite c!1455877 lt!2693443 lt!2693438) (ite c!1455877 lt!2693445 lt!2693449)))))

(declare-fun b!7928323 () Bool)

(declare-fun call!735245 () Conc!15902)

(assert (=> b!7928323 (= e!4678920 call!735245)))

(declare-fun bm!735237 () Bool)

(declare-fun c!1455875 () Bool)

(declare-fun c!1455878 () Bool)

(assert (=> bm!735237 (= c!1455875 c!1455878)))

(declare-fun call!735241 () Conc!15902)

(declare-fun e!4678921 () Conc!15902)

(assert (=> bm!735237 (= call!735245 (<>!424 (ite c!1455878 call!735241 (right!57203 (right!57203 (right!57203 t!4440)))) e!4678921))))

(declare-fun lt!2693446 () Conc!15902)

(declare-fun call!735250 () List!74572)

(declare-fun bm!735238 () Bool)

(assert (=> bm!735238 (= call!735250 (list!19413 (ite c!1455877 (left!56873 (right!57203 (right!57203 (right!57203 t!4440)))) (right!57203 lt!2693446))))))

(declare-fun b!7928325 () Bool)

(assert (=> b!7928325 (= e!4678921 (right!57203 lt!2693446))))

(declare-fun bm!735239 () Bool)

(declare-fun call!735247 () List!74572)

(assert (=> bm!735239 (= call!735247 (list!19413 (ite c!1455877 (right!57203 (right!57203 (right!57203 (right!57203 t!4440)))) (left!56873 (right!57203 (right!57203 (right!57203 t!4440)))))))))

(declare-fun lt!2693439 () List!74572)

(declare-fun lt!2693441 () List!74572)

(declare-fun call!735249 () List!74572)

(declare-fun lt!2693437 () List!74572)

(declare-fun bm!735240 () Bool)

(assert (=> bm!735240 (= call!735249 (++!18259 (ite c!1455877 lt!2693445 lt!2693437) (ite c!1455877 lt!2693439 lt!2693441)))))

(declare-fun call!735246 () List!74572)

(declare-fun lt!2693435 () List!74572)

(declare-fun bm!735241 () Bool)

(assert (=> bm!735241 (= call!735246 (++!18259 (ite c!1455877 lt!2693443 lt!2693435) (ite c!1455877 call!735249 lt!2693438)))))

(declare-fun b!7928326 () Bool)

(assert (=> b!7928326 (= e!4678923 (= (list!19413 lt!2693448) ($colon+!315 (list!19413 (right!57203 (right!57203 (right!57203 t!4440)))) v!5484)))))

(declare-fun bm!735242 () Bool)

(declare-fun lt!2693450 () List!74572)

(declare-fun call!735244 () List!74572)

(assert (=> bm!735242 (= call!735244 (++!18259 (ite c!1455877 call!735242 lt!2693441) (ite c!1455877 lt!2693439 lt!2693450)))))

(declare-fun bm!735243 () Bool)

(assert (=> bm!735243 (= call!735241 (<>!424 (left!56873 (right!57203 (right!57203 (right!57203 t!4440)))) (ite c!1455877 lt!2693446 (left!56873 lt!2693446))))))

(declare-fun b!7928327 () Bool)

(declare-fun c!1455876 () Bool)

(assert (=> b!7928327 (= c!1455876 (< (csize!32035 (right!57203 (right!57203 (right!57203 t!4440)))) 512))))

(declare-fun e!4678924 () Conc!15902)

(assert (=> b!7928327 (= e!4678924 e!4678920)))

(declare-fun b!7928328 () Bool)

(declare-fun e!4678919 () Conc!15902)

(assert (=> b!7928328 (= e!4678919 e!4678924)))

(assert (=> b!7928328 (= c!1455878 ((_ is Node!15902) (right!57203 (right!57203 (right!57203 t!4440)))))))

(declare-fun bm!735244 () Bool)

(declare-fun call!735243 () IArray!31865)

(assert (=> bm!735244 (= call!735243 (fill!279 1 v!5484))))

(declare-fun b!7928329 () Bool)

(declare-fun e!4678922 () Conc!15902)

(assert (=> b!7928329 (= e!4678922 call!735245)))

(assert (=> b!7928329 (= lt!2693435 call!735247)))

(assert (=> b!7928329 (= lt!2693438 (list!19413 (left!56873 lt!2693446)))))

(assert (=> b!7928329 (= lt!2693449 call!735250)))

(declare-fun lt!2693451 () Unit!169565)

(declare-fun call!735248 () Unit!169565)

(assert (=> b!7928329 (= lt!2693451 call!735248)))

(assert (=> b!7928329 (= (++!18259 call!735246 lt!2693449) (++!18259 lt!2693435 call!735242))))

(declare-fun lt!2693436 () Unit!169565)

(assert (=> b!7928329 (= lt!2693436 lt!2693451)))

(assert (=> b!7928329 (= lt!2693437 call!735247)))

(assert (=> b!7928329 (= lt!2693441 (list!19413 (right!57203 (right!57203 (right!57203 (right!57203 t!4440))))))))

(assert (=> b!7928329 (= lt!2693450 (Cons!74448 v!5484 Nil!74448))))

(declare-fun lt!2693442 () Unit!169565)

(assert (=> b!7928329 (= lt!2693442 (lemmaConcatAssociativity!3162 lt!2693437 lt!2693441 lt!2693450))))

(assert (=> b!7928329 (= (++!18259 call!735249 lt!2693450) (++!18259 lt!2693437 call!735244))))

(declare-fun lt!2693444 () Unit!169565)

(assert (=> b!7928329 (= lt!2693444 lt!2693442)))

(declare-fun b!7928330 () Bool)

(assert (=> b!7928330 (= c!1455877 (<= (height!2217 lt!2693446) (+ (height!2217 (left!56873 (right!57203 (right!57203 (right!57203 t!4440))))) 1)))))

(assert (=> b!7928330 (= lt!2693446 (append!1144 (right!57203 (right!57203 (right!57203 (right!57203 t!4440)))) v!5484))))

(assert (=> b!7928330 (= e!4678924 e!4678922)))

(declare-fun b!7928331 () Bool)

(assert (=> b!7928331 (= e!4678919 (Leaf!30234 call!735243 1))))

(declare-fun bm!735245 () Bool)

(assert (=> bm!735245 (= call!735248 (lemmaConcatAssociativity!3162 (ite c!1455877 lt!2693443 lt!2693435) (ite c!1455877 lt!2693445 lt!2693438) (ite c!1455877 lt!2693439 lt!2693449)))))

(declare-fun b!7928324 () Bool)

(assert (=> b!7928324 (= e!4678922 call!735241)))

(assert (=> b!7928324 (= lt!2693443 call!735250)))

(assert (=> b!7928324 (= lt!2693445 call!735247)))

(assert (=> b!7928324 (= lt!2693439 (Cons!74448 v!5484 Nil!74448))))

(declare-fun lt!2693440 () Unit!169565)

(assert (=> b!7928324 (= lt!2693440 call!735248)))

(assert (=> b!7928324 (= call!735244 call!735246)))

(declare-fun lt!2693447 () Unit!169565)

(assert (=> b!7928324 (= lt!2693447 lt!2693440)))

(declare-fun d!2368542 () Bool)

(assert (=> d!2368542 e!4678923))

(declare-fun res!3145999 () Bool)

(assert (=> d!2368542 (=> (not res!3145999) (not e!4678923))))

(assert (=> d!2368542 (= res!3145999 (isBalanced!4528 lt!2693448))))

(assert (=> d!2368542 (= lt!2693448 e!4678919)))

(declare-fun c!1455879 () Bool)

(assert (=> d!2368542 (= c!1455879 ((_ is Empty!15902) (right!57203 (right!57203 (right!57203 t!4440)))))))

(assert (=> d!2368542 (isBalanced!4528 (right!57203 (right!57203 (right!57203 t!4440))))))

(assert (=> d!2368542 (= (append!1144 (right!57203 (right!57203 (right!57203 t!4440))) v!5484) lt!2693448)))

(declare-fun b!7928332 () Bool)

(assert (=> b!7928332 (= e!4678921 (Leaf!30234 call!735243 1))))

(declare-fun b!7928333 () Bool)

(declare-fun res!3145998 () Bool)

(assert (=> b!7928333 (=> (not res!3145998) (not e!4678923))))

(assert (=> b!7928333 (= res!3145998 (<= (height!2217 lt!2693448) (+ (height!2217 (right!57203 (right!57203 (right!57203 t!4440)))) 1)))))

(assert (= (and d!2368542 c!1455879) b!7928331))

(assert (= (and d!2368542 (not c!1455879)) b!7928328))

(assert (= (and b!7928328 c!1455878) b!7928330))

(assert (= (and b!7928328 (not c!1455878)) b!7928327))

(assert (= (and b!7928330 c!1455877) b!7928324))

(assert (= (and b!7928330 (not c!1455877)) b!7928329))

(assert (= (or b!7928324 b!7928329) bm!735245))

(assert (= (or b!7928324 b!7928329) bm!735240))

(assert (= (or b!7928324 b!7928329) bm!735239))

(assert (= (or b!7928324 b!7928329) bm!735236))

(assert (= (or b!7928324 b!7928329) bm!735238))

(assert (= (or b!7928324 b!7928329) bm!735243))

(assert (= (or b!7928324 b!7928329) bm!735242))

(assert (= (or b!7928324 b!7928329) bm!735241))

(assert (= (and b!7928327 c!1455876) b!7928321))

(assert (= (and b!7928327 (not c!1455876)) b!7928323))

(assert (= (or b!7928329 b!7928323) bm!735237))

(assert (= (and bm!735237 c!1455875) b!7928325))

(assert (= (and bm!735237 (not c!1455875)) b!7928332))

(assert (= (or b!7928331 b!7928332) bm!735244))

(assert (= (and d!2368542 res!3145999) b!7928322))

(assert (= (and b!7928322 res!3145997) b!7928333))

(assert (= (and b!7928333 res!3145998) b!7928326))

(declare-fun m!8310932 () Bool)

(assert (=> bm!735242 m!8310932))

(declare-fun m!8310934 () Bool)

(assert (=> bm!735241 m!8310934))

(declare-fun m!8310936 () Bool)

(assert (=> bm!735239 m!8310936))

(declare-fun m!8310938 () Bool)

(assert (=> b!7928321 m!8310938))

(assert (=> b!7928321 m!8310900))

(assert (=> b!7928321 m!8310900))

(declare-fun m!8310940 () Bool)

(assert (=> b!7928321 m!8310940))

(declare-fun m!8310942 () Bool)

(assert (=> d!2368542 m!8310942))

(assert (=> d!2368542 m!8310644))

(declare-fun m!8310944 () Bool)

(assert (=> b!7928329 m!8310944))

(assert (=> b!7928329 m!8310896))

(declare-fun m!8310946 () Bool)

(assert (=> b!7928329 m!8310946))

(declare-fun m!8310948 () Bool)

(assert (=> b!7928329 m!8310948))

(declare-fun m!8310950 () Bool)

(assert (=> b!7928329 m!8310950))

(declare-fun m!8310952 () Bool)

(assert (=> b!7928329 m!8310952))

(declare-fun m!8310954 () Bool)

(assert (=> b!7928329 m!8310954))

(declare-fun m!8310956 () Bool)

(assert (=> bm!735243 m!8310956))

(assert (=> bm!735244 m!8308108))

(declare-fun m!8310958 () Bool)

(assert (=> b!7928326 m!8310958))

(assert (=> b!7928326 m!8308322))

(assert (=> b!7928326 m!8308322))

(declare-fun m!8310960 () Bool)

(assert (=> b!7928326 m!8310960))

(declare-fun m!8310962 () Bool)

(assert (=> bm!735238 m!8310962))

(declare-fun m!8310964 () Bool)

(assert (=> bm!735237 m!8310964))

(declare-fun m!8310966 () Bool)

(assert (=> bm!735236 m!8310966))

(declare-fun m!8310968 () Bool)

(assert (=> b!7928330 m!8310968))

(declare-fun m!8310970 () Bool)

(assert (=> b!7928330 m!8310970))

(declare-fun m!8310972 () Bool)

(assert (=> b!7928330 m!8310972))

(declare-fun m!8310974 () Bool)

(assert (=> bm!735245 m!8310974))

(declare-fun m!8310976 () Bool)

(assert (=> bm!735240 m!8310976))

(declare-fun m!8310978 () Bool)

(assert (=> b!7928333 m!8310978))

(assert (=> b!7928333 m!8310136))

(assert (=> b!7928322 m!8310136))

(assert (=> b!7928322 m!8310978))

(assert (=> b!7927008 d!2368542))

(assert (=> b!7927130 d!2368482))

(assert (=> b!7927130 d!2368484))

(declare-fun d!2368544 () Bool)

(declare-fun lt!2693452 () Int)

(assert (=> d!2368544 (>= lt!2693452 0)))

(declare-fun e!4678925 () Int)

(assert (=> d!2368544 (= lt!2693452 e!4678925)))

(declare-fun c!1455880 () Bool)

(assert (=> d!2368544 (= c!1455880 ((_ is Nil!74448) lt!2693229))))

(assert (=> d!2368544 (= (size!43248 lt!2693229) lt!2693452)))

(declare-fun b!7928334 () Bool)

(assert (=> b!7928334 (= e!4678925 0)))

(declare-fun b!7928335 () Bool)

(assert (=> b!7928335 (= e!4678925 (+ 1 (size!43248 (t!390189 lt!2693229))))))

(assert (= (and d!2368544 c!1455880) b!7928334))

(assert (= (and d!2368544 (not c!1455880)) b!7928335))

(declare-fun m!8310980 () Bool)

(assert (=> b!7928335 m!8310980))

(assert (=> b!7927371 d!2368544))

(declare-fun d!2368546 () Bool)

(declare-fun lt!2693453 () Int)

(assert (=> d!2368546 (>= lt!2693453 0)))

(declare-fun e!4678926 () Int)

(assert (=> d!2368546 (= lt!2693453 e!4678926)))

(declare-fun c!1455881 () Bool)

(assert (=> d!2368546 (= c!1455881 ((_ is Nil!74448) (t!390189 (list!19413 t!4440))))))

(assert (=> d!2368546 (= (size!43248 (t!390189 (list!19413 t!4440))) lt!2693453)))

(declare-fun b!7928336 () Bool)

(assert (=> b!7928336 (= e!4678926 0)))

(declare-fun b!7928337 () Bool)

(assert (=> b!7928337 (= e!4678926 (+ 1 (size!43248 (t!390189 (t!390189 (list!19413 t!4440))))))))

(assert (= (and d!2368546 c!1455881) b!7928336))

(assert (= (and d!2368546 (not c!1455881)) b!7928337))

(assert (=> b!7928337 m!8310454))

(assert (=> b!7927371 d!2368546))

(declare-fun b!7928338 () Bool)

(declare-fun e!4678928 () Bool)

(declare-fun e!4678927 () Bool)

(assert (=> b!7928338 (= e!4678928 e!4678927)))

(declare-fun res!3146001 () Bool)

(assert (=> b!7928338 (=> (not res!3146001) (not e!4678927))))

(assert (=> b!7928338 (= res!3146001 (<= (- 1) (- (height!2217 (left!56873 (right!57203 lt!2693102))) (height!2217 (right!57203 (right!57203 lt!2693102))))))))

(declare-fun b!7928340 () Bool)

(declare-fun res!3146004 () Bool)

(assert (=> b!7928340 (=> (not res!3146004) (not e!4678927))))

(assert (=> b!7928340 (= res!3146004 (not (isEmpty!42776 (left!56873 (right!57203 lt!2693102)))))))

(declare-fun b!7928341 () Bool)

(declare-fun res!3146005 () Bool)

(assert (=> b!7928341 (=> (not res!3146005) (not e!4678927))))

(assert (=> b!7928341 (= res!3146005 (isBalanced!4528 (left!56873 (right!57203 lt!2693102))))))

(declare-fun b!7928342 () Bool)

(declare-fun res!3146000 () Bool)

(assert (=> b!7928342 (=> (not res!3146000) (not e!4678927))))

(assert (=> b!7928342 (= res!3146000 (isBalanced!4528 (right!57203 (right!57203 lt!2693102))))))

(declare-fun b!7928343 () Bool)

(assert (=> b!7928343 (= e!4678927 (not (isEmpty!42776 (right!57203 (right!57203 lt!2693102)))))))

(declare-fun b!7928339 () Bool)

(declare-fun res!3146002 () Bool)

(assert (=> b!7928339 (=> (not res!3146002) (not e!4678927))))

(assert (=> b!7928339 (= res!3146002 (<= (- (height!2217 (left!56873 (right!57203 lt!2693102))) (height!2217 (right!57203 (right!57203 lt!2693102)))) 1))))

(declare-fun d!2368548 () Bool)

(declare-fun res!3146003 () Bool)

(assert (=> d!2368548 (=> res!3146003 e!4678928)))

(assert (=> d!2368548 (= res!3146003 (not ((_ is Node!15902) (right!57203 lt!2693102))))))

(assert (=> d!2368548 (= (isBalanced!4528 (right!57203 lt!2693102)) e!4678928)))

(assert (= (and d!2368548 (not res!3146003)) b!7928338))

(assert (= (and b!7928338 res!3146001) b!7928339))

(assert (= (and b!7928339 res!3146002) b!7928341))

(assert (= (and b!7928341 res!3146005) b!7928342))

(assert (= (and b!7928342 res!3146000) b!7928340))

(assert (= (and b!7928340 res!3146004) b!7928343))

(declare-fun m!8310982 () Bool)

(assert (=> b!7928339 m!8310982))

(declare-fun m!8310984 () Bool)

(assert (=> b!7928339 m!8310984))

(declare-fun m!8310986 () Bool)

(assert (=> b!7928342 m!8310986))

(declare-fun m!8310988 () Bool)

(assert (=> b!7928340 m!8310988))

(declare-fun m!8310990 () Bool)

(assert (=> b!7928341 m!8310990))

(declare-fun m!8310992 () Bool)

(assert (=> b!7928343 m!8310992))

(assert (=> b!7928338 m!8310982))

(assert (=> b!7928338 m!8310984))

(assert (=> b!7927582 d!2368548))

(declare-fun b!7928344 () Bool)

(declare-fun e!4678929 () List!74572)

(assert (=> b!7928344 (= e!4678929 lt!2693136)))

(declare-fun lt!2693454 () List!74572)

(declare-fun b!7928347 () Bool)

(declare-fun e!4678930 () Bool)

(assert (=> b!7928347 (= e!4678930 (or (not (= lt!2693136 Nil!74448)) (= lt!2693454 call!735204)))))

(declare-fun b!7928345 () Bool)

(assert (=> b!7928345 (= e!4678929 (Cons!74448 (h!80896 call!735204) (++!18259 (t!390189 call!735204) lt!2693136)))))

(declare-fun b!7928346 () Bool)

(declare-fun res!3146007 () Bool)

(assert (=> b!7928346 (=> (not res!3146007) (not e!4678930))))

(assert (=> b!7928346 (= res!3146007 (= (size!43248 lt!2693454) (+ (size!43248 call!735204) (size!43248 lt!2693136))))))

(declare-fun d!2368550 () Bool)

(assert (=> d!2368550 e!4678930))

(declare-fun res!3146006 () Bool)

(assert (=> d!2368550 (=> (not res!3146006) (not e!4678930))))

(assert (=> d!2368550 (= res!3146006 (= (content!15783 lt!2693454) ((_ map or) (content!15783 call!735204) (content!15783 lt!2693136))))))

(assert (=> d!2368550 (= lt!2693454 e!4678929)))

(declare-fun c!1455882 () Bool)

(assert (=> d!2368550 (= c!1455882 ((_ is Nil!74448) call!735204))))

(assert (=> d!2368550 (= (++!18259 call!735204 lt!2693136) lt!2693454)))

(assert (= (and d!2368550 c!1455882) b!7928344))

(assert (= (and d!2368550 (not c!1455882)) b!7928345))

(assert (= (and d!2368550 res!3146006) b!7928346))

(assert (= (and b!7928346 res!3146007) b!7928347))

(declare-fun m!8310994 () Bool)

(assert (=> b!7928345 m!8310994))

(declare-fun m!8310996 () Bool)

(assert (=> b!7928346 m!8310996))

(declare-fun m!8310998 () Bool)

(assert (=> b!7928346 m!8310998))

(declare-fun m!8311000 () Bool)

(assert (=> b!7928346 m!8311000))

(declare-fun m!8311002 () Bool)

(assert (=> d!2368550 m!8311002))

(declare-fun m!8311004 () Bool)

(assert (=> d!2368550 m!8311004))

(declare-fun m!8311006 () Bool)

(assert (=> d!2368550 m!8311006))

(assert (=> b!7927007 d!2368550))

(declare-fun b!7928348 () Bool)

(declare-fun e!4678931 () List!74572)

(assert (=> b!7928348 (= e!4678931 lt!2693137)))

(declare-fun lt!2693455 () List!74572)

(declare-fun b!7928351 () Bool)

(declare-fun e!4678932 () Bool)

(assert (=> b!7928351 (= e!4678932 (or (not (= lt!2693137 Nil!74448)) (= lt!2693455 call!735207)))))

(declare-fun b!7928349 () Bool)

(assert (=> b!7928349 (= e!4678931 (Cons!74448 (h!80896 call!735207) (++!18259 (t!390189 call!735207) lt!2693137)))))

(declare-fun b!7928350 () Bool)

(declare-fun res!3146009 () Bool)

(assert (=> b!7928350 (=> (not res!3146009) (not e!4678932))))

(assert (=> b!7928350 (= res!3146009 (= (size!43248 lt!2693455) (+ (size!43248 call!735207) (size!43248 lt!2693137))))))

(declare-fun d!2368552 () Bool)

(assert (=> d!2368552 e!4678932))

(declare-fun res!3146008 () Bool)

(assert (=> d!2368552 (=> (not res!3146008) (not e!4678932))))

(assert (=> d!2368552 (= res!3146008 (= (content!15783 lt!2693455) ((_ map or) (content!15783 call!735207) (content!15783 lt!2693137))))))

(assert (=> d!2368552 (= lt!2693455 e!4678931)))

(declare-fun c!1455883 () Bool)

(assert (=> d!2368552 (= c!1455883 ((_ is Nil!74448) call!735207))))

(assert (=> d!2368552 (= (++!18259 call!735207 lt!2693137) lt!2693455)))

(assert (= (and d!2368552 c!1455883) b!7928348))

(assert (= (and d!2368552 (not c!1455883)) b!7928349))

(assert (= (and d!2368552 res!3146008) b!7928350))

(assert (= (and b!7928350 res!3146009) b!7928351))

(declare-fun m!8311008 () Bool)

(assert (=> b!7928349 m!8311008))

(declare-fun m!8311010 () Bool)

(assert (=> b!7928350 m!8311010))

(declare-fun m!8311012 () Bool)

(assert (=> b!7928350 m!8311012))

(declare-fun m!8311014 () Bool)

(assert (=> b!7928350 m!8311014))

(declare-fun m!8311016 () Bool)

(assert (=> d!2368552 m!8311016))

(declare-fun m!8311018 () Bool)

(assert (=> d!2368552 m!8311018))

(declare-fun m!8311020 () Bool)

(assert (=> d!2368552 m!8311020))

(assert (=> b!7927007 d!2368552))

(declare-fun b!7928355 () Bool)

(declare-fun e!4678934 () List!74572)

(assert (=> b!7928355 (= e!4678934 (++!18259 (list!19413 (left!56873 (left!56873 lt!2693133))) (list!19413 (right!57203 (left!56873 lt!2693133)))))))

(declare-fun b!7928353 () Bool)

(declare-fun e!4678933 () List!74572)

(assert (=> b!7928353 (= e!4678933 e!4678934)))

(declare-fun c!1455885 () Bool)

(assert (=> b!7928353 (= c!1455885 ((_ is Leaf!30234) (left!56873 lt!2693133)))))

(declare-fun b!7928354 () Bool)

(assert (=> b!7928354 (= e!4678934 (list!19415 (xs!19290 (left!56873 lt!2693133))))))

(declare-fun b!7928352 () Bool)

(assert (=> b!7928352 (= e!4678933 Nil!74448)))

(declare-fun d!2368554 () Bool)

(declare-fun c!1455884 () Bool)

(assert (=> d!2368554 (= c!1455884 ((_ is Empty!15902) (left!56873 lt!2693133)))))

(assert (=> d!2368554 (= (list!19413 (left!56873 lt!2693133)) e!4678933)))

(assert (= (and d!2368554 c!1455884) b!7928352))

(assert (= (and d!2368554 (not c!1455884)) b!7928353))

(assert (= (and b!7928353 c!1455885) b!7928354))

(assert (= (and b!7928353 (not c!1455885)) b!7928355))

(declare-fun m!8311022 () Bool)

(assert (=> b!7928355 m!8311022))

(declare-fun m!8311024 () Bool)

(assert (=> b!7928355 m!8311024))

(assert (=> b!7928355 m!8311022))

(assert (=> b!7928355 m!8311024))

(declare-fun m!8311026 () Bool)

(assert (=> b!7928355 m!8311026))

(declare-fun m!8311028 () Bool)

(assert (=> b!7928354 m!8311028))

(assert (=> b!7927007 d!2368554))

(assert (=> b!7927007 d!2368518))

(declare-fun d!2368556 () Bool)

(assert (=> d!2368556 (= (++!18259 (++!18259 lt!2693124 lt!2693128) lt!2693137) (++!18259 lt!2693124 (++!18259 lt!2693128 lt!2693137)))))

(declare-fun lt!2693456 () Unit!169565)

(assert (=> d!2368556 (= lt!2693456 (choose!59826 lt!2693124 lt!2693128 lt!2693137))))

(assert (=> d!2368556 (= (lemmaConcatAssociativity!3162 lt!2693124 lt!2693128 lt!2693137) lt!2693456)))

(declare-fun bs!1968892 () Bool)

(assert (= bs!1968892 d!2368556))

(declare-fun m!8311030 () Bool)

(assert (=> bs!1968892 m!8311030))

(declare-fun m!8311032 () Bool)

(assert (=> bs!1968892 m!8311032))

(declare-fun m!8311034 () Bool)

(assert (=> bs!1968892 m!8311034))

(assert (=> bs!1968892 m!8311030))

(assert (=> bs!1968892 m!8311034))

(declare-fun m!8311036 () Bool)

(assert (=> bs!1968892 m!8311036))

(declare-fun m!8311038 () Bool)

(assert (=> bs!1968892 m!8311038))

(assert (=> b!7927007 d!2368556))

(declare-fun b!7928356 () Bool)

(declare-fun e!4678935 () List!74572)

(assert (=> b!7928356 (= e!4678935 call!735202)))

(declare-fun e!4678936 () Bool)

(declare-fun b!7928359 () Bool)

(declare-fun lt!2693457 () List!74572)

(assert (=> b!7928359 (= e!4678936 (or (not (= call!735202 Nil!74448)) (= lt!2693457 lt!2693124)))))

(declare-fun b!7928357 () Bool)

(assert (=> b!7928357 (= e!4678935 (Cons!74448 (h!80896 lt!2693124) (++!18259 (t!390189 lt!2693124) call!735202)))))

(declare-fun b!7928358 () Bool)

(declare-fun res!3146011 () Bool)

(assert (=> b!7928358 (=> (not res!3146011) (not e!4678936))))

(assert (=> b!7928358 (= res!3146011 (= (size!43248 lt!2693457) (+ (size!43248 lt!2693124) (size!43248 call!735202))))))

(declare-fun d!2368558 () Bool)

(assert (=> d!2368558 e!4678936))

(declare-fun res!3146010 () Bool)

(assert (=> d!2368558 (=> (not res!3146010) (not e!4678936))))

(assert (=> d!2368558 (= res!3146010 (= (content!15783 lt!2693457) ((_ map or) (content!15783 lt!2693124) (content!15783 call!735202))))))

(assert (=> d!2368558 (= lt!2693457 e!4678935)))

(declare-fun c!1455886 () Bool)

(assert (=> d!2368558 (= c!1455886 ((_ is Nil!74448) lt!2693124))))

(assert (=> d!2368558 (= (++!18259 lt!2693124 call!735202) lt!2693457)))

(assert (= (and d!2368558 c!1455886) b!7928356))

(assert (= (and d!2368558 (not c!1455886)) b!7928357))

(assert (= (and d!2368558 res!3146010) b!7928358))

(assert (= (and b!7928358 res!3146011) b!7928359))

(declare-fun m!8311040 () Bool)

(assert (=> b!7928357 m!8311040))

(declare-fun m!8311042 () Bool)

(assert (=> b!7928358 m!8311042))

(declare-fun m!8311044 () Bool)

(assert (=> b!7928358 m!8311044))

(declare-fun m!8311046 () Bool)

(assert (=> b!7928358 m!8311046))

(declare-fun m!8311048 () Bool)

(assert (=> d!2368558 m!8311048))

(declare-fun m!8311050 () Bool)

(assert (=> d!2368558 m!8311050))

(declare-fun m!8311052 () Bool)

(assert (=> d!2368558 m!8311052))

(assert (=> b!7927007 d!2368558))

(declare-fun b!7928360 () Bool)

(declare-fun e!4678937 () List!74572)

(assert (=> b!7928360 (= e!4678937 call!735200)))

(declare-fun lt!2693458 () List!74572)

(declare-fun b!7928363 () Bool)

(declare-fun e!4678938 () Bool)

(assert (=> b!7928363 (= e!4678938 (or (not (= call!735200 Nil!74448)) (= lt!2693458 lt!2693122)))))

(declare-fun b!7928361 () Bool)

(assert (=> b!7928361 (= e!4678937 (Cons!74448 (h!80896 lt!2693122) (++!18259 (t!390189 lt!2693122) call!735200)))))

(declare-fun b!7928362 () Bool)

(declare-fun res!3146013 () Bool)

(assert (=> b!7928362 (=> (not res!3146013) (not e!4678938))))

(assert (=> b!7928362 (= res!3146013 (= (size!43248 lt!2693458) (+ (size!43248 lt!2693122) (size!43248 call!735200))))))

(declare-fun d!2368560 () Bool)

(assert (=> d!2368560 e!4678938))

(declare-fun res!3146012 () Bool)

(assert (=> d!2368560 (=> (not res!3146012) (not e!4678938))))

(assert (=> d!2368560 (= res!3146012 (= (content!15783 lt!2693458) ((_ map or) (content!15783 lt!2693122) (content!15783 call!735200))))))

(assert (=> d!2368560 (= lt!2693458 e!4678937)))

(declare-fun c!1455887 () Bool)

(assert (=> d!2368560 (= c!1455887 ((_ is Nil!74448) lt!2693122))))

(assert (=> d!2368560 (= (++!18259 lt!2693122 call!735200) lt!2693458)))

(assert (= (and d!2368560 c!1455887) b!7928360))

(assert (= (and d!2368560 (not c!1455887)) b!7928361))

(assert (= (and d!2368560 res!3146012) b!7928362))

(assert (= (and b!7928362 res!3146013) b!7928363))

(declare-fun m!8311054 () Bool)

(assert (=> b!7928361 m!8311054))

(declare-fun m!8311056 () Bool)

(assert (=> b!7928362 m!8311056))

(declare-fun m!8311058 () Bool)

(assert (=> b!7928362 m!8311058))

(declare-fun m!8311060 () Bool)

(assert (=> b!7928362 m!8311060))

(declare-fun m!8311062 () Bool)

(assert (=> d!2368560 m!8311062))

(declare-fun m!8311064 () Bool)

(assert (=> d!2368560 m!8311064))

(declare-fun m!8311066 () Bool)

(assert (=> d!2368560 m!8311066))

(assert (=> b!7927007 d!2368560))

(assert (=> b!7927556 d!2368546))

(declare-fun d!2368562 () Bool)

(declare-fun c!1455888 () Bool)

(assert (=> d!2368562 (= c!1455888 ((_ is Nil!74448) lt!2693193))))

(declare-fun e!4678939 () (InoxSet T!145804))

(assert (=> d!2368562 (= (content!15783 lt!2693193) e!4678939)))

(declare-fun b!7928364 () Bool)

(assert (=> b!7928364 (= e!4678939 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928365 () Bool)

(assert (=> b!7928365 (= e!4678939 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 lt!2693193) true) (content!15783 (t!390189 lt!2693193))))))

(assert (= (and d!2368562 c!1455888) b!7928364))

(assert (= (and d!2368562 (not c!1455888)) b!7928365))

(declare-fun m!8311068 () Bool)

(assert (=> b!7928365 m!8311068))

(declare-fun m!8311070 () Bool)

(assert (=> b!7928365 m!8311070))

(assert (=> d!2367710 d!2368562))

(declare-fun d!2368564 () Bool)

(declare-fun c!1455889 () Bool)

(assert (=> d!2368564 (= c!1455889 ((_ is Nil!74448) (ite c!1455404 lt!2693097 lt!2693089)))))

(declare-fun e!4678940 () (InoxSet T!145804))

(assert (=> d!2368564 (= (content!15783 (ite c!1455404 lt!2693097 lt!2693089)) e!4678940)))

(declare-fun b!7928366 () Bool)

(assert (=> b!7928366 (= e!4678940 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928367 () Bool)

(assert (=> b!7928367 (= e!4678940 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (ite c!1455404 lt!2693097 lt!2693089)) true) (content!15783 (t!390189 (ite c!1455404 lt!2693097 lt!2693089)))))))

(assert (= (and d!2368564 c!1455889) b!7928366))

(assert (= (and d!2368564 (not c!1455889)) b!7928367))

(declare-fun m!8311072 () Bool)

(assert (=> b!7928367 m!8311072))

(assert (=> b!7928367 m!8310520))

(assert (=> d!2367710 d!2368564))

(declare-fun c!1455890 () Bool)

(declare-fun d!2368566 () Bool)

(assert (=> d!2368566 (= c!1455890 ((_ is Nil!74448) (ite c!1455404 call!735191 lt!2693092)))))

(declare-fun e!4678941 () (InoxSet T!145804))

(assert (=> d!2368566 (= (content!15783 (ite c!1455404 call!735191 lt!2693092)) e!4678941)))

(declare-fun b!7928368 () Bool)

(assert (=> b!7928368 (= e!4678941 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928369 () Bool)

(assert (=> b!7928369 (= e!4678941 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (ite c!1455404 call!735191 lt!2693092)) true) (content!15783 (t!390189 (ite c!1455404 call!735191 lt!2693092)))))))

(assert (= (and d!2368566 c!1455890) b!7928368))

(assert (= (and d!2368566 (not c!1455890)) b!7928369))

(declare-fun m!8311074 () Bool)

(assert (=> b!7928369 m!8311074))

(declare-fun m!8311076 () Bool)

(assert (=> b!7928369 m!8311076))

(assert (=> d!2367710 d!2368566))

(declare-fun d!2368568 () Bool)

(declare-fun lt!2693459 () (_ BitVec 32))

(assert (=> d!2368568 (and (bvsle #b00000000000000000000000000000000 lt!2693459) (bvsle lt!2693459 #b01111111111111111111111111111111))))

(declare-fun e!4678942 () (_ BitVec 32))

(assert (=> d!2368568 (= lt!2693459 e!4678942)))

(declare-fun c!1455891 () Bool)

(assert (=> d!2368568 (= c!1455891 ((_ is Nil!74448) lt!2693280))))

(assert (=> d!2368568 (= (isize!119 lt!2693280) lt!2693459)))

(declare-fun b!7928370 () Bool)

(assert (=> b!7928370 (= e!4678942 #b00000000000000000000000000000000)))

(declare-fun b!7928371 () Bool)

(declare-fun lt!2693460 () (_ BitVec 32))

(assert (=> b!7928371 (= e!4678942 (ite (= lt!2693460 #b01111111111111111111111111111111) lt!2693460 (bvadd #b00000000000000000000000000000001 lt!2693460)))))

(assert (=> b!7928371 (= lt!2693460 (isize!119 (t!390189 lt!2693280)))))

(assert (= (and d!2368568 c!1455891) b!7928370))

(assert (= (and d!2368568 (not c!1455891)) b!7928371))

(declare-fun m!8311078 () Bool)

(assert (=> b!7928371 m!8311078))

(assert (=> bm!735224 d!2368568))

(declare-fun d!2368570 () Bool)

(declare-fun lt!2693461 () Int)

(assert (=> d!2368570 (>= lt!2693461 0)))

(declare-fun e!4678943 () Int)

(assert (=> d!2368570 (= lt!2693461 e!4678943)))

(declare-fun c!1455892 () Bool)

(assert (=> d!2368570 (= c!1455892 ((_ is Nil!74448) lt!2693269))))

(assert (=> d!2368570 (= (size!43248 lt!2693269) lt!2693461)))

(declare-fun b!7928372 () Bool)

(assert (=> b!7928372 (= e!4678943 0)))

(declare-fun b!7928373 () Bool)

(assert (=> b!7928373 (= e!4678943 (+ 1 (size!43248 (t!390189 lt!2693269))))))

(assert (= (and d!2368570 c!1455892) b!7928372))

(assert (= (and d!2368570 (not c!1455892)) b!7928373))

(declare-fun m!8311080 () Bool)

(assert (=> b!7928373 m!8311080))

(assert (=> b!7927543 d!2368570))

(declare-fun d!2368572 () Bool)

(declare-fun lt!2693462 () Int)

(assert (=> d!2368572 (>= lt!2693462 0)))

(declare-fun e!4678944 () Int)

(assert (=> d!2368572 (= lt!2693462 e!4678944)))

(declare-fun c!1455893 () Bool)

(assert (=> d!2368572 (= c!1455893 ((_ is Nil!74448) (ite c!1455404 lt!2693099 lt!2693091)))))

(assert (=> d!2368572 (= (size!43248 (ite c!1455404 lt!2693099 lt!2693091)) lt!2693462)))

(declare-fun b!7928374 () Bool)

(assert (=> b!7928374 (= e!4678944 0)))

(declare-fun b!7928375 () Bool)

(assert (=> b!7928375 (= e!4678944 (+ 1 (size!43248 (t!390189 (ite c!1455404 lt!2693099 lt!2693091)))))))

(assert (= (and d!2368572 c!1455893) b!7928374))

(assert (= (and d!2368572 (not c!1455893)) b!7928375))

(assert (=> b!7928375 m!8310812))

(assert (=> b!7927543 d!2368572))

(declare-fun d!2368574 () Bool)

(declare-fun lt!2693463 () Int)

(assert (=> d!2368574 (>= lt!2693463 0)))

(declare-fun e!4678945 () Int)

(assert (=> d!2368574 (= lt!2693463 e!4678945)))

(declare-fun c!1455894 () Bool)

(assert (=> d!2368574 (= c!1455894 ((_ is Nil!74448) (ite c!1455404 lt!2693093 lt!2693095)))))

(assert (=> d!2368574 (= (size!43248 (ite c!1455404 lt!2693093 lt!2693095)) lt!2693463)))

(declare-fun b!7928376 () Bool)

(assert (=> b!7928376 (= e!4678945 0)))

(declare-fun b!7928377 () Bool)

(assert (=> b!7928377 (= e!4678945 (+ 1 (size!43248 (t!390189 (ite c!1455404 lt!2693093 lt!2693095)))))))

(assert (= (and d!2368574 c!1455894) b!7928376))

(assert (= (and d!2368574 (not c!1455894)) b!7928377))

(declare-fun m!8311082 () Bool)

(assert (=> b!7928377 m!8311082))

(assert (=> b!7927543 d!2368574))

(declare-fun d!2368576 () Bool)

(assert (=> d!2368576 (= (list!19415 (xs!19290 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))) (innerList!15990 (xs!19290 (ite c!1455404 (right!57203 (right!57203 t!4440)) (left!56873 (right!57203 t!4440))))))))

(assert (=> b!7927551 d!2368576))

(declare-fun d!2368578 () Bool)

(declare-fun res!3146014 () Bool)

(declare-fun e!4678946 () Bool)

(assert (=> d!2368578 (=> (not res!3146014) (not e!4678946))))

(assert (=> d!2368578 (= res!3146014 (= (csize!32034 (right!57203 (left!56873 t!4440))) (+ (size!43249 (left!56873 (right!57203 (left!56873 t!4440)))) (size!43249 (right!57203 (right!57203 (left!56873 t!4440)))))))))

(assert (=> d!2368578 (= (inv!95723 (right!57203 (left!56873 t!4440))) e!4678946)))

(declare-fun b!7928378 () Bool)

(declare-fun res!3146015 () Bool)

(assert (=> b!7928378 (=> (not res!3146015) (not e!4678946))))

(assert (=> b!7928378 (= res!3146015 (and (not (= (left!56873 (right!57203 (left!56873 t!4440))) Empty!15902)) (not (= (right!57203 (right!57203 (left!56873 t!4440))) Empty!15902))))))

(declare-fun b!7928379 () Bool)

(declare-fun res!3146016 () Bool)

(assert (=> b!7928379 (=> (not res!3146016) (not e!4678946))))

(assert (=> b!7928379 (= res!3146016 (= (cheight!16113 (right!57203 (left!56873 t!4440))) (+ (max!0 (height!2217 (left!56873 (right!57203 (left!56873 t!4440)))) (height!2217 (right!57203 (right!57203 (left!56873 t!4440))))) 1)))))

(declare-fun b!7928380 () Bool)

(assert (=> b!7928380 (= e!4678946 (<= 0 (cheight!16113 (right!57203 (left!56873 t!4440)))))))

(assert (= (and d!2368578 res!3146014) b!7928378))

(assert (= (and b!7928378 res!3146015) b!7928379))

(assert (= (and b!7928379 res!3146016) b!7928380))

(declare-fun m!8311084 () Bool)

(assert (=> d!2368578 m!8311084))

(declare-fun m!8311086 () Bool)

(assert (=> d!2368578 m!8311086))

(assert (=> b!7928379 m!8310280))

(assert (=> b!7928379 m!8310282))

(assert (=> b!7928379 m!8310280))

(assert (=> b!7928379 m!8310282))

(declare-fun m!8311088 () Bool)

(assert (=> b!7928379 m!8311088))

(assert (=> b!7927450 d!2368578))

(declare-fun d!2368580 () Bool)

(declare-fun c!1455895 () Bool)

(assert (=> d!2368580 (= c!1455895 ((_ is Nil!74448) (t!390189 lt!2693108)))))

(declare-fun e!4678947 () (InoxSet T!145804))

(assert (=> d!2368580 (= (content!15783 (t!390189 lt!2693108)) e!4678947)))

(declare-fun b!7928381 () Bool)

(assert (=> b!7928381 (= e!4678947 ((as const (Array T!145804 Bool)) false))))

(declare-fun b!7928382 () Bool)

(assert (=> b!7928382 (= e!4678947 ((_ map or) (store ((as const (Array T!145804 Bool)) false) (h!80896 (t!390189 lt!2693108)) true) (content!15783 (t!390189 (t!390189 lt!2693108)))))))

(assert (= (and d!2368580 c!1455895) b!7928381))

(assert (= (and d!2368580 (not c!1455895)) b!7928382))

(declare-fun m!8311090 () Bool)

(assert (=> b!7928382 m!8311090))

(declare-fun m!8311092 () Bool)

(assert (=> b!7928382 m!8311092))

(assert (=> b!7927360 d!2368580))

(assert (=> d!2367936 d!2367828))

(assert (=> d!2367936 d!2368366))

(declare-fun e!4678948 () List!74572)

(declare-fun b!7928383 () Bool)

(assert (=> b!7928383 (= e!4678948 (ite c!1455443 lt!2693126 lt!2693128))))

(declare-fun e!4678949 () Bool)

(declare-fun lt!2693464 () List!74572)

(declare-fun b!7928386 () Bool)

(assert (=> b!7928386 (= e!4678949 (or (not (= (ite c!1455443 lt!2693126 lt!2693128) Nil!74448)) (= lt!2693464 (ite c!1455443 lt!2693132 lt!2693124))))))

(declare-fun b!7928384 () Bool)

(assert (=> b!7928384 (= e!4678948 (Cons!74448 (h!80896 (ite c!1455443 lt!2693132 lt!2693124)) (++!18259 (t!390189 (ite c!1455443 lt!2693132 lt!2693124)) (ite c!1455443 lt!2693126 lt!2693128))))))

(declare-fun b!7928385 () Bool)

(declare-fun res!3146018 () Bool)

(assert (=> b!7928385 (=> (not res!3146018) (not e!4678949))))

(assert (=> b!7928385 (= res!3146018 (= (size!43248 lt!2693464) (+ (size!43248 (ite c!1455443 lt!2693132 lt!2693124)) (size!43248 (ite c!1455443 lt!2693126 lt!2693128)))))))

(declare-fun d!2368582 () Bool)

(assert (=> d!2368582 e!4678949))

(declare-fun res!3146017 () Bool)

(assert (=> d!2368582 (=> (not res!3146017) (not e!4678949))))

(assert (=> d!2368582 (= res!3146017 (= (content!15783 lt!2693464) ((_ map or) (content!15783 (ite c!1455443 lt!2693132 lt!2693124)) (content!15783 (ite c!1455443 lt!2693126 lt!2693128)))))))

(assert (=> d!2368582 (= lt!2693464 e!4678948)))

(declare-fun c!1455896 () Bool)

(assert (=> d!2368582 (= c!1455896 ((_ is Nil!74448) (ite c!1455443 lt!2693132 lt!2693124)))))

(assert (=> d!2368582 (= (++!18259 (ite c!1455443 lt!2693132 lt!2693124) (ite c!1455443 lt!2693126 lt!2693128)) lt!2693464)))

(assert (= (and d!2368582 c!1455896) b!7928383))

(assert (= (and d!2368582 (not c!1455896)) b!7928384))

(assert (= (and d!2368582 res!3146017) b!7928385))

(assert (= (and b!7928385 res!3146018) b!7928386))

(declare-fun m!8311094 () Bool)

(assert (=> b!7928384 m!8311094))

(declare-fun m!8311096 () Bool)

(assert (=> b!7928385 m!8311096))

(declare-fun m!8311098 () Bool)

(assert (=> b!7928385 m!8311098))

(declare-fun m!8311100 () Bool)

(assert (=> b!7928385 m!8311100))

(declare-fun m!8311102 () Bool)

(assert (=> d!2368582 m!8311102))

(declare-fun m!8311104 () Bool)

(assert (=> d!2368582 m!8311104))

(declare-fun m!8311106 () Bool)

(assert (=> d!2368582 m!8311106))

(assert (=> bm!735198 d!2368582))

(assert (=> b!7927530 d!2368360))

(assert (=> b!7927530 d!2368362))

(assert (=> b!7927502 d!2368494))

(assert (=> b!7927502 d!2368496))

(declare-fun b!7928387 () Bool)

(declare-fun e!4678950 () Bool)

(declare-fun tp!2358767 () Bool)

(assert (=> b!7928387 (= e!4678950 (and tp_is_empty!53229 tp!2358767))))

(assert (=> b!7927594 (= tp!2358746 e!4678950)))

(assert (= (and b!7927594 ((_ is Cons!74448) (t!390189 (t!390189 (innerList!15990 (xs!19290 t!4440)))))) b!7928387))

(declare-fun b!7928388 () Bool)

(declare-fun e!4678951 () Bool)

(declare-fun tp!2358768 () Bool)

(assert (=> b!7928388 (= e!4678951 (and tp_is_empty!53229 tp!2358768))))

(assert (=> b!7927607 (= tp!2358759 e!4678951)))

(assert (= (and b!7927607 ((_ is Cons!74448) (innerList!15990 (xs!19290 (right!57203 (left!56873 t!4440)))))) b!7928388))

(declare-fun b!7928389 () Bool)

(declare-fun e!4678952 () Bool)

(declare-fun tp!2358769 () Bool)

(assert (=> b!7928389 (= e!4678952 (and tp_is_empty!53229 tp!2358769))))

(assert (=> b!7927600 (= tp!2358752 e!4678952)))

(assert (= (and b!7927600 ((_ is Cons!74448) (innerList!15990 (xs!19290 (right!57203 (right!57203 t!4440)))))) b!7928389))

(declare-fun e!4678954 () Bool)

(declare-fun tp!2358770 () Bool)

(declare-fun b!7928390 () Bool)

(declare-fun tp!2358771 () Bool)

(assert (=> b!7928390 (= e!4678954 (and (inv!95719 (left!56873 (left!56873 (right!57203 (left!56873 t!4440))))) tp!2358771 (inv!95719 (right!57203 (left!56873 (right!57203 (left!56873 t!4440))))) tp!2358770))))

(declare-fun b!7928392 () Bool)

(declare-fun e!4678953 () Bool)

(declare-fun tp!2358772 () Bool)

(assert (=> b!7928392 (= e!4678953 tp!2358772)))

(declare-fun b!7928391 () Bool)

(assert (=> b!7928391 (= e!4678954 (and (inv!95720 (xs!19290 (left!56873 (right!57203 (left!56873 t!4440))))) e!4678953))))

(assert (=> b!7927605 (= tp!2358758 (and (inv!95719 (left!56873 (right!57203 (left!56873 t!4440)))) e!4678954))))

(assert (= (and b!7927605 ((_ is Node!15902) (left!56873 (right!57203 (left!56873 t!4440))))) b!7928390))

(assert (= b!7928391 b!7928392))

(assert (= (and b!7927605 ((_ is Leaf!30234) (left!56873 (right!57203 (left!56873 t!4440))))) b!7928391))

(declare-fun m!8311108 () Bool)

(assert (=> b!7928390 m!8311108))

(declare-fun m!8311110 () Bool)

(assert (=> b!7928390 m!8311110))

(declare-fun m!8311112 () Bool)

(assert (=> b!7928391 m!8311112))

(assert (=> b!7927605 m!8309562))

(declare-fun tp!2358774 () Bool)

(declare-fun e!4678956 () Bool)

(declare-fun b!7928393 () Bool)

(declare-fun tp!2358773 () Bool)

(assert (=> b!7928393 (= e!4678956 (and (inv!95719 (left!56873 (right!57203 (right!57203 (left!56873 t!4440))))) tp!2358774 (inv!95719 (right!57203 (right!57203 (right!57203 (left!56873 t!4440))))) tp!2358773))))

(declare-fun b!7928395 () Bool)

(declare-fun e!4678955 () Bool)

(declare-fun tp!2358775 () Bool)

(assert (=> b!7928395 (= e!4678955 tp!2358775)))

(declare-fun b!7928394 () Bool)

(assert (=> b!7928394 (= e!4678956 (and (inv!95720 (xs!19290 (right!57203 (right!57203 (left!56873 t!4440))))) e!4678955))))

(assert (=> b!7927605 (= tp!2358757 (and (inv!95719 (right!57203 (right!57203 (left!56873 t!4440)))) e!4678956))))

(assert (= (and b!7927605 ((_ is Node!15902) (right!57203 (right!57203 (left!56873 t!4440))))) b!7928393))

(assert (= b!7928394 b!7928395))

(assert (= (and b!7927605 ((_ is Leaf!30234) (right!57203 (right!57203 (left!56873 t!4440))))) b!7928394))

(declare-fun m!8311114 () Bool)

(assert (=> b!7928393 m!8311114))

(declare-fun m!8311116 () Bool)

(assert (=> b!7928393 m!8311116))

(declare-fun m!8311118 () Bool)

(assert (=> b!7928394 m!8311118))

(assert (=> b!7927605 m!8309564))

(declare-fun b!7928396 () Bool)

(declare-fun e!4678957 () Bool)

(declare-fun tp!2358776 () Bool)

(assert (=> b!7928396 (= e!4678957 (and tp_is_empty!53229 tp!2358776))))

(assert (=> b!7927597 (= tp!2358749 e!4678957)))

(assert (= (and b!7927597 ((_ is Cons!74448) (innerList!15990 (xs!19290 (left!56873 (right!57203 t!4440)))))) b!7928396))

(declare-fun b!7928397 () Bool)

(declare-fun e!4678958 () Bool)

(declare-fun tp!2358777 () Bool)

(assert (=> b!7928397 (= e!4678958 (and tp_is_empty!53229 tp!2358777))))

(assert (=> b!7927601 (= tp!2358753 e!4678958)))

(assert (= (and b!7927601 ((_ is Cons!74448) (t!390189 (innerList!15990 (xs!19290 (left!56873 t!4440)))))) b!7928397))

(declare-fun b!7928398 () Bool)

(declare-fun e!4678959 () Bool)

(declare-fun tp!2358778 () Bool)

(assert (=> b!7928398 (= e!4678959 (and tp_is_empty!53229 tp!2358778))))

(assert (=> b!7927608 (= tp!2358760 e!4678959)))

(assert (= (and b!7927608 ((_ is Cons!74448) (t!390189 (innerList!15990 (xs!19290 (right!57203 t!4440)))))) b!7928398))

(declare-fun e!4678961 () Bool)

(declare-fun tp!2358780 () Bool)

(declare-fun tp!2358779 () Bool)

(declare-fun b!7928399 () Bool)

(assert (=> b!7928399 (= e!4678961 (and (inv!95719 (left!56873 (left!56873 (right!57203 (right!57203 t!4440))))) tp!2358780 (inv!95719 (right!57203 (left!56873 (right!57203 (right!57203 t!4440))))) tp!2358779))))

(declare-fun b!7928401 () Bool)

(declare-fun e!4678960 () Bool)

(declare-fun tp!2358781 () Bool)

(assert (=> b!7928401 (= e!4678960 tp!2358781)))

(declare-fun b!7928400 () Bool)

(assert (=> b!7928400 (= e!4678961 (and (inv!95720 (xs!19290 (left!56873 (right!57203 (right!57203 t!4440))))) e!4678960))))

(assert (=> b!7927598 (= tp!2358751 (and (inv!95719 (left!56873 (right!57203 (right!57203 t!4440)))) e!4678961))))

(assert (= (and b!7927598 ((_ is Node!15902) (left!56873 (right!57203 (right!57203 t!4440))))) b!7928399))

(assert (= b!7928400 b!7928401))

(assert (= (and b!7927598 ((_ is Leaf!30234) (left!56873 (right!57203 (right!57203 t!4440))))) b!7928400))

(declare-fun m!8311120 () Bool)

(assert (=> b!7928399 m!8311120))

(declare-fun m!8311122 () Bool)

(assert (=> b!7928399 m!8311122))

(declare-fun m!8311124 () Bool)

(assert (=> b!7928400 m!8311124))

(assert (=> b!7927598 m!8309550))

(declare-fun tp!2358783 () Bool)

(declare-fun b!7928402 () Bool)

(declare-fun tp!2358782 () Bool)

(declare-fun e!4678963 () Bool)

(assert (=> b!7928402 (= e!4678963 (and (inv!95719 (left!56873 (right!57203 (right!57203 (right!57203 t!4440))))) tp!2358783 (inv!95719 (right!57203 (right!57203 (right!57203 (right!57203 t!4440))))) tp!2358782))))

(declare-fun b!7928404 () Bool)

(declare-fun e!4678962 () Bool)

(declare-fun tp!2358784 () Bool)

(assert (=> b!7928404 (= e!4678962 tp!2358784)))

(declare-fun b!7928403 () Bool)

(assert (=> b!7928403 (= e!4678963 (and (inv!95720 (xs!19290 (right!57203 (right!57203 (right!57203 t!4440))))) e!4678962))))

(assert (=> b!7927598 (= tp!2358750 (and (inv!95719 (right!57203 (right!57203 (right!57203 t!4440)))) e!4678963))))

(assert (= (and b!7927598 ((_ is Node!15902) (right!57203 (right!57203 (right!57203 t!4440))))) b!7928402))

(assert (= b!7928403 b!7928404))

(assert (= (and b!7927598 ((_ is Leaf!30234) (right!57203 (right!57203 (right!57203 t!4440))))) b!7928403))

(declare-fun m!8311126 () Bool)

(assert (=> b!7928402 m!8311126))

(declare-fun m!8311128 () Bool)

(assert (=> b!7928402 m!8311128))

(declare-fun m!8311130 () Bool)

(assert (=> b!7928403 m!8311130))

(assert (=> b!7927598 m!8309552))

(declare-fun tp!2358786 () Bool)

(declare-fun b!7928405 () Bool)

(declare-fun tp!2358785 () Bool)

(declare-fun e!4678965 () Bool)

(assert (=> b!7928405 (= e!4678965 (and (inv!95719 (left!56873 (left!56873 (left!56873 (left!56873 t!4440))))) tp!2358786 (inv!95719 (right!57203 (left!56873 (left!56873 (left!56873 t!4440))))) tp!2358785))))

(declare-fun b!7928407 () Bool)

(declare-fun e!4678964 () Bool)

(declare-fun tp!2358787 () Bool)

(assert (=> b!7928407 (= e!4678964 tp!2358787)))

(declare-fun b!7928406 () Bool)

(assert (=> b!7928406 (= e!4678965 (and (inv!95720 (xs!19290 (left!56873 (left!56873 (left!56873 t!4440))))) e!4678964))))

(assert (=> b!7927602 (= tp!2358755 (and (inv!95719 (left!56873 (left!56873 (left!56873 t!4440)))) e!4678965))))

(assert (= (and b!7927602 ((_ is Node!15902) (left!56873 (left!56873 (left!56873 t!4440))))) b!7928405))

(assert (= b!7928406 b!7928407))

(assert (= (and b!7927602 ((_ is Leaf!30234) (left!56873 (left!56873 (left!56873 t!4440))))) b!7928406))

(declare-fun m!8311132 () Bool)

(assert (=> b!7928405 m!8311132))

(declare-fun m!8311134 () Bool)

(assert (=> b!7928405 m!8311134))

(declare-fun m!8311136 () Bool)

(assert (=> b!7928406 m!8311136))

(assert (=> b!7927602 m!8309556))

(declare-fun b!7928408 () Bool)

(declare-fun tp!2358789 () Bool)

(declare-fun e!4678967 () Bool)

(declare-fun tp!2358788 () Bool)

(assert (=> b!7928408 (= e!4678967 (and (inv!95719 (left!56873 (right!57203 (left!56873 (left!56873 t!4440))))) tp!2358789 (inv!95719 (right!57203 (right!57203 (left!56873 (left!56873 t!4440))))) tp!2358788))))

(declare-fun b!7928410 () Bool)

(declare-fun e!4678966 () Bool)

(declare-fun tp!2358790 () Bool)

(assert (=> b!7928410 (= e!4678966 tp!2358790)))

(declare-fun b!7928409 () Bool)

(assert (=> b!7928409 (= e!4678967 (and (inv!95720 (xs!19290 (right!57203 (left!56873 (left!56873 t!4440))))) e!4678966))))

(assert (=> b!7927602 (= tp!2358754 (and (inv!95719 (right!57203 (left!56873 (left!56873 t!4440)))) e!4678967))))

(assert (= (and b!7927602 ((_ is Node!15902) (right!57203 (left!56873 (left!56873 t!4440))))) b!7928408))

(assert (= b!7928409 b!7928410))

(assert (= (and b!7927602 ((_ is Leaf!30234) (right!57203 (left!56873 (left!56873 t!4440))))) b!7928409))

(declare-fun m!8311138 () Bool)

(assert (=> b!7928408 m!8311138))

(declare-fun m!8311140 () Bool)

(assert (=> b!7928408 m!8311140))

(declare-fun m!8311142 () Bool)

(assert (=> b!7928409 m!8311142))

(assert (=> b!7927602 m!8309558))

(declare-fun b!7928411 () Bool)

(declare-fun e!4678968 () Bool)

(declare-fun tp!2358791 () Bool)

(assert (=> b!7928411 (= e!4678968 (and tp_is_empty!53229 tp!2358791))))

(assert (=> b!7927604 (= tp!2358756 e!4678968)))

(assert (= (and b!7927604 ((_ is Cons!74448) (innerList!15990 (xs!19290 (left!56873 (left!56873 t!4440)))))) b!7928411))

(declare-fun tp!2358792 () Bool)

(declare-fun b!7928412 () Bool)

(declare-fun e!4678970 () Bool)

(declare-fun tp!2358793 () Bool)

(assert (=> b!7928412 (= e!4678970 (and (inv!95719 (left!56873 (left!56873 (left!56873 (right!57203 t!4440))))) tp!2358793 (inv!95719 (right!57203 (left!56873 (left!56873 (right!57203 t!4440))))) tp!2358792))))

(declare-fun b!7928414 () Bool)

(declare-fun e!4678969 () Bool)

(declare-fun tp!2358794 () Bool)

(assert (=> b!7928414 (= e!4678969 tp!2358794)))

(declare-fun b!7928413 () Bool)

(assert (=> b!7928413 (= e!4678970 (and (inv!95720 (xs!19290 (left!56873 (left!56873 (right!57203 t!4440))))) e!4678969))))

(assert (=> b!7927595 (= tp!2358748 (and (inv!95719 (left!56873 (left!56873 (right!57203 t!4440)))) e!4678970))))

(assert (= (and b!7927595 ((_ is Node!15902) (left!56873 (left!56873 (right!57203 t!4440))))) b!7928412))

(assert (= b!7928413 b!7928414))

(assert (= (and b!7927595 ((_ is Leaf!30234) (left!56873 (left!56873 (right!57203 t!4440))))) b!7928413))

(declare-fun m!8311144 () Bool)

(assert (=> b!7928412 m!8311144))

(declare-fun m!8311146 () Bool)

(assert (=> b!7928412 m!8311146))

(declare-fun m!8311148 () Bool)

(assert (=> b!7928413 m!8311148))

(assert (=> b!7927595 m!8309544))

(declare-fun e!4678972 () Bool)

(declare-fun tp!2358795 () Bool)

(declare-fun b!7928415 () Bool)

(declare-fun tp!2358796 () Bool)

(assert (=> b!7928415 (= e!4678972 (and (inv!95719 (left!56873 (right!57203 (left!56873 (right!57203 t!4440))))) tp!2358796 (inv!95719 (right!57203 (right!57203 (left!56873 (right!57203 t!4440))))) tp!2358795))))

(declare-fun b!7928417 () Bool)

(declare-fun e!4678971 () Bool)

(declare-fun tp!2358797 () Bool)

(assert (=> b!7928417 (= e!4678971 tp!2358797)))

(declare-fun b!7928416 () Bool)

(assert (=> b!7928416 (= e!4678972 (and (inv!95720 (xs!19290 (right!57203 (left!56873 (right!57203 t!4440))))) e!4678971))))

(assert (=> b!7927595 (= tp!2358747 (and (inv!95719 (right!57203 (left!56873 (right!57203 t!4440)))) e!4678972))))

(assert (= (and b!7927595 ((_ is Node!15902) (right!57203 (left!56873 (right!57203 t!4440))))) b!7928415))

(assert (= b!7928416 b!7928417))

(assert (= (and b!7927595 ((_ is Leaf!30234) (right!57203 (left!56873 (right!57203 t!4440))))) b!7928416))

(declare-fun m!8311150 () Bool)

(assert (=> b!7928415 m!8311150))

(declare-fun m!8311152 () Bool)

(assert (=> b!7928415 m!8311152))

(declare-fun m!8311154 () Bool)

(assert (=> b!7928416 m!8311154))

(assert (=> b!7927595 m!8309546))

(check-sat (not d!2368066) (not d!2368142) (not b!7928371) (not b!7927783) (not b!7928253) (not b!7927876) (not b!7927790) (not b!7928308) (not b!7927659) (not b!7927832) (not d!2368018) (not d!2367998) (not b!7928031) (not b!7927795) (not b!7928396) (not b!7928350) (not b!7927810) (not d!2368376) (not b!7927758) (not b!7927825) (not b!7928119) (not b!7927882) (not b!7927915) (not d!2368174) (not b!7928003) (not b!7928061) (not b!7928166) (not b!7928146) (not b!7928417) (not b!7928257) (not b!7927929) (not b!7928312) (not b!7927903) (not b!7928217) (not b!7927908) (not b!7928121) (not b!7927975) (not b!7927838) (not b!7927884) (not b!7928335) (not b!7928187) (not b!7928320) (not b!7928345) (not b!7928397) (not b!7928059) (not d!2368096) (not b!7927878) (not b!7928168) (not b!7927872) (not b!7927947) (not b!7927925) (not b!7927870) (not d!2367950) (not b!7928051) (not b!7928041) (not b!7927729) (not b!7928103) (not b!7927909) (not b!7927976) (not b!7927816) (not b!7928245) (not b!7928001) (not b!7927995) (not b!7927865) (not b!7928114) (not d!2368448) (not b!7928093) (not b!7928021) (not b!7927723) (not b!7928193) (not b!7927682) (not b!7928415) (not b!7927963) (not b!7927836) (not b!7928294) (not b!7927921) (not b!7927716) (not b!7928145) (not b!7928118) (not b!7927672) (not b!7927972) (not b!7928133) (not b!7927951) (not bm!735240) (not b!7927957) (not d!2368340) (not d!2368054) (not b!7927771) (not d!2368578) (not b!7928399) (not b!7928080) (not b!7928258) (not d!2368556) (not b!7927946) (not b!7927804) (not bm!735227) (not b!7927772) (not b!7927752) (not bm!735228) (not b!7927691) (not b!7927821) (not b!7927861) (not b!7927866) (not b!7928027) (not b!7928178) (not b!7927754) (not b!7928011) (not b!7928400) (not b!7928142) (not b!7928058) (not d!2368388) (not b!7928098) (not b!7928369) (not d!2367966) tp_is_empty!53229 (not b!7928340) (not b!7927611) (not d!2367996) (not b!7927610) (not b!7927857) (not b!7927942) (not b!7927879) (not b!7927814) (not b!7927668) (not b!7927849) (not b!7927858) (not b!7927622) (not b!7927674) (not d!2368290) (not b!7927745) (not d!2368098) (not b!7928387) (not b!7928009) (not d!2368414) (not b!7927967) (not b!7927764) (not b!7928104) (not b!7928326) (not b!7928035) (not b!7927728) (not b!7927840) (not b!7928072) (not b!7927646) (not b!7928129) (not d!2368170) (not b!7928229) (not b!7927720) (not d!2367968) (not b!7928216) (not d!2368426) (not b!7928269) (not b!7928225) (not b!7928361) (not b!7927913) (not b!7928390) (not b!7928195) (not b!7928402) (not b!7927973) (not d!2368504) (not b!7928278) (not b!7928365) (not b!7927756) (not b!7927869) (not b!7928020) (not b!7928243) (not d!2368022) (not b!7928037) (not bm!735229) (not b!7928329) (not d!2368090) (not b!7927842) (not b!7927853) (not b!7928223) (not b!7927743) (not b!7928314) (not b!7927707) (not b!7927650) (not b!7927897) (not b!7927767) (not b!7927595) (not b!7928404) (not b!7928385) (not d!2368498) (not b!7928375) (not d!2368558) (not b!7928214) (not b!7928255) (not b!7928147) (not b!7927654) (not b!7927854) (not d!2368110) (not b!7928247) (not b!7928085) (not b!7927640) (not d!2368528) (not d!2368042) (not d!2368188) (not b!7928354) (not b!7927788) (not b!7927664) (not b!7928241) (not b!7928272) (not b!7927937) (not b!7928377) (not b!7927598) (not d!2368262) (not b!7928215) (not b!7927818) (not b!7927890) (not b!7927877) (not b!7928389) (not b!7927817) (not b!7927786) (not b!7927953) (not b!7928233) (not b!7928174) (not b!7928309) (not d!2368030) (not b!7928349) (not b!7927740) (not b!7927899) (not b!7928123) (not b!7927706) (not b!7928333) (not b!7928289) (not b!7927955) (not d!2368392) (not b!7928047) (not d!2368246) (not b!7928270) (not b!7927860) (not b!7928139) (not b!7928151) (not b!7927696) (not b!7928250) (not d!2368582) (not b!7927982) (not d!2367958) (not d!2368226) (not b!7927602) (not b!7928259) (not b!7928237) (not b!7928408) (not b!7927911) (not d!2368150) (not b!7927807) (not b!7928153) (not b!7927623) (not b!7928346) (not b!7927893) (not b!7928316) (not b!7927796) (not b!7927644) (not bm!735241) (not b!7927803) (not d!2368292) (not b!7928211) (not b!7928204) (not b!7927983) (not d!2368370) (not b!7927985) (not b!7928401) (not b!7928039) (not b!7927700) (not b!7927636) (not d!2367962) (not b!7928207) (not d!2368550) (not b!7928155) (not b!7928398) (not d!2368144) (not b!7928160) (not d!2368440) (not b!7927688) (not b!7928043) (not b!7928055) (not b!7928185) (not b!7928023) (not d!2368334) (not b!7928087) (not d!2368330) (not d!2368214) (not b!7927778) (not b!7927906) (not b!7927831) (not b!7927801) (not d!2368560) (not b!7928189) (not b!7927738) (not b!7927766) (not b!7927894) (not b!7927631) (not b!7927642) (not b!7927888) (not b!7928127) (not d!2368526) (not b!7928388) (not b!7928075) (not b!7928249) (not b!7928150) (not b!7927916) (not d!2368074) (not d!2368486) (not b!7927971) (not b!7928182) (not b!7927874) (not b!7927819) (not b!7928076) (not b!7928297) (not b!7928034) (not d!2368238) (not b!7927722) (not b!7927726) (not b!7928148) (not b!7927615) (not b!7928088) (not d!2367954) (not b!7927808) (not b!7928221) (not b!7928367) (not b!7928084) (not bm!735232) (not d!2368038) (not b!7928373) (not b!7927822) (not b!7927666) (not b!7928191) (not b!7927805) (not b!7928130) (not b!7927994) (not b!7928330) (not b!7928405) (not b!7927730) (not b!7928228) (not b!7927630) (not b!7927980) (not b!7928318) (not d!2368444) (not b!7928094) (not b!7928109) (not d!2368442) (not b!7927710) (not b!7927981) (not bm!735237) (not b!7928358) (not b!7928170) (not b!7927605) (not b!7928355) (not b!7927658) (not b!7927749) (not b!7927742) (not d!2368478) (not b!7927692) (not b!7927950) (not b!7927920) (not b!7927662) (not bm!735242) (not b!7928337) (not b!7928219) (not b!7927679) (not d!2368208) (not b!7927820) (not b!7928180) (not d!2368324) (not b!7928407) (not b!7927701) (not b!7927775) (not b!7927833) (not b!7928135) (not b!7928379) (not b!7927828) (not b!7928285) (not b!7928266) (not b!7928012) (not d!2368320) (not b!7928413) (not b!7927927) (not b!7928362) (not d!2368064) (not d!2368242) (not b!7928175) (not b!7928261) (not b!7927986) (not b!7928382) (not b!7927732) (not b!7928410) (not d!2368466) (not b!7927678) (not b!7927933) (not b!7928045) (not b!7928063) (not b!7928053) (not b!7928081) (not b!7927998) (not d!2368304) (not d!2368410) (not b!7927979) (not b!7928158) (not b!7927931) (not b!7927687) (not b!7928277) (not b!7928152) (not b!7928164) (not bm!735235) (not b!7928394) (not b!7927639) (not b!7927735) (not b!7928017) (not bm!735244) (not b!7927619) (not b!7928395) (not b!7928102) (not b!7928032) (not b!7927835) (not b!7927974) (not b!7927676) (not b!7928265) (not b!7928414) (not b!7928256) (not d!2368346) (not b!7928025) (not b!7927999) (not b!7927834) (not bm!735233) (not b!7927990) (not b!7928391) (not b!7928065) (not b!7927830) (not b!7928300) (not b!7927886) (not d!2367960) (not bm!735239) (not b!7927782) (not b!7928008) (not b!7928212) (not b!7928412) (not d!2367990) (not d!2368542) (not b!7927880) (not b!7927824) (not b!7927924) (not d!2367994) (not d!2368412) (not bm!735236) (not b!7928154) (not b!7927941) (not d!2368514) (not d!2368390) (not d!2368266) (not b!7927846) (not b!7927881) (not b!7928240) (not b!7928416) (not b!7928137) (not b!7928392) (not b!7927800) (not b!7927776) (not b!7927961) (not b!7927655) (not b!7928403) (not b!7928162) (not bm!735238) (not b!7928322) (not b!7927978) (not b!7928406) (not d!2368446) (not b!7928357) (not d!2368524) (not b!7928281) (not b!7927748) (not b!7928341) (not b!7927812) (not d!2368044) (not b!7928067) (not b!7928199) (not b!7927714) (not b!7928029) (not b!7927635) (not b!7928409) (not b!7927648) (not b!7927683) (not b!7927727) (not b!7927901) (not b!7927959) (not b!7927827) (not b!7928005) (not b!7927618) (not b!7927694) (not b!7928339) (not b!7928110) (not b!7927718) (not d!2368034) (not b!7927734) (not d!2367952) (not bm!735243) (not d!2368424) (not b!7928338) (not bm!735234) (not b!7928231) (not b!7927626) (not b!7928115) (not b!7928143) (not b!7927969) (not b!7928200) (not b!7928068) (not d!2368300) (not d!2367956) (not b!7928290) (not b!7927704) (not bm!735231) (not d!2368552) (not bm!735245) (not b!7928149) (not b!7927614) (not b!7927627) (not b!7928208) (not d!2367986) (not b!7928197) (not b!7927798) (not d!2368318) (not b!7928171) (not b!7928293) (not b!7927939) (not d!2368032) (not b!7927977) (not b!7927670) (not bm!735230) (not b!7928384) (not b!7927731) (not b!7928393) (not b!7927746) (not b!7928273) (not b!7928254) (not b!7928321) (not d!2368016) (not b!7927791) (not b!7928235) (not b!7928343) (not d!2368366) (not b!7928342) (not b!7927848) (not d!2368520) (not b!7927760) (not b!7928107) (not b!7927697) (not b!7928280) (not b!7927964) (not b!7927935) (not b!7928073) (not b!7928226) (not d!2368512) (not b!7928156) (not d!2367964) (not b!7927989) (not b!7928091) (not d!2368378) (not b!7928296) (not d!2368344) (not b!7928238) (not b!7927779) (not b!7927652) (not b!7928016) (not b!7928056) (not b!7928099) (not b!7928284) (not b!7928203) (not bm!735226) (not b!7927711) (not b!7927762) (not b!7928125) (not b!7928411) (not b!7927905) (not b!7928218))
(check-sat)
