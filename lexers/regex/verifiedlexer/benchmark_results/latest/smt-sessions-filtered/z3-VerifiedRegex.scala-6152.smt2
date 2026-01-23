; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297482 () Bool)

(assert start!297482)

(declare-fun tp!1004673 () Bool)

(declare-fun tp!1004674 () Bool)

(declare-fun b!3176552 () Bool)

(declare-datatypes ((T!63130 0))(
  ( (T!63131 (val!11984 Int)) )
))
(declare-datatypes ((List!35733 0))(
  ( (Nil!35609) (Cons!35609 (h!41029 T!63130) (t!234826 List!35733)) )
))
(declare-datatypes ((IArray!21105 0))(
  ( (IArray!21106 (innerList!10610 List!35733)) )
))
(declare-datatypes ((Conc!10550 0))(
  ( (Node!10550 (left!27702 Conc!10550) (right!28032 Conc!10550) (csize!21330 Int) (cheight!10761 Int)) (Leaf!16703 (xs!13668 IArray!21105) (csize!21331 Int)) (Empty!10550) )
))
(declare-fun t!3671 () Conc!10550)

(declare-fun e!1978545 () Bool)

(declare-fun inv!48437 (Conc!10550) Bool)

(assert (=> b!3176552 (= e!1978545 (and (inv!48437 (left!27702 t!3671)) tp!1004674 (inv!48437 (right!28032 t!3671)) tp!1004673))))

(declare-fun b!3176553 () Bool)

(declare-fun e!1978546 () Bool)

(declare-fun inv!48438 (IArray!21105) Bool)

(assert (=> b!3176553 (= e!1978545 (and (inv!48438 (xs!13668 t!3671)) e!1978546))))

(declare-fun b!3176551 () Bool)

(declare-fun e!1978544 () Bool)

(declare-fun v!5469 () T!63130)

(declare-fun contains!6288 (IArray!21105 T!63130) Bool)

(declare-fun contains!6289 (List!35733 T!63130) Bool)

(declare-fun list!12637 (Conc!10550) List!35733)

(assert (=> b!3176551 (= e!1978544 (not (= (contains!6288 (xs!13668 t!3671) v!5469) (contains!6289 (list!12637 t!3671) v!5469))))))

(declare-fun res!1290645 () Bool)

(assert (=> start!297482 (=> (not res!1290645) (not e!1978544))))

(get-info :version)

(assert (=> start!297482 (= res!1290645 (and (not ((_ is Empty!10550) t!3671)) ((_ is Leaf!16703) t!3671)))))

(assert (=> start!297482 e!1978544))

(assert (=> start!297482 (and (inv!48437 t!3671) e!1978545)))

(declare-fun tp_is_empty!17225 () Bool)

(assert (=> start!297482 tp_is_empty!17225))

(declare-fun b!3176554 () Bool)

(declare-fun tp!1004672 () Bool)

(assert (=> b!3176554 (= e!1978546 tp!1004672)))

(assert (= (and start!297482 res!1290645) b!3176551))

(assert (= (and start!297482 ((_ is Node!10550) t!3671)) b!3176552))

(assert (= b!3176553 b!3176554))

(assert (= (and start!297482 ((_ is Leaf!16703) t!3671)) b!3176553))

(declare-fun m!3432953 () Bool)

(assert (=> b!3176552 m!3432953))

(declare-fun m!3432955 () Bool)

(assert (=> b!3176552 m!3432955))

(declare-fun m!3432957 () Bool)

(assert (=> b!3176553 m!3432957))

(declare-fun m!3432959 () Bool)

(assert (=> b!3176551 m!3432959))

(declare-fun m!3432961 () Bool)

(assert (=> b!3176551 m!3432961))

(assert (=> b!3176551 m!3432961))

(declare-fun m!3432963 () Bool)

(assert (=> b!3176551 m!3432963))

(declare-fun m!3432965 () Bool)

(assert (=> start!297482 m!3432965))

(check-sat tp_is_empty!17225 (not b!3176553) (not b!3176554) (not b!3176551) (not b!3176552) (not start!297482))
(check-sat)
(get-model)

(declare-fun d!869609 () Bool)

(declare-fun lt!1068001 () Bool)

(declare-fun list!12639 (IArray!21105) List!35733)

(assert (=> d!869609 (= lt!1068001 (contains!6289 (list!12639 (xs!13668 t!3671)) v!5469))))

(declare-fun choose!18523 (IArray!21105 T!63130) Bool)

(assert (=> d!869609 (= lt!1068001 (choose!18523 (xs!13668 t!3671) v!5469))))

(assert (=> d!869609 (= (contains!6288 (xs!13668 t!3671) v!5469) lt!1068001)))

(declare-fun bs!539747 () Bool)

(assert (= bs!539747 d!869609))

(declare-fun m!3432969 () Bool)

(assert (=> bs!539747 m!3432969))

(assert (=> bs!539747 m!3432969))

(declare-fun m!3432971 () Bool)

(assert (=> bs!539747 m!3432971))

(declare-fun m!3432973 () Bool)

(assert (=> bs!539747 m!3432973))

(assert (=> b!3176551 d!869609))

(declare-fun d!869613 () Bool)

(declare-fun lt!1068007 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4832 (List!35733) (InoxSet T!63130))

(assert (=> d!869613 (= lt!1068007 (select (content!4832 (list!12637 t!3671)) v!5469))))

(declare-fun e!1978555 () Bool)

(assert (=> d!869613 (= lt!1068007 e!1978555)))

(declare-fun res!1290655 () Bool)

(assert (=> d!869613 (=> (not res!1290655) (not e!1978555))))

(assert (=> d!869613 (= res!1290655 ((_ is Cons!35609) (list!12637 t!3671)))))

(assert (=> d!869613 (= (contains!6289 (list!12637 t!3671) v!5469) lt!1068007)))

(declare-fun b!3176563 () Bool)

(declare-fun e!1978556 () Bool)

(assert (=> b!3176563 (= e!1978555 e!1978556)))

(declare-fun res!1290654 () Bool)

(assert (=> b!3176563 (=> res!1290654 e!1978556)))

(assert (=> b!3176563 (= res!1290654 (= (h!41029 (list!12637 t!3671)) v!5469))))

(declare-fun b!3176564 () Bool)

(assert (=> b!3176564 (= e!1978556 (contains!6289 (t!234826 (list!12637 t!3671)) v!5469))))

(assert (= (and d!869613 res!1290655) b!3176563))

(assert (= (and b!3176563 (not res!1290654)) b!3176564))

(assert (=> d!869613 m!3432961))

(declare-fun m!3432981 () Bool)

(assert (=> d!869613 m!3432981))

(declare-fun m!3432983 () Bool)

(assert (=> d!869613 m!3432983))

(declare-fun m!3432985 () Bool)

(assert (=> b!3176564 m!3432985))

(assert (=> b!3176551 d!869613))

(declare-fun b!3176590 () Bool)

(declare-fun e!1978570 () List!35733)

(declare-fun ++!8518 (List!35733 List!35733) List!35733)

(assert (=> b!3176590 (= e!1978570 (++!8518 (list!12637 (left!27702 t!3671)) (list!12637 (right!28032 t!3671))))))

(declare-fun b!3176589 () Bool)

(assert (=> b!3176589 (= e!1978570 (list!12639 (xs!13668 t!3671)))))

(declare-fun d!869617 () Bool)

(declare-fun c!533777 () Bool)

(assert (=> d!869617 (= c!533777 ((_ is Empty!10550) t!3671))))

(declare-fun e!1978569 () List!35733)

(assert (=> d!869617 (= (list!12637 t!3671) e!1978569)))

(declare-fun b!3176587 () Bool)

(assert (=> b!3176587 (= e!1978569 Nil!35609)))

(declare-fun b!3176588 () Bool)

(assert (=> b!3176588 (= e!1978569 e!1978570)))

(declare-fun c!533778 () Bool)

(assert (=> b!3176588 (= c!533778 ((_ is Leaf!16703) t!3671))))

(assert (= (and d!869617 c!533777) b!3176587))

(assert (= (and d!869617 (not c!533777)) b!3176588))

(assert (= (and b!3176588 c!533778) b!3176589))

(assert (= (and b!3176588 (not c!533778)) b!3176590))

(declare-fun m!3432999 () Bool)

(assert (=> b!3176590 m!3432999))

(declare-fun m!3433001 () Bool)

(assert (=> b!3176590 m!3433001))

(assert (=> b!3176590 m!3432999))

(assert (=> b!3176590 m!3433001))

(declare-fun m!3433003 () Bool)

(assert (=> b!3176590 m!3433003))

(assert (=> b!3176589 m!3432969))

(assert (=> b!3176551 d!869617))

(declare-fun d!869623 () Bool)

(declare-fun c!533784 () Bool)

(assert (=> d!869623 (= c!533784 ((_ is Node!10550) t!3671))))

(declare-fun e!1978581 () Bool)

(assert (=> d!869623 (= (inv!48437 t!3671) e!1978581)))

(declare-fun b!3176606 () Bool)

(declare-fun inv!48441 (Conc!10550) Bool)

(assert (=> b!3176606 (= e!1978581 (inv!48441 t!3671))))

(declare-fun b!3176607 () Bool)

(declare-fun e!1978582 () Bool)

(assert (=> b!3176607 (= e!1978581 e!1978582)))

(declare-fun res!1290663 () Bool)

(assert (=> b!3176607 (= res!1290663 (not ((_ is Leaf!16703) t!3671)))))

(assert (=> b!3176607 (=> res!1290663 e!1978582)))

(declare-fun b!3176608 () Bool)

(declare-fun inv!48442 (Conc!10550) Bool)

(assert (=> b!3176608 (= e!1978582 (inv!48442 t!3671))))

(assert (= (and d!869623 c!533784) b!3176606))

(assert (= (and d!869623 (not c!533784)) b!3176607))

(assert (= (and b!3176607 (not res!1290663)) b!3176608))

(declare-fun m!3433009 () Bool)

(assert (=> b!3176606 m!3433009))

(declare-fun m!3433013 () Bool)

(assert (=> b!3176608 m!3433013))

(assert (=> start!297482 d!869623))

(declare-fun d!869629 () Bool)

(declare-fun c!533787 () Bool)

(assert (=> d!869629 (= c!533787 ((_ is Node!10550) (left!27702 t!3671)))))

(declare-fun e!1978587 () Bool)

(assert (=> d!869629 (= (inv!48437 (left!27702 t!3671)) e!1978587)))

(declare-fun b!3176615 () Bool)

(assert (=> b!3176615 (= e!1978587 (inv!48441 (left!27702 t!3671)))))

(declare-fun b!3176616 () Bool)

(declare-fun e!1978588 () Bool)

(assert (=> b!3176616 (= e!1978587 e!1978588)))

(declare-fun res!1290666 () Bool)

(assert (=> b!3176616 (= res!1290666 (not ((_ is Leaf!16703) (left!27702 t!3671))))))

(assert (=> b!3176616 (=> res!1290666 e!1978588)))

(declare-fun b!3176617 () Bool)

(assert (=> b!3176617 (= e!1978588 (inv!48442 (left!27702 t!3671)))))

(assert (= (and d!869629 c!533787) b!3176615))

(assert (= (and d!869629 (not c!533787)) b!3176616))

(assert (= (and b!3176616 (not res!1290666)) b!3176617))

(declare-fun m!3433021 () Bool)

(assert (=> b!3176615 m!3433021))

(declare-fun m!3433023 () Bool)

(assert (=> b!3176617 m!3433023))

(assert (=> b!3176552 d!869629))

(declare-fun d!869631 () Bool)

(declare-fun c!533788 () Bool)

(assert (=> d!869631 (= c!533788 ((_ is Node!10550) (right!28032 t!3671)))))

(declare-fun e!1978589 () Bool)

(assert (=> d!869631 (= (inv!48437 (right!28032 t!3671)) e!1978589)))

(declare-fun b!3176622 () Bool)

(assert (=> b!3176622 (= e!1978589 (inv!48441 (right!28032 t!3671)))))

(declare-fun b!3176623 () Bool)

(declare-fun e!1978592 () Bool)

(assert (=> b!3176623 (= e!1978589 e!1978592)))

(declare-fun res!1290667 () Bool)

(assert (=> b!3176623 (= res!1290667 (not ((_ is Leaf!16703) (right!28032 t!3671))))))

(assert (=> b!3176623 (=> res!1290667 e!1978592)))

(declare-fun b!3176624 () Bool)

(assert (=> b!3176624 (= e!1978592 (inv!48442 (right!28032 t!3671)))))

(assert (= (and d!869631 c!533788) b!3176622))

(assert (= (and d!869631 (not c!533788)) b!3176623))

(assert (= (and b!3176623 (not res!1290667)) b!3176624))

(declare-fun m!3433025 () Bool)

(assert (=> b!3176622 m!3433025))

(declare-fun m!3433027 () Bool)

(assert (=> b!3176624 m!3433027))

(assert (=> b!3176552 d!869631))

(declare-fun d!869633 () Bool)

(declare-fun size!26907 (List!35733) Int)

(assert (=> d!869633 (= (inv!48438 (xs!13668 t!3671)) (<= (size!26907 (innerList!10610 (xs!13668 t!3671))) 2147483647))))

(declare-fun bs!539749 () Bool)

(assert (= bs!539749 d!869633))

(declare-fun m!3433029 () Bool)

(assert (=> bs!539749 m!3433029))

(assert (=> b!3176553 d!869633))

(declare-fun tp!1004697 () Bool)

(declare-fun tp!1004698 () Bool)

(declare-fun e!1978607 () Bool)

(declare-fun b!3176648 () Bool)

(assert (=> b!3176648 (= e!1978607 (and (inv!48437 (left!27702 (left!27702 t!3671))) tp!1004698 (inv!48437 (right!28032 (left!27702 t!3671))) tp!1004697))))

(declare-fun b!3176650 () Bool)

(declare-fun e!1978606 () Bool)

(declare-fun tp!1004696 () Bool)

(assert (=> b!3176650 (= e!1978606 tp!1004696)))

(declare-fun b!3176649 () Bool)

(assert (=> b!3176649 (= e!1978607 (and (inv!48438 (xs!13668 (left!27702 t!3671))) e!1978606))))

(assert (=> b!3176552 (= tp!1004674 (and (inv!48437 (left!27702 t!3671)) e!1978607))))

(assert (= (and b!3176552 ((_ is Node!10550) (left!27702 t!3671))) b!3176648))

(assert (= b!3176649 b!3176650))

(assert (= (and b!3176552 ((_ is Leaf!16703) (left!27702 t!3671))) b!3176649))

(declare-fun m!3433043 () Bool)

(assert (=> b!3176648 m!3433043))

(declare-fun m!3433045 () Bool)

(assert (=> b!3176648 m!3433045))

(declare-fun m!3433047 () Bool)

(assert (=> b!3176649 m!3433047))

(assert (=> b!3176552 m!3432953))

(declare-fun e!1978609 () Bool)

(declare-fun b!3176651 () Bool)

(declare-fun tp!1004700 () Bool)

(declare-fun tp!1004701 () Bool)

(assert (=> b!3176651 (= e!1978609 (and (inv!48437 (left!27702 (right!28032 t!3671))) tp!1004701 (inv!48437 (right!28032 (right!28032 t!3671))) tp!1004700))))

(declare-fun b!3176653 () Bool)

(declare-fun e!1978608 () Bool)

(declare-fun tp!1004699 () Bool)

(assert (=> b!3176653 (= e!1978608 tp!1004699)))

(declare-fun b!3176652 () Bool)

(assert (=> b!3176652 (= e!1978609 (and (inv!48438 (xs!13668 (right!28032 t!3671))) e!1978608))))

(assert (=> b!3176552 (= tp!1004673 (and (inv!48437 (right!28032 t!3671)) e!1978609))))

(assert (= (and b!3176552 ((_ is Node!10550) (right!28032 t!3671))) b!3176651))

(assert (= b!3176652 b!3176653))

(assert (= (and b!3176552 ((_ is Leaf!16703) (right!28032 t!3671))) b!3176652))

(declare-fun m!3433049 () Bool)

(assert (=> b!3176651 m!3433049))

(declare-fun m!3433051 () Bool)

(assert (=> b!3176651 m!3433051))

(declare-fun m!3433053 () Bool)

(assert (=> b!3176652 m!3433053))

(assert (=> b!3176552 m!3432955))

(declare-fun b!3176658 () Bool)

(declare-fun e!1978612 () Bool)

(declare-fun tp!1004704 () Bool)

(assert (=> b!3176658 (= e!1978612 (and tp_is_empty!17225 tp!1004704))))

(assert (=> b!3176554 (= tp!1004672 e!1978612)))

(assert (= (and b!3176554 ((_ is Cons!35609) (innerList!10610 (xs!13668 t!3671)))) b!3176658))

(check-sat (not b!3176650) (not b!3176653) (not b!3176658) tp_is_empty!17225 (not d!869609) (not b!3176624) (not b!3176648) (not b!3176649) (not b!3176564) (not b!3176617) (not b!3176589) (not b!3176615) (not b!3176552) (not b!3176606) (not b!3176608) (not b!3176622) (not b!3176652) (not d!869633) (not b!3176590) (not d!869613) (not b!3176651))
(check-sat)
