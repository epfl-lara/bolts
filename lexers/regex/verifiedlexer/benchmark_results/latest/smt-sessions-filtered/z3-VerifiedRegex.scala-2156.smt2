; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107584 () Bool)

(assert start!107584)

(declare-fun b!1208321 () Bool)

(declare-fun e!775044 () Bool)

(declare-fun e!775045 () Bool)

(assert (=> b!1208321 (= e!775044 e!775045)))

(declare-fun res!543445 () Bool)

(assert (=> b!1208321 (=> res!543445 e!775045)))

(declare-fun lt!412975 () Int)

(declare-fun lt!412973 () Int)

(declare-fun from!777 () Int)

(assert (=> b!1208321 (= res!543445 (or (not (= lt!412973 lt!412975)) (= from!777 lt!412973)))))

(declare-datatypes ((T!22398 0))(
  ( (T!22399 (val!3976 Int)) )
))
(declare-datatypes ((List!12169 0))(
  ( (Nil!12138) (Cons!12138 (h!17539 T!22398) (t!112578 List!12169)) )
))
(declare-fun lt!412974 () List!12169)

(declare-fun size!9678 (List!12169) Int)

(assert (=> b!1208321 (= lt!412975 (size!9678 lt!412974))))

(declare-datatypes ((Object!2196 0) (List!12171 0) (IArray!7993 0) (BalanceConc!7894 0) (Conc!3994 0))(
  ( (BalanceConc!7893 (value!68134 BalanceConc!7894)) (List!12170 (value!68135 List!12171)) (Character!30 (value!68136 (_ BitVec 16))) (Open!30 (value!68137 Int)) )
  ( (Nil!12139) (Cons!12139 (h!17540 Object!2196) (t!112579 List!12171)) )
  ( (IArray!7994 (innerList!4054 List!12171)) )
  ( (BalanceConc!7895 (c!202326 Conc!3994)) )
  ( (Node!3994 (left!10574 Conc!3994) (right!10904 Conc!3994) (csize!8218 Int) (cheight!4205 Int)) (Leaf!6151 (xs!6705 IArray!7993) (csize!8219 Int)) (Empty!3994) )
))
(declare-datatypes ((Vector!64 0))(
  ( (Vector!65 (underlying!2776 Object!2196) (overflowing!89 List!12169)) )
))
(declare-fun other!28 () Vector!64)

(declare-fun list!4512 (Vector!64) List!12169)

(assert (=> b!1208321 (= lt!412974 (list!4512 other!28))))

(declare-fun size!9679 (Vector!64) Int)

(assert (=> b!1208321 (= lt!412975 (size!9679 other!28))))

(declare-fun res!543446 () Bool)

(declare-fun e!775043 () Bool)

(assert (=> start!107584 (=> (not res!543446) (not e!775043))))

(assert (=> start!107584 (= res!543446 (<= 0 from!777))))

(assert (=> start!107584 e!775043))

(assert (=> start!107584 true))

(declare-fun e!775046 () Bool)

(assert (=> start!107584 e!775046))

(declare-fun e!775047 () Bool)

(assert (=> start!107584 e!775047))

(declare-fun b!1208322 () Bool)

(assert (=> b!1208322 (= e!775043 (not e!775044))))

(declare-fun res!543447 () Bool)

(assert (=> b!1208322 (=> res!543447 e!775044)))

(assert (=> b!1208322 (= res!543447 (> from!777 lt!412973))))

(declare-fun lt!412972 () List!12169)

(assert (=> b!1208322 (= lt!412973 (size!9678 lt!412972))))

(declare-fun thiss!9565 () Vector!64)

(assert (=> b!1208322 (= lt!412972 (list!4512 thiss!9565))))

(assert (=> b!1208322 (= lt!412973 (size!9679 thiss!9565))))

(declare-fun b!1208323 () Bool)

(declare-fun tp!342226 () Bool)

(declare-fun tp!342228 () Bool)

(assert (=> b!1208323 (= e!775047 (and tp!342226 tp!342228))))

(declare-fun b!1208324 () Bool)

(declare-fun tp!342229 () Bool)

(declare-fun tp!342227 () Bool)

(assert (=> b!1208324 (= e!775046 (and tp!342229 tp!342227))))

(declare-fun b!1208325 () Bool)

(assert (=> b!1208325 (= e!775045 true)))

(declare-fun lt!412977 () List!12169)

(declare-fun tail!1746 (List!12169) List!12169)

(declare-fun drop!626 (List!12169 Int) List!12169)

(assert (=> b!1208325 (= (tail!1746 lt!412977) (drop!626 lt!412972 (+ 1 from!777)))))

(declare-datatypes ((Unit!18528 0))(
  ( (Unit!18529) )
))
(declare-fun lt!412976 () Unit!18528)

(declare-fun lemmaDropTail!377 (List!12169 Int) Unit!18528)

(assert (=> b!1208325 (= lt!412976 (lemmaDropTail!377 lt!412972 from!777))))

(declare-fun head!2124 (List!12169) T!22398)

(declare-fun apply!2609 (List!12169 Int) T!22398)

(assert (=> b!1208325 (= (head!2124 (drop!626 lt!412974 from!777)) (apply!2609 lt!412974 from!777))))

(declare-fun lt!412971 () Unit!18528)

(declare-fun lemmaDropApply!393 (List!12169 Int) Unit!18528)

(assert (=> b!1208325 (= lt!412971 (lemmaDropApply!393 lt!412974 from!777))))

(assert (=> b!1208325 (= (head!2124 lt!412977) (apply!2609 lt!412972 from!777))))

(assert (=> b!1208325 (= lt!412977 (drop!626 lt!412972 from!777))))

(declare-fun lt!412970 () Unit!18528)

(assert (=> b!1208325 (= lt!412970 (lemmaDropApply!393 lt!412972 from!777))))

(assert (= (and start!107584 res!543446) b!1208322))

(assert (= (and b!1208322 (not res!543447)) b!1208321))

(assert (= (and b!1208321 (not res!543445)) b!1208325))

(assert (= start!107584 b!1208324))

(assert (= start!107584 b!1208323))

(declare-fun m!1383741 () Bool)

(assert (=> b!1208321 m!1383741))

(declare-fun m!1383743 () Bool)

(assert (=> b!1208321 m!1383743))

(declare-fun m!1383745 () Bool)

(assert (=> b!1208321 m!1383745))

(declare-fun m!1383747 () Bool)

(assert (=> b!1208322 m!1383747))

(declare-fun m!1383749 () Bool)

(assert (=> b!1208322 m!1383749))

(declare-fun m!1383751 () Bool)

(assert (=> b!1208322 m!1383751))

(declare-fun m!1383753 () Bool)

(assert (=> b!1208325 m!1383753))

(declare-fun m!1383755 () Bool)

(assert (=> b!1208325 m!1383755))

(declare-fun m!1383757 () Bool)

(assert (=> b!1208325 m!1383757))

(declare-fun m!1383759 () Bool)

(assert (=> b!1208325 m!1383759))

(declare-fun m!1383761 () Bool)

(assert (=> b!1208325 m!1383761))

(declare-fun m!1383763 () Bool)

(assert (=> b!1208325 m!1383763))

(declare-fun m!1383765 () Bool)

(assert (=> b!1208325 m!1383765))

(declare-fun m!1383767 () Bool)

(assert (=> b!1208325 m!1383767))

(declare-fun m!1383769 () Bool)

(assert (=> b!1208325 m!1383769))

(declare-fun m!1383771 () Bool)

(assert (=> b!1208325 m!1383771))

(declare-fun m!1383773 () Bool)

(assert (=> b!1208325 m!1383773))

(assert (=> b!1208325 m!1383767))

(check-sat (not b!1208325) (not b!1208321) (not b!1208323) (not b!1208324) (not b!1208322))
(check-sat)
