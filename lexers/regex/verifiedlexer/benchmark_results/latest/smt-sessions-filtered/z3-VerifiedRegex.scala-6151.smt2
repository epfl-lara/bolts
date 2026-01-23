; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297462 () Bool)

(assert start!297462)

(declare-fun b!3176426 () Bool)

(declare-fun e!1978462 () Bool)

(declare-fun tp!1004626 () Bool)

(assert (=> b!3176426 (= e!1978462 tp!1004626)))

(declare-fun b!3176423 () Bool)

(declare-fun e!1978460 () Bool)

(declare-datatypes ((T!63116 0))(
  ( (T!63117 (val!11982 Int)) )
))
(declare-datatypes ((List!35731 0))(
  ( (Nil!35607) (Cons!35607 (h!41027 T!63116) (t!234822 List!35731)) )
))
(declare-datatypes ((IArray!21101 0))(
  ( (IArray!21102 (innerList!10608 List!35731)) )
))
(declare-datatypes ((Conc!10548 0))(
  ( (Node!10548 (left!27699 Conc!10548) (right!28029 Conc!10548) (csize!21326 Int) (cheight!10759 Int)) (Leaf!16700 (xs!13666 IArray!21101) (csize!21327 Int)) (Empty!10548) )
))
(declare-fun t!3671 () Conc!10548)

(declare-fun v!5469 () T!63116)

(declare-fun contains!6285 (List!35731 T!63116) Bool)

(declare-fun list!12634 (Conc!10548) List!35731)

(assert (=> b!3176423 (= e!1978460 (contains!6285 (list!12634 t!3671) v!5469))))

(declare-fun res!1290617 () Bool)

(assert (=> start!297462 (=> (not res!1290617) (not e!1978460))))

(get-info :version)

(assert (=> start!297462 (= res!1290617 ((_ is Empty!10548) t!3671))))

(assert (=> start!297462 e!1978460))

(declare-fun e!1978461 () Bool)

(declare-fun inv!48426 (Conc!10548) Bool)

(assert (=> start!297462 (and (inv!48426 t!3671) e!1978461)))

(declare-fun tp_is_empty!17221 () Bool)

(assert (=> start!297462 tp_is_empty!17221))

(declare-fun b!3176425 () Bool)

(declare-fun inv!48427 (IArray!21101) Bool)

(assert (=> b!3176425 (= e!1978461 (and (inv!48427 (xs!13666 t!3671)) e!1978462))))

(declare-fun tp!1004624 () Bool)

(declare-fun tp!1004625 () Bool)

(declare-fun b!3176424 () Bool)

(assert (=> b!3176424 (= e!1978461 (and (inv!48426 (left!27699 t!3671)) tp!1004624 (inv!48426 (right!28029 t!3671)) tp!1004625))))

(assert (= (and start!297462 res!1290617) b!3176423))

(assert (= (and start!297462 ((_ is Node!10548) t!3671)) b!3176424))

(assert (= b!3176425 b!3176426))

(assert (= (and start!297462 ((_ is Leaf!16700) t!3671)) b!3176425))

(declare-fun m!3432847 () Bool)

(assert (=> b!3176423 m!3432847))

(assert (=> b!3176423 m!3432847))

(declare-fun m!3432849 () Bool)

(assert (=> b!3176423 m!3432849))

(declare-fun m!3432851 () Bool)

(assert (=> start!297462 m!3432851))

(declare-fun m!3432853 () Bool)

(assert (=> b!3176425 m!3432853))

(declare-fun m!3432855 () Bool)

(assert (=> b!3176424 m!3432855))

(declare-fun m!3432857 () Bool)

(assert (=> b!3176424 m!3432857))

(check-sat tp_is_empty!17221 (not start!297462) (not b!3176426) (not b!3176424) (not b!3176423) (not b!3176425))
(check-sat)
(get-model)

(declare-fun d!869582 () Bool)

(declare-fun size!26904 (List!35731) Int)

(assert (=> d!869582 (= (inv!48427 (xs!13666 t!3671)) (<= (size!26904 (innerList!10608 (xs!13666 t!3671))) 2147483647))))

(declare-fun bs!539742 () Bool)

(assert (= bs!539742 d!869582))

(declare-fun m!3432859 () Bool)

(assert (=> bs!539742 m!3432859))

(assert (=> b!3176425 d!869582))

(declare-fun d!869586 () Bool)

(declare-fun c!533749 () Bool)

(assert (=> d!869586 (= c!533749 ((_ is Node!10548) (left!27699 t!3671)))))

(declare-fun e!1978471 () Bool)

(assert (=> d!869586 (= (inv!48426 (left!27699 t!3671)) e!1978471)))

(declare-fun b!3176439 () Bool)

(declare-fun inv!48428 (Conc!10548) Bool)

(assert (=> b!3176439 (= e!1978471 (inv!48428 (left!27699 t!3671)))))

(declare-fun b!3176440 () Bool)

(declare-fun e!1978472 () Bool)

(assert (=> b!3176440 (= e!1978471 e!1978472)))

(declare-fun res!1290622 () Bool)

(assert (=> b!3176440 (= res!1290622 (not ((_ is Leaf!16700) (left!27699 t!3671))))))

(assert (=> b!3176440 (=> res!1290622 e!1978472)))

(declare-fun b!3176441 () Bool)

(declare-fun inv!48429 (Conc!10548) Bool)

(assert (=> b!3176441 (= e!1978472 (inv!48429 (left!27699 t!3671)))))

(assert (= (and d!869586 c!533749) b!3176439))

(assert (= (and d!869586 (not c!533749)) b!3176440))

(assert (= (and b!3176440 (not res!1290622)) b!3176441))

(declare-fun m!3432861 () Bool)

(assert (=> b!3176439 m!3432861))

(declare-fun m!3432863 () Bool)

(assert (=> b!3176441 m!3432863))

(assert (=> b!3176424 d!869586))

(declare-fun d!869588 () Bool)

(declare-fun c!533750 () Bool)

(assert (=> d!869588 (= c!533750 ((_ is Node!10548) (right!28029 t!3671)))))

(declare-fun e!1978473 () Bool)

(assert (=> d!869588 (= (inv!48426 (right!28029 t!3671)) e!1978473)))

(declare-fun b!3176442 () Bool)

(assert (=> b!3176442 (= e!1978473 (inv!48428 (right!28029 t!3671)))))

(declare-fun b!3176443 () Bool)

(declare-fun e!1978474 () Bool)

(assert (=> b!3176443 (= e!1978473 e!1978474)))

(declare-fun res!1290623 () Bool)

(assert (=> b!3176443 (= res!1290623 (not ((_ is Leaf!16700) (right!28029 t!3671))))))

(assert (=> b!3176443 (=> res!1290623 e!1978474)))

(declare-fun b!3176444 () Bool)

(assert (=> b!3176444 (= e!1978474 (inv!48429 (right!28029 t!3671)))))

(assert (= (and d!869588 c!533750) b!3176442))

(assert (= (and d!869588 (not c!533750)) b!3176443))

(assert (= (and b!3176443 (not res!1290623)) b!3176444))

(declare-fun m!3432865 () Bool)

(assert (=> b!3176442 m!3432865))

(declare-fun m!3432867 () Bool)

(assert (=> b!3176444 m!3432867))

(assert (=> b!3176424 d!869588))

(declare-fun d!869590 () Bool)

(declare-fun c!533752 () Bool)

(assert (=> d!869590 (= c!533752 ((_ is Node!10548) t!3671))))

(declare-fun e!1978477 () Bool)

(assert (=> d!869590 (= (inv!48426 t!3671) e!1978477)))

(declare-fun b!3176448 () Bool)

(assert (=> b!3176448 (= e!1978477 (inv!48428 t!3671))))

(declare-fun b!3176449 () Bool)

(declare-fun e!1978478 () Bool)

(assert (=> b!3176449 (= e!1978477 e!1978478)))

(declare-fun res!1290625 () Bool)

(assert (=> b!3176449 (= res!1290625 (not ((_ is Leaf!16700) t!3671)))))

(assert (=> b!3176449 (=> res!1290625 e!1978478)))

(declare-fun b!3176450 () Bool)

(assert (=> b!3176450 (= e!1978478 (inv!48429 t!3671))))

(assert (= (and d!869590 c!533752) b!3176448))

(assert (= (and d!869590 (not c!533752)) b!3176449))

(assert (= (and b!3176449 (not res!1290625)) b!3176450))

(declare-fun m!3432871 () Bool)

(assert (=> b!3176448 m!3432871))

(declare-fun m!3432875 () Bool)

(assert (=> b!3176450 m!3432875))

(assert (=> start!297462 d!869590))

(declare-fun d!869592 () Bool)

(declare-fun lt!1067993 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4829 (List!35731) (InoxSet T!63116))

(assert (=> d!869592 (= lt!1067993 (select (content!4829 (list!12634 t!3671)) v!5469))))

(declare-fun e!1978488 () Bool)

(assert (=> d!869592 (= lt!1067993 e!1978488)))

(declare-fun res!1290632 () Bool)

(assert (=> d!869592 (=> (not res!1290632) (not e!1978488))))

(assert (=> d!869592 (= res!1290632 ((_ is Cons!35607) (list!12634 t!3671)))))

(assert (=> d!869592 (= (contains!6285 (list!12634 t!3671) v!5469) lt!1067993)))

(declare-fun b!3176461 () Bool)

(declare-fun e!1978487 () Bool)

(assert (=> b!3176461 (= e!1978488 e!1978487)))

(declare-fun res!1290633 () Bool)

(assert (=> b!3176461 (=> res!1290633 e!1978487)))

(assert (=> b!3176461 (= res!1290633 (= (h!41027 (list!12634 t!3671)) v!5469))))

(declare-fun b!3176462 () Bool)

(assert (=> b!3176462 (= e!1978487 (contains!6285 (t!234822 (list!12634 t!3671)) v!5469))))

(assert (= (and d!869592 res!1290632) b!3176461))

(assert (= (and b!3176461 (not res!1290633)) b!3176462))

(assert (=> d!869592 m!3432847))

(declare-fun m!3432887 () Bool)

(assert (=> d!869592 m!3432887))

(declare-fun m!3432889 () Bool)

(assert (=> d!869592 m!3432889))

(declare-fun m!3432891 () Bool)

(assert (=> b!3176462 m!3432891))

(assert (=> b!3176423 d!869592))

(declare-fun b!3176478 () Bool)

(declare-fun e!1978499 () List!35731)

(declare-fun e!1978500 () List!35731)

(assert (=> b!3176478 (= e!1978499 e!1978500)))

(declare-fun c!533760 () Bool)

(assert (=> b!3176478 (= c!533760 ((_ is Leaf!16700) t!3671))))

(declare-fun b!3176477 () Bool)

(assert (=> b!3176477 (= e!1978499 Nil!35607)))

(declare-fun d!869602 () Bool)

(declare-fun c!533759 () Bool)

(assert (=> d!869602 (= c!533759 ((_ is Empty!10548) t!3671))))

(assert (=> d!869602 (= (list!12634 t!3671) e!1978499)))

(declare-fun b!3176480 () Bool)

(declare-fun ++!8516 (List!35731 List!35731) List!35731)

(assert (=> b!3176480 (= e!1978500 (++!8516 (list!12634 (left!27699 t!3671)) (list!12634 (right!28029 t!3671))))))

(declare-fun b!3176479 () Bool)

(declare-fun list!12635 (IArray!21101) List!35731)

(assert (=> b!3176479 (= e!1978500 (list!12635 (xs!13666 t!3671)))))

(assert (= (and d!869602 c!533759) b!3176477))

(assert (= (and d!869602 (not c!533759)) b!3176478))

(assert (= (and b!3176478 c!533760) b!3176479))

(assert (= (and b!3176478 (not c!533760)) b!3176480))

(declare-fun m!3432899 () Bool)

(assert (=> b!3176480 m!3432899))

(declare-fun m!3432901 () Bool)

(assert (=> b!3176480 m!3432901))

(assert (=> b!3176480 m!3432899))

(assert (=> b!3176480 m!3432901))

(declare-fun m!3432903 () Bool)

(assert (=> b!3176480 m!3432903))

(declare-fun m!3432905 () Bool)

(assert (=> b!3176479 m!3432905))

(assert (=> b!3176423 d!869602))

(declare-fun b!3176485 () Bool)

(declare-fun e!1978503 () Bool)

(declare-fun tp!1004629 () Bool)

(assert (=> b!3176485 (= e!1978503 (and tp_is_empty!17221 tp!1004629))))

(assert (=> b!3176426 (= tp!1004626 e!1978503)))

(assert (= (and b!3176426 ((_ is Cons!35607) (innerList!10608 (xs!13666 t!3671)))) b!3176485))

(declare-fun e!1978512 () Bool)

(declare-fun tp!1004638 () Bool)

(declare-fun tp!1004637 () Bool)

(declare-fun b!3176502 () Bool)

(assert (=> b!3176502 (= e!1978512 (and (inv!48426 (left!27699 (left!27699 t!3671))) tp!1004638 (inv!48426 (right!28029 (left!27699 t!3671))) tp!1004637))))

(declare-fun b!3176504 () Bool)

(declare-fun e!1978513 () Bool)

(declare-fun tp!1004636 () Bool)

(assert (=> b!3176504 (= e!1978513 tp!1004636)))

(declare-fun b!3176503 () Bool)

(assert (=> b!3176503 (= e!1978512 (and (inv!48427 (xs!13666 (left!27699 t!3671))) e!1978513))))

(assert (=> b!3176424 (= tp!1004624 (and (inv!48426 (left!27699 t!3671)) e!1978512))))

(assert (= (and b!3176424 ((_ is Node!10548) (left!27699 t!3671))) b!3176502))

(assert (= b!3176503 b!3176504))

(assert (= (and b!3176424 ((_ is Leaf!16700) (left!27699 t!3671))) b!3176503))

(declare-fun m!3432907 () Bool)

(assert (=> b!3176502 m!3432907))

(declare-fun m!3432909 () Bool)

(assert (=> b!3176502 m!3432909))

(declare-fun m!3432911 () Bool)

(assert (=> b!3176503 m!3432911))

(assert (=> b!3176424 m!3432855))

(declare-fun e!1978514 () Bool)

(declare-fun tp!1004641 () Bool)

(declare-fun tp!1004640 () Bool)

(declare-fun b!3176505 () Bool)

(assert (=> b!3176505 (= e!1978514 (and (inv!48426 (left!27699 (right!28029 t!3671))) tp!1004641 (inv!48426 (right!28029 (right!28029 t!3671))) tp!1004640))))

(declare-fun b!3176507 () Bool)

(declare-fun e!1978515 () Bool)

(declare-fun tp!1004639 () Bool)

(assert (=> b!3176507 (= e!1978515 tp!1004639)))

(declare-fun b!3176506 () Bool)

(assert (=> b!3176506 (= e!1978514 (and (inv!48427 (xs!13666 (right!28029 t!3671))) e!1978515))))

(assert (=> b!3176424 (= tp!1004625 (and (inv!48426 (right!28029 t!3671)) e!1978514))))

(assert (= (and b!3176424 ((_ is Node!10548) (right!28029 t!3671))) b!3176505))

(assert (= b!3176506 b!3176507))

(assert (= (and b!3176424 ((_ is Leaf!16700) (right!28029 t!3671))) b!3176506))

(declare-fun m!3432913 () Bool)

(assert (=> b!3176505 m!3432913))

(declare-fun m!3432915 () Bool)

(assert (=> b!3176505 m!3432915))

(declare-fun m!3432917 () Bool)

(assert (=> b!3176506 m!3432917))

(assert (=> b!3176424 m!3432857))

(check-sat (not b!3176505) (not b!3176479) (not b!3176480) (not b!3176502) (not b!3176506) (not b!3176424) (not b!3176450) (not b!3176485) tp_is_empty!17221 (not b!3176439) (not b!3176448) (not d!869582) (not b!3176462) (not b!3176442) (not b!3176503) (not b!3176504) (not d!869592) (not b!3176441) (not b!3176507) (not b!3176444))
(check-sat)
