; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747562 () Bool)

(assert start!747562)

(declare-fun b!7915111 () Bool)

(declare-fun e!4672203 () Bool)

(assert (=> b!7915111 (= e!4672203 (not true))))

(declare-datatypes ((T!145566 0))(
  ( (T!145567 (val!32026 Int)) )
))
(declare-datatypes ((List!74538 0))(
  ( (Nil!74414) (Cons!74414 (h!80862 T!145566) (t!390033 List!74538)) )
))
(declare-fun lt!2689751 () List!74538)

(declare-fun lt!2689753 () List!74538)

(declare-fun ll!14 () List!74538)

(declare-fun ++!18232 (List!74538 List!74538) List!74538)

(declare-fun $colon$colon!3415 (List!74538 T!145566) List!74538)

(assert (=> b!7915111 (= lt!2689751 (++!18232 lt!2689753 ($colon$colon!3415 (t!390033 ll!14) (h!80862 ll!14))))))

(declare-fun lt!2689754 () List!74538)

(declare-fun lt!2689752 () List!74538)

(assert (=> b!7915111 (= (++!18232 lt!2689752 (t!390033 ll!14)) (++!18232 lt!2689753 (++!18232 lt!2689754 (t!390033 ll!14))))))

(declare-datatypes ((Unit!169529 0))(
  ( (Unit!169530) )
))
(declare-fun lt!2689750 () Unit!169529)

(declare-fun lemmaConcatAssociativity!3132 (List!74538 List!74538 List!74538) Unit!169529)

(assert (=> b!7915111 (= lt!2689750 (lemmaConcatAssociativity!3132 lt!2689753 lt!2689754 (t!390033 ll!14)))))

(declare-fun b!7915112 () Bool)

(declare-fun e!4672201 () Bool)

(declare-fun tp_is_empty!53161 () Bool)

(declare-fun tp!2357281 () Bool)

(assert (=> b!7915112 (= e!4672201 (and tp_is_empty!53161 tp!2357281))))

(declare-fun b!7915113 () Bool)

(declare-fun tp!2357279 () Bool)

(declare-fun e!4672204 () Bool)

(declare-fun tp!2357280 () Bool)

(declare-datatypes ((IArray!31797 0))(
  ( (IArray!31798 (innerList!15956 List!74538)) )
))
(declare-datatypes ((Conc!15868 0))(
  ( (Node!15868 (left!56822 Conc!15868) (right!57152 Conc!15868) (csize!31966 Int) (cheight!16079 Int)) (Leaf!30183 (xs!19250 IArray!31797) (csize!31967 Int)) (Empty!15868) )
))
(declare-fun c!5365 () Conc!15868)

(declare-fun inv!95538 (Conc!15868) Bool)

(assert (=> b!7915113 (= e!4672204 (and (inv!95538 (left!56822 c!5365)) tp!2357280 (inv!95538 (right!57152 c!5365)) tp!2357279))))

(declare-fun res!3141514 () Bool)

(declare-fun e!4672200 () Bool)

(assert (=> start!747562 (=> (not res!3141514) (not e!4672200))))

(declare-fun isBalanced!4494 (Conc!15868) Bool)

(assert (=> start!747562 (= res!3141514 (isBalanced!4494 c!5365))))

(assert (=> start!747562 e!4672200))

(assert (=> start!747562 (and (inv!95538 c!5365) e!4672204)))

(assert (=> start!747562 e!4672201))

(declare-fun b!7915114 () Bool)

(declare-fun e!4672202 () Bool)

(declare-fun tp!2357282 () Bool)

(assert (=> b!7915114 (= e!4672202 tp!2357282)))

(declare-fun b!7915115 () Bool)

(declare-fun res!3141512 () Bool)

(assert (=> b!7915115 (=> (not res!3141512) (not e!4672200))))

(get-info :version)

(assert (=> b!7915115 (= res!3141512 (not ((_ is Nil!74414) ll!14)))))

(declare-fun b!7915116 () Bool)

(declare-fun inv!95539 (IArray!31797) Bool)

(assert (=> b!7915116 (= e!4672204 (and (inv!95539 (xs!19250 c!5365)) e!4672202))))

(declare-fun b!7915117 () Bool)

(declare-fun e!4672199 () Bool)

(assert (=> b!7915117 (= e!4672200 e!4672199)))

(declare-fun res!3141513 () Bool)

(assert (=> b!7915117 (=> (not res!3141513) (not e!4672199))))

(declare-fun lt!2689756 () List!74538)

(declare-fun lt!2689755 () Conc!15868)

(declare-fun list!19357 (Conc!15868) List!74538)

(assert (=> b!7915117 (= res!3141513 (= (list!19357 lt!2689755) (++!18232 lt!2689756 (t!390033 ll!14))))))

(declare-fun lt!2689757 () Conc!15868)

(assert (=> b!7915117 (= lt!2689756 (list!19357 lt!2689757))))

(declare-fun rec!49 (List!74538 Conc!15868) Conc!15868)

(assert (=> b!7915117 (= lt!2689755 (rec!49 (t!390033 ll!14) lt!2689757))))

(declare-fun append!1110 (Conc!15868 T!145566) Conc!15868)

(assert (=> b!7915117 (= lt!2689757 (append!1110 c!5365 (h!80862 ll!14)))))

(declare-fun b!7915118 () Bool)

(assert (=> b!7915118 (= e!4672199 e!4672203)))

(declare-fun res!3141511 () Bool)

(assert (=> b!7915118 (=> (not res!3141511) (not e!4672203))))

(assert (=> b!7915118 (= res!3141511 (= lt!2689756 lt!2689752))))

(assert (=> b!7915118 (= lt!2689752 (++!18232 lt!2689753 lt!2689754))))

(assert (=> b!7915118 (= lt!2689754 (Cons!74414 (h!80862 ll!14) Nil!74414))))

(assert (=> b!7915118 (= lt!2689753 (list!19357 c!5365))))

(assert (= (and start!747562 res!3141514) b!7915115))

(assert (= (and b!7915115 res!3141512) b!7915117))

(assert (= (and b!7915117 res!3141513) b!7915118))

(assert (= (and b!7915118 res!3141511) b!7915111))

(assert (= (and start!747562 ((_ is Node!15868) c!5365)) b!7915113))

(assert (= b!7915116 b!7915114))

(assert (= (and start!747562 ((_ is Leaf!30183) c!5365)) b!7915116))

(assert (= (and start!747562 ((_ is Cons!74414) ll!14)) b!7915112))

(declare-fun m!8289092 () Bool)

(assert (=> b!7915111 m!8289092))

(declare-fun m!8289094 () Bool)

(assert (=> b!7915111 m!8289094))

(declare-fun m!8289096 () Bool)

(assert (=> b!7915111 m!8289096))

(assert (=> b!7915111 m!8289092))

(declare-fun m!8289098 () Bool)

(assert (=> b!7915111 m!8289098))

(declare-fun m!8289100 () Bool)

(assert (=> b!7915111 m!8289100))

(declare-fun m!8289102 () Bool)

(assert (=> b!7915111 m!8289102))

(assert (=> b!7915111 m!8289094))

(declare-fun m!8289104 () Bool)

(assert (=> b!7915113 m!8289104))

(declare-fun m!8289106 () Bool)

(assert (=> b!7915113 m!8289106))

(declare-fun m!8289108 () Bool)

(assert (=> start!747562 m!8289108))

(declare-fun m!8289110 () Bool)

(assert (=> start!747562 m!8289110))

(declare-fun m!8289112 () Bool)

(assert (=> b!7915118 m!8289112))

(declare-fun m!8289114 () Bool)

(assert (=> b!7915118 m!8289114))

(declare-fun m!8289116 () Bool)

(assert (=> b!7915117 m!8289116))

(declare-fun m!8289118 () Bool)

(assert (=> b!7915117 m!8289118))

(declare-fun m!8289120 () Bool)

(assert (=> b!7915117 m!8289120))

(declare-fun m!8289122 () Bool)

(assert (=> b!7915117 m!8289122))

(declare-fun m!8289124 () Bool)

(assert (=> b!7915117 m!8289124))

(declare-fun m!8289126 () Bool)

(assert (=> b!7915116 m!8289126))

(check-sat (not b!7915114) (not b!7915117) (not b!7915116) (not start!747562) (not b!7915113) tp_is_empty!53161 (not b!7915112) (not b!7915111) (not b!7915118))
(check-sat)
