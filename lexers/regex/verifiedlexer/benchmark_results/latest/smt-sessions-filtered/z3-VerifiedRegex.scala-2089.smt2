; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105816 () Bool)

(assert start!105816)

(declare-fun b!1190734 () Bool)

(declare-fun res!537906 () Bool)

(declare-fun e!765520 () Bool)

(assert (=> b!1190734 (=> (not res!537906) (not e!765520))))

(declare-datatypes ((T!21460 0))(
  ( (T!21461 (val!3842 Int)) )
))
(declare-datatypes ((List!12021 0))(
  ( (Nil!11997) (Cons!11997 (h!17398 T!21460) (t!112233 List!12021)) )
))
(declare-datatypes ((IArray!7865 0))(
  ( (IArray!7866 (innerList!3990 List!12021)) )
))
(declare-datatypes ((Conc!3930 0))(
  ( (Node!3930 (left!10443 Conc!3930) (right!10773 Conc!3930) (csize!8090 Int) (cheight!4141 Int)) (Leaf!6020 (xs!6635 IArray!7865) (csize!8091 Int)) (Empty!3930) )
))
(declare-fun t!4115 () Conc!3930)

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(get-info :version)

(assert (=> b!1190734 (= res!537906 (and (not (= from!553 until!31)) ((_ is Leaf!6020) t!4115) (not (= (- until!31 from!553) 0))))))

(declare-fun b!1190735 () Bool)

(declare-fun e!765518 () Bool)

(declare-fun e!765519 () Bool)

(declare-fun inv!15874 (IArray!7865) Bool)

(assert (=> b!1190735 (= e!765518 (and (inv!15874 (xs!6635 t!4115)) e!765519))))

(declare-fun b!1190736 () Bool)

(declare-fun res!537905 () Bool)

(assert (=> b!1190736 (=> (not res!537905) (not e!765520))))

(declare-fun isBalanced!1115 (Conc!3930) Bool)

(assert (=> b!1190736 (= res!537905 (isBalanced!1115 t!4115))))

(declare-fun tp!339815 () Bool)

(declare-fun b!1190737 () Bool)

(declare-fun tp!339817 () Bool)

(declare-fun inv!15875 (Conc!3930) Bool)

(assert (=> b!1190737 (= e!765518 (and (inv!15875 (left!10443 t!4115)) tp!339815 (inv!15875 (right!10773 t!4115)) tp!339817))))

(declare-fun b!1190738 () Bool)

(declare-fun res!537903 () Bool)

(assert (=> b!1190738 (=> (not res!537903) (not e!765520))))

(declare-fun size!9474 (Conc!3930) Int)

(assert (=> b!1190738 (= res!537903 (<= until!31 (size!9474 t!4115)))))

(declare-fun b!1190739 () Bool)

(declare-fun size!9475 (IArray!7865) Int)

(assert (=> b!1190739 (= e!765520 (> until!31 (size!9475 (xs!6635 t!4115))))))

(declare-fun res!537904 () Bool)

(assert (=> start!105816 (=> (not res!537904) (not e!765520))))

(assert (=> start!105816 (= res!537904 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!105816 e!765520))

(assert (=> start!105816 true))

(assert (=> start!105816 (and (inv!15875 t!4115) e!765518)))

(declare-fun b!1190740 () Bool)

(declare-fun tp!339816 () Bool)

(assert (=> b!1190740 (= e!765519 tp!339816)))

(assert (= (and start!105816 res!537904) b!1190738))

(assert (= (and b!1190738 res!537903) b!1190736))

(assert (= (and b!1190736 res!537905) b!1190734))

(assert (= (and b!1190734 res!537906) b!1190739))

(assert (= (and start!105816 ((_ is Node!3930) t!4115)) b!1190737))

(assert (= b!1190735 b!1190740))

(assert (= (and start!105816 ((_ is Leaf!6020) t!4115)) b!1190735))

(declare-fun m!1365677 () Bool)

(assert (=> b!1190739 m!1365677))

(declare-fun m!1365679 () Bool)

(assert (=> b!1190735 m!1365679))

(declare-fun m!1365681 () Bool)

(assert (=> b!1190738 m!1365681))

(declare-fun m!1365683 () Bool)

(assert (=> b!1190737 m!1365683))

(declare-fun m!1365685 () Bool)

(assert (=> b!1190737 m!1365685))

(declare-fun m!1365687 () Bool)

(assert (=> b!1190736 m!1365687))

(declare-fun m!1365689 () Bool)

(assert (=> start!105816 m!1365689))

(check-sat (not start!105816) (not b!1190740) (not b!1190739) (not b!1190735) (not b!1190738) (not b!1190737) (not b!1190736))
(check-sat)
(get-model)

(declare-fun d!340234 () Bool)

(declare-fun lt!409199 () Int)

(declare-fun size!9476 (List!12021) Int)

(declare-fun list!4404 (IArray!7865) List!12021)

(assert (=> d!340234 (= lt!409199 (size!9476 (list!4404 (xs!6635 t!4115))))))

(declare-fun choose!7697 (IArray!7865) Int)

(assert (=> d!340234 (= lt!409199 (choose!7697 (xs!6635 t!4115)))))

(assert (=> d!340234 (= (size!9475 (xs!6635 t!4115)) lt!409199)))

(declare-fun bs!287869 () Bool)

(assert (= bs!287869 d!340234))

(declare-fun m!1365691 () Bool)

(assert (=> bs!287869 m!1365691))

(assert (=> bs!287869 m!1365691))

(declare-fun m!1365693 () Bool)

(assert (=> bs!287869 m!1365693))

(declare-fun m!1365695 () Bool)

(assert (=> bs!287869 m!1365695))

(assert (=> b!1190739 d!340234))

(declare-fun d!340236 () Bool)

(declare-fun c!197615 () Bool)

(assert (=> d!340236 (= c!197615 ((_ is Node!3930) t!4115))))

(declare-fun e!765531 () Bool)

(assert (=> d!340236 (= (inv!15875 t!4115) e!765531)))

(declare-fun b!1190765 () Bool)

(declare-fun inv!15876 (Conc!3930) Bool)

(assert (=> b!1190765 (= e!765531 (inv!15876 t!4115))))

(declare-fun b!1190766 () Bool)

(declare-fun e!765532 () Bool)

(assert (=> b!1190766 (= e!765531 e!765532)))

(declare-fun res!537927 () Bool)

(assert (=> b!1190766 (= res!537927 (not ((_ is Leaf!6020) t!4115)))))

(assert (=> b!1190766 (=> res!537927 e!765532)))

(declare-fun b!1190767 () Bool)

(declare-fun inv!15877 (Conc!3930) Bool)

(assert (=> b!1190767 (= e!765532 (inv!15877 t!4115))))

(assert (= (and d!340236 c!197615) b!1190765))

(assert (= (and d!340236 (not c!197615)) b!1190766))

(assert (= (and b!1190766 (not res!537927)) b!1190767))

(declare-fun m!1365697 () Bool)

(assert (=> b!1190765 m!1365697))

(declare-fun m!1365699 () Bool)

(assert (=> b!1190767 m!1365699))

(assert (=> start!105816 d!340236))

(declare-fun d!340238 () Bool)

(declare-fun c!197616 () Bool)

(assert (=> d!340238 (= c!197616 ((_ is Node!3930) (left!10443 t!4115)))))

(declare-fun e!765533 () Bool)

(assert (=> d!340238 (= (inv!15875 (left!10443 t!4115)) e!765533)))

(declare-fun b!1190768 () Bool)

(assert (=> b!1190768 (= e!765533 (inv!15876 (left!10443 t!4115)))))

(declare-fun b!1190769 () Bool)

(declare-fun e!765534 () Bool)

(assert (=> b!1190769 (= e!765533 e!765534)))

(declare-fun res!537928 () Bool)

(assert (=> b!1190769 (= res!537928 (not ((_ is Leaf!6020) (left!10443 t!4115))))))

(assert (=> b!1190769 (=> res!537928 e!765534)))

(declare-fun b!1190770 () Bool)

(assert (=> b!1190770 (= e!765534 (inv!15877 (left!10443 t!4115)))))

(assert (= (and d!340238 c!197616) b!1190768))

(assert (= (and d!340238 (not c!197616)) b!1190769))

(assert (= (and b!1190769 (not res!537928)) b!1190770))

(declare-fun m!1365713 () Bool)

(assert (=> b!1190768 m!1365713))

(declare-fun m!1365715 () Bool)

(assert (=> b!1190770 m!1365715))

(assert (=> b!1190737 d!340238))

(declare-fun d!340242 () Bool)

(declare-fun c!197617 () Bool)

(assert (=> d!340242 (= c!197617 ((_ is Node!3930) (right!10773 t!4115)))))

(declare-fun e!765535 () Bool)

(assert (=> d!340242 (= (inv!15875 (right!10773 t!4115)) e!765535)))

(declare-fun b!1190771 () Bool)

(assert (=> b!1190771 (= e!765535 (inv!15876 (right!10773 t!4115)))))

(declare-fun b!1190772 () Bool)

(declare-fun e!765536 () Bool)

(assert (=> b!1190772 (= e!765535 e!765536)))

(declare-fun res!537929 () Bool)

(assert (=> b!1190772 (= res!537929 (not ((_ is Leaf!6020) (right!10773 t!4115))))))

(assert (=> b!1190772 (=> res!537929 e!765536)))

(declare-fun b!1190773 () Bool)

(assert (=> b!1190773 (= e!765536 (inv!15877 (right!10773 t!4115)))))

(assert (= (and d!340242 c!197617) b!1190771))

(assert (= (and d!340242 (not c!197617)) b!1190772))

(assert (= (and b!1190772 (not res!537929)) b!1190773))

(declare-fun m!1365717 () Bool)

(assert (=> b!1190771 m!1365717))

(declare-fun m!1365719 () Bool)

(assert (=> b!1190773 m!1365719))

(assert (=> b!1190737 d!340242))

(declare-fun d!340244 () Bool)

(declare-fun lt!409202 () Int)

(declare-fun list!4406 (Conc!3930) List!12021)

(assert (=> d!340244 (= lt!409202 (size!9476 (list!4406 t!4115)))))

(assert (=> d!340244 (= lt!409202 (ite ((_ is Empty!3930) t!4115) 0 (ite ((_ is Leaf!6020) t!4115) (csize!8091 t!4115) (csize!8090 t!4115))))))

(assert (=> d!340244 (= (size!9474 t!4115) lt!409202)))

(declare-fun bs!287871 () Bool)

(assert (= bs!287871 d!340244))

(declare-fun m!1365723 () Bool)

(assert (=> bs!287871 m!1365723))

(assert (=> bs!287871 m!1365723))

(declare-fun m!1365725 () Bool)

(assert (=> bs!287871 m!1365725))

(assert (=> b!1190738 d!340244))

(declare-fun b!1190801 () Bool)

(declare-fun e!765552 () Bool)

(declare-fun isEmpty!7209 (Conc!3930) Bool)

(assert (=> b!1190801 (= e!765552 (not (isEmpty!7209 (right!10773 t!4115))))))

(declare-fun b!1190802 () Bool)

(declare-fun res!537950 () Bool)

(assert (=> b!1190802 (=> (not res!537950) (not e!765552))))

(assert (=> b!1190802 (= res!537950 (not (isEmpty!7209 (left!10443 t!4115))))))

(declare-fun b!1190803 () Bool)

(declare-fun res!537947 () Bool)

(assert (=> b!1190803 (=> (not res!537947) (not e!765552))))

(assert (=> b!1190803 (= res!537947 (isBalanced!1115 (left!10443 t!4115)))))

(declare-fun b!1190805 () Bool)

(declare-fun res!537948 () Bool)

(assert (=> b!1190805 (=> (not res!537948) (not e!765552))))

(assert (=> b!1190805 (= res!537948 (isBalanced!1115 (right!10773 t!4115)))))

(declare-fun b!1190806 () Bool)

(declare-fun e!765551 () Bool)

(assert (=> b!1190806 (= e!765551 e!765552)))

(declare-fun res!537952 () Bool)

(assert (=> b!1190806 (=> (not res!537952) (not e!765552))))

(declare-fun height!530 (Conc!3930) Int)

(assert (=> b!1190806 (= res!537952 (<= (- 1) (- (height!530 (left!10443 t!4115)) (height!530 (right!10773 t!4115)))))))

(declare-fun d!340248 () Bool)

(declare-fun res!537949 () Bool)

(assert (=> d!340248 (=> res!537949 e!765551)))

(assert (=> d!340248 (= res!537949 (not ((_ is Node!3930) t!4115)))))

(assert (=> d!340248 (= (isBalanced!1115 t!4115) e!765551)))

(declare-fun b!1190804 () Bool)

(declare-fun res!537951 () Bool)

(assert (=> b!1190804 (=> (not res!537951) (not e!765552))))

(assert (=> b!1190804 (= res!537951 (<= (- (height!530 (left!10443 t!4115)) (height!530 (right!10773 t!4115))) 1))))

(assert (= (and d!340248 (not res!537949)) b!1190806))

(assert (= (and b!1190806 res!537952) b!1190804))

(assert (= (and b!1190804 res!537951) b!1190803))

(assert (= (and b!1190803 res!537947) b!1190805))

(assert (= (and b!1190805 res!537948) b!1190802))

(assert (= (and b!1190802 res!537950) b!1190801))

(declare-fun m!1365743 () Bool)

(assert (=> b!1190802 m!1365743))

(declare-fun m!1365745 () Bool)

(assert (=> b!1190805 m!1365745))

(declare-fun m!1365747 () Bool)

(assert (=> b!1190806 m!1365747))

(declare-fun m!1365749 () Bool)

(assert (=> b!1190806 m!1365749))

(assert (=> b!1190804 m!1365747))

(assert (=> b!1190804 m!1365749))

(declare-fun m!1365751 () Bool)

(assert (=> b!1190803 m!1365751))

(declare-fun m!1365753 () Bool)

(assert (=> b!1190801 m!1365753))

(assert (=> b!1190736 d!340248))

(declare-fun d!340258 () Bool)

(assert (=> d!340258 (= (inv!15874 (xs!6635 t!4115)) (<= (size!9476 (innerList!3990 (xs!6635 t!4115))) 2147483647))))

(declare-fun bs!287874 () Bool)

(assert (= bs!287874 d!340258))

(declare-fun m!1365761 () Bool)

(assert (=> bs!287874 m!1365761))

(assert (=> b!1190735 d!340258))

(declare-fun e!765565 () Bool)

(declare-fun tp!339835 () Bool)

(declare-fun b!1190828 () Bool)

(declare-fun tp!339834 () Bool)

(assert (=> b!1190828 (= e!765565 (and (inv!15875 (left!10443 (left!10443 t!4115))) tp!339835 (inv!15875 (right!10773 (left!10443 t!4115))) tp!339834))))

(declare-fun b!1190830 () Bool)

(declare-fun e!765564 () Bool)

(declare-fun tp!339833 () Bool)

(assert (=> b!1190830 (= e!765564 tp!339833)))

(declare-fun b!1190829 () Bool)

(assert (=> b!1190829 (= e!765565 (and (inv!15874 (xs!6635 (left!10443 t!4115))) e!765564))))

(assert (=> b!1190737 (= tp!339815 (and (inv!15875 (left!10443 t!4115)) e!765565))))

(assert (= (and b!1190737 ((_ is Node!3930) (left!10443 t!4115))) b!1190828))

(assert (= b!1190829 b!1190830))

(assert (= (and b!1190737 ((_ is Leaf!6020) (left!10443 t!4115))) b!1190829))

(declare-fun m!1365763 () Bool)

(assert (=> b!1190828 m!1365763))

(declare-fun m!1365765 () Bool)

(assert (=> b!1190828 m!1365765))

(declare-fun m!1365769 () Bool)

(assert (=> b!1190829 m!1365769))

(assert (=> b!1190737 m!1365683))

(declare-fun tp!339841 () Bool)

(declare-fun tp!339840 () Bool)

(declare-fun b!1190834 () Bool)

(declare-fun e!765569 () Bool)

(assert (=> b!1190834 (= e!765569 (and (inv!15875 (left!10443 (right!10773 t!4115))) tp!339841 (inv!15875 (right!10773 (right!10773 t!4115))) tp!339840))))

(declare-fun b!1190836 () Bool)

(declare-fun e!765568 () Bool)

(declare-fun tp!339839 () Bool)

(assert (=> b!1190836 (= e!765568 tp!339839)))

(declare-fun b!1190835 () Bool)

(assert (=> b!1190835 (= e!765569 (and (inv!15874 (xs!6635 (right!10773 t!4115))) e!765568))))

(assert (=> b!1190737 (= tp!339817 (and (inv!15875 (right!10773 t!4115)) e!765569))))

(assert (= (and b!1190737 ((_ is Node!3930) (right!10773 t!4115))) b!1190834))

(assert (= b!1190835 b!1190836))

(assert (= (and b!1190737 ((_ is Leaf!6020) (right!10773 t!4115))) b!1190835))

(declare-fun m!1365775 () Bool)

(assert (=> b!1190834 m!1365775))

(declare-fun m!1365777 () Bool)

(assert (=> b!1190834 m!1365777))

(declare-fun m!1365781 () Bool)

(assert (=> b!1190835 m!1365781))

(assert (=> b!1190737 m!1365685))

(declare-fun b!1190844 () Bool)

(declare-fun e!765574 () Bool)

(declare-fun tp_is_empty!5899 () Bool)

(declare-fun tp!339847 () Bool)

(assert (=> b!1190844 (= e!765574 (and tp_is_empty!5899 tp!339847))))

(assert (=> b!1190740 (= tp!339816 e!765574)))

(assert (= (and b!1190740 ((_ is Cons!11997) (innerList!3990 (xs!6635 t!4115)))) b!1190844))

(check-sat (not b!1190767) (not b!1190802) (not d!340244) (not b!1190829) (not b!1190830) (not b!1190836) (not d!340234) (not b!1190737) (not b!1190804) (not b!1190771) (not b!1190806) (not b!1190844) tp_is_empty!5899 (not b!1190801) (not b!1190765) (not b!1190773) (not b!1190803) (not b!1190805) (not d!340258) (not b!1190834) (not b!1190768) (not b!1190770) (not b!1190835) (not b!1190828))
(check-sat)
(get-model)

(declare-fun b!1190845 () Bool)

(declare-fun e!765576 () Bool)

(assert (=> b!1190845 (= e!765576 (not (isEmpty!7209 (right!10773 (right!10773 t!4115)))))))

(declare-fun b!1190846 () Bool)

(declare-fun res!537956 () Bool)

(assert (=> b!1190846 (=> (not res!537956) (not e!765576))))

(assert (=> b!1190846 (= res!537956 (not (isEmpty!7209 (left!10443 (right!10773 t!4115)))))))

(declare-fun b!1190847 () Bool)

(declare-fun res!537953 () Bool)

(assert (=> b!1190847 (=> (not res!537953) (not e!765576))))

(assert (=> b!1190847 (= res!537953 (isBalanced!1115 (left!10443 (right!10773 t!4115))))))

(declare-fun b!1190849 () Bool)

(declare-fun res!537954 () Bool)

(assert (=> b!1190849 (=> (not res!537954) (not e!765576))))

(assert (=> b!1190849 (= res!537954 (isBalanced!1115 (right!10773 (right!10773 t!4115))))))

(declare-fun b!1190850 () Bool)

(declare-fun e!765575 () Bool)

(assert (=> b!1190850 (= e!765575 e!765576)))

(declare-fun res!537958 () Bool)

(assert (=> b!1190850 (=> (not res!537958) (not e!765576))))

(assert (=> b!1190850 (= res!537958 (<= (- 1) (- (height!530 (left!10443 (right!10773 t!4115))) (height!530 (right!10773 (right!10773 t!4115))))))))

(declare-fun d!340260 () Bool)

(declare-fun res!537955 () Bool)

(assert (=> d!340260 (=> res!537955 e!765575)))

(assert (=> d!340260 (= res!537955 (not ((_ is Node!3930) (right!10773 t!4115))))))

(assert (=> d!340260 (= (isBalanced!1115 (right!10773 t!4115)) e!765575)))

(declare-fun b!1190848 () Bool)

(declare-fun res!537957 () Bool)

(assert (=> b!1190848 (=> (not res!537957) (not e!765576))))

(assert (=> b!1190848 (= res!537957 (<= (- (height!530 (left!10443 (right!10773 t!4115))) (height!530 (right!10773 (right!10773 t!4115)))) 1))))

(assert (= (and d!340260 (not res!537955)) b!1190850))

(assert (= (and b!1190850 res!537958) b!1190848))

(assert (= (and b!1190848 res!537957) b!1190847))

(assert (= (and b!1190847 res!537953) b!1190849))

(assert (= (and b!1190849 res!537954) b!1190846))

(assert (= (and b!1190846 res!537956) b!1190845))

(declare-fun m!1365787 () Bool)

(assert (=> b!1190846 m!1365787))

(declare-fun m!1365789 () Bool)

(assert (=> b!1190849 m!1365789))

(declare-fun m!1365791 () Bool)

(assert (=> b!1190850 m!1365791))

(declare-fun m!1365793 () Bool)

(assert (=> b!1190850 m!1365793))

(assert (=> b!1190848 m!1365791))

(assert (=> b!1190848 m!1365793))

(declare-fun m!1365795 () Bool)

(assert (=> b!1190847 m!1365795))

(declare-fun m!1365797 () Bool)

(assert (=> b!1190845 m!1365797))

(assert (=> b!1190805 d!340260))

(assert (=> b!1190737 d!340238))

(assert (=> b!1190737 d!340242))

(declare-fun d!340262 () Bool)

(declare-fun res!537963 () Bool)

(declare-fun e!765579 () Bool)

(assert (=> d!340262 (=> (not res!537963) (not e!765579))))

(assert (=> d!340262 (= res!537963 (<= (size!9476 (list!4404 (xs!6635 (right!10773 t!4115)))) 512))))

(assert (=> d!340262 (= (inv!15877 (right!10773 t!4115)) e!765579)))

(declare-fun b!1190855 () Bool)

(declare-fun res!537964 () Bool)

(assert (=> b!1190855 (=> (not res!537964) (not e!765579))))

(assert (=> b!1190855 (= res!537964 (= (csize!8091 (right!10773 t!4115)) (size!9476 (list!4404 (xs!6635 (right!10773 t!4115))))))))

(declare-fun b!1190856 () Bool)

(assert (=> b!1190856 (= e!765579 (and (> (csize!8091 (right!10773 t!4115)) 0) (<= (csize!8091 (right!10773 t!4115)) 512)))))

(assert (= (and d!340262 res!537963) b!1190855))

(assert (= (and b!1190855 res!537964) b!1190856))

(declare-fun m!1365799 () Bool)

(assert (=> d!340262 m!1365799))

(assert (=> d!340262 m!1365799))

(declare-fun m!1365801 () Bool)

(assert (=> d!340262 m!1365801))

(assert (=> b!1190855 m!1365799))

(assert (=> b!1190855 m!1365799))

(assert (=> b!1190855 m!1365801))

(assert (=> b!1190773 d!340262))

(declare-fun d!340264 () Bool)

(declare-fun lt!409211 () Int)

(assert (=> d!340264 (>= lt!409211 0)))

(declare-fun e!765582 () Int)

(assert (=> d!340264 (= lt!409211 e!765582)))

(declare-fun c!197625 () Bool)

(assert (=> d!340264 (= c!197625 ((_ is Nil!11997) (innerList!3990 (xs!6635 t!4115))))))

(assert (=> d!340264 (= (size!9476 (innerList!3990 (xs!6635 t!4115))) lt!409211)))

(declare-fun b!1190861 () Bool)

(assert (=> b!1190861 (= e!765582 0)))

(declare-fun b!1190862 () Bool)

(assert (=> b!1190862 (= e!765582 (+ 1 (size!9476 (t!112233 (innerList!3990 (xs!6635 t!4115))))))))

(assert (= (and d!340264 c!197625) b!1190861))

(assert (= (and d!340264 (not c!197625)) b!1190862))

(declare-fun m!1365803 () Bool)

(assert (=> b!1190862 m!1365803))

(assert (=> d!340258 d!340264))

(declare-fun d!340266 () Bool)

(assert (=> d!340266 (= (height!530 (left!10443 t!4115)) (ite ((_ is Empty!3930) (left!10443 t!4115)) 0 (ite ((_ is Leaf!6020) (left!10443 t!4115)) 1 (cheight!4141 (left!10443 t!4115)))))))

(assert (=> b!1190804 d!340266))

(declare-fun d!340268 () Bool)

(assert (=> d!340268 (= (height!530 (right!10773 t!4115)) (ite ((_ is Empty!3930) (right!10773 t!4115)) 0 (ite ((_ is Leaf!6020) (right!10773 t!4115)) 1 (cheight!4141 (right!10773 t!4115)))))))

(assert (=> b!1190804 d!340268))

(declare-fun d!340270 () Bool)

(declare-fun res!537971 () Bool)

(declare-fun e!765585 () Bool)

(assert (=> d!340270 (=> (not res!537971) (not e!765585))))

(assert (=> d!340270 (= res!537971 (= (csize!8090 t!4115) (+ (size!9474 (left!10443 t!4115)) (size!9474 (right!10773 t!4115)))))))

(assert (=> d!340270 (= (inv!15876 t!4115) e!765585)))

(declare-fun b!1190869 () Bool)

(declare-fun res!537972 () Bool)

(assert (=> b!1190869 (=> (not res!537972) (not e!765585))))

(assert (=> b!1190869 (= res!537972 (and (not (= (left!10443 t!4115) Empty!3930)) (not (= (right!10773 t!4115) Empty!3930))))))

(declare-fun b!1190870 () Bool)

(declare-fun res!537973 () Bool)

(assert (=> b!1190870 (=> (not res!537973) (not e!765585))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1190870 (= res!537973 (= (cheight!4141 t!4115) (+ (max!0 (height!530 (left!10443 t!4115)) (height!530 (right!10773 t!4115))) 1)))))

(declare-fun b!1190871 () Bool)

(assert (=> b!1190871 (= e!765585 (<= 0 (cheight!4141 t!4115)))))

(assert (= (and d!340270 res!537971) b!1190869))

(assert (= (and b!1190869 res!537972) b!1190870))

(assert (= (and b!1190870 res!537973) b!1190871))

(declare-fun m!1365805 () Bool)

(assert (=> d!340270 m!1365805))

(declare-fun m!1365807 () Bool)

(assert (=> d!340270 m!1365807))

(assert (=> b!1190870 m!1365747))

(assert (=> b!1190870 m!1365749))

(assert (=> b!1190870 m!1365747))

(assert (=> b!1190870 m!1365749))

(declare-fun m!1365809 () Bool)

(assert (=> b!1190870 m!1365809))

(assert (=> b!1190765 d!340270))

(declare-fun d!340272 () Bool)

(declare-fun res!537974 () Bool)

(declare-fun e!765586 () Bool)

(assert (=> d!340272 (=> (not res!537974) (not e!765586))))

(assert (=> d!340272 (= res!537974 (<= (size!9476 (list!4404 (xs!6635 (left!10443 t!4115)))) 512))))

(assert (=> d!340272 (= (inv!15877 (left!10443 t!4115)) e!765586)))

(declare-fun b!1190872 () Bool)

(declare-fun res!537975 () Bool)

(assert (=> b!1190872 (=> (not res!537975) (not e!765586))))

(assert (=> b!1190872 (= res!537975 (= (csize!8091 (left!10443 t!4115)) (size!9476 (list!4404 (xs!6635 (left!10443 t!4115))))))))

(declare-fun b!1190873 () Bool)

(assert (=> b!1190873 (= e!765586 (and (> (csize!8091 (left!10443 t!4115)) 0) (<= (csize!8091 (left!10443 t!4115)) 512)))))

(assert (= (and d!340272 res!537974) b!1190872))

(assert (= (and b!1190872 res!537975) b!1190873))

(declare-fun m!1365811 () Bool)

(assert (=> d!340272 m!1365811))

(assert (=> d!340272 m!1365811))

(declare-fun m!1365813 () Bool)

(assert (=> d!340272 m!1365813))

(assert (=> b!1190872 m!1365811))

(assert (=> b!1190872 m!1365811))

(assert (=> b!1190872 m!1365813))

(assert (=> b!1190770 d!340272))

(declare-fun d!340274 () Bool)

(declare-fun lt!409214 () Bool)

(declare-fun isEmpty!7210 (List!12021) Bool)

(assert (=> d!340274 (= lt!409214 (isEmpty!7210 (list!4406 (left!10443 t!4115))))))

(assert (=> d!340274 (= lt!409214 (= (size!9474 (left!10443 t!4115)) 0))))

(assert (=> d!340274 (= (isEmpty!7209 (left!10443 t!4115)) lt!409214)))

(declare-fun bs!287875 () Bool)

(assert (= bs!287875 d!340274))

(declare-fun m!1365815 () Bool)

(assert (=> bs!287875 m!1365815))

(assert (=> bs!287875 m!1365815))

(declare-fun m!1365817 () Bool)

(assert (=> bs!287875 m!1365817))

(assert (=> bs!287875 m!1365805))

(assert (=> b!1190802 d!340274))

(declare-fun b!1190874 () Bool)

(declare-fun e!765588 () Bool)

(assert (=> b!1190874 (= e!765588 (not (isEmpty!7209 (right!10773 (left!10443 t!4115)))))))

(declare-fun b!1190875 () Bool)

(declare-fun res!537979 () Bool)

(assert (=> b!1190875 (=> (not res!537979) (not e!765588))))

(assert (=> b!1190875 (= res!537979 (not (isEmpty!7209 (left!10443 (left!10443 t!4115)))))))

(declare-fun b!1190876 () Bool)

(declare-fun res!537976 () Bool)

(assert (=> b!1190876 (=> (not res!537976) (not e!765588))))

(assert (=> b!1190876 (= res!537976 (isBalanced!1115 (left!10443 (left!10443 t!4115))))))

(declare-fun b!1190878 () Bool)

(declare-fun res!537977 () Bool)

(assert (=> b!1190878 (=> (not res!537977) (not e!765588))))

(assert (=> b!1190878 (= res!537977 (isBalanced!1115 (right!10773 (left!10443 t!4115))))))

(declare-fun b!1190879 () Bool)

(declare-fun e!765587 () Bool)

(assert (=> b!1190879 (= e!765587 e!765588)))

(declare-fun res!537981 () Bool)

(assert (=> b!1190879 (=> (not res!537981) (not e!765588))))

(assert (=> b!1190879 (= res!537981 (<= (- 1) (- (height!530 (left!10443 (left!10443 t!4115))) (height!530 (right!10773 (left!10443 t!4115))))))))

(declare-fun d!340276 () Bool)

(declare-fun res!537978 () Bool)

(assert (=> d!340276 (=> res!537978 e!765587)))

(assert (=> d!340276 (= res!537978 (not ((_ is Node!3930) (left!10443 t!4115))))))

(assert (=> d!340276 (= (isBalanced!1115 (left!10443 t!4115)) e!765587)))

(declare-fun b!1190877 () Bool)

(declare-fun res!537980 () Bool)

(assert (=> b!1190877 (=> (not res!537980) (not e!765588))))

(assert (=> b!1190877 (= res!537980 (<= (- (height!530 (left!10443 (left!10443 t!4115))) (height!530 (right!10773 (left!10443 t!4115)))) 1))))

(assert (= (and d!340276 (not res!537978)) b!1190879))

(assert (= (and b!1190879 res!537981) b!1190877))

(assert (= (and b!1190877 res!537980) b!1190876))

(assert (= (and b!1190876 res!537976) b!1190878))

(assert (= (and b!1190878 res!537977) b!1190875))

(assert (= (and b!1190875 res!537979) b!1190874))

(declare-fun m!1365819 () Bool)

(assert (=> b!1190875 m!1365819))

(declare-fun m!1365821 () Bool)

(assert (=> b!1190878 m!1365821))

(declare-fun m!1365823 () Bool)

(assert (=> b!1190879 m!1365823))

(declare-fun m!1365825 () Bool)

(assert (=> b!1190879 m!1365825))

(assert (=> b!1190877 m!1365823))

(assert (=> b!1190877 m!1365825))

(declare-fun m!1365827 () Bool)

(assert (=> b!1190876 m!1365827))

(declare-fun m!1365829 () Bool)

(assert (=> b!1190874 m!1365829))

(assert (=> b!1190803 d!340276))

(declare-fun d!340278 () Bool)

(declare-fun lt!409215 () Bool)

(assert (=> d!340278 (= lt!409215 (isEmpty!7210 (list!4406 (right!10773 t!4115))))))

(assert (=> d!340278 (= lt!409215 (= (size!9474 (right!10773 t!4115)) 0))))

(assert (=> d!340278 (= (isEmpty!7209 (right!10773 t!4115)) lt!409215)))

(declare-fun bs!287876 () Bool)

(assert (= bs!287876 d!340278))

(declare-fun m!1365831 () Bool)

(assert (=> bs!287876 m!1365831))

(assert (=> bs!287876 m!1365831))

(declare-fun m!1365833 () Bool)

(assert (=> bs!287876 m!1365833))

(assert (=> bs!287876 m!1365807))

(assert (=> b!1190801 d!340278))

(declare-fun d!340280 () Bool)

(declare-fun res!537982 () Bool)

(declare-fun e!765589 () Bool)

(assert (=> d!340280 (=> (not res!537982) (not e!765589))))

(assert (=> d!340280 (= res!537982 (= (csize!8090 (right!10773 t!4115)) (+ (size!9474 (left!10443 (right!10773 t!4115))) (size!9474 (right!10773 (right!10773 t!4115))))))))

(assert (=> d!340280 (= (inv!15876 (right!10773 t!4115)) e!765589)))

(declare-fun b!1190880 () Bool)

(declare-fun res!537983 () Bool)

(assert (=> b!1190880 (=> (not res!537983) (not e!765589))))

(assert (=> b!1190880 (= res!537983 (and (not (= (left!10443 (right!10773 t!4115)) Empty!3930)) (not (= (right!10773 (right!10773 t!4115)) Empty!3930))))))

(declare-fun b!1190881 () Bool)

(declare-fun res!537984 () Bool)

(assert (=> b!1190881 (=> (not res!537984) (not e!765589))))

(assert (=> b!1190881 (= res!537984 (= (cheight!4141 (right!10773 t!4115)) (+ (max!0 (height!530 (left!10443 (right!10773 t!4115))) (height!530 (right!10773 (right!10773 t!4115)))) 1)))))

(declare-fun b!1190882 () Bool)

(assert (=> b!1190882 (= e!765589 (<= 0 (cheight!4141 (right!10773 t!4115))))))

(assert (= (and d!340280 res!537982) b!1190880))

(assert (= (and b!1190880 res!537983) b!1190881))

(assert (= (and b!1190881 res!537984) b!1190882))

(declare-fun m!1365835 () Bool)

(assert (=> d!340280 m!1365835))

(declare-fun m!1365837 () Bool)

(assert (=> d!340280 m!1365837))

(assert (=> b!1190881 m!1365791))

(assert (=> b!1190881 m!1365793))

(assert (=> b!1190881 m!1365791))

(assert (=> b!1190881 m!1365793))

(declare-fun m!1365839 () Bool)

(assert (=> b!1190881 m!1365839))

(assert (=> b!1190771 d!340280))

(declare-fun d!340284 () Bool)

(declare-fun c!197626 () Bool)

(assert (=> d!340284 (= c!197626 ((_ is Node!3930) (left!10443 (left!10443 t!4115))))))

(declare-fun e!765590 () Bool)

(assert (=> d!340284 (= (inv!15875 (left!10443 (left!10443 t!4115))) e!765590)))

(declare-fun b!1190883 () Bool)

(assert (=> b!1190883 (= e!765590 (inv!15876 (left!10443 (left!10443 t!4115))))))

(declare-fun b!1190884 () Bool)

(declare-fun e!765591 () Bool)

(assert (=> b!1190884 (= e!765590 e!765591)))

(declare-fun res!537985 () Bool)

(assert (=> b!1190884 (= res!537985 (not ((_ is Leaf!6020) (left!10443 (left!10443 t!4115)))))))

(assert (=> b!1190884 (=> res!537985 e!765591)))

(declare-fun b!1190885 () Bool)

(assert (=> b!1190885 (= e!765591 (inv!15877 (left!10443 (left!10443 t!4115))))))

(assert (= (and d!340284 c!197626) b!1190883))

(assert (= (and d!340284 (not c!197626)) b!1190884))

(assert (= (and b!1190884 (not res!537985)) b!1190885))

(declare-fun m!1365841 () Bool)

(assert (=> b!1190883 m!1365841))

(declare-fun m!1365843 () Bool)

(assert (=> b!1190885 m!1365843))

(assert (=> b!1190828 d!340284))

(declare-fun d!340286 () Bool)

(declare-fun c!197627 () Bool)

(assert (=> d!340286 (= c!197627 ((_ is Node!3930) (right!10773 (left!10443 t!4115))))))

(declare-fun e!765592 () Bool)

(assert (=> d!340286 (= (inv!15875 (right!10773 (left!10443 t!4115))) e!765592)))

(declare-fun b!1190886 () Bool)

(assert (=> b!1190886 (= e!765592 (inv!15876 (right!10773 (left!10443 t!4115))))))

(declare-fun b!1190887 () Bool)

(declare-fun e!765593 () Bool)

(assert (=> b!1190887 (= e!765592 e!765593)))

(declare-fun res!537986 () Bool)

(assert (=> b!1190887 (= res!537986 (not ((_ is Leaf!6020) (right!10773 (left!10443 t!4115)))))))

(assert (=> b!1190887 (=> res!537986 e!765593)))

(declare-fun b!1190888 () Bool)

(assert (=> b!1190888 (= e!765593 (inv!15877 (right!10773 (left!10443 t!4115))))))

(assert (= (and d!340286 c!197627) b!1190886))

(assert (= (and d!340286 (not c!197627)) b!1190887))

(assert (= (and b!1190887 (not res!537986)) b!1190888))

(declare-fun m!1365845 () Bool)

(assert (=> b!1190886 m!1365845))

(declare-fun m!1365847 () Bool)

(assert (=> b!1190888 m!1365847))

(assert (=> b!1190828 d!340286))

(declare-fun d!340288 () Bool)

(declare-fun res!537987 () Bool)

(declare-fun e!765594 () Bool)

(assert (=> d!340288 (=> (not res!537987) (not e!765594))))

(assert (=> d!340288 (= res!537987 (= (csize!8090 (left!10443 t!4115)) (+ (size!9474 (left!10443 (left!10443 t!4115))) (size!9474 (right!10773 (left!10443 t!4115))))))))

(assert (=> d!340288 (= (inv!15876 (left!10443 t!4115)) e!765594)))

(declare-fun b!1190889 () Bool)

(declare-fun res!537988 () Bool)

(assert (=> b!1190889 (=> (not res!537988) (not e!765594))))

(assert (=> b!1190889 (= res!537988 (and (not (= (left!10443 (left!10443 t!4115)) Empty!3930)) (not (= (right!10773 (left!10443 t!4115)) Empty!3930))))))

(declare-fun b!1190890 () Bool)

(declare-fun res!537989 () Bool)

(assert (=> b!1190890 (=> (not res!537989) (not e!765594))))

(assert (=> b!1190890 (= res!537989 (= (cheight!4141 (left!10443 t!4115)) (+ (max!0 (height!530 (left!10443 (left!10443 t!4115))) (height!530 (right!10773 (left!10443 t!4115)))) 1)))))

(declare-fun b!1190891 () Bool)

(assert (=> b!1190891 (= e!765594 (<= 0 (cheight!4141 (left!10443 t!4115))))))

(assert (= (and d!340288 res!537987) b!1190889))

(assert (= (and b!1190889 res!537988) b!1190890))

(assert (= (and b!1190890 res!537989) b!1190891))

(declare-fun m!1365849 () Bool)

(assert (=> d!340288 m!1365849))

(declare-fun m!1365851 () Bool)

(assert (=> d!340288 m!1365851))

(assert (=> b!1190890 m!1365823))

(assert (=> b!1190890 m!1365825))

(assert (=> b!1190890 m!1365823))

(assert (=> b!1190890 m!1365825))

(declare-fun m!1365853 () Bool)

(assert (=> b!1190890 m!1365853))

(assert (=> b!1190768 d!340288))

(declare-fun d!340290 () Bool)

(assert (=> d!340290 (= (inv!15874 (xs!6635 (left!10443 t!4115))) (<= (size!9476 (innerList!3990 (xs!6635 (left!10443 t!4115)))) 2147483647))))

(declare-fun bs!287877 () Bool)

(assert (= bs!287877 d!340290))

(declare-fun m!1365855 () Bool)

(assert (=> bs!287877 m!1365855))

(assert (=> b!1190829 d!340290))

(declare-fun d!340292 () Bool)

(declare-fun lt!409216 () Int)

(assert (=> d!340292 (>= lt!409216 0)))

(declare-fun e!765595 () Int)

(assert (=> d!340292 (= lt!409216 e!765595)))

(declare-fun c!197628 () Bool)

(assert (=> d!340292 (= c!197628 ((_ is Nil!11997) (list!4406 t!4115)))))

(assert (=> d!340292 (= (size!9476 (list!4406 t!4115)) lt!409216)))

(declare-fun b!1190892 () Bool)

(assert (=> b!1190892 (= e!765595 0)))

(declare-fun b!1190893 () Bool)

(assert (=> b!1190893 (= e!765595 (+ 1 (size!9476 (t!112233 (list!4406 t!4115)))))))

(assert (= (and d!340292 c!197628) b!1190892))

(assert (= (and d!340292 (not c!197628)) b!1190893))

(declare-fun m!1365857 () Bool)

(assert (=> b!1190893 m!1365857))

(assert (=> d!340244 d!340292))

(declare-fun b!1190907 () Bool)

(declare-fun e!765602 () List!12021)

(declare-fun e!765603 () List!12021)

(assert (=> b!1190907 (= e!765602 e!765603)))

(declare-fun c!197634 () Bool)

(assert (=> b!1190907 (= c!197634 ((_ is Leaf!6020) t!4115))))

(declare-fun b!1190908 () Bool)

(assert (=> b!1190908 (= e!765603 (list!4404 (xs!6635 t!4115)))))

(declare-fun b!1190906 () Bool)

(assert (=> b!1190906 (= e!765602 Nil!11997)))

(declare-fun d!340294 () Bool)

(declare-fun c!197633 () Bool)

(assert (=> d!340294 (= c!197633 ((_ is Empty!3930) t!4115))))

(assert (=> d!340294 (= (list!4406 t!4115) e!765602)))

(declare-fun b!1190909 () Bool)

(declare-fun ++!3031 (List!12021 List!12021) List!12021)

(assert (=> b!1190909 (= e!765603 (++!3031 (list!4406 (left!10443 t!4115)) (list!4406 (right!10773 t!4115))))))

(assert (= (and d!340294 c!197633) b!1190906))

(assert (= (and d!340294 (not c!197633)) b!1190907))

(assert (= (and b!1190907 c!197634) b!1190908))

(assert (= (and b!1190907 (not c!197634)) b!1190909))

(assert (=> b!1190908 m!1365691))

(assert (=> b!1190909 m!1365815))

(assert (=> b!1190909 m!1365831))

(assert (=> b!1190909 m!1365815))

(assert (=> b!1190909 m!1365831))

(declare-fun m!1365865 () Bool)

(assert (=> b!1190909 m!1365865))

(assert (=> d!340244 d!340294))

(declare-fun d!340298 () Bool)

(declare-fun lt!409220 () Int)

(assert (=> d!340298 (>= lt!409220 0)))

(declare-fun e!765604 () Int)

(assert (=> d!340298 (= lt!409220 e!765604)))

(declare-fun c!197635 () Bool)

(assert (=> d!340298 (= c!197635 ((_ is Nil!11997) (list!4404 (xs!6635 t!4115))))))

(assert (=> d!340298 (= (size!9476 (list!4404 (xs!6635 t!4115))) lt!409220)))

(declare-fun b!1190910 () Bool)

(assert (=> b!1190910 (= e!765604 0)))

(declare-fun b!1190911 () Bool)

(assert (=> b!1190911 (= e!765604 (+ 1 (size!9476 (t!112233 (list!4404 (xs!6635 t!4115))))))))

(assert (= (and d!340298 c!197635) b!1190910))

(assert (= (and d!340298 (not c!197635)) b!1190911))

(declare-fun m!1365867 () Bool)

(assert (=> b!1190911 m!1365867))

(assert (=> d!340234 d!340298))

(declare-fun d!340300 () Bool)

(assert (=> d!340300 (= (list!4404 (xs!6635 t!4115)) (innerList!3990 (xs!6635 t!4115)))))

(assert (=> d!340234 d!340300))

(declare-fun d!340302 () Bool)

(declare-fun _$1!9927 () Int)

(assert (=> d!340302 (= _$1!9927 (size!9476 (list!4404 (xs!6635 t!4115))))))

(assert (=> d!340302 true))

(assert (=> d!340302 (= (choose!7697 (xs!6635 t!4115)) _$1!9927)))

(declare-fun bs!287879 () Bool)

(assert (= bs!287879 d!340302))

(assert (=> bs!287879 m!1365691))

(assert (=> bs!287879 m!1365691))

(assert (=> bs!287879 m!1365693))

(assert (=> d!340234 d!340302))

(assert (=> b!1190806 d!340266))

(assert (=> b!1190806 d!340268))

(declare-fun d!340306 () Bool)

(declare-fun c!197636 () Bool)

(assert (=> d!340306 (= c!197636 ((_ is Node!3930) (left!10443 (right!10773 t!4115))))))

(declare-fun e!765606 () Bool)

(assert (=> d!340306 (= (inv!15875 (left!10443 (right!10773 t!4115))) e!765606)))

(declare-fun b!1190914 () Bool)

(assert (=> b!1190914 (= e!765606 (inv!15876 (left!10443 (right!10773 t!4115))))))

(declare-fun b!1190915 () Bool)

(declare-fun e!765607 () Bool)

(assert (=> b!1190915 (= e!765606 e!765607)))

(declare-fun res!537996 () Bool)

(assert (=> b!1190915 (= res!537996 (not ((_ is Leaf!6020) (left!10443 (right!10773 t!4115)))))))

(assert (=> b!1190915 (=> res!537996 e!765607)))

(declare-fun b!1190916 () Bool)

(assert (=> b!1190916 (= e!765607 (inv!15877 (left!10443 (right!10773 t!4115))))))

(assert (= (and d!340306 c!197636) b!1190914))

(assert (= (and d!340306 (not c!197636)) b!1190915))

(assert (= (and b!1190915 (not res!537996)) b!1190916))

(declare-fun m!1365873 () Bool)

(assert (=> b!1190914 m!1365873))

(declare-fun m!1365875 () Bool)

(assert (=> b!1190916 m!1365875))

(assert (=> b!1190834 d!340306))

(declare-fun d!340308 () Bool)

(declare-fun c!197637 () Bool)

(assert (=> d!340308 (= c!197637 ((_ is Node!3930) (right!10773 (right!10773 t!4115))))))

(declare-fun e!765608 () Bool)

(assert (=> d!340308 (= (inv!15875 (right!10773 (right!10773 t!4115))) e!765608)))

(declare-fun b!1190917 () Bool)

(assert (=> b!1190917 (= e!765608 (inv!15876 (right!10773 (right!10773 t!4115))))))

(declare-fun b!1190918 () Bool)

(declare-fun e!765609 () Bool)

(assert (=> b!1190918 (= e!765608 e!765609)))

(declare-fun res!537997 () Bool)

(assert (=> b!1190918 (= res!537997 (not ((_ is Leaf!6020) (right!10773 (right!10773 t!4115)))))))

(assert (=> b!1190918 (=> res!537997 e!765609)))

(declare-fun b!1190919 () Bool)

(assert (=> b!1190919 (= e!765609 (inv!15877 (right!10773 (right!10773 t!4115))))))

(assert (= (and d!340308 c!197637) b!1190917))

(assert (= (and d!340308 (not c!197637)) b!1190918))

(assert (= (and b!1190918 (not res!537997)) b!1190919))

(declare-fun m!1365877 () Bool)

(assert (=> b!1190917 m!1365877))

(declare-fun m!1365879 () Bool)

(assert (=> b!1190919 m!1365879))

(assert (=> b!1190834 d!340308))

(declare-fun d!340310 () Bool)

(declare-fun res!537998 () Bool)

(declare-fun e!765610 () Bool)

(assert (=> d!340310 (=> (not res!537998) (not e!765610))))

(assert (=> d!340310 (= res!537998 (<= (size!9476 (list!4404 (xs!6635 t!4115))) 512))))

(assert (=> d!340310 (= (inv!15877 t!4115) e!765610)))

(declare-fun b!1190920 () Bool)

(declare-fun res!537999 () Bool)

(assert (=> b!1190920 (=> (not res!537999) (not e!765610))))

(assert (=> b!1190920 (= res!537999 (= (csize!8091 t!4115) (size!9476 (list!4404 (xs!6635 t!4115)))))))

(declare-fun b!1190921 () Bool)

(assert (=> b!1190921 (= e!765610 (and (> (csize!8091 t!4115) 0) (<= (csize!8091 t!4115) 512)))))

(assert (= (and d!340310 res!537998) b!1190920))

(assert (= (and b!1190920 res!537999) b!1190921))

(assert (=> d!340310 m!1365691))

(assert (=> d!340310 m!1365691))

(assert (=> d!340310 m!1365693))

(assert (=> b!1190920 m!1365691))

(assert (=> b!1190920 m!1365691))

(assert (=> b!1190920 m!1365693))

(assert (=> b!1190767 d!340310))

(declare-fun d!340312 () Bool)

(assert (=> d!340312 (= (inv!15874 (xs!6635 (right!10773 t!4115))) (<= (size!9476 (innerList!3990 (xs!6635 (right!10773 t!4115)))) 2147483647))))

(declare-fun bs!287880 () Bool)

(assert (= bs!287880 d!340312))

(declare-fun m!1365881 () Bool)

(assert (=> bs!287880 m!1365881))

(assert (=> b!1190835 d!340312))

(declare-fun b!1190922 () Bool)

(declare-fun e!765612 () Bool)

(declare-fun tp!339849 () Bool)

(declare-fun tp!339850 () Bool)

(assert (=> b!1190922 (= e!765612 (and (inv!15875 (left!10443 (left!10443 (left!10443 t!4115)))) tp!339850 (inv!15875 (right!10773 (left!10443 (left!10443 t!4115)))) tp!339849))))

(declare-fun b!1190924 () Bool)

(declare-fun e!765611 () Bool)

(declare-fun tp!339848 () Bool)

(assert (=> b!1190924 (= e!765611 tp!339848)))

(declare-fun b!1190923 () Bool)

(assert (=> b!1190923 (= e!765612 (and (inv!15874 (xs!6635 (left!10443 (left!10443 t!4115)))) e!765611))))

(assert (=> b!1190828 (= tp!339835 (and (inv!15875 (left!10443 (left!10443 t!4115))) e!765612))))

(assert (= (and b!1190828 ((_ is Node!3930) (left!10443 (left!10443 t!4115)))) b!1190922))

(assert (= b!1190923 b!1190924))

(assert (= (and b!1190828 ((_ is Leaf!6020) (left!10443 (left!10443 t!4115)))) b!1190923))

(declare-fun m!1365883 () Bool)

(assert (=> b!1190922 m!1365883))

(declare-fun m!1365885 () Bool)

(assert (=> b!1190922 m!1365885))

(declare-fun m!1365887 () Bool)

(assert (=> b!1190923 m!1365887))

(assert (=> b!1190828 m!1365763))

(declare-fun b!1190925 () Bool)

(declare-fun tp!339852 () Bool)

(declare-fun tp!339853 () Bool)

(declare-fun e!765614 () Bool)

(assert (=> b!1190925 (= e!765614 (and (inv!15875 (left!10443 (right!10773 (left!10443 t!4115)))) tp!339853 (inv!15875 (right!10773 (right!10773 (left!10443 t!4115)))) tp!339852))))

(declare-fun b!1190927 () Bool)

(declare-fun e!765613 () Bool)

(declare-fun tp!339851 () Bool)

(assert (=> b!1190927 (= e!765613 tp!339851)))

(declare-fun b!1190926 () Bool)

(assert (=> b!1190926 (= e!765614 (and (inv!15874 (xs!6635 (right!10773 (left!10443 t!4115)))) e!765613))))

(assert (=> b!1190828 (= tp!339834 (and (inv!15875 (right!10773 (left!10443 t!4115))) e!765614))))

(assert (= (and b!1190828 ((_ is Node!3930) (right!10773 (left!10443 t!4115)))) b!1190925))

(assert (= b!1190926 b!1190927))

(assert (= (and b!1190828 ((_ is Leaf!6020) (right!10773 (left!10443 t!4115)))) b!1190926))

(declare-fun m!1365889 () Bool)

(assert (=> b!1190925 m!1365889))

(declare-fun m!1365891 () Bool)

(assert (=> b!1190925 m!1365891))

(declare-fun m!1365893 () Bool)

(assert (=> b!1190926 m!1365893))

(assert (=> b!1190828 m!1365765))

(declare-fun b!1190928 () Bool)

(declare-fun e!765615 () Bool)

(declare-fun tp!339854 () Bool)

(assert (=> b!1190928 (= e!765615 (and tp_is_empty!5899 tp!339854))))

(assert (=> b!1190844 (= tp!339847 e!765615)))

(assert (= (and b!1190844 ((_ is Cons!11997) (t!112233 (innerList!3990 (xs!6635 t!4115))))) b!1190928))

(declare-fun b!1190929 () Bool)

(declare-fun e!765616 () Bool)

(declare-fun tp!339855 () Bool)

(assert (=> b!1190929 (= e!765616 (and tp_is_empty!5899 tp!339855))))

(assert (=> b!1190836 (= tp!339839 e!765616)))

(assert (= (and b!1190836 ((_ is Cons!11997) (innerList!3990 (xs!6635 (right!10773 t!4115))))) b!1190929))

(declare-fun tp!339858 () Bool)

(declare-fun e!765618 () Bool)

(declare-fun b!1190930 () Bool)

(declare-fun tp!339857 () Bool)

(assert (=> b!1190930 (= e!765618 (and (inv!15875 (left!10443 (left!10443 (right!10773 t!4115)))) tp!339858 (inv!15875 (right!10773 (left!10443 (right!10773 t!4115)))) tp!339857))))

(declare-fun b!1190932 () Bool)

(declare-fun e!765617 () Bool)

(declare-fun tp!339856 () Bool)

(assert (=> b!1190932 (= e!765617 tp!339856)))

(declare-fun b!1190931 () Bool)

(assert (=> b!1190931 (= e!765618 (and (inv!15874 (xs!6635 (left!10443 (right!10773 t!4115)))) e!765617))))

(assert (=> b!1190834 (= tp!339841 (and (inv!15875 (left!10443 (right!10773 t!4115))) e!765618))))

(assert (= (and b!1190834 ((_ is Node!3930) (left!10443 (right!10773 t!4115)))) b!1190930))

(assert (= b!1190931 b!1190932))

(assert (= (and b!1190834 ((_ is Leaf!6020) (left!10443 (right!10773 t!4115)))) b!1190931))

(declare-fun m!1365895 () Bool)

(assert (=> b!1190930 m!1365895))

(declare-fun m!1365897 () Bool)

(assert (=> b!1190930 m!1365897))

(declare-fun m!1365899 () Bool)

(assert (=> b!1190931 m!1365899))

(assert (=> b!1190834 m!1365775))

(declare-fun b!1190933 () Bool)

(declare-fun tp!339860 () Bool)

(declare-fun e!765620 () Bool)

(declare-fun tp!339861 () Bool)

(assert (=> b!1190933 (= e!765620 (and (inv!15875 (left!10443 (right!10773 (right!10773 t!4115)))) tp!339861 (inv!15875 (right!10773 (right!10773 (right!10773 t!4115)))) tp!339860))))

(declare-fun b!1190935 () Bool)

(declare-fun e!765619 () Bool)

(declare-fun tp!339859 () Bool)

(assert (=> b!1190935 (= e!765619 tp!339859)))

(declare-fun b!1190934 () Bool)

(assert (=> b!1190934 (= e!765620 (and (inv!15874 (xs!6635 (right!10773 (right!10773 t!4115)))) e!765619))))

(assert (=> b!1190834 (= tp!339840 (and (inv!15875 (right!10773 (right!10773 t!4115))) e!765620))))

(assert (= (and b!1190834 ((_ is Node!3930) (right!10773 (right!10773 t!4115)))) b!1190933))

(assert (= b!1190934 b!1190935))

(assert (= (and b!1190834 ((_ is Leaf!6020) (right!10773 (right!10773 t!4115)))) b!1190934))

(declare-fun m!1365901 () Bool)

(assert (=> b!1190933 m!1365901))

(declare-fun m!1365903 () Bool)

(assert (=> b!1190933 m!1365903))

(declare-fun m!1365905 () Bool)

(assert (=> b!1190934 m!1365905))

(assert (=> b!1190834 m!1365777))

(declare-fun b!1190938 () Bool)

(declare-fun e!765623 () Bool)

(declare-fun tp!339862 () Bool)

(assert (=> b!1190938 (= e!765623 (and tp_is_empty!5899 tp!339862))))

(assert (=> b!1190830 (= tp!339833 e!765623)))

(assert (= (and b!1190830 ((_ is Cons!11997) (innerList!3990 (xs!6635 (left!10443 t!4115))))) b!1190938))

(check-sat (not b!1190909) (not b!1190847) (not b!1190914) (not b!1190848) (not b!1190834) (not b!1190874) (not b!1190938) (not b!1190875) (not b!1190872) (not b!1190932) tp_is_empty!5899 (not b!1190828) (not b!1190846) (not b!1190931) (not d!340272) (not b!1190893) (not b!1190881) (not b!1190929) (not b!1190849) (not d!340290) (not b!1190883) (not d!340302) (not b!1190879) (not b!1190878) (not d!340310) (not b!1190934) (not d!340278) (not b!1190919) (not b!1190923) (not b!1190885) (not b!1190862) (not b!1190917) (not d!340270) (not b!1190870) (not b!1190916) (not b!1190933) (not b!1190876) (not d!340262) (not d!340274) (not b!1190925) (not b!1190920) (not d!340312) (not b!1190935) (not b!1190886) (not b!1190930) (not d!340280) (not b!1190928) (not b!1190911) (not b!1190855) (not b!1190888) (not b!1190877) (not b!1190922) (not b!1190845) (not b!1190850) (not d!340288) (not b!1190924) (not b!1190926) (not b!1190927) (not b!1190908) (not b!1190890))
(check-sat)
