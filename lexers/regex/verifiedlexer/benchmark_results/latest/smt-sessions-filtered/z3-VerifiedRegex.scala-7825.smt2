; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411024 () Bool)

(assert start!411024)

(declare-fun tp!1309177 () Bool)

(declare-fun e!2656878 () Bool)

(declare-datatypes ((T!80004 0))(
  ( (T!80005 (val!15274 Int)) )
))
(declare-datatypes ((List!47483 0))(
  ( (Nil!47359) (Cons!47359 (h!52779 T!80004) (t!354064 List!47483)) )
))
(declare-datatypes ((IArray!28687 0))(
  ( (IArray!28688 (innerList!14401 List!47483)) )
))
(declare-datatypes ((Conc!14341 0))(
  ( (Node!14341 (left!35294 Conc!14341) (right!35624 Conc!14341) (csize!28912 Int) (cheight!14552 Int)) (Leaf!22167 (xs!17647 IArray!28687) (csize!28913 Int)) (Empty!14341) )
))
(declare-fun t!3602 () Conc!14341)

(declare-fun b!4279715 () Bool)

(declare-fun tp!1309175 () Bool)

(declare-fun inv!62730 (Conc!14341) Bool)

(assert (=> b!4279715 (= e!2656878 (and (inv!62730 (left!35294 t!3602)) tp!1309175 (inv!62730 (right!35624 t!3602)) tp!1309177))))

(declare-fun b!4279716 () Bool)

(declare-fun e!2656879 () Bool)

(declare-fun tp_is_empty!22957 () Bool)

(declare-fun tp!1309176 () Bool)

(assert (=> b!4279716 (= e!2656879 (and tp_is_empty!22957 tp!1309176))))

(declare-fun b!4279717 () Bool)

(declare-fun e!2656881 () Bool)

(declare-fun acc!259 () List!47483)

(declare-fun efficientList!606 (Conc!14341 List!47483) List!47483)

(declare-fun ++!12105 (List!47483 List!47483) List!47483)

(declare-fun list!17279 (Conc!14341) List!47483)

(assert (=> b!4279717 (= e!2656881 (not (= (efficientList!606 (left!35294 t!3602) (efficientList!606 (right!35624 t!3602) acc!259)) (++!12105 (list!17279 t!3602) acc!259))))))

(declare-fun lt!1514587 () List!47483)

(declare-fun lt!1514586 () List!47483)

(assert (=> b!4279717 (= (++!12105 (++!12105 lt!1514587 lt!1514586) acc!259) (++!12105 lt!1514587 (++!12105 lt!1514586 acc!259)))))

(declare-datatypes ((Unit!66317 0))(
  ( (Unit!66318) )
))
(declare-fun lt!1514585 () Unit!66317)

(declare-fun lemmaConcatAssociativity!2736 (List!47483 List!47483 List!47483) Unit!66317)

(assert (=> b!4279717 (= lt!1514585 (lemmaConcatAssociativity!2736 lt!1514587 lt!1514586 acc!259))))

(assert (=> b!4279717 (= lt!1514586 (list!17279 (right!35624 t!3602)))))

(assert (=> b!4279717 (= lt!1514587 (list!17279 (left!35294 t!3602)))))

(declare-fun b!4279718 () Bool)

(declare-fun e!2656880 () Bool)

(declare-fun inv!62731 (IArray!28687) Bool)

(assert (=> b!4279718 (= e!2656878 (and (inv!62731 (xs!17647 t!3602)) e!2656880))))

(declare-fun b!4279719 () Bool)

(declare-fun tp!1309178 () Bool)

(assert (=> b!4279719 (= e!2656880 tp!1309178)))

(declare-fun res!1756829 () Bool)

(assert (=> start!411024 (=> (not res!1756829) (not e!2656881))))

(get-info :version)

(assert (=> start!411024 (= res!1756829 (and (not ((_ is Empty!14341) t!3602)) (not ((_ is Leaf!22167) t!3602))))))

(assert (=> start!411024 e!2656881))

(assert (=> start!411024 (and (inv!62730 t!3602) e!2656878)))

(assert (=> start!411024 e!2656879))

(assert (= (and start!411024 res!1756829) b!4279717))

(assert (= (and start!411024 ((_ is Node!14341) t!3602)) b!4279715))

(assert (= b!4279718 b!4279719))

(assert (= (and start!411024 ((_ is Leaf!22167) t!3602)) b!4279718))

(assert (= (and start!411024 ((_ is Cons!47359) acc!259)) b!4279716))

(declare-fun m!4877445 () Bool)

(assert (=> b!4279715 m!4877445))

(declare-fun m!4877447 () Bool)

(assert (=> b!4279715 m!4877447))

(declare-fun m!4877449 () Bool)

(assert (=> b!4279717 m!4877449))

(declare-fun m!4877451 () Bool)

(assert (=> b!4279717 m!4877451))

(declare-fun m!4877453 () Bool)

(assert (=> b!4279717 m!4877453))

(declare-fun m!4877455 () Bool)

(assert (=> b!4279717 m!4877455))

(assert (=> b!4279717 m!4877453))

(declare-fun m!4877457 () Bool)

(assert (=> b!4279717 m!4877457))

(declare-fun m!4877459 () Bool)

(assert (=> b!4279717 m!4877459))

(declare-fun m!4877461 () Bool)

(assert (=> b!4279717 m!4877461))

(declare-fun m!4877463 () Bool)

(assert (=> b!4279717 m!4877463))

(declare-fun m!4877465 () Bool)

(assert (=> b!4279717 m!4877465))

(declare-fun m!4877467 () Bool)

(assert (=> b!4279717 m!4877467))

(assert (=> b!4279717 m!4877463))

(assert (=> b!4279717 m!4877449))

(declare-fun m!4877469 () Bool)

(assert (=> b!4279717 m!4877469))

(assert (=> b!4279717 m!4877459))

(declare-fun m!4877471 () Bool)

(assert (=> b!4279718 m!4877471))

(declare-fun m!4877473 () Bool)

(assert (=> start!411024 m!4877473))

(check-sat (not b!4279718) (not b!4279717) (not b!4279716) (not start!411024) (not b!4279715) (not b!4279719) tp_is_empty!22957)
(check-sat)
(get-model)

(declare-fun d!1264236 () Bool)

(declare-fun size!34674 (List!47483) Int)

(assert (=> d!1264236 (= (inv!62731 (xs!17647 t!3602)) (<= (size!34674 (innerList!14401 (xs!17647 t!3602))) 2147483647))))

(declare-fun bs!602667 () Bool)

(assert (= bs!602667 d!1264236))

(declare-fun m!4877475 () Bool)

(assert (=> bs!602667 m!4877475))

(assert (=> b!4279718 d!1264236))

(declare-fun d!1264238 () Bool)

(declare-fun c!729219 () Bool)

(assert (=> d!1264238 (= c!729219 ((_ is Node!14341) (left!35294 t!3602)))))

(declare-fun e!2656892 () Bool)

(assert (=> d!1264238 (= (inv!62730 (left!35294 t!3602)) e!2656892)))

(declare-fun b!4279738 () Bool)

(declare-fun inv!62732 (Conc!14341) Bool)

(assert (=> b!4279738 (= e!2656892 (inv!62732 (left!35294 t!3602)))))

(declare-fun b!4279739 () Bool)

(declare-fun e!2656893 () Bool)

(assert (=> b!4279739 (= e!2656892 e!2656893)))

(declare-fun res!1756832 () Bool)

(assert (=> b!4279739 (= res!1756832 (not ((_ is Leaf!22167) (left!35294 t!3602))))))

(assert (=> b!4279739 (=> res!1756832 e!2656893)))

(declare-fun b!4279740 () Bool)

(declare-fun inv!62733 (Conc!14341) Bool)

(assert (=> b!4279740 (= e!2656893 (inv!62733 (left!35294 t!3602)))))

(assert (= (and d!1264238 c!729219) b!4279738))

(assert (= (and d!1264238 (not c!729219)) b!4279739))

(assert (= (and b!4279739 (not res!1756832)) b!4279740))

(declare-fun m!4877481 () Bool)

(assert (=> b!4279738 m!4877481))

(declare-fun m!4877483 () Bool)

(assert (=> b!4279740 m!4877483))

(assert (=> b!4279715 d!1264238))

(declare-fun d!1264242 () Bool)

(declare-fun c!729220 () Bool)

(assert (=> d!1264242 (= c!729220 ((_ is Node!14341) (right!35624 t!3602)))))

(declare-fun e!2656894 () Bool)

(assert (=> d!1264242 (= (inv!62730 (right!35624 t!3602)) e!2656894)))

(declare-fun b!4279741 () Bool)

(assert (=> b!4279741 (= e!2656894 (inv!62732 (right!35624 t!3602)))))

(declare-fun b!4279742 () Bool)

(declare-fun e!2656895 () Bool)

(assert (=> b!4279742 (= e!2656894 e!2656895)))

(declare-fun res!1756833 () Bool)

(assert (=> b!4279742 (= res!1756833 (not ((_ is Leaf!22167) (right!35624 t!3602))))))

(assert (=> b!4279742 (=> res!1756833 e!2656895)))

(declare-fun b!4279743 () Bool)

(assert (=> b!4279743 (= e!2656895 (inv!62733 (right!35624 t!3602)))))

(assert (= (and d!1264242 c!729220) b!4279741))

(assert (= (and d!1264242 (not c!729220)) b!4279742))

(assert (= (and b!4279742 (not res!1756833)) b!4279743))

(declare-fun m!4877485 () Bool)

(assert (=> b!4279741 m!4877485))

(declare-fun m!4877487 () Bool)

(assert (=> b!4279743 m!4877487))

(assert (=> b!4279715 d!1264242))

(declare-fun d!1264244 () Bool)

(declare-fun c!729221 () Bool)

(assert (=> d!1264244 (= c!729221 ((_ is Node!14341) t!3602))))

(declare-fun e!2656896 () Bool)

(assert (=> d!1264244 (= (inv!62730 t!3602) e!2656896)))

(declare-fun b!4279744 () Bool)

(assert (=> b!4279744 (= e!2656896 (inv!62732 t!3602))))

(declare-fun b!4279745 () Bool)

(declare-fun e!2656897 () Bool)

(assert (=> b!4279745 (= e!2656896 e!2656897)))

(declare-fun res!1756834 () Bool)

(assert (=> b!4279745 (= res!1756834 (not ((_ is Leaf!22167) t!3602)))))

(assert (=> b!4279745 (=> res!1756834 e!2656897)))

(declare-fun b!4279746 () Bool)

(assert (=> b!4279746 (= e!2656897 (inv!62733 t!3602))))

(assert (= (and d!1264244 c!729221) b!4279744))

(assert (= (and d!1264244 (not c!729221)) b!4279745))

(assert (= (and b!4279745 (not res!1756834)) b!4279746))

(declare-fun m!4877489 () Bool)

(assert (=> b!4279744 m!4877489))

(declare-fun m!4877491 () Bool)

(assert (=> b!4279746 m!4877491))

(assert (=> start!411024 d!1264244))

(declare-fun d!1264246 () Bool)

(declare-fun c!729231 () Bool)

(assert (=> d!1264246 (= c!729231 ((_ is Empty!14341) t!3602))))

(declare-fun e!2656910 () List!47483)

(assert (=> d!1264246 (= (list!17279 t!3602) e!2656910)))

(declare-fun b!4279773 () Bool)

(declare-fun e!2656911 () List!47483)

(declare-fun list!17281 (IArray!28687) List!47483)

(assert (=> b!4279773 (= e!2656911 (list!17281 (xs!17647 t!3602)))))

(declare-fun b!4279772 () Bool)

(assert (=> b!4279772 (= e!2656910 e!2656911)))

(declare-fun c!729232 () Bool)

(assert (=> b!4279772 (= c!729232 ((_ is Leaf!22167) t!3602))))

(declare-fun b!4279771 () Bool)

(assert (=> b!4279771 (= e!2656910 Nil!47359)))

(declare-fun b!4279774 () Bool)

(assert (=> b!4279774 (= e!2656911 (++!12105 (list!17279 (left!35294 t!3602)) (list!17279 (right!35624 t!3602))))))

(assert (= (and d!1264246 c!729231) b!4279771))

(assert (= (and d!1264246 (not c!729231)) b!4279772))

(assert (= (and b!4279772 c!729232) b!4279773))

(assert (= (and b!4279772 (not c!729232)) b!4279774))

(declare-fun m!4877515 () Bool)

(assert (=> b!4279773 m!4877515))

(assert (=> b!4279774 m!4877455))

(assert (=> b!4279774 m!4877467))

(assert (=> b!4279774 m!4877455))

(assert (=> b!4279774 m!4877467))

(declare-fun m!4877517 () Bool)

(assert (=> b!4279774 m!4877517))

(assert (=> b!4279717 d!1264246))

(declare-fun d!1264252 () Bool)

(declare-fun c!729233 () Bool)

(assert (=> d!1264252 (= c!729233 ((_ is Empty!14341) (left!35294 t!3602)))))

(declare-fun e!2656912 () List!47483)

(assert (=> d!1264252 (= (list!17279 (left!35294 t!3602)) e!2656912)))

(declare-fun b!4279777 () Bool)

(declare-fun e!2656913 () List!47483)

(assert (=> b!4279777 (= e!2656913 (list!17281 (xs!17647 (left!35294 t!3602))))))

(declare-fun b!4279776 () Bool)

(assert (=> b!4279776 (= e!2656912 e!2656913)))

(declare-fun c!729234 () Bool)

(assert (=> b!4279776 (= c!729234 ((_ is Leaf!22167) (left!35294 t!3602)))))

(declare-fun b!4279775 () Bool)

(assert (=> b!4279775 (= e!2656912 Nil!47359)))

(declare-fun b!4279778 () Bool)

(assert (=> b!4279778 (= e!2656913 (++!12105 (list!17279 (left!35294 (left!35294 t!3602))) (list!17279 (right!35624 (left!35294 t!3602)))))))

(assert (= (and d!1264252 c!729233) b!4279775))

(assert (= (and d!1264252 (not c!729233)) b!4279776))

(assert (= (and b!4279776 c!729234) b!4279777))

(assert (= (and b!4279776 (not c!729234)) b!4279778))

(declare-fun m!4877519 () Bool)

(assert (=> b!4279777 m!4877519))

(declare-fun m!4877521 () Bool)

(assert (=> b!4279778 m!4877521))

(declare-fun m!4877523 () Bool)

(assert (=> b!4279778 m!4877523))

(assert (=> b!4279778 m!4877521))

(assert (=> b!4279778 m!4877523))

(declare-fun m!4877525 () Bool)

(assert (=> b!4279778 m!4877525))

(assert (=> b!4279717 d!1264252))

(declare-fun d!1264254 () Bool)

(declare-fun e!2656918 () Bool)

(assert (=> d!1264254 e!2656918))

(declare-fun res!1756846 () Bool)

(assert (=> d!1264254 (=> (not res!1756846) (not e!2656918))))

(declare-fun lt!1514593 () List!47483)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7493 (List!47483) (InoxSet T!80004))

(assert (=> d!1264254 (= res!1756846 (= (content!7493 lt!1514593) ((_ map or) (content!7493 lt!1514587) (content!7493 lt!1514586))))))

(declare-fun e!2656919 () List!47483)

(assert (=> d!1264254 (= lt!1514593 e!2656919)))

(declare-fun c!729237 () Bool)

(assert (=> d!1264254 (= c!729237 ((_ is Nil!47359) lt!1514587))))

(assert (=> d!1264254 (= (++!12105 lt!1514587 lt!1514586) lt!1514593)))

(declare-fun b!4279788 () Bool)

(assert (=> b!4279788 (= e!2656919 (Cons!47359 (h!52779 lt!1514587) (++!12105 (t!354064 lt!1514587) lt!1514586)))))

(declare-fun b!4279790 () Bool)

(assert (=> b!4279790 (= e!2656918 (or (not (= lt!1514586 Nil!47359)) (= lt!1514593 lt!1514587)))))

(declare-fun b!4279789 () Bool)

(declare-fun res!1756845 () Bool)

(assert (=> b!4279789 (=> (not res!1756845) (not e!2656918))))

(assert (=> b!4279789 (= res!1756845 (= (size!34674 lt!1514593) (+ (size!34674 lt!1514587) (size!34674 lt!1514586))))))

(declare-fun b!4279787 () Bool)

(assert (=> b!4279787 (= e!2656919 lt!1514586)))

(assert (= (and d!1264254 c!729237) b!4279787))

(assert (= (and d!1264254 (not c!729237)) b!4279788))

(assert (= (and d!1264254 res!1756846) b!4279789))

(assert (= (and b!4279789 res!1756845) b!4279790))

(declare-fun m!4877527 () Bool)

(assert (=> d!1264254 m!4877527))

(declare-fun m!4877529 () Bool)

(assert (=> d!1264254 m!4877529))

(declare-fun m!4877531 () Bool)

(assert (=> d!1264254 m!4877531))

(declare-fun m!4877533 () Bool)

(assert (=> b!4279788 m!4877533))

(declare-fun m!4877535 () Bool)

(assert (=> b!4279789 m!4877535))

(declare-fun m!4877537 () Bool)

(assert (=> b!4279789 m!4877537))

(declare-fun m!4877539 () Bool)

(assert (=> b!4279789 m!4877539))

(assert (=> b!4279717 d!1264254))

(declare-fun d!1264256 () Bool)

(declare-fun e!2656920 () Bool)

(assert (=> d!1264256 e!2656920))

(declare-fun res!1756848 () Bool)

(assert (=> d!1264256 (=> (not res!1756848) (not e!2656920))))

(declare-fun lt!1514594 () List!47483)

(assert (=> d!1264256 (= res!1756848 (= (content!7493 lt!1514594) ((_ map or) (content!7493 lt!1514586) (content!7493 acc!259))))))

(declare-fun e!2656921 () List!47483)

(assert (=> d!1264256 (= lt!1514594 e!2656921)))

(declare-fun c!729238 () Bool)

(assert (=> d!1264256 (= c!729238 ((_ is Nil!47359) lt!1514586))))

(assert (=> d!1264256 (= (++!12105 lt!1514586 acc!259) lt!1514594)))

(declare-fun b!4279792 () Bool)

(assert (=> b!4279792 (= e!2656921 (Cons!47359 (h!52779 lt!1514586) (++!12105 (t!354064 lt!1514586) acc!259)))))

(declare-fun b!4279794 () Bool)

(assert (=> b!4279794 (= e!2656920 (or (not (= acc!259 Nil!47359)) (= lt!1514594 lt!1514586)))))

(declare-fun b!4279793 () Bool)

(declare-fun res!1756847 () Bool)

(assert (=> b!4279793 (=> (not res!1756847) (not e!2656920))))

(assert (=> b!4279793 (= res!1756847 (= (size!34674 lt!1514594) (+ (size!34674 lt!1514586) (size!34674 acc!259))))))

(declare-fun b!4279791 () Bool)

(assert (=> b!4279791 (= e!2656921 acc!259)))

(assert (= (and d!1264256 c!729238) b!4279791))

(assert (= (and d!1264256 (not c!729238)) b!4279792))

(assert (= (and d!1264256 res!1756848) b!4279793))

(assert (= (and b!4279793 res!1756847) b!4279794))

(declare-fun m!4877541 () Bool)

(assert (=> d!1264256 m!4877541))

(assert (=> d!1264256 m!4877531))

(declare-fun m!4877543 () Bool)

(assert (=> d!1264256 m!4877543))

(declare-fun m!4877545 () Bool)

(assert (=> b!4279792 m!4877545))

(declare-fun m!4877547 () Bool)

(assert (=> b!4279793 m!4877547))

(assert (=> b!4279793 m!4877539))

(declare-fun m!4877549 () Bool)

(assert (=> b!4279793 m!4877549))

(assert (=> b!4279717 d!1264256))

(declare-fun bm!294289 () Bool)

(declare-fun c!729263 () Bool)

(declare-fun c!729262 () Bool)

(assert (=> bm!294289 (= c!729263 c!729262)))

(declare-fun call!294294 () List!47483)

(declare-fun e!2656950 () List!47483)

(assert (=> bm!294289 (= call!294294 (++!12105 e!2656950 (efficientList!606 (right!35624 t!3602) acc!259)))))

(declare-fun d!1264258 () Bool)

(declare-fun lt!1514633 () List!47483)

(assert (=> d!1264258 (= lt!1514633 (++!12105 (list!17279 (left!35294 t!3602)) (efficientList!606 (right!35624 t!3602) acc!259)))))

(declare-fun e!2656949 () List!47483)

(assert (=> d!1264258 (= lt!1514633 e!2656949)))

(declare-fun c!729261 () Bool)

(assert (=> d!1264258 (= c!729261 ((_ is Empty!14341) (left!35294 t!3602)))))

(assert (=> d!1264258 (= (efficientList!606 (left!35294 t!3602) (efficientList!606 (right!35624 t!3602) acc!259)) lt!1514633)))

(declare-fun b!4279847 () Bool)

(assert (=> b!4279847 (= e!2656949 (efficientList!606 (right!35624 t!3602) acc!259))))

(declare-fun b!4279848 () Bool)

(declare-fun efficientList!608 (IArray!28687) List!47483)

(assert (=> b!4279848 (= e!2656950 (efficientList!608 (xs!17647 (left!35294 t!3602))))))

(declare-fun b!4279849 () Bool)

(declare-fun e!2656948 () List!47483)

(assert (=> b!4279849 (= e!2656949 e!2656948)))

(assert (=> b!4279849 (= c!729262 ((_ is Leaf!22167) (left!35294 t!3602)))))

(declare-fun b!4279850 () Bool)

(declare-fun lt!1514636 () Unit!66317)

(declare-fun lt!1514635 () Unit!66317)

(assert (=> b!4279850 (= lt!1514636 lt!1514635)))

(declare-fun lt!1514632 () List!47483)

(declare-fun lt!1514634 () List!47483)

(assert (=> b!4279850 (= (++!12105 (++!12105 lt!1514634 lt!1514632) (efficientList!606 (right!35624 t!3602) acc!259)) (++!12105 lt!1514634 call!294294))))

(assert (=> b!4279850 (= lt!1514635 (lemmaConcatAssociativity!2736 lt!1514634 lt!1514632 (efficientList!606 (right!35624 t!3602) acc!259)))))

(assert (=> b!4279850 (= lt!1514632 (list!17279 (right!35624 (left!35294 t!3602))))))

(assert (=> b!4279850 (= lt!1514634 (list!17279 (left!35294 (left!35294 t!3602))))))

(assert (=> b!4279850 (= e!2656948 (efficientList!606 (left!35294 (left!35294 t!3602)) (efficientList!606 (right!35624 (left!35294 t!3602)) (efficientList!606 (right!35624 t!3602) acc!259))))))

(declare-fun b!4279851 () Bool)

(assert (=> b!4279851 (= e!2656950 lt!1514632)))

(declare-fun b!4279852 () Bool)

(assert (=> b!4279852 (= e!2656948 call!294294)))

(assert (= (and d!1264258 c!729261) b!4279847))

(assert (= (and d!1264258 (not c!729261)) b!4279849))

(assert (= (and b!4279849 c!729262) b!4279852))

(assert (= (and b!4279849 (not c!729262)) b!4279850))

(assert (= (or b!4279852 b!4279850) bm!294289))

(assert (= (and bm!294289 c!729263) b!4279848))

(assert (= (and bm!294289 (not c!729263)) b!4279851))

(assert (=> bm!294289 m!4877453))

(declare-fun m!4877633 () Bool)

(assert (=> bm!294289 m!4877633))

(assert (=> d!1264258 m!4877455))

(assert (=> d!1264258 m!4877455))

(assert (=> d!1264258 m!4877453))

(declare-fun m!4877637 () Bool)

(assert (=> d!1264258 m!4877637))

(declare-fun m!4877639 () Bool)

(assert (=> b!4279848 m!4877639))

(declare-fun m!4877643 () Bool)

(assert (=> b!4279850 m!4877643))

(declare-fun m!4877645 () Bool)

(assert (=> b!4279850 m!4877645))

(assert (=> b!4279850 m!4877453))

(declare-fun m!4877647 () Bool)

(assert (=> b!4279850 m!4877647))

(assert (=> b!4279850 m!4877523))

(declare-fun m!4877649 () Bool)

(assert (=> b!4279850 m!4877649))

(declare-fun m!4877651 () Bool)

(assert (=> b!4279850 m!4877651))

(assert (=> b!4279850 m!4877521))

(assert (=> b!4279850 m!4877453))

(assert (=> b!4279850 m!4877643))

(assert (=> b!4279850 m!4877649))

(assert (=> b!4279850 m!4877453))

(declare-fun m!4877653 () Bool)

(assert (=> b!4279850 m!4877653))

(assert (=> b!4279717 d!1264258))

(declare-fun d!1264276 () Bool)

(assert (=> d!1264276 (= (++!12105 (++!12105 lt!1514587 lt!1514586) acc!259) (++!12105 lt!1514587 (++!12105 lt!1514586 acc!259)))))

(declare-fun lt!1514639 () Unit!66317)

(declare-fun choose!26092 (List!47483 List!47483 List!47483) Unit!66317)

(assert (=> d!1264276 (= lt!1514639 (choose!26092 lt!1514587 lt!1514586 acc!259))))

(assert (=> d!1264276 (= (lemmaConcatAssociativity!2736 lt!1514587 lt!1514586 acc!259) lt!1514639)))

(declare-fun bs!602669 () Bool)

(assert (= bs!602669 d!1264276))

(declare-fun m!4877655 () Bool)

(assert (=> bs!602669 m!4877655))

(assert (=> bs!602669 m!4877459))

(assert (=> bs!602669 m!4877449))

(assert (=> bs!602669 m!4877449))

(assert (=> bs!602669 m!4877451))

(assert (=> bs!602669 m!4877459))

(assert (=> bs!602669 m!4877461))

(assert (=> b!4279717 d!1264276))

(declare-fun d!1264278 () Bool)

(declare-fun e!2656957 () Bool)

(assert (=> d!1264278 e!2656957))

(declare-fun res!1756860 () Bool)

(assert (=> d!1264278 (=> (not res!1756860) (not e!2656957))))

(declare-fun lt!1514640 () List!47483)

(assert (=> d!1264278 (= res!1756860 (= (content!7493 lt!1514640) ((_ map or) (content!7493 (++!12105 lt!1514587 lt!1514586)) (content!7493 acc!259))))))

(declare-fun e!2656958 () List!47483)

(assert (=> d!1264278 (= lt!1514640 e!2656958)))

(declare-fun c!729268 () Bool)

(assert (=> d!1264278 (= c!729268 ((_ is Nil!47359) (++!12105 lt!1514587 lt!1514586)))))

(assert (=> d!1264278 (= (++!12105 (++!12105 lt!1514587 lt!1514586) acc!259) lt!1514640)))

(declare-fun b!4279864 () Bool)

(assert (=> b!4279864 (= e!2656958 (Cons!47359 (h!52779 (++!12105 lt!1514587 lt!1514586)) (++!12105 (t!354064 (++!12105 lt!1514587 lt!1514586)) acc!259)))))

(declare-fun b!4279866 () Bool)

(assert (=> b!4279866 (= e!2656957 (or (not (= acc!259 Nil!47359)) (= lt!1514640 (++!12105 lt!1514587 lt!1514586))))))

(declare-fun b!4279865 () Bool)

(declare-fun res!1756859 () Bool)

(assert (=> b!4279865 (=> (not res!1756859) (not e!2656957))))

(assert (=> b!4279865 (= res!1756859 (= (size!34674 lt!1514640) (+ (size!34674 (++!12105 lt!1514587 lt!1514586)) (size!34674 acc!259))))))

(declare-fun b!4279863 () Bool)

(assert (=> b!4279863 (= e!2656958 acc!259)))

(assert (= (and d!1264278 c!729268) b!4279863))

(assert (= (and d!1264278 (not c!729268)) b!4279864))

(assert (= (and d!1264278 res!1756860) b!4279865))

(assert (= (and b!4279865 res!1756859) b!4279866))

(declare-fun m!4877657 () Bool)

(assert (=> d!1264278 m!4877657))

(assert (=> d!1264278 m!4877449))

(declare-fun m!4877659 () Bool)

(assert (=> d!1264278 m!4877659))

(assert (=> d!1264278 m!4877543))

(declare-fun m!4877661 () Bool)

(assert (=> b!4279864 m!4877661))

(declare-fun m!4877663 () Bool)

(assert (=> b!4279865 m!4877663))

(assert (=> b!4279865 m!4877449))

(declare-fun m!4877665 () Bool)

(assert (=> b!4279865 m!4877665))

(assert (=> b!4279865 m!4877549))

(assert (=> b!4279717 d!1264278))

(declare-fun bm!294290 () Bool)

(declare-fun c!729271 () Bool)

(declare-fun c!729270 () Bool)

(assert (=> bm!294290 (= c!729271 c!729270)))

(declare-fun call!294295 () List!47483)

(declare-fun e!2656961 () List!47483)

(assert (=> bm!294290 (= call!294295 (++!12105 e!2656961 acc!259))))

(declare-fun d!1264280 () Bool)

(declare-fun lt!1514642 () List!47483)

(assert (=> d!1264280 (= lt!1514642 (++!12105 (list!17279 (right!35624 t!3602)) acc!259))))

(declare-fun e!2656960 () List!47483)

(assert (=> d!1264280 (= lt!1514642 e!2656960)))

(declare-fun c!729269 () Bool)

(assert (=> d!1264280 (= c!729269 ((_ is Empty!14341) (right!35624 t!3602)))))

(assert (=> d!1264280 (= (efficientList!606 (right!35624 t!3602) acc!259) lt!1514642)))

(declare-fun b!4279867 () Bool)

(assert (=> b!4279867 (= e!2656960 acc!259)))

(declare-fun b!4279868 () Bool)

(assert (=> b!4279868 (= e!2656961 (efficientList!608 (xs!17647 (right!35624 t!3602))))))

(declare-fun b!4279870 () Bool)

(declare-fun e!2656959 () List!47483)

(assert (=> b!4279870 (= e!2656960 e!2656959)))

(assert (=> b!4279870 (= c!729270 ((_ is Leaf!22167) (right!35624 t!3602)))))

(declare-fun b!4279872 () Bool)

(declare-fun lt!1514645 () Unit!66317)

(declare-fun lt!1514644 () Unit!66317)

(assert (=> b!4279872 (= lt!1514645 lt!1514644)))

(declare-fun lt!1514643 () List!47483)

(declare-fun lt!1514641 () List!47483)

(assert (=> b!4279872 (= (++!12105 (++!12105 lt!1514643 lt!1514641) acc!259) (++!12105 lt!1514643 call!294295))))

(assert (=> b!4279872 (= lt!1514644 (lemmaConcatAssociativity!2736 lt!1514643 lt!1514641 acc!259))))

(assert (=> b!4279872 (= lt!1514641 (list!17279 (right!35624 (right!35624 t!3602))))))

(assert (=> b!4279872 (= lt!1514643 (list!17279 (left!35294 (right!35624 t!3602))))))

(assert (=> b!4279872 (= e!2656959 (efficientList!606 (left!35294 (right!35624 t!3602)) (efficientList!606 (right!35624 (right!35624 t!3602)) acc!259)))))

(declare-fun b!4279874 () Bool)

(assert (=> b!4279874 (= e!2656961 lt!1514641)))

(declare-fun b!4279875 () Bool)

(assert (=> b!4279875 (= e!2656959 call!294295)))

(assert (= (and d!1264280 c!729269) b!4279867))

(assert (= (and d!1264280 (not c!729269)) b!4279870))

(assert (= (and b!4279870 c!729270) b!4279875))

(assert (= (and b!4279870 (not c!729270)) b!4279872))

(assert (= (or b!4279875 b!4279872) bm!294290))

(assert (= (and bm!294290 c!729271) b!4279868))

(assert (= (and bm!294290 (not c!729271)) b!4279874))

(declare-fun m!4877675 () Bool)

(assert (=> bm!294290 m!4877675))

(assert (=> d!1264280 m!4877467))

(assert (=> d!1264280 m!4877467))

(declare-fun m!4877677 () Bool)

(assert (=> d!1264280 m!4877677))

(declare-fun m!4877679 () Bool)

(assert (=> b!4279868 m!4877679))

(declare-fun m!4877681 () Bool)

(assert (=> b!4279872 m!4877681))

(declare-fun m!4877683 () Bool)

(assert (=> b!4279872 m!4877683))

(declare-fun m!4877685 () Bool)

(assert (=> b!4279872 m!4877685))

(declare-fun m!4877687 () Bool)

(assert (=> b!4279872 m!4877687))

(declare-fun m!4877689 () Bool)

(assert (=> b!4279872 m!4877689))

(declare-fun m!4877691 () Bool)

(assert (=> b!4279872 m!4877691))

(declare-fun m!4877693 () Bool)

(assert (=> b!4279872 m!4877693))

(assert (=> b!4279872 m!4877681))

(assert (=> b!4279872 m!4877689))

(declare-fun m!4877695 () Bool)

(assert (=> b!4279872 m!4877695))

(assert (=> b!4279717 d!1264280))

(declare-fun d!1264286 () Bool)

(declare-fun e!2656966 () Bool)

(assert (=> d!1264286 e!2656966))

(declare-fun res!1756864 () Bool)

(assert (=> d!1264286 (=> (not res!1756864) (not e!2656966))))

(declare-fun lt!1514646 () List!47483)

(assert (=> d!1264286 (= res!1756864 (= (content!7493 lt!1514646) ((_ map or) (content!7493 lt!1514587) (content!7493 (++!12105 lt!1514586 acc!259)))))))

(declare-fun e!2656967 () List!47483)

(assert (=> d!1264286 (= lt!1514646 e!2656967)))

(declare-fun c!729274 () Bool)

(assert (=> d!1264286 (= c!729274 ((_ is Nil!47359) lt!1514587))))

(assert (=> d!1264286 (= (++!12105 lt!1514587 (++!12105 lt!1514586 acc!259)) lt!1514646)))

(declare-fun b!4279880 () Bool)

(assert (=> b!4279880 (= e!2656967 (Cons!47359 (h!52779 lt!1514587) (++!12105 (t!354064 lt!1514587) (++!12105 lt!1514586 acc!259))))))

(declare-fun b!4279882 () Bool)

(assert (=> b!4279882 (= e!2656966 (or (not (= (++!12105 lt!1514586 acc!259) Nil!47359)) (= lt!1514646 lt!1514587)))))

(declare-fun b!4279881 () Bool)

(declare-fun res!1756863 () Bool)

(assert (=> b!4279881 (=> (not res!1756863) (not e!2656966))))

(assert (=> b!4279881 (= res!1756863 (= (size!34674 lt!1514646) (+ (size!34674 lt!1514587) (size!34674 (++!12105 lt!1514586 acc!259)))))))

(declare-fun b!4279879 () Bool)

(assert (=> b!4279879 (= e!2656967 (++!12105 lt!1514586 acc!259))))

(assert (= (and d!1264286 c!729274) b!4279879))

(assert (= (and d!1264286 (not c!729274)) b!4279880))

(assert (= (and d!1264286 res!1756864) b!4279881))

(assert (= (and b!4279881 res!1756863) b!4279882))

(declare-fun m!4877699 () Bool)

(assert (=> d!1264286 m!4877699))

(assert (=> d!1264286 m!4877529))

(assert (=> d!1264286 m!4877459))

(declare-fun m!4877701 () Bool)

(assert (=> d!1264286 m!4877701))

(assert (=> b!4279880 m!4877459))

(declare-fun m!4877703 () Bool)

(assert (=> b!4279880 m!4877703))

(declare-fun m!4877705 () Bool)

(assert (=> b!4279881 m!4877705))

(assert (=> b!4279881 m!4877537))

(assert (=> b!4279881 m!4877459))

(declare-fun m!4877707 () Bool)

(assert (=> b!4279881 m!4877707))

(assert (=> b!4279717 d!1264286))

(declare-fun d!1264290 () Bool)

(declare-fun e!2656970 () Bool)

(assert (=> d!1264290 e!2656970))

(declare-fun res!1756867 () Bool)

(assert (=> d!1264290 (=> (not res!1756867) (not e!2656970))))

(declare-fun lt!1514647 () List!47483)

(assert (=> d!1264290 (= res!1756867 (= (content!7493 lt!1514647) ((_ map or) (content!7493 (list!17279 t!3602)) (content!7493 acc!259))))))

(declare-fun e!2656971 () List!47483)

(assert (=> d!1264290 (= lt!1514647 e!2656971)))

(declare-fun c!729276 () Bool)

(assert (=> d!1264290 (= c!729276 ((_ is Nil!47359) (list!17279 t!3602)))))

(assert (=> d!1264290 (= (++!12105 (list!17279 t!3602) acc!259) lt!1514647)))

(declare-fun b!4279887 () Bool)

(assert (=> b!4279887 (= e!2656971 (Cons!47359 (h!52779 (list!17279 t!3602)) (++!12105 (t!354064 (list!17279 t!3602)) acc!259)))))

(declare-fun b!4279889 () Bool)

(assert (=> b!4279889 (= e!2656970 (or (not (= acc!259 Nil!47359)) (= lt!1514647 (list!17279 t!3602))))))

(declare-fun b!4279888 () Bool)

(declare-fun res!1756866 () Bool)

(assert (=> b!4279888 (=> (not res!1756866) (not e!2656970))))

(assert (=> b!4279888 (= res!1756866 (= (size!34674 lt!1514647) (+ (size!34674 (list!17279 t!3602)) (size!34674 acc!259))))))

(declare-fun b!4279886 () Bool)

(assert (=> b!4279886 (= e!2656971 acc!259)))

(assert (= (and d!1264290 c!729276) b!4279886))

(assert (= (and d!1264290 (not c!729276)) b!4279887))

(assert (= (and d!1264290 res!1756867) b!4279888))

(assert (= (and b!4279888 res!1756866) b!4279889))

(declare-fun m!4877713 () Bool)

(assert (=> d!1264290 m!4877713))

(assert (=> d!1264290 m!4877463))

(declare-fun m!4877715 () Bool)

(assert (=> d!1264290 m!4877715))

(assert (=> d!1264290 m!4877543))

(declare-fun m!4877717 () Bool)

(assert (=> b!4279887 m!4877717))

(declare-fun m!4877719 () Bool)

(assert (=> b!4279888 m!4877719))

(assert (=> b!4279888 m!4877463))

(declare-fun m!4877721 () Bool)

(assert (=> b!4279888 m!4877721))

(assert (=> b!4279888 m!4877549))

(assert (=> b!4279717 d!1264290))

(declare-fun d!1264292 () Bool)

(declare-fun c!729277 () Bool)

(assert (=> d!1264292 (= c!729277 ((_ is Empty!14341) (right!35624 t!3602)))))

(declare-fun e!2656976 () List!47483)

(assert (=> d!1264292 (= (list!17279 (right!35624 t!3602)) e!2656976)))

(declare-fun b!4279900 () Bool)

(declare-fun e!2656977 () List!47483)

(assert (=> b!4279900 (= e!2656977 (list!17281 (xs!17647 (right!35624 t!3602))))))

(declare-fun b!4279899 () Bool)

(assert (=> b!4279899 (= e!2656976 e!2656977)))

(declare-fun c!729278 () Bool)

(assert (=> b!4279899 (= c!729278 ((_ is Leaf!22167) (right!35624 t!3602)))))

(declare-fun b!4279898 () Bool)

(assert (=> b!4279898 (= e!2656976 Nil!47359)))

(declare-fun b!4279901 () Bool)

(assert (=> b!4279901 (= e!2656977 (++!12105 (list!17279 (left!35294 (right!35624 t!3602))) (list!17279 (right!35624 (right!35624 t!3602)))))))

(assert (= (and d!1264292 c!729277) b!4279898))

(assert (= (and d!1264292 (not c!729277)) b!4279899))

(assert (= (and b!4279899 c!729278) b!4279900))

(assert (= (and b!4279899 (not c!729278)) b!4279901))

(declare-fun m!4877723 () Bool)

(assert (=> b!4279900 m!4877723))

(assert (=> b!4279901 m!4877693))

(assert (=> b!4279901 m!4877687))

(assert (=> b!4279901 m!4877693))

(assert (=> b!4279901 m!4877687))

(declare-fun m!4877725 () Bool)

(assert (=> b!4279901 m!4877725))

(assert (=> b!4279717 d!1264292))

(declare-fun b!4279906 () Bool)

(declare-fun e!2656980 () Bool)

(declare-fun tp!1309187 () Bool)

(assert (=> b!4279906 (= e!2656980 (and tp_is_empty!22957 tp!1309187))))

(assert (=> b!4279719 (= tp!1309178 e!2656980)))

(assert (= (and b!4279719 ((_ is Cons!47359) (innerList!14401 (xs!17647 t!3602)))) b!4279906))

(declare-fun tp!1309204 () Bool)

(declare-fun b!4279927 () Bool)

(declare-fun e!2656993 () Bool)

(declare-fun tp!1309205 () Bool)

(assert (=> b!4279927 (= e!2656993 (and (inv!62730 (left!35294 (left!35294 t!3602))) tp!1309205 (inv!62730 (right!35624 (left!35294 t!3602))) tp!1309204))))

(declare-fun b!4279929 () Bool)

(declare-fun e!2656994 () Bool)

(declare-fun tp!1309206 () Bool)

(assert (=> b!4279929 (= e!2656994 tp!1309206)))

(declare-fun b!4279928 () Bool)

(assert (=> b!4279928 (= e!2656993 (and (inv!62731 (xs!17647 (left!35294 t!3602))) e!2656994))))

(assert (=> b!4279715 (= tp!1309175 (and (inv!62730 (left!35294 t!3602)) e!2656993))))

(assert (= (and b!4279715 ((_ is Node!14341) (left!35294 t!3602))) b!4279927))

(assert (= b!4279928 b!4279929))

(assert (= (and b!4279715 ((_ is Leaf!22167) (left!35294 t!3602))) b!4279928))

(declare-fun m!4877739 () Bool)

(assert (=> b!4279927 m!4877739))

(declare-fun m!4877741 () Bool)

(assert (=> b!4279927 m!4877741))

(declare-fun m!4877743 () Bool)

(assert (=> b!4279928 m!4877743))

(assert (=> b!4279715 m!4877445))

(declare-fun b!4279930 () Bool)

(declare-fun tp!1309208 () Bool)

(declare-fun tp!1309207 () Bool)

(declare-fun e!2656995 () Bool)

(assert (=> b!4279930 (= e!2656995 (and (inv!62730 (left!35294 (right!35624 t!3602))) tp!1309208 (inv!62730 (right!35624 (right!35624 t!3602))) tp!1309207))))

(declare-fun b!4279932 () Bool)

(declare-fun e!2656996 () Bool)

(declare-fun tp!1309209 () Bool)

(assert (=> b!4279932 (= e!2656996 tp!1309209)))

(declare-fun b!4279931 () Bool)

(assert (=> b!4279931 (= e!2656995 (and (inv!62731 (xs!17647 (right!35624 t!3602))) e!2656996))))

(assert (=> b!4279715 (= tp!1309177 (and (inv!62730 (right!35624 t!3602)) e!2656995))))

(assert (= (and b!4279715 ((_ is Node!14341) (right!35624 t!3602))) b!4279930))

(assert (= b!4279931 b!4279932))

(assert (= (and b!4279715 ((_ is Leaf!22167) (right!35624 t!3602))) b!4279931))

(declare-fun m!4877745 () Bool)

(assert (=> b!4279930 m!4877745))

(declare-fun m!4877747 () Bool)

(assert (=> b!4279930 m!4877747))

(declare-fun m!4877749 () Bool)

(assert (=> b!4279931 m!4877749))

(assert (=> b!4279715 m!4877447))

(declare-fun b!4279933 () Bool)

(declare-fun e!2656997 () Bool)

(declare-fun tp!1309210 () Bool)

(assert (=> b!4279933 (= e!2656997 (and tp_is_empty!22957 tp!1309210))))

(assert (=> b!4279716 (= tp!1309176 e!2656997)))

(assert (= (and b!4279716 ((_ is Cons!47359) (t!354064 acc!259))) b!4279933))

(check-sat (not b!4279887) (not b!4279929) (not b!4279927) (not d!1264258) (not b!4279788) (not b!4279715) (not b!4279774) tp_is_empty!22957 (not bm!294290) (not d!1264236) (not d!1264280) (not b!4279793) (not b!4279738) (not b!4279864) (not b!4279792) (not b!4279850) (not bm!294289) (not b!4279872) (not b!4279865) (not b!4279931) (not b!4279789) (not b!4279933) (not b!4279930) (not b!4279906) (not b!4279900) (not d!1264276) (not b!4279848) (not b!4279743) (not d!1264290) (not b!4279777) (not b!4279744) (not b!4279746) (not b!4279932) (not d!1264256) (not d!1264254) (not d!1264278) (not d!1264286) (not b!4279881) (not b!4279928) (not b!4279773) (not b!4279888) (not b!4279868) (not b!4279880) (not b!4279901) (not b!4279778) (not b!4279741) (not b!4279740))
(check-sat)
