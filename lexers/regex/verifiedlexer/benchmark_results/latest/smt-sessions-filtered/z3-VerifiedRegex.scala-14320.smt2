; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747834 () Bool)

(assert start!747834)

(declare-fun b!7917962 () Bool)

(declare-fun e!4673674 () Bool)

(declare-datatypes ((T!145650 0))(
  ( (T!145651 (val!32038 Int)) )
))
(declare-datatypes ((List!74550 0))(
  ( (Nil!74426) (Cons!74426 (h!80874 T!145650) (t!390087 List!74550)) )
))
(declare-datatypes ((IArray!31821 0))(
  ( (IArray!31822 (innerList!15968 List!74550)) )
))
(declare-datatypes ((Conc!15880 0))(
  ( (Node!15880 (left!56840 Conc!15880) (right!57170 Conc!15880) (csize!31990 Int) (cheight!16091 Int)) (Leaf!30201 (xs!19266 IArray!31821) (csize!31991 Int)) (Empty!15880) )
))
(declare-fun c!5365 () Conc!15880)

(declare-fun e!4673673 () Bool)

(declare-fun inv!95600 (IArray!31821) Bool)

(assert (=> b!7917962 (= e!4673674 (and (inv!95600 (xs!19266 c!5365)) e!4673673))))

(declare-fun b!7917963 () Bool)

(declare-fun e!4673672 () Bool)

(declare-fun lt!2690905 () List!74550)

(declare-fun ll!14 () List!74550)

(declare-fun ++!18242 (List!74550 List!74550) List!74550)

(assert (=> b!7917963 (= e!4673672 (not (= lt!2690905 (++!18242 lt!2690905 ll!14))))))

(declare-fun list!19375 (Conc!15880) List!74550)

(assert (=> b!7917963 (= lt!2690905 (list!19375 c!5365))))

(declare-fun b!7917964 () Bool)

(declare-fun res!3142541 () Bool)

(assert (=> b!7917964 (=> (not res!3142541) (not e!4673672))))

(get-info :version)

(assert (=> b!7917964 (= res!3142541 ((_ is Nil!74426) ll!14))))

(declare-fun b!7917965 () Bool)

(declare-fun e!4673671 () Bool)

(declare-fun tp_is_empty!53185 () Bool)

(declare-fun tp!2357647 () Bool)

(assert (=> b!7917965 (= e!4673671 (and tp_is_empty!53185 tp!2357647))))

(declare-fun b!7917966 () Bool)

(declare-fun tp!2357648 () Bool)

(assert (=> b!7917966 (= e!4673673 tp!2357648)))

(declare-fun res!3142542 () Bool)

(assert (=> start!747834 (=> (not res!3142542) (not e!4673672))))

(declare-fun isBalanced!4506 (Conc!15880) Bool)

(assert (=> start!747834 (= res!3142542 (isBalanced!4506 c!5365))))

(assert (=> start!747834 e!4673672))

(declare-fun inv!95601 (Conc!15880) Bool)

(assert (=> start!747834 (and (inv!95601 c!5365) e!4673674)))

(assert (=> start!747834 e!4673671))

(declare-fun tp!2357650 () Bool)

(declare-fun tp!2357649 () Bool)

(declare-fun b!7917961 () Bool)

(assert (=> b!7917961 (= e!4673674 (and (inv!95601 (left!56840 c!5365)) tp!2357649 (inv!95601 (right!57170 c!5365)) tp!2357650))))

(assert (= (and start!747834 res!3142542) b!7917964))

(assert (= (and b!7917964 res!3142541) b!7917963))

(assert (= (and start!747834 ((_ is Node!15880) c!5365)) b!7917961))

(assert (= b!7917962 b!7917966))

(assert (= (and start!747834 ((_ is Leaf!30201) c!5365)) b!7917962))

(assert (= (and start!747834 ((_ is Cons!74426) ll!14)) b!7917965))

(declare-fun m!8293786 () Bool)

(assert (=> b!7917962 m!8293786))

(declare-fun m!8293788 () Bool)

(assert (=> b!7917963 m!8293788))

(declare-fun m!8293790 () Bool)

(assert (=> b!7917963 m!8293790))

(declare-fun m!8293792 () Bool)

(assert (=> start!747834 m!8293792))

(declare-fun m!8293794 () Bool)

(assert (=> start!747834 m!8293794))

(declare-fun m!8293796 () Bool)

(assert (=> b!7917961 m!8293796))

(declare-fun m!8293798 () Bool)

(assert (=> b!7917961 m!8293798))

(check-sat tp_is_empty!53185 (not b!7917965) (not b!7917962) (not b!7917961) (not start!747834) (not b!7917963) (not b!7917966))
(check-sat)
(get-model)

(declare-fun d!2362427 () Bool)

(declare-fun c!1453029 () Bool)

(assert (=> d!2362427 (= c!1453029 ((_ is Node!15880) (left!56840 c!5365)))))

(declare-fun e!4673679 () Bool)

(assert (=> d!2362427 (= (inv!95601 (left!56840 c!5365)) e!4673679)))

(declare-fun b!7917973 () Bool)

(declare-fun inv!95602 (Conc!15880) Bool)

(assert (=> b!7917973 (= e!4673679 (inv!95602 (left!56840 c!5365)))))

(declare-fun b!7917974 () Bool)

(declare-fun e!4673680 () Bool)

(assert (=> b!7917974 (= e!4673679 e!4673680)))

(declare-fun res!3142545 () Bool)

(assert (=> b!7917974 (= res!3142545 (not ((_ is Leaf!30201) (left!56840 c!5365))))))

(assert (=> b!7917974 (=> res!3142545 e!4673680)))

(declare-fun b!7917975 () Bool)

(declare-fun inv!95603 (Conc!15880) Bool)

(assert (=> b!7917975 (= e!4673680 (inv!95603 (left!56840 c!5365)))))

(assert (= (and d!2362427 c!1453029) b!7917973))

(assert (= (and d!2362427 (not c!1453029)) b!7917974))

(assert (= (and b!7917974 (not res!3142545)) b!7917975))

(declare-fun m!8293800 () Bool)

(assert (=> b!7917973 m!8293800))

(declare-fun m!8293802 () Bool)

(assert (=> b!7917975 m!8293802))

(assert (=> b!7917961 d!2362427))

(declare-fun d!2362431 () Bool)

(declare-fun c!1453030 () Bool)

(assert (=> d!2362431 (= c!1453030 ((_ is Node!15880) (right!57170 c!5365)))))

(declare-fun e!4673685 () Bool)

(assert (=> d!2362431 (= (inv!95601 (right!57170 c!5365)) e!4673685)))

(declare-fun b!7917988 () Bool)

(assert (=> b!7917988 (= e!4673685 (inv!95602 (right!57170 c!5365)))))

(declare-fun b!7917989 () Bool)

(declare-fun e!4673686 () Bool)

(assert (=> b!7917989 (= e!4673685 e!4673686)))

(declare-fun res!3142558 () Bool)

(assert (=> b!7917989 (= res!3142558 (not ((_ is Leaf!30201) (right!57170 c!5365))))))

(assert (=> b!7917989 (=> res!3142558 e!4673686)))

(declare-fun b!7917990 () Bool)

(assert (=> b!7917990 (= e!4673686 (inv!95603 (right!57170 c!5365)))))

(assert (= (and d!2362431 c!1453030) b!7917988))

(assert (= (and d!2362431 (not c!1453030)) b!7917989))

(assert (= (and b!7917989 (not res!3142558)) b!7917990))

(declare-fun m!8293804 () Bool)

(assert (=> b!7917988 m!8293804))

(declare-fun m!8293806 () Bool)

(assert (=> b!7917990 m!8293806))

(assert (=> b!7917961 d!2362431))

(declare-fun b!7918015 () Bool)

(declare-fun res!3142579 () Bool)

(declare-fun e!4673697 () Bool)

(assert (=> b!7918015 (=> (not res!3142579) (not e!4673697))))

(assert (=> b!7918015 (= res!3142579 (isBalanced!4506 (left!56840 c!5365)))))

(declare-fun b!7918017 () Bool)

(declare-fun res!3142581 () Bool)

(assert (=> b!7918017 (=> (not res!3142581) (not e!4673697))))

(assert (=> b!7918017 (= res!3142581 (isBalanced!4506 (right!57170 c!5365)))))

(declare-fun b!7918018 () Bool)

(declare-fun isEmpty!42745 (Conc!15880) Bool)

(assert (=> b!7918018 (= e!4673697 (not (isEmpty!42745 (right!57170 c!5365))))))

(declare-fun b!7918019 () Bool)

(declare-fun res!3142580 () Bool)

(assert (=> b!7918019 (=> (not res!3142580) (not e!4673697))))

(assert (=> b!7918019 (= res!3142580 (not (isEmpty!42745 (left!56840 c!5365))))))

(declare-fun b!7918020 () Bool)

(declare-fun e!4673698 () Bool)

(assert (=> b!7918020 (= e!4673698 e!4673697)))

(declare-fun res!3142584 () Bool)

(assert (=> b!7918020 (=> (not res!3142584) (not e!4673697))))

(declare-fun height!2196 (Conc!15880) Int)

(assert (=> b!7918020 (= res!3142584 (<= (- 1) (- (height!2196 (left!56840 c!5365)) (height!2196 (right!57170 c!5365)))))))

(declare-fun d!2362433 () Bool)

(declare-fun res!3142582 () Bool)

(assert (=> d!2362433 (=> res!3142582 e!4673698)))

(assert (=> d!2362433 (= res!3142582 (not ((_ is Node!15880) c!5365)))))

(assert (=> d!2362433 (= (isBalanced!4506 c!5365) e!4673698)))

(declare-fun b!7918016 () Bool)

(declare-fun res!3142583 () Bool)

(assert (=> b!7918016 (=> (not res!3142583) (not e!4673697))))

(assert (=> b!7918016 (= res!3142583 (<= (- (height!2196 (left!56840 c!5365)) (height!2196 (right!57170 c!5365))) 1))))

(assert (= (and d!2362433 (not res!3142582)) b!7918020))

(assert (= (and b!7918020 res!3142584) b!7918016))

(assert (= (and b!7918016 res!3142583) b!7918015))

(assert (= (and b!7918015 res!3142579) b!7918017))

(assert (= (and b!7918017 res!3142581) b!7918019))

(assert (= (and b!7918019 res!3142580) b!7918018))

(declare-fun m!8293820 () Bool)

(assert (=> b!7918019 m!8293820))

(declare-fun m!8293822 () Bool)

(assert (=> b!7918018 m!8293822))

(declare-fun m!8293824 () Bool)

(assert (=> b!7918020 m!8293824))

(declare-fun m!8293826 () Bool)

(assert (=> b!7918020 m!8293826))

(assert (=> b!7918016 m!8293824))

(assert (=> b!7918016 m!8293826))

(declare-fun m!8293828 () Bool)

(assert (=> b!7918015 m!8293828))

(declare-fun m!8293830 () Bool)

(assert (=> b!7918017 m!8293830))

(assert (=> start!747834 d!2362433))

(declare-fun d!2362437 () Bool)

(declare-fun c!1453034 () Bool)

(assert (=> d!2362437 (= c!1453034 ((_ is Node!15880) c!5365))))

(declare-fun e!4673701 () Bool)

(assert (=> d!2362437 (= (inv!95601 c!5365) e!4673701)))

(declare-fun b!7918024 () Bool)

(assert (=> b!7918024 (= e!4673701 (inv!95602 c!5365))))

(declare-fun b!7918025 () Bool)

(declare-fun e!4673702 () Bool)

(assert (=> b!7918025 (= e!4673701 e!4673702)))

(declare-fun res!3142586 () Bool)

(assert (=> b!7918025 (= res!3142586 (not ((_ is Leaf!30201) c!5365)))))

(assert (=> b!7918025 (=> res!3142586 e!4673702)))

(declare-fun b!7918026 () Bool)

(assert (=> b!7918026 (= e!4673702 (inv!95603 c!5365))))

(assert (= (and d!2362437 c!1453034) b!7918024))

(assert (= (and d!2362437 (not c!1453034)) b!7918025))

(assert (= (and b!7918025 (not res!3142586)) b!7918026))

(declare-fun m!8293836 () Bool)

(assert (=> b!7918024 m!8293836))

(declare-fun m!8293838 () Bool)

(assert (=> b!7918026 m!8293838))

(assert (=> start!747834 d!2362437))

(declare-fun d!2362441 () Bool)

(declare-fun size!43210 (List!74550) Int)

(assert (=> d!2362441 (= (inv!95600 (xs!19266 c!5365)) (<= (size!43210 (innerList!15968 (xs!19266 c!5365))) 2147483647))))

(declare-fun bs!1968505 () Bool)

(assert (= bs!1968505 d!2362441))

(declare-fun m!8293848 () Bool)

(assert (=> bs!1968505 m!8293848))

(assert (=> b!7917962 d!2362441))

(declare-fun b!7918055 () Bool)

(declare-fun res!3142600 () Bool)

(declare-fun e!4673717 () Bool)

(assert (=> b!7918055 (=> (not res!3142600) (not e!4673717))))

(declare-fun lt!2690911 () List!74550)

(assert (=> b!7918055 (= res!3142600 (= (size!43210 lt!2690911) (+ (size!43210 lt!2690905) (size!43210 ll!14))))))

(declare-fun b!7918056 () Bool)

(assert (=> b!7918056 (= e!4673717 (or (not (= ll!14 Nil!74426)) (= lt!2690911 lt!2690905)))))

(declare-fun d!2362447 () Bool)

(assert (=> d!2362447 e!4673717))

(declare-fun res!3142599 () Bool)

(assert (=> d!2362447 (=> (not res!3142599) (not e!4673717))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15767 (List!74550) (InoxSet T!145650))

(assert (=> d!2362447 (= res!3142599 (= (content!15767 lt!2690911) ((_ map or) (content!15767 lt!2690905) (content!15767 ll!14))))))

(declare-fun e!4673718 () List!74550)

(assert (=> d!2362447 (= lt!2690911 e!4673718)))

(declare-fun c!1453042 () Bool)

(assert (=> d!2362447 (= c!1453042 ((_ is Nil!74426) lt!2690905))))

(assert (=> d!2362447 (= (++!18242 lt!2690905 ll!14) lt!2690911)))

(declare-fun b!7918053 () Bool)

(assert (=> b!7918053 (= e!4673718 ll!14)))

(declare-fun b!7918054 () Bool)

(assert (=> b!7918054 (= e!4673718 (Cons!74426 (h!80874 lt!2690905) (++!18242 (t!390087 lt!2690905) ll!14)))))

(assert (= (and d!2362447 c!1453042) b!7918053))

(assert (= (and d!2362447 (not c!1453042)) b!7918054))

(assert (= (and d!2362447 res!3142599) b!7918055))

(assert (= (and b!7918055 res!3142600) b!7918056))

(declare-fun m!8293864 () Bool)

(assert (=> b!7918055 m!8293864))

(declare-fun m!8293866 () Bool)

(assert (=> b!7918055 m!8293866))

(declare-fun m!8293868 () Bool)

(assert (=> b!7918055 m!8293868))

(declare-fun m!8293870 () Bool)

(assert (=> d!2362447 m!8293870))

(declare-fun m!8293872 () Bool)

(assert (=> d!2362447 m!8293872))

(declare-fun m!8293874 () Bool)

(assert (=> d!2362447 m!8293874))

(declare-fun m!8293876 () Bool)

(assert (=> b!7918054 m!8293876))

(assert (=> b!7917963 d!2362447))

(declare-fun b!7918077 () Bool)

(declare-fun e!4673729 () List!74550)

(assert (=> b!7918077 (= e!4673729 Nil!74426)))

(declare-fun d!2362451 () Bool)

(declare-fun c!1453053 () Bool)

(assert (=> d!2362451 (= c!1453053 ((_ is Empty!15880) c!5365))))

(assert (=> d!2362451 (= (list!19375 c!5365) e!4673729)))

(declare-fun b!7918078 () Bool)

(declare-fun e!4673730 () List!74550)

(assert (=> b!7918078 (= e!4673729 e!4673730)))

(declare-fun c!1453054 () Bool)

(assert (=> b!7918078 (= c!1453054 ((_ is Leaf!30201) c!5365))))

(declare-fun b!7918079 () Bool)

(declare-fun list!19376 (IArray!31821) List!74550)

(assert (=> b!7918079 (= e!4673730 (list!19376 (xs!19266 c!5365)))))

(declare-fun b!7918080 () Bool)

(assert (=> b!7918080 (= e!4673730 (++!18242 (list!19375 (left!56840 c!5365)) (list!19375 (right!57170 c!5365))))))

(assert (= (and d!2362451 c!1453053) b!7918077))

(assert (= (and d!2362451 (not c!1453053)) b!7918078))

(assert (= (and b!7918078 c!1453054) b!7918079))

(assert (= (and b!7918078 (not c!1453054)) b!7918080))

(declare-fun m!8293886 () Bool)

(assert (=> b!7918079 m!8293886))

(declare-fun m!8293888 () Bool)

(assert (=> b!7918080 m!8293888))

(declare-fun m!8293890 () Bool)

(assert (=> b!7918080 m!8293890))

(assert (=> b!7918080 m!8293888))

(assert (=> b!7918080 m!8293890))

(declare-fun m!8293892 () Bool)

(assert (=> b!7918080 m!8293892))

(assert (=> b!7917963 d!2362451))

(declare-fun b!7918102 () Bool)

(declare-fun tp!2357666 () Bool)

(declare-fun tp!2357667 () Bool)

(declare-fun e!4673743 () Bool)

(assert (=> b!7918102 (= e!4673743 (and (inv!95601 (left!56840 (left!56840 c!5365))) tp!2357667 (inv!95601 (right!57170 (left!56840 c!5365))) tp!2357666))))

(declare-fun b!7918104 () Bool)

(declare-fun e!4673742 () Bool)

(declare-fun tp!2357668 () Bool)

(assert (=> b!7918104 (= e!4673742 tp!2357668)))

(declare-fun b!7918103 () Bool)

(assert (=> b!7918103 (= e!4673743 (and (inv!95600 (xs!19266 (left!56840 c!5365))) e!4673742))))

(assert (=> b!7917961 (= tp!2357649 (and (inv!95601 (left!56840 c!5365)) e!4673743))))

(assert (= (and b!7917961 ((_ is Node!15880) (left!56840 c!5365))) b!7918102))

(assert (= b!7918103 b!7918104))

(assert (= (and b!7917961 ((_ is Leaf!30201) (left!56840 c!5365))) b!7918103))

(declare-fun m!8293896 () Bool)

(assert (=> b!7918102 m!8293896))

(declare-fun m!8293898 () Bool)

(assert (=> b!7918102 m!8293898))

(declare-fun m!8293900 () Bool)

(assert (=> b!7918103 m!8293900))

(assert (=> b!7917961 m!8293796))

(declare-fun b!7918105 () Bool)

(declare-fun tp!2357670 () Bool)

(declare-fun tp!2357669 () Bool)

(declare-fun e!4673745 () Bool)

(assert (=> b!7918105 (= e!4673745 (and (inv!95601 (left!56840 (right!57170 c!5365))) tp!2357670 (inv!95601 (right!57170 (right!57170 c!5365))) tp!2357669))))

(declare-fun b!7918107 () Bool)

(declare-fun e!4673744 () Bool)

(declare-fun tp!2357671 () Bool)

(assert (=> b!7918107 (= e!4673744 tp!2357671)))

(declare-fun b!7918106 () Bool)

(assert (=> b!7918106 (= e!4673745 (and (inv!95600 (xs!19266 (right!57170 c!5365))) e!4673744))))

(assert (=> b!7917961 (= tp!2357650 (and (inv!95601 (right!57170 c!5365)) e!4673745))))

(assert (= (and b!7917961 ((_ is Node!15880) (right!57170 c!5365))) b!7918105))

(assert (= b!7918106 b!7918107))

(assert (= (and b!7917961 ((_ is Leaf!30201) (right!57170 c!5365))) b!7918106))

(declare-fun m!8293902 () Bool)

(assert (=> b!7918105 m!8293902))

(declare-fun m!8293904 () Bool)

(assert (=> b!7918105 m!8293904))

(declare-fun m!8293906 () Bool)

(assert (=> b!7918106 m!8293906))

(assert (=> b!7917961 m!8293798))

(declare-fun b!7918115 () Bool)

(declare-fun e!4673750 () Bool)

(declare-fun tp!2357677 () Bool)

(assert (=> b!7918115 (= e!4673750 (and tp_is_empty!53185 tp!2357677))))

(assert (=> b!7917965 (= tp!2357647 e!4673750)))

(assert (= (and b!7917965 ((_ is Cons!74426) (t!390087 ll!14))) b!7918115))

(declare-fun b!7918116 () Bool)

(declare-fun e!4673751 () Bool)

(declare-fun tp!2357678 () Bool)

(assert (=> b!7918116 (= e!4673751 (and tp_is_empty!53185 tp!2357678))))

(assert (=> b!7917966 (= tp!2357648 e!4673751)))

(assert (= (and b!7917966 ((_ is Cons!74426) (innerList!15968 (xs!19266 c!5365)))) b!7918116))

(check-sat (not b!7917975) (not b!7918106) tp_is_empty!53185 (not b!7918017) (not b!7918107) (not b!7918026) (not b!7918019) (not b!7918054) (not b!7918079) (not b!7918104) (not b!7918018) (not b!7918055) (not b!7918080) (not b!7918105) (not b!7918102) (not b!7918015) (not b!7918016) (not b!7917988) (not b!7918115) (not b!7918116) (not b!7917961) (not b!7918024) (not b!7918103) (not d!2362447) (not b!7917990) (not d!2362441) (not b!7918020) (not b!7917973))
(check-sat)
