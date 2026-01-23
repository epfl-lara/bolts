; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106396 () Bool)

(assert start!106396)

(declare-fun b!1195822 () Bool)

(declare-fun res!539732 () Bool)

(declare-fun e!768102 () Bool)

(assert (=> b!1195822 (=> (not res!539732) (not e!768102))))

(declare-datatypes ((T!21698 0))(
  ( (T!21699 (val!3876 Int)) )
))
(declare-datatypes ((List!12055 0))(
  ( (Nil!12031) (Cons!12031 (h!17432 T!21698) (t!112365 List!12055)) )
))
(declare-datatypes ((IArray!7933 0))(
  ( (IArray!7934 (innerList!4024 List!12055)) )
))
(declare-datatypes ((Conc!3964 0))(
  ( (Node!3964 (left!10494 Conc!3964) (right!10824 Conc!3964) (csize!8158 Int) (cheight!4175 Int)) (Leaf!6071 (xs!6671 IArray!7933) (csize!8159 Int)) (Empty!3964) )
))
(declare-fun t!4115 () Conc!3964)

(declare-fun isBalanced!1149 (Conc!3964) Bool)

(assert (=> b!1195822 (= res!539732 (isBalanced!1149 t!4115))))

(declare-fun b!1195823 () Bool)

(declare-fun tp!340635 () Bool)

(declare-fun e!768100 () Bool)

(declare-fun tp!340633 () Bool)

(declare-fun inv!16049 (Conc!3964) Bool)

(assert (=> b!1195823 (= e!768100 (and (inv!16049 (left!10494 t!4115)) tp!340635 (inv!16049 (right!10824 t!4115)) tp!340633))))

(declare-fun b!1195825 () Bool)

(declare-fun e!768101 () Bool)

(declare-fun inv!16050 (IArray!7933) Bool)

(assert (=> b!1195825 (= e!768100 (and (inv!16050 (xs!6671 t!4115)) e!768101))))

(declare-fun b!1195826 () Bool)

(declare-fun res!539730 () Bool)

(assert (=> b!1195826 (=> (not res!539730) (not e!768102))))

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(get-info :version)

(assert (=> b!1195826 (= res!539730 (and (not (= from!553 until!31)) ((_ is Leaf!6071) t!4115) (not (= (- until!31 from!553) 0))))))

(declare-fun b!1195824 () Bool)

(declare-fun tp!340634 () Bool)

(assert (=> b!1195824 (= e!768101 tp!340634)))

(declare-fun res!539729 () Bool)

(assert (=> start!106396 (=> (not res!539729) (not e!768102))))

(assert (=> start!106396 (= res!539729 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106396 e!768102))

(assert (=> start!106396 true))

(assert (=> start!106396 (and (inv!16049 t!4115) e!768100)))

(declare-fun b!1195827 () Bool)

(declare-fun slice!453 (IArray!7933 Int Int) IArray!7933)

(assert (=> b!1195827 (= e!768102 (not (inv!16049 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))

(declare-fun b!1195828 () Bool)

(declare-fun res!539731 () Bool)

(assert (=> b!1195828 (=> (not res!539731) (not e!768102))))

(declare-fun size!9541 (Conc!3964) Int)

(assert (=> b!1195828 (= res!539731 (<= until!31 (size!9541 t!4115)))))

(assert (= (and start!106396 res!539729) b!1195828))

(assert (= (and b!1195828 res!539731) b!1195822))

(assert (= (and b!1195822 res!539732) b!1195826))

(assert (= (and b!1195826 res!539730) b!1195827))

(assert (= (and start!106396 ((_ is Node!3964) t!4115)) b!1195823))

(assert (= b!1195825 b!1195824))

(assert (= (and start!106396 ((_ is Leaf!6071) t!4115)) b!1195825))

(declare-fun m!1370327 () Bool)

(assert (=> b!1195825 m!1370327))

(declare-fun m!1370329 () Bool)

(assert (=> b!1195828 m!1370329))

(declare-fun m!1370331 () Bool)

(assert (=> start!106396 m!1370331))

(declare-fun m!1370333 () Bool)

(assert (=> b!1195822 m!1370333))

(declare-fun m!1370335 () Bool)

(assert (=> b!1195827 m!1370335))

(declare-fun m!1370337 () Bool)

(assert (=> b!1195827 m!1370337))

(declare-fun m!1370339 () Bool)

(assert (=> b!1195823 m!1370339))

(declare-fun m!1370341 () Bool)

(assert (=> b!1195823 m!1370341))

(check-sat (not b!1195827) (not b!1195828) (not b!1195823) (not b!1195824) (not b!1195822) (not b!1195825) (not start!106396))
(check-sat)
(get-model)

(declare-fun d!341319 () Bool)

(declare-fun c!198786 () Bool)

(assert (=> d!341319 (= c!198786 ((_ is Node!3964) (left!10494 t!4115)))))

(declare-fun e!768117 () Bool)

(assert (=> d!341319 (= (inv!16049 (left!10494 t!4115)) e!768117)))

(declare-fun b!1195850 () Bool)

(declare-fun inv!16053 (Conc!3964) Bool)

(assert (=> b!1195850 (= e!768117 (inv!16053 (left!10494 t!4115)))))

(declare-fun b!1195851 () Bool)

(declare-fun e!768118 () Bool)

(assert (=> b!1195851 (= e!768117 e!768118)))

(declare-fun res!539740 () Bool)

(assert (=> b!1195851 (= res!539740 (not ((_ is Leaf!6071) (left!10494 t!4115))))))

(assert (=> b!1195851 (=> res!539740 e!768118)))

(declare-fun b!1195852 () Bool)

(declare-fun inv!16054 (Conc!3964) Bool)

(assert (=> b!1195852 (= e!768118 (inv!16054 (left!10494 t!4115)))))

(assert (= (and d!341319 c!198786) b!1195850))

(assert (= (and d!341319 (not c!198786)) b!1195851))

(assert (= (and b!1195851 (not res!539740)) b!1195852))

(declare-fun m!1370355 () Bool)

(assert (=> b!1195850 m!1370355))

(declare-fun m!1370357 () Bool)

(assert (=> b!1195852 m!1370357))

(assert (=> b!1195823 d!341319))

(declare-fun d!341327 () Bool)

(declare-fun c!198787 () Bool)

(assert (=> d!341327 (= c!198787 ((_ is Node!3964) (right!10824 t!4115)))))

(declare-fun e!768119 () Bool)

(assert (=> d!341327 (= (inv!16049 (right!10824 t!4115)) e!768119)))

(declare-fun b!1195853 () Bool)

(assert (=> b!1195853 (= e!768119 (inv!16053 (right!10824 t!4115)))))

(declare-fun b!1195854 () Bool)

(declare-fun e!768120 () Bool)

(assert (=> b!1195854 (= e!768119 e!768120)))

(declare-fun res!539741 () Bool)

(assert (=> b!1195854 (= res!539741 (not ((_ is Leaf!6071) (right!10824 t!4115))))))

(assert (=> b!1195854 (=> res!539741 e!768120)))

(declare-fun b!1195855 () Bool)

(assert (=> b!1195855 (= e!768120 (inv!16054 (right!10824 t!4115)))))

(assert (= (and d!341327 c!198787) b!1195853))

(assert (= (and d!341327 (not c!198787)) b!1195854))

(assert (= (and b!1195854 (not res!539741)) b!1195855))

(declare-fun m!1370359 () Bool)

(assert (=> b!1195853 m!1370359))

(declare-fun m!1370361 () Bool)

(assert (=> b!1195855 m!1370361))

(assert (=> b!1195823 d!341327))

(declare-fun d!341329 () Bool)

(declare-fun lt!410096 () Int)

(declare-fun size!9543 (List!12055) Int)

(declare-fun list!4461 (Conc!3964) List!12055)

(assert (=> d!341329 (= lt!410096 (size!9543 (list!4461 t!4115)))))

(assert (=> d!341329 (= lt!410096 (ite ((_ is Empty!3964) t!4115) 0 (ite ((_ is Leaf!6071) t!4115) (csize!8159 t!4115) (csize!8158 t!4115))))))

(assert (=> d!341329 (= (size!9541 t!4115) lt!410096)))

(declare-fun bs!288051 () Bool)

(assert (= bs!288051 d!341329))

(declare-fun m!1370375 () Bool)

(assert (=> bs!288051 m!1370375))

(assert (=> bs!288051 m!1370375))

(declare-fun m!1370377 () Bool)

(assert (=> bs!288051 m!1370377))

(assert (=> b!1195828 d!341329))

(declare-fun c!198789 () Bool)

(declare-fun d!341335 () Bool)

(assert (=> d!341335 (= c!198789 ((_ is Node!3964) (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))))

(declare-fun e!768130 () Bool)

(assert (=> d!341335 (= (inv!16049 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) e!768130)))

(declare-fun b!1195874 () Bool)

(assert (=> b!1195874 (= e!768130 (inv!16053 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))))

(declare-fun b!1195875 () Bool)

(declare-fun e!768131 () Bool)

(assert (=> b!1195875 (= e!768130 e!768131)))

(declare-fun res!539758 () Bool)

(assert (=> b!1195875 (= res!539758 (not ((_ is Leaf!6071) (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))

(assert (=> b!1195875 (=> res!539758 e!768131)))

(declare-fun b!1195876 () Bool)

(assert (=> b!1195876 (= e!768131 (inv!16054 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))))

(assert (= (and d!341335 c!198789) b!1195874))

(assert (= (and d!341335 (not c!198789)) b!1195875))

(assert (= (and b!1195875 (not res!539758)) b!1195876))

(declare-fun m!1370379 () Bool)

(assert (=> b!1195874 m!1370379))

(declare-fun m!1370381 () Bool)

(assert (=> b!1195876 m!1370381))

(assert (=> b!1195827 d!341335))

(declare-fun d!341337 () Bool)

(declare-fun lt!410102 () IArray!7933)

(declare-fun slice!455 (List!12055 Int Int) List!12055)

(declare-fun list!4462 (IArray!7933) List!12055)

(assert (=> d!341337 (= lt!410102 (IArray!7934 (slice!455 (list!4462 (xs!6671 t!4115)) from!553 until!31)))))

(declare-fun choose!7718 (IArray!7933 Int Int) IArray!7933)

(assert (=> d!341337 (= lt!410102 (choose!7718 (xs!6671 t!4115) from!553 until!31))))

(declare-fun e!768147 () Bool)

(assert (=> d!341337 e!768147))

(declare-fun res!539767 () Bool)

(assert (=> d!341337 (=> (not res!539767) (not e!768147))))

(assert (=> d!341337 (= res!539767 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!341337 (= (slice!453 (xs!6671 t!4115) from!553 until!31) lt!410102)))

(declare-fun b!1195904 () Bool)

(declare-fun size!9544 (IArray!7933) Int)

(assert (=> b!1195904 (= e!768147 (<= until!31 (size!9544 (xs!6671 t!4115))))))

(assert (= (and d!341337 res!539767) b!1195904))

(declare-fun m!1370413 () Bool)

(assert (=> d!341337 m!1370413))

(assert (=> d!341337 m!1370413))

(declare-fun m!1370415 () Bool)

(assert (=> d!341337 m!1370415))

(declare-fun m!1370417 () Bool)

(assert (=> d!341337 m!1370417))

(declare-fun m!1370419 () Bool)

(assert (=> b!1195904 m!1370419))

(assert (=> b!1195827 d!341337))

(declare-fun b!1195917 () Bool)

(declare-fun res!539783 () Bool)

(declare-fun e!768153 () Bool)

(assert (=> b!1195917 (=> (not res!539783) (not e!768153))))

(declare-fun isEmpty!7241 (Conc!3964) Bool)

(assert (=> b!1195917 (= res!539783 (not (isEmpty!7241 (left!10494 t!4115))))))

(declare-fun b!1195918 () Bool)

(assert (=> b!1195918 (= e!768153 (not (isEmpty!7241 (right!10824 t!4115))))))

(declare-fun b!1195919 () Bool)

(declare-fun res!539782 () Bool)

(assert (=> b!1195919 (=> (not res!539782) (not e!768153))))

(assert (=> b!1195919 (= res!539782 (isBalanced!1149 (right!10824 t!4115)))))

(declare-fun d!341343 () Bool)

(declare-fun res!539780 () Bool)

(declare-fun e!768152 () Bool)

(assert (=> d!341343 (=> res!539780 e!768152)))

(assert (=> d!341343 (= res!539780 (not ((_ is Node!3964) t!4115)))))

(assert (=> d!341343 (= (isBalanced!1149 t!4115) e!768152)))

(declare-fun b!1195920 () Bool)

(declare-fun res!539781 () Bool)

(assert (=> b!1195920 (=> (not res!539781) (not e!768153))))

(assert (=> b!1195920 (= res!539781 (isBalanced!1149 (left!10494 t!4115)))))

(declare-fun b!1195921 () Bool)

(assert (=> b!1195921 (= e!768152 e!768153)))

(declare-fun res!539784 () Bool)

(assert (=> b!1195921 (=> (not res!539784) (not e!768153))))

(declare-fun height!558 (Conc!3964) Int)

(assert (=> b!1195921 (= res!539784 (<= (- 1) (- (height!558 (left!10494 t!4115)) (height!558 (right!10824 t!4115)))))))

(declare-fun b!1195922 () Bool)

(declare-fun res!539785 () Bool)

(assert (=> b!1195922 (=> (not res!539785) (not e!768153))))

(assert (=> b!1195922 (= res!539785 (<= (- (height!558 (left!10494 t!4115)) (height!558 (right!10824 t!4115))) 1))))

(assert (= (and d!341343 (not res!539780)) b!1195921))

(assert (= (and b!1195921 res!539784) b!1195922))

(assert (= (and b!1195922 res!539785) b!1195920))

(assert (= (and b!1195920 res!539781) b!1195919))

(assert (= (and b!1195919 res!539782) b!1195917))

(assert (= (and b!1195917 res!539783) b!1195918))

(declare-fun m!1370421 () Bool)

(assert (=> b!1195917 m!1370421))

(declare-fun m!1370423 () Bool)

(assert (=> b!1195918 m!1370423))

(declare-fun m!1370425 () Bool)

(assert (=> b!1195920 m!1370425))

(declare-fun m!1370427 () Bool)

(assert (=> b!1195919 m!1370427))

(declare-fun m!1370429 () Bool)

(assert (=> b!1195922 m!1370429))

(declare-fun m!1370431 () Bool)

(assert (=> b!1195922 m!1370431))

(assert (=> b!1195921 m!1370429))

(assert (=> b!1195921 m!1370431))

(assert (=> b!1195822 d!341343))

(declare-fun d!341345 () Bool)

(declare-fun c!198790 () Bool)

(assert (=> d!341345 (= c!198790 ((_ is Node!3964) t!4115))))

(declare-fun e!768154 () Bool)

(assert (=> d!341345 (= (inv!16049 t!4115) e!768154)))

(declare-fun b!1195923 () Bool)

(assert (=> b!1195923 (= e!768154 (inv!16053 t!4115))))

(declare-fun b!1195924 () Bool)

(declare-fun e!768155 () Bool)

(assert (=> b!1195924 (= e!768154 e!768155)))

(declare-fun res!539786 () Bool)

(assert (=> b!1195924 (= res!539786 (not ((_ is Leaf!6071) t!4115)))))

(assert (=> b!1195924 (=> res!539786 e!768155)))

(declare-fun b!1195925 () Bool)

(assert (=> b!1195925 (= e!768155 (inv!16054 t!4115))))

(assert (= (and d!341345 c!198790) b!1195923))

(assert (= (and d!341345 (not c!198790)) b!1195924))

(assert (= (and b!1195924 (not res!539786)) b!1195925))

(declare-fun m!1370433 () Bool)

(assert (=> b!1195923 m!1370433))

(declare-fun m!1370435 () Bool)

(assert (=> b!1195925 m!1370435))

(assert (=> start!106396 d!341345))

(declare-fun d!341347 () Bool)

(assert (=> d!341347 (= (inv!16050 (xs!6671 t!4115)) (<= (size!9543 (innerList!4024 (xs!6671 t!4115))) 2147483647))))

(declare-fun bs!288054 () Bool)

(assert (= bs!288054 d!341347))

(declare-fun m!1370437 () Bool)

(assert (=> bs!288054 m!1370437))

(assert (=> b!1195825 d!341347))

(declare-fun tp!340658 () Bool)

(declare-fun e!768161 () Bool)

(declare-fun b!1195934 () Bool)

(declare-fun tp!340659 () Bool)

(assert (=> b!1195934 (= e!768161 (and (inv!16049 (left!10494 (left!10494 t!4115))) tp!340659 (inv!16049 (right!10824 (left!10494 t!4115))) tp!340658))))

(declare-fun b!1195936 () Bool)

(declare-fun e!768160 () Bool)

(declare-fun tp!340657 () Bool)

(assert (=> b!1195936 (= e!768160 tp!340657)))

(declare-fun b!1195935 () Bool)

(assert (=> b!1195935 (= e!768161 (and (inv!16050 (xs!6671 (left!10494 t!4115))) e!768160))))

(assert (=> b!1195823 (= tp!340635 (and (inv!16049 (left!10494 t!4115)) e!768161))))

(assert (= (and b!1195823 ((_ is Node!3964) (left!10494 t!4115))) b!1195934))

(assert (= b!1195935 b!1195936))

(assert (= (and b!1195823 ((_ is Leaf!6071) (left!10494 t!4115))) b!1195935))

(declare-fun m!1370439 () Bool)

(assert (=> b!1195934 m!1370439))

(declare-fun m!1370441 () Bool)

(assert (=> b!1195934 m!1370441))

(declare-fun m!1370443 () Bool)

(assert (=> b!1195935 m!1370443))

(assert (=> b!1195823 m!1370339))

(declare-fun tp!340662 () Bool)

(declare-fun e!768163 () Bool)

(declare-fun tp!340661 () Bool)

(declare-fun b!1195937 () Bool)

(assert (=> b!1195937 (= e!768163 (and (inv!16049 (left!10494 (right!10824 t!4115))) tp!340662 (inv!16049 (right!10824 (right!10824 t!4115))) tp!340661))))

(declare-fun b!1195939 () Bool)

(declare-fun e!768162 () Bool)

(declare-fun tp!340660 () Bool)

(assert (=> b!1195939 (= e!768162 tp!340660)))

(declare-fun b!1195938 () Bool)

(assert (=> b!1195938 (= e!768163 (and (inv!16050 (xs!6671 (right!10824 t!4115))) e!768162))))

(assert (=> b!1195823 (= tp!340633 (and (inv!16049 (right!10824 t!4115)) e!768163))))

(assert (= (and b!1195823 ((_ is Node!3964) (right!10824 t!4115))) b!1195937))

(assert (= b!1195938 b!1195939))

(assert (= (and b!1195823 ((_ is Leaf!6071) (right!10824 t!4115))) b!1195938))

(declare-fun m!1370445 () Bool)

(assert (=> b!1195937 m!1370445))

(declare-fun m!1370447 () Bool)

(assert (=> b!1195937 m!1370447))

(declare-fun m!1370449 () Bool)

(assert (=> b!1195938 m!1370449))

(assert (=> b!1195823 m!1370341))

(declare-fun b!1195944 () Bool)

(declare-fun e!768166 () Bool)

(declare-fun tp_is_empty!5955 () Bool)

(declare-fun tp!340665 () Bool)

(assert (=> b!1195944 (= e!768166 (and tp_is_empty!5955 tp!340665))))

(assert (=> b!1195824 (= tp!340634 e!768166)))

(assert (= (and b!1195824 ((_ is Cons!12031) (innerList!4024 (xs!6671 t!4115)))) b!1195944))

(check-sat (not b!1195935) (not d!341329) (not b!1195923) (not b!1195937) (not b!1195938) (not b!1195823) (not b!1195876) (not b!1195920) (not b!1195922) (not b!1195850) (not b!1195852) (not b!1195921) (not b!1195939) tp_is_empty!5955 (not b!1195918) (not b!1195904) (not b!1195919) (not b!1195855) (not b!1195925) (not b!1195853) (not b!1195874) (not b!1195917) (not b!1195934) (not b!1195944) (not b!1195936) (not d!341337) (not d!341347))
(check-sat)
(get-model)

(declare-fun d!341349 () Bool)

(declare-fun res!539793 () Bool)

(declare-fun e!768169 () Bool)

(assert (=> d!341349 (=> (not res!539793) (not e!768169))))

(assert (=> d!341349 (= res!539793 (= (csize!8158 (right!10824 t!4115)) (+ (size!9541 (left!10494 (right!10824 t!4115))) (size!9541 (right!10824 (right!10824 t!4115))))))))

(assert (=> d!341349 (= (inv!16053 (right!10824 t!4115)) e!768169)))

(declare-fun b!1195951 () Bool)

(declare-fun res!539794 () Bool)

(assert (=> b!1195951 (=> (not res!539794) (not e!768169))))

(assert (=> b!1195951 (= res!539794 (and (not (= (left!10494 (right!10824 t!4115)) Empty!3964)) (not (= (right!10824 (right!10824 t!4115)) Empty!3964))))))

(declare-fun b!1195952 () Bool)

(declare-fun res!539795 () Bool)

(assert (=> b!1195952 (=> (not res!539795) (not e!768169))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1195952 (= res!539795 (= (cheight!4175 (right!10824 t!4115)) (+ (max!0 (height!558 (left!10494 (right!10824 t!4115))) (height!558 (right!10824 (right!10824 t!4115)))) 1)))))

(declare-fun b!1195953 () Bool)

(assert (=> b!1195953 (= e!768169 (<= 0 (cheight!4175 (right!10824 t!4115))))))

(assert (= (and d!341349 res!539793) b!1195951))

(assert (= (and b!1195951 res!539794) b!1195952))

(assert (= (and b!1195952 res!539795) b!1195953))

(declare-fun m!1370451 () Bool)

(assert (=> d!341349 m!1370451))

(declare-fun m!1370453 () Bool)

(assert (=> d!341349 m!1370453))

(declare-fun m!1370455 () Bool)

(assert (=> b!1195952 m!1370455))

(declare-fun m!1370457 () Bool)

(assert (=> b!1195952 m!1370457))

(assert (=> b!1195952 m!1370455))

(assert (=> b!1195952 m!1370457))

(declare-fun m!1370459 () Bool)

(assert (=> b!1195952 m!1370459))

(assert (=> b!1195853 d!341349))

(declare-fun d!341351 () Bool)

(declare-fun lt!410105 () Int)

(assert (=> d!341351 (>= lt!410105 0)))

(declare-fun e!768172 () Int)

(assert (=> d!341351 (= lt!410105 e!768172)))

(declare-fun c!198793 () Bool)

(assert (=> d!341351 (= c!198793 ((_ is Nil!12031) (innerList!4024 (xs!6671 t!4115))))))

(assert (=> d!341351 (= (size!9543 (innerList!4024 (xs!6671 t!4115))) lt!410105)))

(declare-fun b!1195958 () Bool)

(assert (=> b!1195958 (= e!768172 0)))

(declare-fun b!1195959 () Bool)

(assert (=> b!1195959 (= e!768172 (+ 1 (size!9543 (t!112365 (innerList!4024 (xs!6671 t!4115))))))))

(assert (= (and d!341351 c!198793) b!1195958))

(assert (= (and d!341351 (not c!198793)) b!1195959))

(declare-fun m!1370461 () Bool)

(assert (=> b!1195959 m!1370461))

(assert (=> d!341347 d!341351))

(declare-fun d!341353 () Bool)

(declare-fun lt!410108 () Int)

(assert (=> d!341353 (= lt!410108 (size!9543 (list!4462 (xs!6671 t!4115))))))

(declare-fun choose!7719 (IArray!7933) Int)

(assert (=> d!341353 (= lt!410108 (choose!7719 (xs!6671 t!4115)))))

(assert (=> d!341353 (= (size!9544 (xs!6671 t!4115)) lt!410108)))

(declare-fun bs!288055 () Bool)

(assert (= bs!288055 d!341353))

(assert (=> bs!288055 m!1370413))

(assert (=> bs!288055 m!1370413))

(declare-fun m!1370463 () Bool)

(assert (=> bs!288055 m!1370463))

(declare-fun m!1370465 () Bool)

(assert (=> bs!288055 m!1370465))

(assert (=> b!1195904 d!341353))

(declare-fun d!341355 () Bool)

(assert (=> d!341355 (= (inv!16050 (xs!6671 (left!10494 t!4115))) (<= (size!9543 (innerList!4024 (xs!6671 (left!10494 t!4115)))) 2147483647))))

(declare-fun bs!288056 () Bool)

(assert (= bs!288056 d!341355))

(declare-fun m!1370467 () Bool)

(assert (=> bs!288056 m!1370467))

(assert (=> b!1195935 d!341355))

(declare-fun d!341357 () Bool)

(declare-fun lt!410109 () Int)

(assert (=> d!341357 (>= lt!410109 0)))

(declare-fun e!768173 () Int)

(assert (=> d!341357 (= lt!410109 e!768173)))

(declare-fun c!198794 () Bool)

(assert (=> d!341357 (= c!198794 ((_ is Nil!12031) (list!4461 t!4115)))))

(assert (=> d!341357 (= (size!9543 (list!4461 t!4115)) lt!410109)))

(declare-fun b!1195960 () Bool)

(assert (=> b!1195960 (= e!768173 0)))

(declare-fun b!1195961 () Bool)

(assert (=> b!1195961 (= e!768173 (+ 1 (size!9543 (t!112365 (list!4461 t!4115)))))))

(assert (= (and d!341357 c!198794) b!1195960))

(assert (= (and d!341357 (not c!198794)) b!1195961))

(declare-fun m!1370469 () Bool)

(assert (=> b!1195961 m!1370469))

(assert (=> d!341329 d!341357))

(declare-fun b!1195973 () Bool)

(declare-fun e!768179 () List!12055)

(declare-fun ++!3065 (List!12055 List!12055) List!12055)

(assert (=> b!1195973 (= e!768179 (++!3065 (list!4461 (left!10494 t!4115)) (list!4461 (right!10824 t!4115))))))

(declare-fun d!341359 () Bool)

(declare-fun c!198799 () Bool)

(assert (=> d!341359 (= c!198799 ((_ is Empty!3964) t!4115))))

(declare-fun e!768178 () List!12055)

(assert (=> d!341359 (= (list!4461 t!4115) e!768178)))

(declare-fun b!1195970 () Bool)

(assert (=> b!1195970 (= e!768178 Nil!12031)))

(declare-fun b!1195972 () Bool)

(assert (=> b!1195972 (= e!768179 (list!4462 (xs!6671 t!4115)))))

(declare-fun b!1195971 () Bool)

(assert (=> b!1195971 (= e!768178 e!768179)))

(declare-fun c!198800 () Bool)

(assert (=> b!1195971 (= c!198800 ((_ is Leaf!6071) t!4115))))

(assert (= (and d!341359 c!198799) b!1195970))

(assert (= (and d!341359 (not c!198799)) b!1195971))

(assert (= (and b!1195971 c!198800) b!1195972))

(assert (= (and b!1195971 (not c!198800)) b!1195973))

(declare-fun m!1370471 () Bool)

(assert (=> b!1195973 m!1370471))

(declare-fun m!1370473 () Bool)

(assert (=> b!1195973 m!1370473))

(assert (=> b!1195973 m!1370471))

(assert (=> b!1195973 m!1370473))

(declare-fun m!1370475 () Bool)

(assert (=> b!1195973 m!1370475))

(assert (=> b!1195972 m!1370413))

(assert (=> d!341329 d!341359))

(declare-fun d!341361 () Bool)

(declare-fun take!118 (List!12055 Int) List!12055)

(declare-fun drop!590 (List!12055 Int) List!12055)

(assert (=> d!341361 (= (slice!455 (list!4462 (xs!6671 t!4115)) from!553 until!31) (take!118 (drop!590 (list!4462 (xs!6671 t!4115)) from!553) (- until!31 from!553)))))

(declare-fun bs!288057 () Bool)

(assert (= bs!288057 d!341361))

(assert (=> bs!288057 m!1370413))

(declare-fun m!1370477 () Bool)

(assert (=> bs!288057 m!1370477))

(assert (=> bs!288057 m!1370477))

(declare-fun m!1370479 () Bool)

(assert (=> bs!288057 m!1370479))

(assert (=> d!341337 d!341361))

(declare-fun d!341363 () Bool)

(assert (=> d!341363 (= (list!4462 (xs!6671 t!4115)) (innerList!4024 (xs!6671 t!4115)))))

(assert (=> d!341337 d!341363))

(declare-fun d!341365 () Bool)

(declare-fun _$4!205 () IArray!7933)

(assert (=> d!341365 (= _$4!205 (IArray!7934 (slice!455 (list!4462 (xs!6671 t!4115)) from!553 until!31)))))

(declare-fun e!768182 () Bool)

(assert (=> d!341365 (and (inv!16050 _$4!205) e!768182)))

(assert (=> d!341365 (= (choose!7718 (xs!6671 t!4115) from!553 until!31) _$4!205)))

(declare-fun b!1195976 () Bool)

(declare-fun tp!340668 () Bool)

(assert (=> b!1195976 (= e!768182 tp!340668)))

(assert (= d!341365 b!1195976))

(assert (=> d!341365 m!1370413))

(assert (=> d!341365 m!1370413))

(assert (=> d!341365 m!1370415))

(declare-fun m!1370481 () Bool)

(assert (=> d!341365 m!1370481))

(assert (=> d!341337 d!341365))

(declare-fun b!1195977 () Bool)

(declare-fun res!539799 () Bool)

(declare-fun e!768184 () Bool)

(assert (=> b!1195977 (=> (not res!539799) (not e!768184))))

(assert (=> b!1195977 (= res!539799 (not (isEmpty!7241 (left!10494 (right!10824 t!4115)))))))

(declare-fun b!1195978 () Bool)

(assert (=> b!1195978 (= e!768184 (not (isEmpty!7241 (right!10824 (right!10824 t!4115)))))))

(declare-fun b!1195979 () Bool)

(declare-fun res!539798 () Bool)

(assert (=> b!1195979 (=> (not res!539798) (not e!768184))))

(assert (=> b!1195979 (= res!539798 (isBalanced!1149 (right!10824 (right!10824 t!4115))))))

(declare-fun d!341367 () Bool)

(declare-fun res!539796 () Bool)

(declare-fun e!768183 () Bool)

(assert (=> d!341367 (=> res!539796 e!768183)))

(assert (=> d!341367 (= res!539796 (not ((_ is Node!3964) (right!10824 t!4115))))))

(assert (=> d!341367 (= (isBalanced!1149 (right!10824 t!4115)) e!768183)))

(declare-fun b!1195980 () Bool)

(declare-fun res!539797 () Bool)

(assert (=> b!1195980 (=> (not res!539797) (not e!768184))))

(assert (=> b!1195980 (= res!539797 (isBalanced!1149 (left!10494 (right!10824 t!4115))))))

(declare-fun b!1195981 () Bool)

(assert (=> b!1195981 (= e!768183 e!768184)))

(declare-fun res!539800 () Bool)

(assert (=> b!1195981 (=> (not res!539800) (not e!768184))))

(assert (=> b!1195981 (= res!539800 (<= (- 1) (- (height!558 (left!10494 (right!10824 t!4115))) (height!558 (right!10824 (right!10824 t!4115))))))))

(declare-fun b!1195982 () Bool)

(declare-fun res!539801 () Bool)

(assert (=> b!1195982 (=> (not res!539801) (not e!768184))))

(assert (=> b!1195982 (= res!539801 (<= (- (height!558 (left!10494 (right!10824 t!4115))) (height!558 (right!10824 (right!10824 t!4115)))) 1))))

(assert (= (and d!341367 (not res!539796)) b!1195981))

(assert (= (and b!1195981 res!539800) b!1195982))

(assert (= (and b!1195982 res!539801) b!1195980))

(assert (= (and b!1195980 res!539797) b!1195979))

(assert (= (and b!1195979 res!539798) b!1195977))

(assert (= (and b!1195977 res!539799) b!1195978))

(declare-fun m!1370487 () Bool)

(assert (=> b!1195977 m!1370487))

(declare-fun m!1370489 () Bool)

(assert (=> b!1195978 m!1370489))

(declare-fun m!1370491 () Bool)

(assert (=> b!1195980 m!1370491))

(declare-fun m!1370493 () Bool)

(assert (=> b!1195979 m!1370493))

(assert (=> b!1195982 m!1370455))

(assert (=> b!1195982 m!1370457))

(assert (=> b!1195981 m!1370455))

(assert (=> b!1195981 m!1370457))

(assert (=> b!1195919 d!341367))

(declare-fun d!341373 () Bool)

(declare-fun res!539804 () Bool)

(declare-fun e!768189 () Bool)

(assert (=> d!341373 (=> (not res!539804) (not e!768189))))

(assert (=> d!341373 (= res!539804 (= (csize!8158 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) (+ (size!9541 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (size!9541 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))))

(assert (=> d!341373 (= (inv!16053 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) e!768189)))

(declare-fun b!1195989 () Bool)

(declare-fun res!539805 () Bool)

(assert (=> b!1195989 (=> (not res!539805) (not e!768189))))

(assert (=> b!1195989 (= res!539805 (and (not (= (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) Empty!3964)) (not (= (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) Empty!3964))))))

(declare-fun b!1195990 () Bool)

(declare-fun res!539806 () Bool)

(assert (=> b!1195990 (=> (not res!539806) (not e!768189))))

(assert (=> b!1195990 (= res!539806 (= (cheight!4175 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) (+ (max!0 (height!558 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (height!558 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))) 1)))))

(declare-fun b!1195991 () Bool)

(assert (=> b!1195991 (= e!768189 (<= 0 (cheight!4175 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))

(assert (= (and d!341373 res!539804) b!1195989))

(assert (= (and b!1195989 res!539805) b!1195990))

(assert (= (and b!1195990 res!539806) b!1195991))

(declare-fun m!1370499 () Bool)

(assert (=> d!341373 m!1370499))

(declare-fun m!1370501 () Bool)

(assert (=> d!341373 m!1370501))

(declare-fun m!1370503 () Bool)

(assert (=> b!1195990 m!1370503))

(declare-fun m!1370505 () Bool)

(assert (=> b!1195990 m!1370505))

(assert (=> b!1195990 m!1370503))

(assert (=> b!1195990 m!1370505))

(declare-fun m!1370507 () Bool)

(assert (=> b!1195990 m!1370507))

(assert (=> b!1195874 d!341373))

(declare-fun d!341377 () Bool)

(declare-fun lt!410112 () Bool)

(declare-fun isEmpty!7242 (List!12055) Bool)

(assert (=> d!341377 (= lt!410112 (isEmpty!7242 (list!4461 (right!10824 t!4115))))))

(assert (=> d!341377 (= lt!410112 (= (size!9541 (right!10824 t!4115)) 0))))

(assert (=> d!341377 (= (isEmpty!7241 (right!10824 t!4115)) lt!410112)))

(declare-fun bs!288058 () Bool)

(assert (= bs!288058 d!341377))

(assert (=> bs!288058 m!1370473))

(assert (=> bs!288058 m!1370473))

(declare-fun m!1370509 () Bool)

(assert (=> bs!288058 m!1370509))

(declare-fun m!1370511 () Bool)

(assert (=> bs!288058 m!1370511))

(assert (=> b!1195918 d!341377))

(declare-fun d!341379 () Bool)

(declare-fun lt!410113 () Bool)

(assert (=> d!341379 (= lt!410113 (isEmpty!7242 (list!4461 (left!10494 t!4115))))))

(assert (=> d!341379 (= lt!410113 (= (size!9541 (left!10494 t!4115)) 0))))

(assert (=> d!341379 (= (isEmpty!7241 (left!10494 t!4115)) lt!410113)))

(declare-fun bs!288059 () Bool)

(assert (= bs!288059 d!341379))

(assert (=> bs!288059 m!1370471))

(assert (=> bs!288059 m!1370471))

(declare-fun m!1370515 () Bool)

(assert (=> bs!288059 m!1370515))

(declare-fun m!1370519 () Bool)

(assert (=> bs!288059 m!1370519))

(assert (=> b!1195917 d!341379))

(declare-fun d!341381 () Bool)

(declare-fun res!539817 () Bool)

(declare-fun e!768198 () Bool)

(assert (=> d!341381 (=> (not res!539817) (not e!768198))))

(assert (=> d!341381 (= res!539817 (<= (size!9543 (list!4462 (xs!6671 t!4115))) 512))))

(assert (=> d!341381 (= (inv!16054 t!4115) e!768198)))

(declare-fun b!1196008 () Bool)

(declare-fun res!539818 () Bool)

(assert (=> b!1196008 (=> (not res!539818) (not e!768198))))

(assert (=> b!1196008 (= res!539818 (= (csize!8159 t!4115) (size!9543 (list!4462 (xs!6671 t!4115)))))))

(declare-fun b!1196009 () Bool)

(assert (=> b!1196009 (= e!768198 (and (> (csize!8159 t!4115) 0) (<= (csize!8159 t!4115) 512)))))

(assert (= (and d!341381 res!539817) b!1196008))

(assert (= (and b!1196008 res!539818) b!1196009))

(assert (=> d!341381 m!1370413))

(assert (=> d!341381 m!1370413))

(assert (=> d!341381 m!1370463))

(assert (=> b!1196008 m!1370413))

(assert (=> b!1196008 m!1370413))

(assert (=> b!1196008 m!1370463))

(assert (=> b!1195925 d!341381))

(declare-fun d!341387 () Bool)

(assert (=> d!341387 (= (height!558 (left!10494 t!4115)) (ite ((_ is Empty!3964) (left!10494 t!4115)) 0 (ite ((_ is Leaf!6071) (left!10494 t!4115)) 1 (cheight!4175 (left!10494 t!4115)))))))

(assert (=> b!1195922 d!341387))

(declare-fun d!341389 () Bool)

(assert (=> d!341389 (= (height!558 (right!10824 t!4115)) (ite ((_ is Empty!3964) (right!10824 t!4115)) 0 (ite ((_ is Leaf!6071) (right!10824 t!4115)) 1 (cheight!4175 (right!10824 t!4115)))))))

(assert (=> b!1195922 d!341389))

(declare-fun d!341391 () Bool)

(declare-fun c!198806 () Bool)

(assert (=> d!341391 (= c!198806 ((_ is Node!3964) (left!10494 (left!10494 t!4115))))))

(declare-fun e!768199 () Bool)

(assert (=> d!341391 (= (inv!16049 (left!10494 (left!10494 t!4115))) e!768199)))

(declare-fun b!1196010 () Bool)

(assert (=> b!1196010 (= e!768199 (inv!16053 (left!10494 (left!10494 t!4115))))))

(declare-fun b!1196011 () Bool)

(declare-fun e!768200 () Bool)

(assert (=> b!1196011 (= e!768199 e!768200)))

(declare-fun res!539819 () Bool)

(assert (=> b!1196011 (= res!539819 (not ((_ is Leaf!6071) (left!10494 (left!10494 t!4115)))))))

(assert (=> b!1196011 (=> res!539819 e!768200)))

(declare-fun b!1196012 () Bool)

(assert (=> b!1196012 (= e!768200 (inv!16054 (left!10494 (left!10494 t!4115))))))

(assert (= (and d!341391 c!198806) b!1196010))

(assert (= (and d!341391 (not c!198806)) b!1196011))

(assert (= (and b!1196011 (not res!539819)) b!1196012))

(declare-fun m!1370525 () Bool)

(assert (=> b!1196010 m!1370525))

(declare-fun m!1370528 () Bool)

(assert (=> b!1196012 m!1370528))

(assert (=> b!1195934 d!341391))

(declare-fun d!341393 () Bool)

(declare-fun c!198807 () Bool)

(assert (=> d!341393 (= c!198807 ((_ is Node!3964) (right!10824 (left!10494 t!4115))))))

(declare-fun e!768201 () Bool)

(assert (=> d!341393 (= (inv!16049 (right!10824 (left!10494 t!4115))) e!768201)))

(declare-fun b!1196013 () Bool)

(assert (=> b!1196013 (= e!768201 (inv!16053 (right!10824 (left!10494 t!4115))))))

(declare-fun b!1196014 () Bool)

(declare-fun e!768202 () Bool)

(assert (=> b!1196014 (= e!768201 e!768202)))

(declare-fun res!539820 () Bool)

(assert (=> b!1196014 (= res!539820 (not ((_ is Leaf!6071) (right!10824 (left!10494 t!4115)))))))

(assert (=> b!1196014 (=> res!539820 e!768202)))

(declare-fun b!1196015 () Bool)

(assert (=> b!1196015 (= e!768202 (inv!16054 (right!10824 (left!10494 t!4115))))))

(assert (= (and d!341393 c!198807) b!1196013))

(assert (= (and d!341393 (not c!198807)) b!1196014))

(assert (= (and b!1196014 (not res!539820)) b!1196015))

(declare-fun m!1370533 () Bool)

(assert (=> b!1196013 m!1370533))

(declare-fun m!1370535 () Bool)

(assert (=> b!1196015 m!1370535))

(assert (=> b!1195934 d!341393))

(assert (=> b!1195921 d!341387))

(assert (=> b!1195921 d!341389))

(declare-fun d!341399 () Bool)

(declare-fun res!539823 () Bool)

(declare-fun e!768204 () Bool)

(assert (=> d!341399 (=> (not res!539823) (not e!768204))))

(assert (=> d!341399 (= res!539823 (= (csize!8158 t!4115) (+ (size!9541 (left!10494 t!4115)) (size!9541 (right!10824 t!4115)))))))

(assert (=> d!341399 (= (inv!16053 t!4115) e!768204)))

(declare-fun b!1196018 () Bool)

(declare-fun res!539824 () Bool)

(assert (=> b!1196018 (=> (not res!539824) (not e!768204))))

(assert (=> b!1196018 (= res!539824 (and (not (= (left!10494 t!4115) Empty!3964)) (not (= (right!10824 t!4115) Empty!3964))))))

(declare-fun b!1196019 () Bool)

(declare-fun res!539825 () Bool)

(assert (=> b!1196019 (=> (not res!539825) (not e!768204))))

(assert (=> b!1196019 (= res!539825 (= (cheight!4175 t!4115) (+ (max!0 (height!558 (left!10494 t!4115)) (height!558 (right!10824 t!4115))) 1)))))

(declare-fun b!1196020 () Bool)

(assert (=> b!1196020 (= e!768204 (<= 0 (cheight!4175 t!4115)))))

(assert (= (and d!341399 res!539823) b!1196018))

(assert (= (and b!1196018 res!539824) b!1196019))

(assert (= (and b!1196019 res!539825) b!1196020))

(assert (=> d!341399 m!1370519))

(assert (=> d!341399 m!1370511))

(assert (=> b!1196019 m!1370429))

(assert (=> b!1196019 m!1370431))

(assert (=> b!1196019 m!1370429))

(assert (=> b!1196019 m!1370431))

(declare-fun m!1370541 () Bool)

(assert (=> b!1196019 m!1370541))

(assert (=> b!1195923 d!341399))

(declare-fun d!341403 () Bool)

(declare-fun res!539826 () Bool)

(declare-fun e!768205 () Bool)

(assert (=> d!341403 (=> (not res!539826) (not e!768205))))

(assert (=> d!341403 (= res!539826 (<= (size!9543 (list!4462 (xs!6671 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))) 512))))

(assert (=> d!341403 (= (inv!16054 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) e!768205)))

(declare-fun b!1196021 () Bool)

(declare-fun res!539827 () Bool)

(assert (=> b!1196021 (=> (not res!539827) (not e!768205))))

(assert (=> b!1196021 (= res!539827 (= (csize!8159 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) (size!9543 (list!4462 (xs!6671 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))))

(declare-fun b!1196022 () Bool)

(assert (=> b!1196022 (= e!768205 (and (> (csize!8159 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) 0) (<= (csize!8159 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))) 512)))))

(assert (= (and d!341403 res!539826) b!1196021))

(assert (= (and b!1196021 res!539827) b!1196022))

(declare-fun m!1370543 () Bool)

(assert (=> d!341403 m!1370543))

(assert (=> d!341403 m!1370543))

(declare-fun m!1370545 () Bool)

(assert (=> d!341403 m!1370545))

(assert (=> b!1196021 m!1370543))

(assert (=> b!1196021 m!1370543))

(assert (=> b!1196021 m!1370545))

(assert (=> b!1195876 d!341403))

(declare-fun b!1196023 () Bool)

(declare-fun res!539831 () Bool)

(declare-fun e!768207 () Bool)

(assert (=> b!1196023 (=> (not res!539831) (not e!768207))))

(assert (=> b!1196023 (= res!539831 (not (isEmpty!7241 (left!10494 (left!10494 t!4115)))))))

(declare-fun b!1196024 () Bool)

(assert (=> b!1196024 (= e!768207 (not (isEmpty!7241 (right!10824 (left!10494 t!4115)))))))

(declare-fun b!1196025 () Bool)

(declare-fun res!539830 () Bool)

(assert (=> b!1196025 (=> (not res!539830) (not e!768207))))

(assert (=> b!1196025 (= res!539830 (isBalanced!1149 (right!10824 (left!10494 t!4115))))))

(declare-fun d!341405 () Bool)

(declare-fun res!539828 () Bool)

(declare-fun e!768206 () Bool)

(assert (=> d!341405 (=> res!539828 e!768206)))

(assert (=> d!341405 (= res!539828 (not ((_ is Node!3964) (left!10494 t!4115))))))

(assert (=> d!341405 (= (isBalanced!1149 (left!10494 t!4115)) e!768206)))

(declare-fun b!1196026 () Bool)

(declare-fun res!539829 () Bool)

(assert (=> b!1196026 (=> (not res!539829) (not e!768207))))

(assert (=> b!1196026 (= res!539829 (isBalanced!1149 (left!10494 (left!10494 t!4115))))))

(declare-fun b!1196027 () Bool)

(assert (=> b!1196027 (= e!768206 e!768207)))

(declare-fun res!539832 () Bool)

(assert (=> b!1196027 (=> (not res!539832) (not e!768207))))

(assert (=> b!1196027 (= res!539832 (<= (- 1) (- (height!558 (left!10494 (left!10494 t!4115))) (height!558 (right!10824 (left!10494 t!4115))))))))

(declare-fun b!1196028 () Bool)

(declare-fun res!539833 () Bool)

(assert (=> b!1196028 (=> (not res!539833) (not e!768207))))

(assert (=> b!1196028 (= res!539833 (<= (- (height!558 (left!10494 (left!10494 t!4115))) (height!558 (right!10824 (left!10494 t!4115)))) 1))))

(assert (= (and d!341405 (not res!539828)) b!1196027))

(assert (= (and b!1196027 res!539832) b!1196028))

(assert (= (and b!1196028 res!539833) b!1196026))

(assert (= (and b!1196026 res!539829) b!1196025))

(assert (= (and b!1196025 res!539830) b!1196023))

(assert (= (and b!1196023 res!539831) b!1196024))

(declare-fun m!1370547 () Bool)

(assert (=> b!1196023 m!1370547))

(declare-fun m!1370549 () Bool)

(assert (=> b!1196024 m!1370549))

(declare-fun m!1370551 () Bool)

(assert (=> b!1196026 m!1370551))

(declare-fun m!1370553 () Bool)

(assert (=> b!1196025 m!1370553))

(declare-fun m!1370555 () Bool)

(assert (=> b!1196028 m!1370555))

(declare-fun m!1370557 () Bool)

(assert (=> b!1196028 m!1370557))

(assert (=> b!1196027 m!1370555))

(assert (=> b!1196027 m!1370557))

(assert (=> b!1195920 d!341405))

(assert (=> b!1195823 d!341319))

(assert (=> b!1195823 d!341327))

(declare-fun d!341407 () Bool)

(declare-fun res!539834 () Bool)

(declare-fun e!768208 () Bool)

(assert (=> d!341407 (=> (not res!539834) (not e!768208))))

(assert (=> d!341407 (= res!539834 (<= (size!9543 (list!4462 (xs!6671 (right!10824 t!4115)))) 512))))

(assert (=> d!341407 (= (inv!16054 (right!10824 t!4115)) e!768208)))

(declare-fun b!1196029 () Bool)

(declare-fun res!539835 () Bool)

(assert (=> b!1196029 (=> (not res!539835) (not e!768208))))

(assert (=> b!1196029 (= res!539835 (= (csize!8159 (right!10824 t!4115)) (size!9543 (list!4462 (xs!6671 (right!10824 t!4115))))))))

(declare-fun b!1196030 () Bool)

(assert (=> b!1196030 (= e!768208 (and (> (csize!8159 (right!10824 t!4115)) 0) (<= (csize!8159 (right!10824 t!4115)) 512)))))

(assert (= (and d!341407 res!539834) b!1196029))

(assert (= (and b!1196029 res!539835) b!1196030))

(declare-fun m!1370559 () Bool)

(assert (=> d!341407 m!1370559))

(assert (=> d!341407 m!1370559))

(declare-fun m!1370561 () Bool)

(assert (=> d!341407 m!1370561))

(assert (=> b!1196029 m!1370559))

(assert (=> b!1196029 m!1370559))

(assert (=> b!1196029 m!1370561))

(assert (=> b!1195855 d!341407))

(declare-fun d!341409 () Bool)

(declare-fun res!539836 () Bool)

(declare-fun e!768209 () Bool)

(assert (=> d!341409 (=> (not res!539836) (not e!768209))))

(assert (=> d!341409 (= res!539836 (<= (size!9543 (list!4462 (xs!6671 (left!10494 t!4115)))) 512))))

(assert (=> d!341409 (= (inv!16054 (left!10494 t!4115)) e!768209)))

(declare-fun b!1196031 () Bool)

(declare-fun res!539837 () Bool)

(assert (=> b!1196031 (=> (not res!539837) (not e!768209))))

(assert (=> b!1196031 (= res!539837 (= (csize!8159 (left!10494 t!4115)) (size!9543 (list!4462 (xs!6671 (left!10494 t!4115))))))))

(declare-fun b!1196032 () Bool)

(assert (=> b!1196032 (= e!768209 (and (> (csize!8159 (left!10494 t!4115)) 0) (<= (csize!8159 (left!10494 t!4115)) 512)))))

(assert (= (and d!341409 res!539836) b!1196031))

(assert (= (and b!1196031 res!539837) b!1196032))

(declare-fun m!1370563 () Bool)

(assert (=> d!341409 m!1370563))

(assert (=> d!341409 m!1370563))

(declare-fun m!1370565 () Bool)

(assert (=> d!341409 m!1370565))

(assert (=> b!1196031 m!1370563))

(assert (=> b!1196031 m!1370563))

(assert (=> b!1196031 m!1370565))

(assert (=> b!1195852 d!341409))

(declare-fun d!341411 () Bool)

(assert (=> d!341411 (= (inv!16050 (xs!6671 (right!10824 t!4115))) (<= (size!9543 (innerList!4024 (xs!6671 (right!10824 t!4115)))) 2147483647))))

(declare-fun bs!288062 () Bool)

(assert (= bs!288062 d!341411))

(declare-fun m!1370567 () Bool)

(assert (=> bs!288062 m!1370567))

(assert (=> b!1195938 d!341411))

(declare-fun d!341413 () Bool)

(declare-fun res!539838 () Bool)

(declare-fun e!768210 () Bool)

(assert (=> d!341413 (=> (not res!539838) (not e!768210))))

(assert (=> d!341413 (= res!539838 (= (csize!8158 (left!10494 t!4115)) (+ (size!9541 (left!10494 (left!10494 t!4115))) (size!9541 (right!10824 (left!10494 t!4115))))))))

(assert (=> d!341413 (= (inv!16053 (left!10494 t!4115)) e!768210)))

(declare-fun b!1196033 () Bool)

(declare-fun res!539839 () Bool)

(assert (=> b!1196033 (=> (not res!539839) (not e!768210))))

(assert (=> b!1196033 (= res!539839 (and (not (= (left!10494 (left!10494 t!4115)) Empty!3964)) (not (= (right!10824 (left!10494 t!4115)) Empty!3964))))))

(declare-fun b!1196034 () Bool)

(declare-fun res!539840 () Bool)

(assert (=> b!1196034 (=> (not res!539840) (not e!768210))))

(assert (=> b!1196034 (= res!539840 (= (cheight!4175 (left!10494 t!4115)) (+ (max!0 (height!558 (left!10494 (left!10494 t!4115))) (height!558 (right!10824 (left!10494 t!4115)))) 1)))))

(declare-fun b!1196035 () Bool)

(assert (=> b!1196035 (= e!768210 (<= 0 (cheight!4175 (left!10494 t!4115))))))

(assert (= (and d!341413 res!539838) b!1196033))

(assert (= (and b!1196033 res!539839) b!1196034))

(assert (= (and b!1196034 res!539840) b!1196035))

(declare-fun m!1370569 () Bool)

(assert (=> d!341413 m!1370569))

(declare-fun m!1370571 () Bool)

(assert (=> d!341413 m!1370571))

(assert (=> b!1196034 m!1370555))

(assert (=> b!1196034 m!1370557))

(assert (=> b!1196034 m!1370555))

(assert (=> b!1196034 m!1370557))

(declare-fun m!1370573 () Bool)

(assert (=> b!1196034 m!1370573))

(assert (=> b!1195850 d!341413))

(declare-fun d!341415 () Bool)

(declare-fun c!198808 () Bool)

(assert (=> d!341415 (= c!198808 ((_ is Node!3964) (left!10494 (right!10824 t!4115))))))

(declare-fun e!768211 () Bool)

(assert (=> d!341415 (= (inv!16049 (left!10494 (right!10824 t!4115))) e!768211)))

(declare-fun b!1196036 () Bool)

(assert (=> b!1196036 (= e!768211 (inv!16053 (left!10494 (right!10824 t!4115))))))

(declare-fun b!1196037 () Bool)

(declare-fun e!768212 () Bool)

(assert (=> b!1196037 (= e!768211 e!768212)))

(declare-fun res!539841 () Bool)

(assert (=> b!1196037 (= res!539841 (not ((_ is Leaf!6071) (left!10494 (right!10824 t!4115)))))))

(assert (=> b!1196037 (=> res!539841 e!768212)))

(declare-fun b!1196038 () Bool)

(assert (=> b!1196038 (= e!768212 (inv!16054 (left!10494 (right!10824 t!4115))))))

(assert (= (and d!341415 c!198808) b!1196036))

(assert (= (and d!341415 (not c!198808)) b!1196037))

(assert (= (and b!1196037 (not res!539841)) b!1196038))

(declare-fun m!1370575 () Bool)

(assert (=> b!1196036 m!1370575))

(declare-fun m!1370577 () Bool)

(assert (=> b!1196038 m!1370577))

(assert (=> b!1195937 d!341415))

(declare-fun d!341417 () Bool)

(declare-fun c!198809 () Bool)

(assert (=> d!341417 (= c!198809 ((_ is Node!3964) (right!10824 (right!10824 t!4115))))))

(declare-fun e!768213 () Bool)

(assert (=> d!341417 (= (inv!16049 (right!10824 (right!10824 t!4115))) e!768213)))

(declare-fun b!1196039 () Bool)

(assert (=> b!1196039 (= e!768213 (inv!16053 (right!10824 (right!10824 t!4115))))))

(declare-fun b!1196040 () Bool)

(declare-fun e!768214 () Bool)

(assert (=> b!1196040 (= e!768213 e!768214)))

(declare-fun res!539842 () Bool)

(assert (=> b!1196040 (= res!539842 (not ((_ is Leaf!6071) (right!10824 (right!10824 t!4115)))))))

(assert (=> b!1196040 (=> res!539842 e!768214)))

(declare-fun b!1196041 () Bool)

(assert (=> b!1196041 (= e!768214 (inv!16054 (right!10824 (right!10824 t!4115))))))

(assert (= (and d!341417 c!198809) b!1196039))

(assert (= (and d!341417 (not c!198809)) b!1196040))

(assert (= (and b!1196040 (not res!539842)) b!1196041))

(declare-fun m!1370579 () Bool)

(assert (=> b!1196039 m!1370579))

(declare-fun m!1370581 () Bool)

(assert (=> b!1196041 m!1370581))

(assert (=> b!1195937 d!341417))

(declare-fun b!1196042 () Bool)

(declare-fun e!768215 () Bool)

(declare-fun tp!340669 () Bool)

(assert (=> b!1196042 (= e!768215 (and tp_is_empty!5955 tp!340669))))

(assert (=> b!1195944 (= tp!340665 e!768215)))

(assert (= (and b!1195944 ((_ is Cons!12031) (t!112365 (innerList!4024 (xs!6671 t!4115))))) b!1196042))

(declare-fun b!1196043 () Bool)

(declare-fun e!768218 () Bool)

(declare-fun tp!340670 () Bool)

(assert (=> b!1196043 (= e!768218 (and tp_is_empty!5955 tp!340670))))

(assert (=> b!1195936 (= tp!340657 e!768218)))

(assert (= (and b!1195936 ((_ is Cons!12031) (innerList!4024 (xs!6671 (left!10494 t!4115))))) b!1196043))

(declare-fun b!1196046 () Bool)

(declare-fun e!768219 () Bool)

(declare-fun tp!340671 () Bool)

(assert (=> b!1196046 (= e!768219 (and tp_is_empty!5955 tp!340671))))

(assert (=> b!1195939 (= tp!340660 e!768219)))

(assert (= (and b!1195939 ((_ is Cons!12031) (innerList!4024 (xs!6671 (right!10824 t!4115))))) b!1196046))

(declare-fun e!768221 () Bool)

(declare-fun tp!340673 () Bool)

(declare-fun b!1196049 () Bool)

(declare-fun tp!340674 () Bool)

(assert (=> b!1196049 (= e!768221 (and (inv!16049 (left!10494 (left!10494 (left!10494 t!4115)))) tp!340674 (inv!16049 (right!10824 (left!10494 (left!10494 t!4115)))) tp!340673))))

(declare-fun b!1196051 () Bool)

(declare-fun e!768220 () Bool)

(declare-fun tp!340672 () Bool)

(assert (=> b!1196051 (= e!768220 tp!340672)))

(declare-fun b!1196050 () Bool)

(assert (=> b!1196050 (= e!768221 (and (inv!16050 (xs!6671 (left!10494 (left!10494 t!4115)))) e!768220))))

(assert (=> b!1195934 (= tp!340659 (and (inv!16049 (left!10494 (left!10494 t!4115))) e!768221))))

(assert (= (and b!1195934 ((_ is Node!3964) (left!10494 (left!10494 t!4115)))) b!1196049))

(assert (= b!1196050 b!1196051))

(assert (= (and b!1195934 ((_ is Leaf!6071) (left!10494 (left!10494 t!4115)))) b!1196050))

(declare-fun m!1370583 () Bool)

(assert (=> b!1196049 m!1370583))

(declare-fun m!1370585 () Bool)

(assert (=> b!1196049 m!1370585))

(declare-fun m!1370587 () Bool)

(assert (=> b!1196050 m!1370587))

(assert (=> b!1195934 m!1370439))

(declare-fun tp!340677 () Bool)

(declare-fun e!768223 () Bool)

(declare-fun b!1196054 () Bool)

(declare-fun tp!340676 () Bool)

(assert (=> b!1196054 (= e!768223 (and (inv!16049 (left!10494 (right!10824 (left!10494 t!4115)))) tp!340677 (inv!16049 (right!10824 (right!10824 (left!10494 t!4115)))) tp!340676))))

(declare-fun b!1196056 () Bool)

(declare-fun e!768222 () Bool)

(declare-fun tp!340675 () Bool)

(assert (=> b!1196056 (= e!768222 tp!340675)))

(declare-fun b!1196055 () Bool)

(assert (=> b!1196055 (= e!768223 (and (inv!16050 (xs!6671 (right!10824 (left!10494 t!4115)))) e!768222))))

(assert (=> b!1195934 (= tp!340658 (and (inv!16049 (right!10824 (left!10494 t!4115))) e!768223))))

(assert (= (and b!1195934 ((_ is Node!3964) (right!10824 (left!10494 t!4115)))) b!1196054))

(assert (= b!1196055 b!1196056))

(assert (= (and b!1195934 ((_ is Leaf!6071) (right!10824 (left!10494 t!4115)))) b!1196055))

(declare-fun m!1370589 () Bool)

(assert (=> b!1196054 m!1370589))

(declare-fun m!1370591 () Bool)

(assert (=> b!1196054 m!1370591))

(declare-fun m!1370593 () Bool)

(assert (=> b!1196055 m!1370593))

(assert (=> b!1195934 m!1370441))

(declare-fun e!768225 () Bool)

(declare-fun tp!340679 () Bool)

(declare-fun b!1196057 () Bool)

(declare-fun tp!340680 () Bool)

(assert (=> b!1196057 (= e!768225 (and (inv!16049 (left!10494 (left!10494 (right!10824 t!4115)))) tp!340680 (inv!16049 (right!10824 (left!10494 (right!10824 t!4115)))) tp!340679))))

(declare-fun b!1196059 () Bool)

(declare-fun e!768224 () Bool)

(declare-fun tp!340678 () Bool)

(assert (=> b!1196059 (= e!768224 tp!340678)))

(declare-fun b!1196058 () Bool)

(assert (=> b!1196058 (= e!768225 (and (inv!16050 (xs!6671 (left!10494 (right!10824 t!4115)))) e!768224))))

(assert (=> b!1195937 (= tp!340662 (and (inv!16049 (left!10494 (right!10824 t!4115))) e!768225))))

(assert (= (and b!1195937 ((_ is Node!3964) (left!10494 (right!10824 t!4115)))) b!1196057))

(assert (= b!1196058 b!1196059))

(assert (= (and b!1195937 ((_ is Leaf!6071) (left!10494 (right!10824 t!4115)))) b!1196058))

(declare-fun m!1370595 () Bool)

(assert (=> b!1196057 m!1370595))

(declare-fun m!1370597 () Bool)

(assert (=> b!1196057 m!1370597))

(declare-fun m!1370599 () Bool)

(assert (=> b!1196058 m!1370599))

(assert (=> b!1195937 m!1370445))

(declare-fun tp!340682 () Bool)

(declare-fun b!1196060 () Bool)

(declare-fun tp!340683 () Bool)

(declare-fun e!768227 () Bool)

(assert (=> b!1196060 (= e!768227 (and (inv!16049 (left!10494 (right!10824 (right!10824 t!4115)))) tp!340683 (inv!16049 (right!10824 (right!10824 (right!10824 t!4115)))) tp!340682))))

(declare-fun b!1196062 () Bool)

(declare-fun e!768226 () Bool)

(declare-fun tp!340681 () Bool)

(assert (=> b!1196062 (= e!768226 tp!340681)))

(declare-fun b!1196061 () Bool)

(assert (=> b!1196061 (= e!768227 (and (inv!16050 (xs!6671 (right!10824 (right!10824 t!4115)))) e!768226))))

(assert (=> b!1195937 (= tp!340661 (and (inv!16049 (right!10824 (right!10824 t!4115))) e!768227))))

(assert (= (and b!1195937 ((_ is Node!3964) (right!10824 (right!10824 t!4115)))) b!1196060))

(assert (= b!1196061 b!1196062))

(assert (= (and b!1195937 ((_ is Leaf!6071) (right!10824 (right!10824 t!4115)))) b!1196061))

(declare-fun m!1370601 () Bool)

(assert (=> b!1196060 m!1370601))

(declare-fun m!1370603 () Bool)

(assert (=> b!1196060 m!1370603))

(declare-fun m!1370605 () Bool)

(assert (=> b!1196061 m!1370605))

(assert (=> b!1195937 m!1370447))

(check-sat (not b!1196027) (not b!1196028) (not b!1196013) (not b!1196025) (not b!1196039) (not b!1196029) (not b!1196019) (not b!1196060) (not b!1195979) (not b!1196057) (not d!341377) (not b!1196050) (not d!341403) (not b!1195990) (not b!1196026) (not b!1196056) (not d!341379) (not b!1196062) (not b!1196051) (not d!341381) (not b!1196015) (not b!1196043) (not d!341353) (not b!1195937) (not b!1195978) (not b!1196038) (not d!341361) (not b!1195977) (not b!1196008) (not b!1195959) (not d!341407) (not d!341373) (not d!341355) (not b!1196041) (not b!1195952) (not b!1196055) (not b!1196061) (not b!1195976) (not b!1196031) (not b!1196010) (not b!1196023) (not d!341399) (not b!1196034) (not b!1196021) (not b!1195961) (not b!1195934) (not b!1195973) (not d!341413) (not b!1196049) (not b!1195980) (not b!1196058) (not d!341365) (not d!341349) (not b!1195982) (not b!1196059) (not b!1196042) (not d!341409) (not b!1196012) (not b!1196054) (not b!1195972) (not b!1196036) (not b!1196046) (not d!341411) (not b!1195981) (not b!1196024) tp_is_empty!5955)
(check-sat)
(get-model)

(declare-fun d!341457 () Bool)

(assert (=> d!341457 (= (isEmpty!7242 (list!4461 (right!10824 t!4115))) ((_ is Nil!12031) (list!4461 (right!10824 t!4115))))))

(assert (=> d!341377 d!341457))

(declare-fun b!1196132 () Bool)

(declare-fun e!768264 () List!12055)

(assert (=> b!1196132 (= e!768264 (++!3065 (list!4461 (left!10494 (right!10824 t!4115))) (list!4461 (right!10824 (right!10824 t!4115)))))))

(declare-fun d!341459 () Bool)

(declare-fun c!198819 () Bool)

(assert (=> d!341459 (= c!198819 ((_ is Empty!3964) (right!10824 t!4115)))))

(declare-fun e!768263 () List!12055)

(assert (=> d!341459 (= (list!4461 (right!10824 t!4115)) e!768263)))

(declare-fun b!1196129 () Bool)

(assert (=> b!1196129 (= e!768263 Nil!12031)))

(declare-fun b!1196131 () Bool)

(assert (=> b!1196131 (= e!768264 (list!4462 (xs!6671 (right!10824 t!4115))))))

(declare-fun b!1196130 () Bool)

(assert (=> b!1196130 (= e!768263 e!768264)))

(declare-fun c!198820 () Bool)

(assert (=> b!1196130 (= c!198820 ((_ is Leaf!6071) (right!10824 t!4115)))))

(assert (= (and d!341459 c!198819) b!1196129))

(assert (= (and d!341459 (not c!198819)) b!1196130))

(assert (= (and b!1196130 c!198820) b!1196131))

(assert (= (and b!1196130 (not c!198820)) b!1196132))

(declare-fun m!1370715 () Bool)

(assert (=> b!1196132 m!1370715))

(declare-fun m!1370717 () Bool)

(assert (=> b!1196132 m!1370717))

(assert (=> b!1196132 m!1370715))

(assert (=> b!1196132 m!1370717))

(declare-fun m!1370719 () Bool)

(assert (=> b!1196132 m!1370719))

(assert (=> b!1196131 m!1370559))

(assert (=> d!341377 d!341459))

(declare-fun d!341461 () Bool)

(declare-fun lt!410125 () Int)

(assert (=> d!341461 (= lt!410125 (size!9543 (list!4461 (right!10824 t!4115))))))

(assert (=> d!341461 (= lt!410125 (ite ((_ is Empty!3964) (right!10824 t!4115)) 0 (ite ((_ is Leaf!6071) (right!10824 t!4115)) (csize!8159 (right!10824 t!4115)) (csize!8158 (right!10824 t!4115)))))))

(assert (=> d!341461 (= (size!9541 (right!10824 t!4115)) lt!410125)))

(declare-fun bs!288067 () Bool)

(assert (= bs!288067 d!341461))

(assert (=> bs!288067 m!1370473))

(assert (=> bs!288067 m!1370473))

(declare-fun m!1370721 () Bool)

(assert (=> bs!288067 m!1370721))

(assert (=> d!341377 d!341461))

(declare-fun d!341463 () Bool)

(assert (=> d!341463 (= (max!0 (height!558 (left!10494 t!4115)) (height!558 (right!10824 t!4115))) (ite (< (height!558 (left!10494 t!4115)) (height!558 (right!10824 t!4115))) (height!558 (right!10824 t!4115)) (height!558 (left!10494 t!4115))))))

(assert (=> b!1196019 d!341463))

(assert (=> b!1196019 d!341387))

(assert (=> b!1196019 d!341389))

(declare-fun d!341465 () Bool)

(assert (=> d!341465 (= (inv!16050 (xs!6671 (right!10824 (right!10824 t!4115)))) (<= (size!9543 (innerList!4024 (xs!6671 (right!10824 (right!10824 t!4115))))) 2147483647))))

(declare-fun bs!288068 () Bool)

(assert (= bs!288068 d!341465))

(declare-fun m!1370723 () Bool)

(assert (=> bs!288068 m!1370723))

(assert (=> b!1196061 d!341465))

(declare-fun d!341467 () Bool)

(declare-fun lt!410126 () Bool)

(assert (=> d!341467 (= lt!410126 (isEmpty!7242 (list!4461 (right!10824 (right!10824 t!4115)))))))

(assert (=> d!341467 (= lt!410126 (= (size!9541 (right!10824 (right!10824 t!4115))) 0))))

(assert (=> d!341467 (= (isEmpty!7241 (right!10824 (right!10824 t!4115))) lt!410126)))

(declare-fun bs!288069 () Bool)

(assert (= bs!288069 d!341467))

(assert (=> bs!288069 m!1370717))

(assert (=> bs!288069 m!1370717))

(declare-fun m!1370725 () Bool)

(assert (=> bs!288069 m!1370725))

(assert (=> bs!288069 m!1370453))

(assert (=> b!1195978 d!341467))

(declare-fun d!341469 () Bool)

(assert (=> d!341469 (= (max!0 (height!558 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (height!558 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))) (ite (< (height!558 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (height!558 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))) (height!558 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (height!558 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))))))

(assert (=> b!1195990 d!341469))

(declare-fun d!341471 () Bool)

(assert (=> d!341471 (= (height!558 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (ite ((_ is Empty!3964) (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) 0 (ite ((_ is Leaf!6071) (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) 1 (cheight!4175 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))))

(assert (=> b!1195990 d!341471))

(declare-fun d!341473 () Bool)

(assert (=> d!341473 (= (height!558 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (ite ((_ is Empty!3964) (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) 0 (ite ((_ is Leaf!6071) (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) 1 (cheight!4175 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))))

(assert (=> b!1195990 d!341473))

(declare-fun d!341475 () Bool)

(declare-fun lt!410127 () Int)

(assert (=> d!341475 (>= lt!410127 0)))

(declare-fun e!768265 () Int)

(assert (=> d!341475 (= lt!410127 e!768265)))

(declare-fun c!198821 () Bool)

(assert (=> d!341475 (= c!198821 ((_ is Nil!12031) (list!4462 (xs!6671 (left!10494 t!4115)))))))

(assert (=> d!341475 (= (size!9543 (list!4462 (xs!6671 (left!10494 t!4115)))) lt!410127)))

(declare-fun b!1196133 () Bool)

(assert (=> b!1196133 (= e!768265 0)))

(declare-fun b!1196134 () Bool)

(assert (=> b!1196134 (= e!768265 (+ 1 (size!9543 (t!112365 (list!4462 (xs!6671 (left!10494 t!4115)))))))))

(assert (= (and d!341475 c!198821) b!1196133))

(assert (= (and d!341475 (not c!198821)) b!1196134))

(declare-fun m!1370727 () Bool)

(assert (=> b!1196134 m!1370727))

(assert (=> b!1196031 d!341475))

(declare-fun d!341477 () Bool)

(assert (=> d!341477 (= (list!4462 (xs!6671 (left!10494 t!4115))) (innerList!4024 (xs!6671 (left!10494 t!4115))))))

(assert (=> b!1196031 d!341477))

(declare-fun d!341479 () Bool)

(declare-fun lt!410128 () Int)

(assert (=> d!341479 (>= lt!410128 0)))

(declare-fun e!768266 () Int)

(assert (=> d!341479 (= lt!410128 e!768266)))

(declare-fun c!198822 () Bool)

(assert (=> d!341479 (= c!198822 ((_ is Nil!12031) (list!4462 (xs!6671 t!4115))))))

(assert (=> d!341479 (= (size!9543 (list!4462 (xs!6671 t!4115))) lt!410128)))

(declare-fun b!1196135 () Bool)

(assert (=> b!1196135 (= e!768266 0)))

(declare-fun b!1196136 () Bool)

(assert (=> b!1196136 (= e!768266 (+ 1 (size!9543 (t!112365 (list!4462 (xs!6671 t!4115))))))))

(assert (= (and d!341479 c!198822) b!1196135))

(assert (= (and d!341479 (not c!198822)) b!1196136))

(declare-fun m!1370729 () Bool)

(assert (=> b!1196136 m!1370729))

(assert (=> b!1196008 d!341479))

(assert (=> b!1196008 d!341363))

(assert (=> d!341365 d!341361))

(assert (=> d!341365 d!341363))

(declare-fun d!341481 () Bool)

(assert (=> d!341481 (= (inv!16050 _$4!205) (<= (size!9543 (innerList!4024 _$4!205)) 2147483647))))

(declare-fun bs!288070 () Bool)

(assert (= bs!288070 d!341481))

(declare-fun m!1370731 () Bool)

(assert (=> bs!288070 m!1370731))

(assert (=> d!341365 d!341481))

(declare-fun d!341483 () Bool)

(declare-fun lt!410129 () Int)

(assert (=> d!341483 (>= lt!410129 0)))

(declare-fun e!768267 () Int)

(assert (=> d!341483 (= lt!410129 e!768267)))

(declare-fun c!198823 () Bool)

(assert (=> d!341483 (= c!198823 ((_ is Nil!12031) (list!4462 (xs!6671 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))))))

(assert (=> d!341483 (= (size!9543 (list!4462 (xs!6671 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))) lt!410129)))

(declare-fun b!1196137 () Bool)

(assert (=> b!1196137 (= e!768267 0)))

(declare-fun b!1196138 () Bool)

(assert (=> b!1196138 (= e!768267 (+ 1 (size!9543 (t!112365 (list!4462 (xs!6671 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))))))))

(assert (= (and d!341483 c!198823) b!1196137))

(assert (= (and d!341483 (not c!198823)) b!1196138))

(declare-fun m!1370733 () Bool)

(assert (=> b!1196138 m!1370733))

(assert (=> b!1196021 d!341483))

(declare-fun d!341485 () Bool)

(assert (=> d!341485 (= (list!4462 (xs!6671 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (innerList!4024 (xs!6671 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))

(assert (=> b!1196021 d!341485))

(declare-fun d!341487 () Bool)

(declare-fun lt!410130 () Int)

(assert (=> d!341487 (= lt!410130 (size!9543 (list!4461 (left!10494 t!4115))))))

(assert (=> d!341487 (= lt!410130 (ite ((_ is Empty!3964) (left!10494 t!4115)) 0 (ite ((_ is Leaf!6071) (left!10494 t!4115)) (csize!8159 (left!10494 t!4115)) (csize!8158 (left!10494 t!4115)))))))

(assert (=> d!341487 (= (size!9541 (left!10494 t!4115)) lt!410130)))

(declare-fun bs!288071 () Bool)

(assert (= bs!288071 d!341487))

(assert (=> bs!288071 m!1370471))

(assert (=> bs!288071 m!1370471))

(declare-fun m!1370735 () Bool)

(assert (=> bs!288071 m!1370735))

(assert (=> d!341399 d!341487))

(assert (=> d!341399 d!341461))

(declare-fun d!341489 () Bool)

(assert (=> d!341489 (= (height!558 (left!10494 (left!10494 t!4115))) (ite ((_ is Empty!3964) (left!10494 (left!10494 t!4115))) 0 (ite ((_ is Leaf!6071) (left!10494 (left!10494 t!4115))) 1 (cheight!4175 (left!10494 (left!10494 t!4115))))))))

(assert (=> b!1196028 d!341489))

(declare-fun d!341491 () Bool)

(assert (=> d!341491 (= (height!558 (right!10824 (left!10494 t!4115))) (ite ((_ is Empty!3964) (right!10824 (left!10494 t!4115))) 0 (ite ((_ is Leaf!6071) (right!10824 (left!10494 t!4115))) 1 (cheight!4175 (right!10824 (left!10494 t!4115))))))))

(assert (=> b!1196028 d!341491))

(declare-fun b!1196153 () Bool)

(declare-fun e!768277 () Bool)

(declare-fun lt!410133 () List!12055)

(declare-fun e!768276 () Int)

(assert (=> b!1196153 (= e!768277 (= (size!9543 lt!410133) e!768276))))

(declare-fun c!198832 () Bool)

(assert (=> b!1196153 (= c!198832 (<= (- until!31 from!553) 0))))

(declare-fun b!1196154 () Bool)

(declare-fun e!768278 () Int)

(assert (=> b!1196154 (= e!768278 (- until!31 from!553))))

(declare-fun e!768279 () List!12055)

(declare-fun b!1196155 () Bool)

(assert (=> b!1196155 (= e!768279 (Cons!12031 (h!17432 (drop!590 (list!4462 (xs!6671 t!4115)) from!553)) (take!118 (t!112365 (drop!590 (list!4462 (xs!6671 t!4115)) from!553)) (- (- until!31 from!553) 1))))))

(declare-fun d!341493 () Bool)

(assert (=> d!341493 e!768277))

(declare-fun res!539881 () Bool)

(assert (=> d!341493 (=> (not res!539881) (not e!768277))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1677 (List!12055) (InoxSet T!21698))

(assert (=> d!341493 (= res!539881 (= ((_ map implies) (content!1677 lt!410133) (content!1677 (drop!590 (list!4462 (xs!6671 t!4115)) from!553))) ((as const (InoxSet T!21698)) true)))))

(assert (=> d!341493 (= lt!410133 e!768279)))

(declare-fun c!198830 () Bool)

(assert (=> d!341493 (= c!198830 (or ((_ is Nil!12031) (drop!590 (list!4462 (xs!6671 t!4115)) from!553)) (<= (- until!31 from!553) 0)))))

(assert (=> d!341493 (= (take!118 (drop!590 (list!4462 (xs!6671 t!4115)) from!553) (- until!31 from!553)) lt!410133)))

(declare-fun b!1196156 () Bool)

(assert (=> b!1196156 (= e!768276 0)))

(declare-fun b!1196157 () Bool)

(assert (=> b!1196157 (= e!768278 (size!9543 (drop!590 (list!4462 (xs!6671 t!4115)) from!553)))))

(declare-fun b!1196158 () Bool)

(assert (=> b!1196158 (= e!768279 Nil!12031)))

(declare-fun b!1196159 () Bool)

(assert (=> b!1196159 (= e!768276 e!768278)))

(declare-fun c!198831 () Bool)

(assert (=> b!1196159 (= c!198831 (>= (- until!31 from!553) (size!9543 (drop!590 (list!4462 (xs!6671 t!4115)) from!553))))))

(assert (= (and d!341493 c!198830) b!1196158))

(assert (= (and d!341493 (not c!198830)) b!1196155))

(assert (= (and d!341493 res!539881) b!1196153))

(assert (= (and b!1196153 c!198832) b!1196156))

(assert (= (and b!1196153 (not c!198832)) b!1196159))

(assert (= (and b!1196159 c!198831) b!1196157))

(assert (= (and b!1196159 (not c!198831)) b!1196154))

(declare-fun m!1370737 () Bool)

(assert (=> d!341493 m!1370737))

(assert (=> d!341493 m!1370477))

(declare-fun m!1370739 () Bool)

(assert (=> d!341493 m!1370739))

(declare-fun m!1370741 () Bool)

(assert (=> b!1196155 m!1370741))

(assert (=> b!1196159 m!1370477))

(declare-fun m!1370743 () Bool)

(assert (=> b!1196159 m!1370743))

(assert (=> b!1196157 m!1370477))

(assert (=> b!1196157 m!1370743))

(declare-fun m!1370745 () Bool)

(assert (=> b!1196153 m!1370745))

(assert (=> d!341361 d!341493))

(declare-fun b!1196178 () Bool)

(declare-fun e!768292 () Int)

(assert (=> b!1196178 (= e!768292 0)))

(declare-fun b!1196179 () Bool)

(declare-fun e!768293 () List!12055)

(assert (=> b!1196179 (= e!768293 (list!4462 (xs!6671 t!4115)))))

(declare-fun b!1196180 () Bool)

(declare-fun e!768291 () List!12055)

(assert (=> b!1196180 (= e!768291 Nil!12031)))

(declare-fun bm!83232 () Bool)

(declare-fun call!83237 () Int)

(assert (=> bm!83232 (= call!83237 (size!9543 (list!4462 (xs!6671 t!4115))))))

(declare-fun b!1196181 () Bool)

(declare-fun e!768294 () Int)

(assert (=> b!1196181 (= e!768294 e!768292)))

(declare-fun c!198844 () Bool)

(assert (=> b!1196181 (= c!198844 (>= from!553 call!83237))))

(declare-fun b!1196182 () Bool)

(assert (=> b!1196182 (= e!768292 (- call!83237 from!553))))

(declare-fun b!1196183 () Bool)

(declare-fun e!768290 () Bool)

(declare-fun lt!410136 () List!12055)

(assert (=> b!1196183 (= e!768290 (= (size!9543 lt!410136) e!768294))))

(declare-fun c!198843 () Bool)

(assert (=> b!1196183 (= c!198843 (<= from!553 0))))

(declare-fun d!341495 () Bool)

(assert (=> d!341495 e!768290))

(declare-fun res!539884 () Bool)

(assert (=> d!341495 (=> (not res!539884) (not e!768290))))

(assert (=> d!341495 (= res!539884 (= ((_ map implies) (content!1677 lt!410136) (content!1677 (list!4462 (xs!6671 t!4115)))) ((as const (InoxSet T!21698)) true)))))

(assert (=> d!341495 (= lt!410136 e!768291)))

(declare-fun c!198842 () Bool)

(assert (=> d!341495 (= c!198842 ((_ is Nil!12031) (list!4462 (xs!6671 t!4115))))))

(assert (=> d!341495 (= (drop!590 (list!4462 (xs!6671 t!4115)) from!553) lt!410136)))

(declare-fun b!1196184 () Bool)

(assert (=> b!1196184 (= e!768291 e!768293)))

(declare-fun c!198841 () Bool)

(assert (=> b!1196184 (= c!198841 (<= from!553 0))))

(declare-fun b!1196185 () Bool)

(assert (=> b!1196185 (= e!768293 (drop!590 (t!112365 (list!4462 (xs!6671 t!4115))) (- from!553 1)))))

(declare-fun b!1196186 () Bool)

(assert (=> b!1196186 (= e!768294 call!83237)))

(assert (= (and d!341495 c!198842) b!1196180))

(assert (= (and d!341495 (not c!198842)) b!1196184))

(assert (= (and b!1196184 c!198841) b!1196179))

(assert (= (and b!1196184 (not c!198841)) b!1196185))

(assert (= (and d!341495 res!539884) b!1196183))

(assert (= (and b!1196183 c!198843) b!1196186))

(assert (= (and b!1196183 (not c!198843)) b!1196181))

(assert (= (and b!1196181 c!198844) b!1196178))

(assert (= (and b!1196181 (not c!198844)) b!1196182))

(assert (= (or b!1196186 b!1196181 b!1196182) bm!83232))

(assert (=> bm!83232 m!1370413))

(assert (=> bm!83232 m!1370463))

(declare-fun m!1370747 () Bool)

(assert (=> b!1196183 m!1370747))

(declare-fun m!1370749 () Bool)

(assert (=> d!341495 m!1370749))

(assert (=> d!341495 m!1370413))

(declare-fun m!1370751 () Bool)

(assert (=> d!341495 m!1370751))

(declare-fun m!1370753 () Bool)

(assert (=> b!1196185 m!1370753))

(assert (=> d!341361 d!341495))

(assert (=> d!341409 d!341475))

(assert (=> d!341409 d!341477))

(declare-fun d!341497 () Bool)

(assert (=> d!341497 (= (inv!16050 (xs!6671 (left!10494 (left!10494 t!4115)))) (<= (size!9543 (innerList!4024 (xs!6671 (left!10494 (left!10494 t!4115))))) 2147483647))))

(declare-fun bs!288072 () Bool)

(assert (= bs!288072 d!341497))

(declare-fun m!1370755 () Bool)

(assert (=> bs!288072 m!1370755))

(assert (=> b!1196050 d!341497))

(declare-fun lt!410137 () Int)

(declare-fun d!341499 () Bool)

(assert (=> d!341499 (= lt!410137 (size!9543 (list!4461 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))))))

(assert (=> d!341499 (= lt!410137 (ite ((_ is Empty!3964) (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) 0 (ite ((_ is Leaf!6071) (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (csize!8159 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (csize!8158 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))))

(assert (=> d!341499 (= (size!9541 (left!10494 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) lt!410137)))

(declare-fun bs!288073 () Bool)

(assert (= bs!288073 d!341499))

(declare-fun m!1370757 () Bool)

(assert (=> bs!288073 m!1370757))

(assert (=> bs!288073 m!1370757))

(declare-fun m!1370759 () Bool)

(assert (=> bs!288073 m!1370759))

(assert (=> d!341373 d!341499))

(declare-fun d!341501 () Bool)

(declare-fun lt!410138 () Int)

(assert (=> d!341501 (= lt!410138 (size!9543 (list!4461 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553))))))))

(assert (=> d!341501 (= lt!410138 (ite ((_ is Empty!3964) (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) 0 (ite ((_ is Leaf!6071) (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (csize!8159 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) (csize!8158 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))))))))

(assert (=> d!341501 (= (size!9541 (right!10824 (Leaf!6071 (slice!453 (xs!6671 t!4115) from!553 until!31) (- until!31 from!553)))) lt!410138)))

(declare-fun bs!288074 () Bool)

(assert (= bs!288074 d!341501))

(declare-fun m!1370761 () Bool)

(assert (=> bs!288074 m!1370761))

(assert (=> bs!288074 m!1370761))

(declare-fun m!1370763 () Bool)

(assert (=> bs!288074 m!1370763))

(assert (=> d!341373 d!341501))

(assert (=> d!341403 d!341483))

(assert (=> d!341403 d!341485))

(declare-fun b!1196197 () Bool)

(declare-fun res!539890 () Bool)

(declare-fun e!768300 () Bool)

(assert (=> b!1196197 (=> (not res!539890) (not e!768300))))

(declare-fun lt!410141 () List!12055)

(assert (=> b!1196197 (= res!539890 (= (size!9543 lt!410141) (+ (size!9543 (list!4461 (left!10494 t!4115))) (size!9543 (list!4461 (right!10824 t!4115))))))))

(declare-fun b!1196196 () Bool)

(declare-fun e!768299 () List!12055)

(assert (=> b!1196196 (= e!768299 (Cons!12031 (h!17432 (list!4461 (left!10494 t!4115))) (++!3065 (t!112365 (list!4461 (left!10494 t!4115))) (list!4461 (right!10824 t!4115)))))))

(declare-fun b!1196195 () Bool)

(assert (=> b!1196195 (= e!768299 (list!4461 (right!10824 t!4115)))))

(declare-fun b!1196198 () Bool)

(assert (=> b!1196198 (= e!768300 (or (not (= (list!4461 (right!10824 t!4115)) Nil!12031)) (= lt!410141 (list!4461 (left!10494 t!4115)))))))

(declare-fun d!341503 () Bool)

(assert (=> d!341503 e!768300))

(declare-fun res!539889 () Bool)

(assert (=> d!341503 (=> (not res!539889) (not e!768300))))

(assert (=> d!341503 (= res!539889 (= (content!1677 lt!410141) ((_ map or) (content!1677 (list!4461 (left!10494 t!4115))) (content!1677 (list!4461 (right!10824 t!4115))))))))

(assert (=> d!341503 (= lt!410141 e!768299)))

(declare-fun c!198847 () Bool)

(assert (=> d!341503 (= c!198847 ((_ is Nil!12031) (list!4461 (left!10494 t!4115))))))

(assert (=> d!341503 (= (++!3065 (list!4461 (left!10494 t!4115)) (list!4461 (right!10824 t!4115))) lt!410141)))

(assert (= (and d!341503 c!198847) b!1196195))

(assert (= (and d!341503 (not c!198847)) b!1196196))

(assert (= (and d!341503 res!539889) b!1196197))

(assert (= (and b!1196197 res!539890) b!1196198))

(declare-fun m!1370765 () Bool)

(assert (=> b!1196197 m!1370765))

(assert (=> b!1196197 m!1370471))

(assert (=> b!1196197 m!1370735))

(assert (=> b!1196197 m!1370473))

(assert (=> b!1196197 m!1370721))

(assert (=> b!1196196 m!1370473))

(declare-fun m!1370767 () Bool)

(assert (=> b!1196196 m!1370767))

(declare-fun m!1370769 () Bool)

(assert (=> d!341503 m!1370769))

(assert (=> d!341503 m!1370471))

(declare-fun m!1370771 () Bool)

(assert (=> d!341503 m!1370771))

(assert (=> d!341503 m!1370473))

(declare-fun m!1370773 () Bool)

(assert (=> d!341503 m!1370773))

(assert (=> b!1195973 d!341503))

(declare-fun b!1196202 () Bool)

(declare-fun e!768302 () List!12055)

(assert (=> b!1196202 (= e!768302 (++!3065 (list!4461 (left!10494 (left!10494 t!4115))) (list!4461 (right!10824 (left!10494 t!4115)))))))

(declare-fun d!341505 () Bool)

(declare-fun c!198848 () Bool)

(assert (=> d!341505 (= c!198848 ((_ is Empty!3964) (left!10494 t!4115)))))

(declare-fun e!768301 () List!12055)

(assert (=> d!341505 (= (list!4461 (left!10494 t!4115)) e!768301)))

(declare-fun b!1196199 () Bool)

(assert (=> b!1196199 (= e!768301 Nil!12031)))

(declare-fun b!1196201 () Bool)

(assert (=> b!1196201 (= e!768302 (list!4462 (xs!6671 (left!10494 t!4115))))))

(declare-fun b!1196200 () Bool)

(assert (=> b!1196200 (= e!768301 e!768302)))

(declare-fun c!198849 () Bool)

(assert (=> b!1196200 (= c!198849 ((_ is Leaf!6071) (left!10494 t!4115)))))

(assert (= (and d!341505 c!198848) b!1196199))

(assert (= (and d!341505 (not c!198848)) b!1196200))

(assert (= (and b!1196200 c!198849) b!1196201))

(assert (= (and b!1196200 (not c!198849)) b!1196202))

(declare-fun m!1370775 () Bool)

(assert (=> b!1196202 m!1370775))

(declare-fun m!1370777 () Bool)

(assert (=> b!1196202 m!1370777))

(assert (=> b!1196202 m!1370775))

(assert (=> b!1196202 m!1370777))

(declare-fun m!1370779 () Bool)

(assert (=> b!1196202 m!1370779))

(assert (=> b!1196201 m!1370563))

(assert (=> b!1195973 d!341505))

(assert (=> b!1195973 d!341459))

(declare-fun d!341507 () Bool)

(declare-fun lt!410142 () Bool)

(assert (=> d!341507 (= lt!410142 (isEmpty!7242 (list!4461 (right!10824 (left!10494 t!4115)))))))

(assert (=> d!341507 (= lt!410142 (= (size!9541 (right!10824 (left!10494 t!4115))) 0))))

(assert (=> d!341507 (= (isEmpty!7241 (right!10824 (left!10494 t!4115))) lt!410142)))

(declare-fun bs!288075 () Bool)

(assert (= bs!288075 d!341507))

(assert (=> bs!288075 m!1370777))

(assert (=> bs!288075 m!1370777))

(declare-fun m!1370781 () Bool)

(assert (=> bs!288075 m!1370781))

(assert (=> bs!288075 m!1370571))

(assert (=> b!1196024 d!341507))

(assert (=> b!1195934 d!341391))

(assert (=> b!1195934 d!341393))

(declare-fun d!341509 () Bool)

(declare-fun res!539891 () Bool)

(declare-fun e!768303 () Bool)

(assert (=> d!341509 (=> (not res!539891) (not e!768303))))

(assert (=> d!341509 (= res!539891 (<= (size!9543 (list!4462 (xs!6671 (left!10494 (right!10824 t!4115))))) 512))))

(assert (=> d!341509 (= (inv!16054 (left!10494 (right!10824 t!4115))) e!768303)))

(declare-fun b!1196203 () Bool)

(declare-fun res!539892 () Bool)

(assert (=> b!1196203 (=> (not res!539892) (not e!768303))))

(assert (=> b!1196203 (= res!539892 (= (csize!8159 (left!10494 (right!10824 t!4115))) (size!9543 (list!4462 (xs!6671 (left!10494 (right!10824 t!4115)))))))))

(declare-fun b!1196204 () Bool)

(assert (=> b!1196204 (= e!768303 (and (> (csize!8159 (left!10494 (right!10824 t!4115))) 0) (<= (csize!8159 (left!10494 (right!10824 t!4115))) 512)))))

(assert (= (and d!341509 res!539891) b!1196203))

(assert (= (and b!1196203 res!539892) b!1196204))

(declare-fun m!1370783 () Bool)

(assert (=> d!341509 m!1370783))

(assert (=> d!341509 m!1370783))

(declare-fun m!1370785 () Bool)

(assert (=> d!341509 m!1370785))

(assert (=> b!1196203 m!1370783))

(assert (=> b!1196203 m!1370783))

(assert (=> b!1196203 m!1370785))

(assert (=> b!1196038 d!341509))

(declare-fun b!1196205 () Bool)

(declare-fun res!539896 () Bool)

(declare-fun e!768305 () Bool)

(assert (=> b!1196205 (=> (not res!539896) (not e!768305))))

(assert (=> b!1196205 (= res!539896 (not (isEmpty!7241 (left!10494 (left!10494 (left!10494 t!4115))))))))

(declare-fun b!1196206 () Bool)

(assert (=> b!1196206 (= e!768305 (not (isEmpty!7241 (right!10824 (left!10494 (left!10494 t!4115))))))))

(declare-fun b!1196207 () Bool)

(declare-fun res!539895 () Bool)

(assert (=> b!1196207 (=> (not res!539895) (not e!768305))))

(assert (=> b!1196207 (= res!539895 (isBalanced!1149 (right!10824 (left!10494 (left!10494 t!4115)))))))

(declare-fun d!341511 () Bool)

(declare-fun res!539893 () Bool)

(declare-fun e!768304 () Bool)

(assert (=> d!341511 (=> res!539893 e!768304)))

(assert (=> d!341511 (= res!539893 (not ((_ is Node!3964) (left!10494 (left!10494 t!4115)))))))

(assert (=> d!341511 (= (isBalanced!1149 (left!10494 (left!10494 t!4115))) e!768304)))

(declare-fun b!1196208 () Bool)

(declare-fun res!539894 () Bool)

(assert (=> b!1196208 (=> (not res!539894) (not e!768305))))

(assert (=> b!1196208 (= res!539894 (isBalanced!1149 (left!10494 (left!10494 (left!10494 t!4115)))))))

(declare-fun b!1196209 () Bool)

(assert (=> b!1196209 (= e!768304 e!768305)))

(declare-fun res!539897 () Bool)

(assert (=> b!1196209 (=> (not res!539897) (not e!768305))))

(assert (=> b!1196209 (= res!539897 (<= (- 1) (- (height!558 (left!10494 (left!10494 (left!10494 t!4115)))) (height!558 (right!10824 (left!10494 (left!10494 t!4115)))))))))

(declare-fun b!1196210 () Bool)

(declare-fun res!539898 () Bool)

(assert (=> b!1196210 (=> (not res!539898) (not e!768305))))

(assert (=> b!1196210 (= res!539898 (<= (- (height!558 (left!10494 (left!10494 (left!10494 t!4115)))) (height!558 (right!10824 (left!10494 (left!10494 t!4115))))) 1))))

(assert (= (and d!341511 (not res!539893)) b!1196209))

(assert (= (and b!1196209 res!539897) b!1196210))

(assert (= (and b!1196210 res!539898) b!1196208))

(assert (= (and b!1196208 res!539894) b!1196207))

(assert (= (and b!1196207 res!539895) b!1196205))

(assert (= (and b!1196205 res!539896) b!1196206))

(declare-fun m!1370787 () Bool)

(assert (=> b!1196205 m!1370787))

(declare-fun m!1370789 () Bool)

(assert (=> b!1196206 m!1370789))

(declare-fun m!1370791 () Bool)

(assert (=> b!1196208 m!1370791))

(declare-fun m!1370793 () Bool)

(assert (=> b!1196207 m!1370793))

(declare-fun m!1370795 () Bool)

(assert (=> b!1196210 m!1370795))

(declare-fun m!1370797 () Bool)

(assert (=> b!1196210 m!1370797))

(assert (=> b!1196209 m!1370795))

(assert (=> b!1196209 m!1370797))

(assert (=> b!1196026 d!341511))

(declare-fun d!341513 () Bool)

(declare-fun res!539899 () Bool)

(declare-fun e!768306 () Bool)

(assert (=> d!341513 (=> (not res!539899) (not e!768306))))

(assert (=> d!341513 (= res!539899 (= (csize!8158 (left!10494 (right!10824 t!4115))) (+ (size!9541 (left!10494 (left!10494 (right!10824 t!4115)))) (size!9541 (right!10824 (left!10494 (right!10824 t!4115)))))))))

(assert (=> d!341513 (= (inv!16053 (left!10494 (right!10824 t!4115))) e!768306)))

(declare-fun b!1196211 () Bool)

(declare-fun res!539900 () Bool)

(assert (=> b!1196211 (=> (not res!539900) (not e!768306))))

(assert (=> b!1196211 (= res!539900 (and (not (= (left!10494 (left!10494 (right!10824 t!4115))) Empty!3964)) (not (= (right!10824 (left!10494 (right!10824 t!4115))) Empty!3964))))))

(declare-fun b!1196212 () Bool)

(declare-fun res!539901 () Bool)

(assert (=> b!1196212 (=> (not res!539901) (not e!768306))))

(assert (=> b!1196212 (= res!539901 (= (cheight!4175 (left!10494 (right!10824 t!4115))) (+ (max!0 (height!558 (left!10494 (left!10494 (right!10824 t!4115)))) (height!558 (right!10824 (left!10494 (right!10824 t!4115))))) 1)))))

(declare-fun b!1196213 () Bool)

(assert (=> b!1196213 (= e!768306 (<= 0 (cheight!4175 (left!10494 (right!10824 t!4115)))))))

(assert (= (and d!341513 res!539899) b!1196211))

(assert (= (and b!1196211 res!539900) b!1196212))

(assert (= (and b!1196212 res!539901) b!1196213))

(declare-fun m!1370799 () Bool)

(assert (=> d!341513 m!1370799))

(declare-fun m!1370801 () Bool)

(assert (=> d!341513 m!1370801))

(declare-fun m!1370803 () Bool)

(assert (=> b!1196212 m!1370803))

(declare-fun m!1370805 () Bool)

(assert (=> b!1196212 m!1370805))

(assert (=> b!1196212 m!1370803))

(assert (=> b!1196212 m!1370805))

(declare-fun m!1370807 () Bool)

(assert (=> b!1196212 m!1370807))

(assert (=> b!1196036 d!341513))

(declare-fun d!341515 () Bool)

(declare-fun c!198850 () Bool)

(assert (=> d!341515 (= c!198850 ((_ is Node!3964) (left!10494 (right!10824 (left!10494 t!4115)))))))

(declare-fun e!768307 () Bool)

(assert (=> d!341515 (= (inv!16049 (left!10494 (right!10824 (left!10494 t!4115)))) e!768307)))

(declare-fun b!1196214 () Bool)

(assert (=> b!1196214 (= e!768307 (inv!16053 (left!10494 (right!10824 (left!10494 t!4115)))))))

(declare-fun b!1196215 () Bool)

(declare-fun e!768308 () Bool)

(assert (=> b!1196215 (= e!768307 e!768308)))

(declare-fun res!539902 () Bool)

(assert (=> b!1196215 (= res!539902 (not ((_ is Leaf!6071) (left!10494 (right!10824 (left!10494 t!4115))))))))

(assert (=> b!1196215 (=> res!539902 e!768308)))

(declare-fun b!1196216 () Bool)

(assert (=> b!1196216 (= e!768308 (inv!16054 (left!10494 (right!10824 (left!10494 t!4115)))))))

(assert (= (and d!341515 c!198850) b!1196214))

(assert (= (and d!341515 (not c!198850)) b!1196215))

(assert (= (and b!1196215 (not res!539902)) b!1196216))

(declare-fun m!1370809 () Bool)

(assert (=> b!1196214 m!1370809))

(declare-fun m!1370811 () Bool)

(assert (=> b!1196216 m!1370811))

(assert (=> b!1196054 d!341515))

(declare-fun d!341517 () Bool)

(declare-fun c!198851 () Bool)

(assert (=> d!341517 (= c!198851 ((_ is Node!3964) (right!10824 (right!10824 (left!10494 t!4115)))))))

(declare-fun e!768309 () Bool)

(assert (=> d!341517 (= (inv!16049 (right!10824 (right!10824 (left!10494 t!4115)))) e!768309)))

(declare-fun b!1196217 () Bool)

(assert (=> b!1196217 (= e!768309 (inv!16053 (right!10824 (right!10824 (left!10494 t!4115)))))))

(declare-fun b!1196218 () Bool)

(declare-fun e!768310 () Bool)

(assert (=> b!1196218 (= e!768309 e!768310)))

(declare-fun res!539903 () Bool)

(assert (=> b!1196218 (= res!539903 (not ((_ is Leaf!6071) (right!10824 (right!10824 (left!10494 t!4115))))))))

(assert (=> b!1196218 (=> res!539903 e!768310)))

(declare-fun b!1196219 () Bool)

(assert (=> b!1196219 (= e!768310 (inv!16054 (right!10824 (right!10824 (left!10494 t!4115)))))))

(assert (= (and d!341517 c!198851) b!1196217))

(assert (= (and d!341517 (not c!198851)) b!1196218))

(assert (= (and b!1196218 (not res!539903)) b!1196219))

(declare-fun m!1370813 () Bool)

(assert (=> b!1196217 m!1370813))

(declare-fun m!1370815 () Bool)

(assert (=> b!1196219 m!1370815))

(assert (=> b!1196054 d!341517))

(declare-fun d!341519 () Bool)

(declare-fun res!539904 () Bool)

(declare-fun e!768311 () Bool)

(assert (=> d!341519 (=> (not res!539904) (not e!768311))))

(assert (=> d!341519 (= res!539904 (<= (size!9543 (list!4462 (xs!6671 (right!10824 (right!10824 t!4115))))) 512))))

(assert (=> d!341519 (= (inv!16054 (right!10824 (right!10824 t!4115))) e!768311)))

(declare-fun b!1196220 () Bool)

(declare-fun res!539905 () Bool)

(assert (=> b!1196220 (=> (not res!539905) (not e!768311))))

(assert (=> b!1196220 (= res!539905 (= (csize!8159 (right!10824 (right!10824 t!4115))) (size!9543 (list!4462 (xs!6671 (right!10824 (right!10824 t!4115)))))))))

(declare-fun b!1196221 () Bool)

(assert (=> b!1196221 (= e!768311 (and (> (csize!8159 (right!10824 (right!10824 t!4115))) 0) (<= (csize!8159 (right!10824 (right!10824 t!4115))) 512)))))

(assert (= (and d!341519 res!539904) b!1196220))

(assert (= (and b!1196220 res!539905) b!1196221))

(declare-fun m!1370817 () Bool)

(assert (=> d!341519 m!1370817))

(assert (=> d!341519 m!1370817))

(declare-fun m!1370819 () Bool)

(assert (=> d!341519 m!1370819))

(assert (=> b!1196220 m!1370817))

(assert (=> b!1196220 m!1370817))

(assert (=> b!1196220 m!1370819))

(assert (=> b!1196041 d!341519))

(declare-fun b!1196222 () Bool)

(declare-fun res!539909 () Bool)

(declare-fun e!768313 () Bool)

(assert (=> b!1196222 (=> (not res!539909) (not e!768313))))

(assert (=> b!1196222 (= res!539909 (not (isEmpty!7241 (left!10494 (right!10824 (right!10824 t!4115))))))))

(declare-fun b!1196223 () Bool)

(assert (=> b!1196223 (= e!768313 (not (isEmpty!7241 (right!10824 (right!10824 (right!10824 t!4115))))))))

(declare-fun b!1196224 () Bool)

(declare-fun res!539908 () Bool)

(assert (=> b!1196224 (=> (not res!539908) (not e!768313))))

(assert (=> b!1196224 (= res!539908 (isBalanced!1149 (right!10824 (right!10824 (right!10824 t!4115)))))))

(declare-fun d!341521 () Bool)

(declare-fun res!539906 () Bool)

(declare-fun e!768312 () Bool)

(assert (=> d!341521 (=> res!539906 e!768312)))

(assert (=> d!341521 (= res!539906 (not ((_ is Node!3964) (right!10824 (right!10824 t!4115)))))))

(assert (=> d!341521 (= (isBalanced!1149 (right!10824 (right!10824 t!4115))) e!768312)))

(declare-fun b!1196225 () Bool)

(declare-fun res!539907 () Bool)

(assert (=> b!1196225 (=> (not res!539907) (not e!768313))))

(assert (=> b!1196225 (= res!539907 (isBalanced!1149 (left!10494 (right!10824 (right!10824 t!4115)))))))

(declare-fun b!1196226 () Bool)

(assert (=> b!1196226 (= e!768312 e!768313)))

(declare-fun res!539910 () Bool)

(assert (=> b!1196226 (=> (not res!539910) (not e!768313))))

(assert (=> b!1196226 (= res!539910 (<= (- 1) (- (height!558 (left!10494 (right!10824 (right!10824 t!4115)))) (height!558 (right!10824 (right!10824 (right!10824 t!4115)))))))))

(declare-fun b!1196227 () Bool)

(declare-fun res!539911 () Bool)

(assert (=> b!1196227 (=> (not res!539911) (not e!768313))))

(assert (=> b!1196227 (= res!539911 (<= (- (height!558 (left!10494 (right!10824 (right!10824 t!4115)))) (height!558 (right!10824 (right!10824 (right!10824 t!4115))))) 1))))

(assert (= (and d!341521 (not res!539906)) b!1196226))

(assert (= (and b!1196226 res!539910) b!1196227))

(assert (= (and b!1196227 res!539911) b!1196225))

(assert (= (and b!1196225 res!539907) b!1196224))

(assert (= (and b!1196224 res!539908) b!1196222))

(assert (= (and b!1196222 res!539909) b!1196223))

(declare-fun m!1370821 () Bool)

(assert (=> b!1196222 m!1370821))

(declare-fun m!1370823 () Bool)

(assert (=> b!1196223 m!1370823))

(declare-fun m!1370825 () Bool)

(assert (=> b!1196225 m!1370825))

(declare-fun m!1370827 () Bool)

(assert (=> b!1196224 m!1370827))

(declare-fun m!1370829 () Bool)

(assert (=> b!1196227 m!1370829))

(declare-fun m!1370831 () Bool)

(assert (=> b!1196227 m!1370831))

(assert (=> b!1196226 m!1370829))

(assert (=> b!1196226 m!1370831))

(assert (=> b!1195979 d!341521))

(declare-fun d!341523 () Bool)

(declare-fun lt!410143 () Int)

(assert (=> d!341523 (>= lt!410143 0)))

(declare-fun e!768314 () Int)

(assert (=> d!341523 (= lt!410143 e!768314)))

(declare-fun c!198852 () Bool)

(assert (=> d!341523 (= c!198852 ((_ is Nil!12031) (innerList!4024 (xs!6671 (right!10824 t!4115)))))))

(assert (=> d!341523 (= (size!9543 (innerList!4024 (xs!6671 (right!10824 t!4115)))) lt!410143)))

(declare-fun b!1196228 () Bool)

(assert (=> b!1196228 (= e!768314 0)))

(declare-fun b!1196229 () Bool)

(assert (=> b!1196229 (= e!768314 (+ 1 (size!9543 (t!112365 (innerList!4024 (xs!6671 (right!10824 t!4115)))))))))

(assert (= (and d!341523 c!198852) b!1196228))

(assert (= (and d!341523 (not c!198852)) b!1196229))

(declare-fun m!1370833 () Bool)

(assert (=> b!1196229 m!1370833))

(assert (=> d!341411 d!341523))

(declare-fun d!341525 () Bool)

(assert (=> d!341525 (= (inv!16050 (xs!6671 (left!10494 (right!10824 t!4115)))) (<= (size!9543 (innerList!4024 (xs!6671 (left!10494 (right!10824 t!4115))))) 2147483647))))

(declare-fun bs!288076 () Bool)

(assert (= bs!288076 d!341525))

(declare-fun m!1370835 () Bool)

(assert (=> bs!288076 m!1370835))

(assert (=> b!1196058 d!341525))

(declare-fun d!341527 () Bool)

(assert (=> d!341527 (= (height!558 (left!10494 (right!10824 t!4115))) (ite ((_ is Empty!3964) (left!10494 (right!10824 t!4115))) 0 (ite ((_ is Leaf!6071) (left!10494 (right!10824 t!4115))) 1 (cheight!4175 (left!10494 (right!10824 t!4115))))))))

(assert (=> b!1195981 d!341527))

(declare-fun d!341529 () Bool)

(assert (=> d!341529 (= (height!558 (right!10824 (right!10824 t!4115))) (ite ((_ is Empty!3964) (right!10824 (right!10824 t!4115))) 0 (ite ((_ is Leaf!6071) (right!10824 (right!10824 t!4115))) 1 (cheight!4175 (right!10824 (right!10824 t!4115))))))))

(assert (=> b!1195981 d!341529))

(assert (=> d!341381 d!341479))

(assert (=> d!341381 d!341363))

(declare-fun d!341531 () Bool)

(declare-fun res!539912 () Bool)

(declare-fun e!768315 () Bool)

(assert (=> d!341531 (=> (not res!539912) (not e!768315))))

(assert (=> d!341531 (= res!539912 (<= (size!9543 (list!4462 (xs!6671 (left!10494 (left!10494 t!4115))))) 512))))

(assert (=> d!341531 (= (inv!16054 (left!10494 (left!10494 t!4115))) e!768315)))

(declare-fun b!1196230 () Bool)

(declare-fun res!539913 () Bool)

(assert (=> b!1196230 (=> (not res!539913) (not e!768315))))

(assert (=> b!1196230 (= res!539913 (= (csize!8159 (left!10494 (left!10494 t!4115))) (size!9543 (list!4462 (xs!6671 (left!10494 (left!10494 t!4115)))))))))

(declare-fun b!1196231 () Bool)

(assert (=> b!1196231 (= e!768315 (and (> (csize!8159 (left!10494 (left!10494 t!4115))) 0) (<= (csize!8159 (left!10494 (left!10494 t!4115))) 512)))))

(assert (= (and d!341531 res!539912) b!1196230))

(assert (= (and b!1196230 res!539913) b!1196231))

(declare-fun m!1370837 () Bool)

(assert (=> d!341531 m!1370837))

(assert (=> d!341531 m!1370837))

(declare-fun m!1370839 () Bool)

(assert (=> d!341531 m!1370839))

(assert (=> b!1196230 m!1370837))

(assert (=> b!1196230 m!1370837))

(assert (=> b!1196230 m!1370839))

(assert (=> b!1196012 d!341531))

(assert (=> d!341353 d!341479))

(assert (=> d!341353 d!341363))

(declare-fun d!341533 () Bool)

(declare-fun _$1!9933 () Int)

(assert (=> d!341533 (= _$1!9933 (size!9543 (list!4462 (xs!6671 t!4115))))))

(assert (=> d!341533 true))

(assert (=> d!341533 (= (choose!7719 (xs!6671 t!4115)) _$1!9933)))

(declare-fun bs!288077 () Bool)

(assert (= bs!288077 d!341533))

(assert (=> bs!288077 m!1370413))

(assert (=> bs!288077 m!1370413))

(assert (=> bs!288077 m!1370463))

(assert (=> d!341353 d!341533))

(declare-fun d!341535 () Bool)

(declare-fun res!539914 () Bool)

(declare-fun e!768316 () Bool)

(assert (=> d!341535 (=> (not res!539914) (not e!768316))))

(assert (=> d!341535 (= res!539914 (<= (size!9543 (list!4462 (xs!6671 (right!10824 (left!10494 t!4115))))) 512))))

(assert (=> d!341535 (= (inv!16054 (right!10824 (left!10494 t!4115))) e!768316)))

(declare-fun b!1196232 () Bool)

(declare-fun res!539915 () Bool)

(assert (=> b!1196232 (=> (not res!539915) (not e!768316))))

(assert (=> b!1196232 (= res!539915 (= (csize!8159 (right!10824 (left!10494 t!4115))) (size!9543 (list!4462 (xs!6671 (right!10824 (left!10494 t!4115)))))))))

(declare-fun b!1196233 () Bool)

(assert (=> b!1196233 (= e!768316 (and (> (csize!8159 (right!10824 (left!10494 t!4115))) 0) (<= (csize!8159 (right!10824 (left!10494 t!4115))) 512)))))

(assert (= (and d!341535 res!539914) b!1196232))

(assert (= (and b!1196232 res!539915) b!1196233))

(declare-fun m!1370841 () Bool)

(assert (=> d!341535 m!1370841))

(assert (=> d!341535 m!1370841))

(declare-fun m!1370843 () Bool)

(assert (=> d!341535 m!1370843))

(assert (=> b!1196232 m!1370841))

(assert (=> b!1196232 m!1370841))

(assert (=> b!1196232 m!1370843))

(assert (=> b!1196015 d!341535))

(declare-fun d!341537 () Bool)

(declare-fun lt!410144 () Bool)

(assert (=> d!341537 (= lt!410144 (isEmpty!7242 (list!4461 (left!10494 (right!10824 t!4115)))))))

(assert (=> d!341537 (= lt!410144 (= (size!9541 (left!10494 (right!10824 t!4115))) 0))))

(assert (=> d!341537 (= (isEmpty!7241 (left!10494 (right!10824 t!4115))) lt!410144)))

(declare-fun bs!288078 () Bool)

(assert (= bs!288078 d!341537))

(assert (=> bs!288078 m!1370715))

(assert (=> bs!288078 m!1370715))

(declare-fun m!1370845 () Bool)

(assert (=> bs!288078 m!1370845))

(assert (=> bs!288078 m!1370451))

(assert (=> b!1195977 d!341537))

(declare-fun d!341539 () Bool)

(declare-fun res!539916 () Bool)

(declare-fun e!768317 () Bool)

(assert (=> d!341539 (=> (not res!539916) (not e!768317))))

(assert (=> d!341539 (= res!539916 (= (csize!8158 (right!10824 (right!10824 t!4115))) (+ (size!9541 (left!10494 (right!10824 (right!10824 t!4115)))) (size!9541 (right!10824 (right!10824 (right!10824 t!4115)))))))))

(assert (=> d!341539 (= (inv!16053 (right!10824 (right!10824 t!4115))) e!768317)))

(declare-fun b!1196234 () Bool)

(declare-fun res!539917 () Bool)

(assert (=> b!1196234 (=> (not res!539917) (not e!768317))))

(assert (=> b!1196234 (= res!539917 (and (not (= (left!10494 (right!10824 (right!10824 t!4115))) Empty!3964)) (not (= (right!10824 (right!10824 (right!10824 t!4115))) Empty!3964))))))

(declare-fun b!1196235 () Bool)

(declare-fun res!539918 () Bool)

(assert (=> b!1196235 (=> (not res!539918) (not e!768317))))

(assert (=> b!1196235 (= res!539918 (= (cheight!4175 (right!10824 (right!10824 t!4115))) (+ (max!0 (height!558 (left!10494 (right!10824 (right!10824 t!4115)))) (height!558 (right!10824 (right!10824 (right!10824 t!4115))))) 1)))))

(declare-fun b!1196236 () Bool)

(assert (=> b!1196236 (= e!768317 (<= 0 (cheight!4175 (right!10824 (right!10824 t!4115)))))))

(assert (= (and d!341539 res!539916) b!1196234))

(assert (= (and b!1196234 res!539917) b!1196235))

(assert (= (and b!1196235 res!539918) b!1196236))

(declare-fun m!1370847 () Bool)

(assert (=> d!341539 m!1370847))

(declare-fun m!1370849 () Bool)

(assert (=> d!341539 m!1370849))

(assert (=> b!1196235 m!1370829))

(assert (=> b!1196235 m!1370831))

(assert (=> b!1196235 m!1370829))

(assert (=> b!1196235 m!1370831))

(declare-fun m!1370851 () Bool)

(assert (=> b!1196235 m!1370851))

(assert (=> b!1196039 d!341539))

(declare-fun d!341541 () Bool)

(declare-fun lt!410145 () Int)

(assert (=> d!341541 (>= lt!410145 0)))

(declare-fun e!768318 () Int)

(assert (=> d!341541 (= lt!410145 e!768318)))

(declare-fun c!198853 () Bool)

(assert (=> d!341541 (= c!198853 ((_ is Nil!12031) (t!112365 (list!4461 t!4115))))))

(assert (=> d!341541 (= (size!9543 (t!112365 (list!4461 t!4115))) lt!410145)))

(declare-fun b!1196237 () Bool)

(assert (=> b!1196237 (= e!768318 0)))

(declare-fun b!1196238 () Bool)

(assert (=> b!1196238 (= e!768318 (+ 1 (size!9543 (t!112365 (t!112365 (list!4461 t!4115))))))))

(assert (= (and d!341541 c!198853) b!1196237))

(assert (= (and d!341541 (not c!198853)) b!1196238))

(declare-fun m!1370853 () Bool)

(assert (=> b!1196238 m!1370853))

(assert (=> b!1195961 d!341541))

(declare-fun d!341543 () Bool)

(declare-fun res!539919 () Bool)

(declare-fun e!768319 () Bool)

(assert (=> d!341543 (=> (not res!539919) (not e!768319))))

(assert (=> d!341543 (= res!539919 (= (csize!8158 (left!10494 (left!10494 t!4115))) (+ (size!9541 (left!10494 (left!10494 (left!10494 t!4115)))) (size!9541 (right!10824 (left!10494 (left!10494 t!4115)))))))))

(assert (=> d!341543 (= (inv!16053 (left!10494 (left!10494 t!4115))) e!768319)))

(declare-fun b!1196239 () Bool)

(declare-fun res!539920 () Bool)

(assert (=> b!1196239 (=> (not res!539920) (not e!768319))))

(assert (=> b!1196239 (= res!539920 (and (not (= (left!10494 (left!10494 (left!10494 t!4115))) Empty!3964)) (not (= (right!10824 (left!10494 (left!10494 t!4115))) Empty!3964))))))

(declare-fun b!1196240 () Bool)

(declare-fun res!539921 () Bool)

(assert (=> b!1196240 (=> (not res!539921) (not e!768319))))

(assert (=> b!1196240 (= res!539921 (= (cheight!4175 (left!10494 (left!10494 t!4115))) (+ (max!0 (height!558 (left!10494 (left!10494 (left!10494 t!4115)))) (height!558 (right!10824 (left!10494 (left!10494 t!4115))))) 1)))))

(declare-fun b!1196241 () Bool)

(assert (=> b!1196241 (= e!768319 (<= 0 (cheight!4175 (left!10494 (left!10494 t!4115)))))))

(assert (= (and d!341543 res!539919) b!1196239))

(assert (= (and b!1196239 res!539920) b!1196240))

(assert (= (and b!1196240 res!539921) b!1196241))

(declare-fun m!1370855 () Bool)

(assert (=> d!341543 m!1370855))

(declare-fun m!1370857 () Bool)

(assert (=> d!341543 m!1370857))

(assert (=> b!1196240 m!1370795))

(assert (=> b!1196240 m!1370797))

(assert (=> b!1196240 m!1370795))

(assert (=> b!1196240 m!1370797))

(declare-fun m!1370859 () Bool)

(assert (=> b!1196240 m!1370859))

(assert (=> b!1196010 d!341543))

(declare-fun d!341545 () Bool)

(assert (=> d!341545 (= (max!0 (height!558 (left!10494 (left!10494 t!4115))) (height!558 (right!10824 (left!10494 t!4115)))) (ite (< (height!558 (left!10494 (left!10494 t!4115))) (height!558 (right!10824 (left!10494 t!4115)))) (height!558 (right!10824 (left!10494 t!4115))) (height!558 (left!10494 (left!10494 t!4115)))))))

(assert (=> b!1196034 d!341545))

(assert (=> b!1196034 d!341489))

(assert (=> b!1196034 d!341491))

(declare-fun d!341547 () Bool)

(declare-fun c!198854 () Bool)

(assert (=> d!341547 (= c!198854 ((_ is Node!3964) (left!10494 (right!10824 (right!10824 t!4115)))))))

(declare-fun e!768320 () Bool)

(assert (=> d!341547 (= (inv!16049 (left!10494 (right!10824 (right!10824 t!4115)))) e!768320)))

(declare-fun b!1196242 () Bool)

(assert (=> b!1196242 (= e!768320 (inv!16053 (left!10494 (right!10824 (right!10824 t!4115)))))))

(declare-fun b!1196243 () Bool)

(declare-fun e!768321 () Bool)

(assert (=> b!1196243 (= e!768320 e!768321)))

(declare-fun res!539922 () Bool)

(assert (=> b!1196243 (= res!539922 (not ((_ is Leaf!6071) (left!10494 (right!10824 (right!10824 t!4115))))))))

(assert (=> b!1196243 (=> res!539922 e!768321)))

(declare-fun b!1196244 () Bool)

(assert (=> b!1196244 (= e!768321 (inv!16054 (left!10494 (right!10824 (right!10824 t!4115)))))))

(assert (= (and d!341547 c!198854) b!1196242))

(assert (= (and d!341547 (not c!198854)) b!1196243))

(assert (= (and b!1196243 (not res!539922)) b!1196244))

(declare-fun m!1370861 () Bool)

(assert (=> b!1196242 m!1370861))

(declare-fun m!1370863 () Bool)

(assert (=> b!1196244 m!1370863))

(assert (=> b!1196060 d!341547))

(declare-fun d!341549 () Bool)

(declare-fun c!198855 () Bool)

(assert (=> d!341549 (= c!198855 ((_ is Node!3964) (right!10824 (right!10824 (right!10824 t!4115)))))))

(declare-fun e!768322 () Bool)

(assert (=> d!341549 (= (inv!16049 (right!10824 (right!10824 (right!10824 t!4115)))) e!768322)))

(declare-fun b!1196245 () Bool)

(assert (=> b!1196245 (= e!768322 (inv!16053 (right!10824 (right!10824 (right!10824 t!4115)))))))

(declare-fun b!1196246 () Bool)

(declare-fun e!768323 () Bool)

(assert (=> b!1196246 (= e!768322 e!768323)))

(declare-fun res!539923 () Bool)

(assert (=> b!1196246 (= res!539923 (not ((_ is Leaf!6071) (right!10824 (right!10824 (right!10824 t!4115))))))))

(assert (=> b!1196246 (=> res!539923 e!768323)))

(declare-fun b!1196247 () Bool)

(assert (=> b!1196247 (= e!768323 (inv!16054 (right!10824 (right!10824 (right!10824 t!4115)))))))

(assert (= (and d!341549 c!198855) b!1196245))

(assert (= (and d!341549 (not c!198855)) b!1196246))

(assert (= (and b!1196246 (not res!539923)) b!1196247))

(declare-fun m!1370865 () Bool)

(assert (=> b!1196245 m!1370865))

(declare-fun m!1370867 () Bool)

(assert (=> b!1196247 m!1370867))

(assert (=> b!1196060 d!341549))

(declare-fun d!341551 () Bool)

(declare-fun res!539924 () Bool)

(declare-fun e!768324 () Bool)

(assert (=> d!341551 (=> (not res!539924) (not e!768324))))

(assert (=> d!341551 (= res!539924 (= (csize!8158 (right!10824 (left!10494 t!4115))) (+ (size!9541 (left!10494 (right!10824 (left!10494 t!4115)))) (size!9541 (right!10824 (right!10824 (left!10494 t!4115)))))))))

(assert (=> d!341551 (= (inv!16053 (right!10824 (left!10494 t!4115))) e!768324)))

(declare-fun b!1196248 () Bool)

(declare-fun res!539925 () Bool)

(assert (=> b!1196248 (=> (not res!539925) (not e!768324))))

(assert (=> b!1196248 (= res!539925 (and (not (= (left!10494 (right!10824 (left!10494 t!4115))) Empty!3964)) (not (= (right!10824 (right!10824 (left!10494 t!4115))) Empty!3964))))))

(declare-fun b!1196249 () Bool)

(declare-fun res!539926 () Bool)

(assert (=> b!1196249 (=> (not res!539926) (not e!768324))))

(assert (=> b!1196249 (= res!539926 (= (cheight!4175 (right!10824 (left!10494 t!4115))) (+ (max!0 (height!558 (left!10494 (right!10824 (left!10494 t!4115)))) (height!558 (right!10824 (right!10824 (left!10494 t!4115))))) 1)))))

(declare-fun b!1196250 () Bool)

(assert (=> b!1196250 (= e!768324 (<= 0 (cheight!4175 (right!10824 (left!10494 t!4115)))))))

(assert (= (and d!341551 res!539924) b!1196248))

(assert (= (and b!1196248 res!539925) b!1196249))

(assert (= (and b!1196249 res!539926) b!1196250))

(declare-fun m!1370869 () Bool)

(assert (=> d!341551 m!1370869))

(declare-fun m!1370871 () Bool)

(assert (=> d!341551 m!1370871))

(declare-fun m!1370873 () Bool)

(assert (=> b!1196249 m!1370873))

(declare-fun m!1370875 () Bool)

(assert (=> b!1196249 m!1370875))

(assert (=> b!1196249 m!1370873))

(assert (=> b!1196249 m!1370875))

(declare-fun m!1370877 () Bool)

(assert (=> b!1196249 m!1370877))

(assert (=> b!1196013 d!341551))

(declare-fun d!341553 () Bool)

(declare-fun c!198856 () Bool)

(assert (=> d!341553 (= c!198856 ((_ is Node!3964) (left!10494 (left!10494 (left!10494 t!4115)))))))

(declare-fun e!768325 () Bool)

(assert (=> d!341553 (= (inv!16049 (left!10494 (left!10494 (left!10494 t!4115)))) e!768325)))

(declare-fun b!1196251 () Bool)

(assert (=> b!1196251 (= e!768325 (inv!16053 (left!10494 (left!10494 (left!10494 t!4115)))))))

(declare-fun b!1196252 () Bool)

(declare-fun e!768326 () Bool)

(assert (=> b!1196252 (= e!768325 e!768326)))

(declare-fun res!539927 () Bool)

(assert (=> b!1196252 (= res!539927 (not ((_ is Leaf!6071) (left!10494 (left!10494 (left!10494 t!4115))))))))

(assert (=> b!1196252 (=> res!539927 e!768326)))

(declare-fun b!1196253 () Bool)

(assert (=> b!1196253 (= e!768326 (inv!16054 (left!10494 (left!10494 (left!10494 t!4115)))))))

(assert (= (and d!341553 c!198856) b!1196251))

(assert (= (and d!341553 (not c!198856)) b!1196252))

(assert (= (and b!1196252 (not res!539927)) b!1196253))

(declare-fun m!1370879 () Bool)

(assert (=> b!1196251 m!1370879))

(declare-fun m!1370881 () Bool)

(assert (=> b!1196253 m!1370881))

(assert (=> b!1196049 d!341553))

(declare-fun d!341555 () Bool)

(declare-fun c!198857 () Bool)

(assert (=> d!341555 (= c!198857 ((_ is Node!3964) (right!10824 (left!10494 (left!10494 t!4115)))))))

(declare-fun e!768327 () Bool)

(assert (=> d!341555 (= (inv!16049 (right!10824 (left!10494 (left!10494 t!4115)))) e!768327)))

(declare-fun b!1196254 () Bool)

(assert (=> b!1196254 (= e!768327 (inv!16053 (right!10824 (left!10494 (left!10494 t!4115)))))))

(declare-fun b!1196255 () Bool)

(declare-fun e!768328 () Bool)

(assert (=> b!1196255 (= e!768327 e!768328)))

(declare-fun res!539928 () Bool)

(assert (=> b!1196255 (= res!539928 (not ((_ is Leaf!6071) (right!10824 (left!10494 (left!10494 t!4115))))))))

(assert (=> b!1196255 (=> res!539928 e!768328)))

(declare-fun b!1196256 () Bool)

(assert (=> b!1196256 (= e!768328 (inv!16054 (right!10824 (left!10494 (left!10494 t!4115)))))))

(assert (= (and d!341555 c!198857) b!1196254))

(assert (= (and d!341555 (not c!198857)) b!1196255))

(assert (= (and b!1196255 (not res!539928)) b!1196256))

(declare-fun m!1370883 () Bool)

(assert (=> b!1196254 m!1370883))

(declare-fun m!1370885 () Bool)

(assert (=> b!1196256 m!1370885))

(assert (=> b!1196049 d!341555))

(declare-fun d!341557 () Bool)

(declare-fun lt!410146 () Int)

(assert (=> d!341557 (>= lt!410146 0)))

(declare-fun e!768329 () Int)

(assert (=> d!341557 (= lt!410146 e!768329)))

(declare-fun c!198858 () Bool)

(assert (=> d!341557 (= c!198858 ((_ is Nil!12031) (t!112365 (innerList!4024 (xs!6671 t!4115)))))))

(assert (=> d!341557 (= (size!9543 (t!112365 (innerList!4024 (xs!6671 t!4115)))) lt!410146)))

(declare-fun b!1196257 () Bool)

(assert (=> b!1196257 (= e!768329 0)))

(declare-fun b!1196258 () Bool)

(assert (=> b!1196258 (= e!768329 (+ 1 (size!9543 (t!112365 (t!112365 (innerList!4024 (xs!6671 t!4115)))))))))

(assert (= (and d!341557 c!198858) b!1196257))

(assert (= (and d!341557 (not c!198858)) b!1196258))

(declare-fun m!1370887 () Bool)

(assert (=> b!1196258 m!1370887))

(assert (=> b!1195959 d!341557))

(declare-fun d!341559 () Bool)

(declare-fun lt!410147 () Int)

(assert (=> d!341559 (>= lt!410147 0)))

(declare-fun e!768330 () Int)

(assert (=> d!341559 (= lt!410147 e!768330)))

(declare-fun c!198859 () Bool)

(assert (=> d!341559 (= c!198859 ((_ is Nil!12031) (list!4462 (xs!6671 (right!10824 t!4115)))))))

(assert (=> d!341559 (= (size!9543 (list!4462 (xs!6671 (right!10824 t!4115)))) lt!410147)))

(declare-fun b!1196259 () Bool)

(assert (=> b!1196259 (= e!768330 0)))

(declare-fun b!1196260 () Bool)

(assert (=> b!1196260 (= e!768330 (+ 1 (size!9543 (t!112365 (list!4462 (xs!6671 (right!10824 t!4115)))))))))

(assert (= (and d!341559 c!198859) b!1196259))

(assert (= (and d!341559 (not c!198859)) b!1196260))

(declare-fun m!1370889 () Bool)

(assert (=> b!1196260 m!1370889))

(assert (=> b!1196029 d!341559))

(declare-fun d!341561 () Bool)

(assert (=> d!341561 (= (list!4462 (xs!6671 (right!10824 t!4115))) (innerList!4024 (xs!6671 (right!10824 t!4115))))))

(assert (=> b!1196029 d!341561))

(assert (=> b!1195972 d!341363))

(declare-fun d!341563 () Bool)

(declare-fun lt!410148 () Bool)

(assert (=> d!341563 (= lt!410148 (isEmpty!7242 (list!4461 (left!10494 (left!10494 t!4115)))))))

(assert (=> d!341563 (= lt!410148 (= (size!9541 (left!10494 (left!10494 t!4115))) 0))))

(assert (=> d!341563 (= (isEmpty!7241 (left!10494 (left!10494 t!4115))) lt!410148)))

(declare-fun bs!288079 () Bool)

(assert (= bs!288079 d!341563))

(assert (=> bs!288079 m!1370775))

(assert (=> bs!288079 m!1370775))

(declare-fun m!1370891 () Bool)

(assert (=> bs!288079 m!1370891))

(assert (=> bs!288079 m!1370569))

(assert (=> b!1196023 d!341563))

(declare-fun d!341565 () Bool)

(assert (=> d!341565 (= (isEmpty!7242 (list!4461 (left!10494 t!4115))) ((_ is Nil!12031) (list!4461 (left!10494 t!4115))))))

(assert (=> d!341379 d!341565))

(assert (=> d!341379 d!341505))

(assert (=> d!341379 d!341487))

(assert (=> b!1196027 d!341489))

(assert (=> b!1196027 d!341491))

(declare-fun d!341567 () Bool)

(declare-fun lt!410149 () Int)

(assert (=> d!341567 (>= lt!410149 0)))

(declare-fun e!768331 () Int)

(assert (=> d!341567 (= lt!410149 e!768331)))

(declare-fun c!198860 () Bool)

(assert (=> d!341567 (= c!198860 ((_ is Nil!12031) (innerList!4024 (xs!6671 (left!10494 t!4115)))))))

(assert (=> d!341567 (= (size!9543 (innerList!4024 (xs!6671 (left!10494 t!4115)))) lt!410149)))

(declare-fun b!1196261 () Bool)

(assert (=> b!1196261 (= e!768331 0)))

(declare-fun b!1196262 () Bool)

(assert (=> b!1196262 (= e!768331 (+ 1 (size!9543 (t!112365 (innerList!4024 (xs!6671 (left!10494 t!4115)))))))))

(assert (= (and d!341567 c!198860) b!1196261))

(assert (= (and d!341567 (not c!198860)) b!1196262))

(declare-fun m!1370893 () Bool)

(assert (=> b!1196262 m!1370893))

(assert (=> d!341355 d!341567))

(declare-fun d!341569 () Bool)

(declare-fun lt!410150 () Int)

(assert (=> d!341569 (= lt!410150 (size!9543 (list!4461 (left!10494 (left!10494 t!4115)))))))

(assert (=> d!341569 (= lt!410150 (ite ((_ is Empty!3964) (left!10494 (left!10494 t!4115))) 0 (ite ((_ is Leaf!6071) (left!10494 (left!10494 t!4115))) (csize!8159 (left!10494 (left!10494 t!4115))) (csize!8158 (left!10494 (left!10494 t!4115))))))))

(assert (=> d!341569 (= (size!9541 (left!10494 (left!10494 t!4115))) lt!410150)))

(declare-fun bs!288080 () Bool)

(assert (= bs!288080 d!341569))

(assert (=> bs!288080 m!1370775))

(assert (=> bs!288080 m!1370775))

(declare-fun m!1370895 () Bool)

(assert (=> bs!288080 m!1370895))

(assert (=> d!341413 d!341569))

(declare-fun d!341571 () Bool)

(declare-fun lt!410151 () Int)

(assert (=> d!341571 (= lt!410151 (size!9543 (list!4461 (right!10824 (left!10494 t!4115)))))))

(assert (=> d!341571 (= lt!410151 (ite ((_ is Empty!3964) (right!10824 (left!10494 t!4115))) 0 (ite ((_ is Leaf!6071) (right!10824 (left!10494 t!4115))) (csize!8159 (right!10824 (left!10494 t!4115))) (csize!8158 (right!10824 (left!10494 t!4115))))))))

(assert (=> d!341571 (= (size!9541 (right!10824 (left!10494 t!4115))) lt!410151)))

(declare-fun bs!288081 () Bool)

(assert (= bs!288081 d!341571))

(assert (=> bs!288081 m!1370777))

(assert (=> bs!288081 m!1370777))

(declare-fun m!1370897 () Bool)

(assert (=> bs!288081 m!1370897))

(assert (=> d!341413 d!341571))

(declare-fun d!341573 () Bool)

(assert (=> d!341573 (= (inv!16050 (xs!6671 (right!10824 (left!10494 t!4115)))) (<= (size!9543 (innerList!4024 (xs!6671 (right!10824 (left!10494 t!4115))))) 2147483647))))

(declare-fun bs!288082 () Bool)

(assert (= bs!288082 d!341573))

(declare-fun m!1370899 () Bool)

(assert (=> bs!288082 m!1370899))

(assert (=> b!1196055 d!341573))

(declare-fun b!1196263 () Bool)

(declare-fun res!539932 () Bool)

(declare-fun e!768333 () Bool)

(assert (=> b!1196263 (=> (not res!539932) (not e!768333))))

(assert (=> b!1196263 (= res!539932 (not (isEmpty!7241 (left!10494 (right!10824 (left!10494 t!4115))))))))

(declare-fun b!1196264 () Bool)

(assert (=> b!1196264 (= e!768333 (not (isEmpty!7241 (right!10824 (right!10824 (left!10494 t!4115))))))))

(declare-fun b!1196265 () Bool)

(declare-fun res!539931 () Bool)

(assert (=> b!1196265 (=> (not res!539931) (not e!768333))))

(assert (=> b!1196265 (= res!539931 (isBalanced!1149 (right!10824 (right!10824 (left!10494 t!4115)))))))

(declare-fun d!341575 () Bool)

(declare-fun res!539929 () Bool)

(declare-fun e!768332 () Bool)

(assert (=> d!341575 (=> res!539929 e!768332)))

(assert (=> d!341575 (= res!539929 (not ((_ is Node!3964) (right!10824 (left!10494 t!4115)))))))

(assert (=> d!341575 (= (isBalanced!1149 (right!10824 (left!10494 t!4115))) e!768332)))

(declare-fun b!1196266 () Bool)

(declare-fun res!539930 () Bool)

(assert (=> b!1196266 (=> (not res!539930) (not e!768333))))

(assert (=> b!1196266 (= res!539930 (isBalanced!1149 (left!10494 (right!10824 (left!10494 t!4115)))))))

(declare-fun b!1196267 () Bool)

(assert (=> b!1196267 (= e!768332 e!768333)))

(declare-fun res!539933 () Bool)

(assert (=> b!1196267 (=> (not res!539933) (not e!768333))))

(assert (=> b!1196267 (= res!539933 (<= (- 1) (- (height!558 (left!10494 (right!10824 (left!10494 t!4115)))) (height!558 (right!10824 (right!10824 (left!10494 t!4115)))))))))

(declare-fun b!1196268 () Bool)

(declare-fun res!539934 () Bool)

(assert (=> b!1196268 (=> (not res!539934) (not e!768333))))

(assert (=> b!1196268 (= res!539934 (<= (- (height!558 (left!10494 (right!10824 (left!10494 t!4115)))) (height!558 (right!10824 (right!10824 (left!10494 t!4115))))) 1))))

(assert (= (and d!341575 (not res!539929)) b!1196267))

(assert (= (and b!1196267 res!539933) b!1196268))

(assert (= (and b!1196268 res!539934) b!1196266))

(assert (= (and b!1196266 res!539930) b!1196265))

(assert (= (and b!1196265 res!539931) b!1196263))

(assert (= (and b!1196263 res!539932) b!1196264))

(declare-fun m!1370901 () Bool)

(assert (=> b!1196263 m!1370901))

(declare-fun m!1370903 () Bool)

(assert (=> b!1196264 m!1370903))

(declare-fun m!1370905 () Bool)

(assert (=> b!1196266 m!1370905))

(declare-fun m!1370907 () Bool)

(assert (=> b!1196265 m!1370907))

(assert (=> b!1196268 m!1370873))

(assert (=> b!1196268 m!1370875))

(assert (=> b!1196267 m!1370873))

(assert (=> b!1196267 m!1370875))

(assert (=> b!1196025 d!341575))

(declare-fun d!341577 () Bool)

(declare-fun c!198861 () Bool)

(assert (=> d!341577 (= c!198861 ((_ is Node!3964) (left!10494 (left!10494 (right!10824 t!4115)))))))

(declare-fun e!768334 () Bool)

(assert (=> d!341577 (= (inv!16049 (left!10494 (left!10494 (right!10824 t!4115)))) e!768334)))

(declare-fun b!1196269 () Bool)

(assert (=> b!1196269 (= e!768334 (inv!16053 (left!10494 (left!10494 (right!10824 t!4115)))))))

(declare-fun b!1196270 () Bool)

(declare-fun e!768335 () Bool)

(assert (=> b!1196270 (= e!768334 e!768335)))

(declare-fun res!539935 () Bool)

(assert (=> b!1196270 (= res!539935 (not ((_ is Leaf!6071) (left!10494 (left!10494 (right!10824 t!4115))))))))

(assert (=> b!1196270 (=> res!539935 e!768335)))

(declare-fun b!1196271 () Bool)

(assert (=> b!1196271 (= e!768335 (inv!16054 (left!10494 (left!10494 (right!10824 t!4115)))))))

(assert (= (and d!341577 c!198861) b!1196269))

(assert (= (and d!341577 (not c!198861)) b!1196270))

(assert (= (and b!1196270 (not res!539935)) b!1196271))

(declare-fun m!1370909 () Bool)

(assert (=> b!1196269 m!1370909))

(declare-fun m!1370911 () Bool)

(assert (=> b!1196271 m!1370911))

(assert (=> b!1196057 d!341577))

(declare-fun d!341579 () Bool)

(declare-fun c!198862 () Bool)

(assert (=> d!341579 (= c!198862 ((_ is Node!3964) (right!10824 (left!10494 (right!10824 t!4115)))))))

(declare-fun e!768336 () Bool)

(assert (=> d!341579 (= (inv!16049 (right!10824 (left!10494 (right!10824 t!4115)))) e!768336)))

(declare-fun b!1196272 () Bool)

(assert (=> b!1196272 (= e!768336 (inv!16053 (right!10824 (left!10494 (right!10824 t!4115)))))))

(declare-fun b!1196273 () Bool)

(declare-fun e!768337 () Bool)

(assert (=> b!1196273 (= e!768336 e!768337)))

(declare-fun res!539936 () Bool)

(assert (=> b!1196273 (= res!539936 (not ((_ is Leaf!6071) (right!10824 (left!10494 (right!10824 t!4115))))))))

(assert (=> b!1196273 (=> res!539936 e!768337)))

(declare-fun b!1196274 () Bool)

(assert (=> b!1196274 (= e!768337 (inv!16054 (right!10824 (left!10494 (right!10824 t!4115)))))))

(assert (= (and d!341579 c!198862) b!1196272))

(assert (= (and d!341579 (not c!198862)) b!1196273))

(assert (= (and b!1196273 (not res!539936)) b!1196274))

(declare-fun m!1370913 () Bool)

(assert (=> b!1196272 m!1370913))

(declare-fun m!1370915 () Bool)

(assert (=> b!1196274 m!1370915))

(assert (=> b!1196057 d!341579))

(declare-fun d!341581 () Bool)

(declare-fun lt!410152 () Int)

(assert (=> d!341581 (= lt!410152 (size!9543 (list!4461 (left!10494 (right!10824 t!4115)))))))

(assert (=> d!341581 (= lt!410152 (ite ((_ is Empty!3964) (left!10494 (right!10824 t!4115))) 0 (ite ((_ is Leaf!6071) (left!10494 (right!10824 t!4115))) (csize!8159 (left!10494 (right!10824 t!4115))) (csize!8158 (left!10494 (right!10824 t!4115))))))))

(assert (=> d!341581 (= (size!9541 (left!10494 (right!10824 t!4115))) lt!410152)))

(declare-fun bs!288083 () Bool)

(assert (= bs!288083 d!341581))

(assert (=> bs!288083 m!1370715))

(assert (=> bs!288083 m!1370715))

(declare-fun m!1370917 () Bool)

(assert (=> bs!288083 m!1370917))

(assert (=> d!341349 d!341581))

(declare-fun d!341583 () Bool)

(declare-fun lt!410153 () Int)

(assert (=> d!341583 (= lt!410153 (size!9543 (list!4461 (right!10824 (right!10824 t!4115)))))))

(assert (=> d!341583 (= lt!410153 (ite ((_ is Empty!3964) (right!10824 (right!10824 t!4115))) 0 (ite ((_ is Leaf!6071) (right!10824 (right!10824 t!4115))) (csize!8159 (right!10824 (right!10824 t!4115))) (csize!8158 (right!10824 (right!10824 t!4115))))))))

(assert (=> d!341583 (= (size!9541 (right!10824 (right!10824 t!4115))) lt!410153)))

(declare-fun bs!288084 () Bool)

(assert (= bs!288084 d!341583))

(assert (=> bs!288084 m!1370717))

(assert (=> bs!288084 m!1370717))

(declare-fun m!1370919 () Bool)

(assert (=> bs!288084 m!1370919))

(assert (=> d!341349 d!341583))

(declare-fun b!1196275 () Bool)

(declare-fun res!539940 () Bool)

(declare-fun e!768339 () Bool)

(assert (=> b!1196275 (=> (not res!539940) (not e!768339))))

(assert (=> b!1196275 (= res!539940 (not (isEmpty!7241 (left!10494 (left!10494 (right!10824 t!4115))))))))

(declare-fun b!1196276 () Bool)

(assert (=> b!1196276 (= e!768339 (not (isEmpty!7241 (right!10824 (left!10494 (right!10824 t!4115))))))))

(declare-fun b!1196277 () Bool)

(declare-fun res!539939 () Bool)

(assert (=> b!1196277 (=> (not res!539939) (not e!768339))))

(assert (=> b!1196277 (= res!539939 (isBalanced!1149 (right!10824 (left!10494 (right!10824 t!4115)))))))

(declare-fun d!341585 () Bool)

(declare-fun res!539937 () Bool)

(declare-fun e!768338 () Bool)

(assert (=> d!341585 (=> res!539937 e!768338)))

(assert (=> d!341585 (= res!539937 (not ((_ is Node!3964) (left!10494 (right!10824 t!4115)))))))

(assert (=> d!341585 (= (isBalanced!1149 (left!10494 (right!10824 t!4115))) e!768338)))

(declare-fun b!1196278 () Bool)

(declare-fun res!539938 () Bool)

(assert (=> b!1196278 (=> (not res!539938) (not e!768339))))

(assert (=> b!1196278 (= res!539938 (isBalanced!1149 (left!10494 (left!10494 (right!10824 t!4115)))))))

(declare-fun b!1196279 () Bool)

(assert (=> b!1196279 (= e!768338 e!768339)))

(declare-fun res!539941 () Bool)

(assert (=> b!1196279 (=> (not res!539941) (not e!768339))))

(assert (=> b!1196279 (= res!539941 (<= (- 1) (- (height!558 (left!10494 (left!10494 (right!10824 t!4115)))) (height!558 (right!10824 (left!10494 (right!10824 t!4115)))))))))

(declare-fun b!1196280 () Bool)

(declare-fun res!539942 () Bool)

(assert (=> b!1196280 (=> (not res!539942) (not e!768339))))

(assert (=> b!1196280 (= res!539942 (<= (- (height!558 (left!10494 (left!10494 (right!10824 t!4115)))) (height!558 (right!10824 (left!10494 (right!10824 t!4115))))) 1))))

(assert (= (and d!341585 (not res!539937)) b!1196279))

(assert (= (and b!1196279 res!539941) b!1196280))

(assert (= (and b!1196280 res!539942) b!1196278))

(assert (= (and b!1196278 res!539938) b!1196277))

(assert (= (and b!1196277 res!539939) b!1196275))

(assert (= (and b!1196275 res!539940) b!1196276))

(declare-fun m!1370921 () Bool)

(assert (=> b!1196275 m!1370921))

(declare-fun m!1370923 () Bool)

(assert (=> b!1196276 m!1370923))

(declare-fun m!1370925 () Bool)

(assert (=> b!1196278 m!1370925))

(declare-fun m!1370927 () Bool)

(assert (=> b!1196277 m!1370927))

(assert (=> b!1196280 m!1370803))

(assert (=> b!1196280 m!1370805))

(assert (=> b!1196279 m!1370803))

(assert (=> b!1196279 m!1370805))

(assert (=> b!1195980 d!341585))

(declare-fun d!341587 () Bool)

(assert (=> d!341587 (= (max!0 (height!558 (left!10494 (right!10824 t!4115))) (height!558 (right!10824 (right!10824 t!4115)))) (ite (< (height!558 (left!10494 (right!10824 t!4115))) (height!558 (right!10824 (right!10824 t!4115)))) (height!558 (right!10824 (right!10824 t!4115))) (height!558 (left!10494 (right!10824 t!4115)))))))

(assert (=> b!1195952 d!341587))

(assert (=> b!1195952 d!341527))

(assert (=> b!1195952 d!341529))

(assert (=> b!1195982 d!341527))

(assert (=> b!1195982 d!341529))

(assert (=> d!341407 d!341559))

(assert (=> d!341407 d!341561))

(assert (=> b!1195937 d!341415))

(assert (=> b!1195937 d!341417))

(declare-fun b!1196281 () Bool)

(declare-fun e!768340 () Bool)

(declare-fun tp!340702 () Bool)

(assert (=> b!1196281 (= e!768340 (and tp_is_empty!5955 tp!340702))))

(assert (=> b!1196062 (= tp!340681 e!768340)))

(assert (= (and b!1196062 ((_ is Cons!12031) (innerList!4024 (xs!6671 (right!10824 (right!10824 t!4115)))))) b!1196281))

(declare-fun b!1196282 () Bool)

(declare-fun e!768341 () Bool)

(declare-fun tp!340703 () Bool)

(assert (=> b!1196282 (= e!768341 (and tp_is_empty!5955 tp!340703))))

(assert (=> b!1195976 (= tp!340668 e!768341)))

(assert (= (and b!1195976 ((_ is Cons!12031) (innerList!4024 _$4!205))) b!1196282))

(declare-fun b!1196283 () Bool)

(declare-fun e!768342 () Bool)

(declare-fun tp!340704 () Bool)

(assert (=> b!1196283 (= e!768342 (and tp_is_empty!5955 tp!340704))))

(assert (=> b!1196051 (= tp!340672 e!768342)))

(assert (= (and b!1196051 ((_ is Cons!12031) (innerList!4024 (xs!6671 (left!10494 (left!10494 t!4115)))))) b!1196283))

(declare-fun b!1196284 () Bool)

(declare-fun e!768343 () Bool)

(declare-fun tp!340705 () Bool)

(assert (=> b!1196284 (= e!768343 (and tp_is_empty!5955 tp!340705))))

(assert (=> b!1196043 (= tp!340670 e!768343)))

(assert (= (and b!1196043 ((_ is Cons!12031) (t!112365 (innerList!4024 (xs!6671 (left!10494 t!4115)))))) b!1196284))

(declare-fun tp!340708 () Bool)

(declare-fun e!768345 () Bool)

(declare-fun tp!340707 () Bool)

(declare-fun b!1196285 () Bool)

(assert (=> b!1196285 (= e!768345 (and (inv!16049 (left!10494 (left!10494 (right!10824 (left!10494 t!4115))))) tp!340708 (inv!16049 (right!10824 (left!10494 (right!10824 (left!10494 t!4115))))) tp!340707))))

(declare-fun b!1196287 () Bool)

(declare-fun e!768344 () Bool)

(declare-fun tp!340706 () Bool)

(assert (=> b!1196287 (= e!768344 tp!340706)))

(declare-fun b!1196286 () Bool)

(assert (=> b!1196286 (= e!768345 (and (inv!16050 (xs!6671 (left!10494 (right!10824 (left!10494 t!4115))))) e!768344))))

(assert (=> b!1196054 (= tp!340677 (and (inv!16049 (left!10494 (right!10824 (left!10494 t!4115)))) e!768345))))

(assert (= (and b!1196054 ((_ is Node!3964) (left!10494 (right!10824 (left!10494 t!4115))))) b!1196285))

(assert (= b!1196286 b!1196287))

(assert (= (and b!1196054 ((_ is Leaf!6071) (left!10494 (right!10824 (left!10494 t!4115))))) b!1196286))

(declare-fun m!1370929 () Bool)

(assert (=> b!1196285 m!1370929))

(declare-fun m!1370931 () Bool)

(assert (=> b!1196285 m!1370931))

(declare-fun m!1370933 () Bool)

(assert (=> b!1196286 m!1370933))

(assert (=> b!1196054 m!1370589))

(declare-fun e!768347 () Bool)

(declare-fun tp!340710 () Bool)

(declare-fun b!1196288 () Bool)

(declare-fun tp!340711 () Bool)

(assert (=> b!1196288 (= e!768347 (and (inv!16049 (left!10494 (right!10824 (right!10824 (left!10494 t!4115))))) tp!340711 (inv!16049 (right!10824 (right!10824 (right!10824 (left!10494 t!4115))))) tp!340710))))

(declare-fun b!1196290 () Bool)

(declare-fun e!768346 () Bool)

(declare-fun tp!340709 () Bool)

(assert (=> b!1196290 (= e!768346 tp!340709)))

(declare-fun b!1196289 () Bool)

(assert (=> b!1196289 (= e!768347 (and (inv!16050 (xs!6671 (right!10824 (right!10824 (left!10494 t!4115))))) e!768346))))

(assert (=> b!1196054 (= tp!340676 (and (inv!16049 (right!10824 (right!10824 (left!10494 t!4115)))) e!768347))))

(assert (= (and b!1196054 ((_ is Node!3964) (right!10824 (right!10824 (left!10494 t!4115))))) b!1196288))

(assert (= b!1196289 b!1196290))

(assert (= (and b!1196054 ((_ is Leaf!6071) (right!10824 (right!10824 (left!10494 t!4115))))) b!1196289))

(declare-fun m!1370935 () Bool)

(assert (=> b!1196288 m!1370935))

(declare-fun m!1370937 () Bool)

(assert (=> b!1196288 m!1370937))

(declare-fun m!1370939 () Bool)

(assert (=> b!1196289 m!1370939))

(assert (=> b!1196054 m!1370591))

(declare-fun b!1196291 () Bool)

(declare-fun tp!340714 () Bool)

(declare-fun tp!340713 () Bool)

(declare-fun e!768349 () Bool)

(assert (=> b!1196291 (= e!768349 (and (inv!16049 (left!10494 (left!10494 (left!10494 (right!10824 t!4115))))) tp!340714 (inv!16049 (right!10824 (left!10494 (left!10494 (right!10824 t!4115))))) tp!340713))))

(declare-fun b!1196293 () Bool)

(declare-fun e!768348 () Bool)

(declare-fun tp!340712 () Bool)

(assert (=> b!1196293 (= e!768348 tp!340712)))

(declare-fun b!1196292 () Bool)

(assert (=> b!1196292 (= e!768349 (and (inv!16050 (xs!6671 (left!10494 (left!10494 (right!10824 t!4115))))) e!768348))))

(assert (=> b!1196057 (= tp!340680 (and (inv!16049 (left!10494 (left!10494 (right!10824 t!4115)))) e!768349))))

(assert (= (and b!1196057 ((_ is Node!3964) (left!10494 (left!10494 (right!10824 t!4115))))) b!1196291))

(assert (= b!1196292 b!1196293))

(assert (= (and b!1196057 ((_ is Leaf!6071) (left!10494 (left!10494 (right!10824 t!4115))))) b!1196292))

(declare-fun m!1370941 () Bool)

(assert (=> b!1196291 m!1370941))

(declare-fun m!1370943 () Bool)

(assert (=> b!1196291 m!1370943))

(declare-fun m!1370945 () Bool)

(assert (=> b!1196292 m!1370945))

(assert (=> b!1196057 m!1370595))

(declare-fun tp!340717 () Bool)

(declare-fun b!1196294 () Bool)

(declare-fun tp!340716 () Bool)

(declare-fun e!768351 () Bool)

(assert (=> b!1196294 (= e!768351 (and (inv!16049 (left!10494 (right!10824 (left!10494 (right!10824 t!4115))))) tp!340717 (inv!16049 (right!10824 (right!10824 (left!10494 (right!10824 t!4115))))) tp!340716))))

(declare-fun b!1196296 () Bool)

(declare-fun e!768350 () Bool)

(declare-fun tp!340715 () Bool)

(assert (=> b!1196296 (= e!768350 tp!340715)))

(declare-fun b!1196295 () Bool)

(assert (=> b!1196295 (= e!768351 (and (inv!16050 (xs!6671 (right!10824 (left!10494 (right!10824 t!4115))))) e!768350))))

(assert (=> b!1196057 (= tp!340679 (and (inv!16049 (right!10824 (left!10494 (right!10824 t!4115)))) e!768351))))

(assert (= (and b!1196057 ((_ is Node!3964) (right!10824 (left!10494 (right!10824 t!4115))))) b!1196294))

(assert (= b!1196295 b!1196296))

(assert (= (and b!1196057 ((_ is Leaf!6071) (right!10824 (left!10494 (right!10824 t!4115))))) b!1196295))

(declare-fun m!1370947 () Bool)

(assert (=> b!1196294 m!1370947))

(declare-fun m!1370949 () Bool)

(assert (=> b!1196294 m!1370949))

(declare-fun m!1370951 () Bool)

(assert (=> b!1196295 m!1370951))

(assert (=> b!1196057 m!1370597))

(declare-fun b!1196297 () Bool)

(declare-fun e!768352 () Bool)

(declare-fun tp!340718 () Bool)

(assert (=> b!1196297 (= e!768352 (and tp_is_empty!5955 tp!340718))))

(assert (=> b!1196056 (= tp!340675 e!768352)))

(assert (= (and b!1196056 ((_ is Cons!12031) (innerList!4024 (xs!6671 (right!10824 (left!10494 t!4115)))))) b!1196297))

(declare-fun b!1196298 () Bool)

(declare-fun e!768353 () Bool)

(declare-fun tp!340719 () Bool)

(assert (=> b!1196298 (= e!768353 (and tp_is_empty!5955 tp!340719))))

(assert (=> b!1196042 (= tp!340669 e!768353)))

(assert (= (and b!1196042 ((_ is Cons!12031) (t!112365 (t!112365 (innerList!4024 (xs!6671 t!4115)))))) b!1196298))

(declare-fun b!1196299 () Bool)

(declare-fun e!768354 () Bool)

(declare-fun tp!340720 () Bool)

(assert (=> b!1196299 (= e!768354 (and tp_is_empty!5955 tp!340720))))

(assert (=> b!1196046 (= tp!340671 e!768354)))

(assert (= (and b!1196046 ((_ is Cons!12031) (t!112365 (innerList!4024 (xs!6671 (right!10824 t!4115)))))) b!1196299))

(declare-fun tp!340722 () Bool)

(declare-fun tp!340723 () Bool)

(declare-fun e!768356 () Bool)

(declare-fun b!1196300 () Bool)

(assert (=> b!1196300 (= e!768356 (and (inv!16049 (left!10494 (left!10494 (right!10824 (right!10824 t!4115))))) tp!340723 (inv!16049 (right!10824 (left!10494 (right!10824 (right!10824 t!4115))))) tp!340722))))

(declare-fun b!1196302 () Bool)

(declare-fun e!768355 () Bool)

(declare-fun tp!340721 () Bool)

(assert (=> b!1196302 (= e!768355 tp!340721)))

(declare-fun b!1196301 () Bool)

(assert (=> b!1196301 (= e!768356 (and (inv!16050 (xs!6671 (left!10494 (right!10824 (right!10824 t!4115))))) e!768355))))

(assert (=> b!1196060 (= tp!340683 (and (inv!16049 (left!10494 (right!10824 (right!10824 t!4115)))) e!768356))))

(assert (= (and b!1196060 ((_ is Node!3964) (left!10494 (right!10824 (right!10824 t!4115))))) b!1196300))

(assert (= b!1196301 b!1196302))

(assert (= (and b!1196060 ((_ is Leaf!6071) (left!10494 (right!10824 (right!10824 t!4115))))) b!1196301))

(declare-fun m!1370953 () Bool)

(assert (=> b!1196300 m!1370953))

(declare-fun m!1370955 () Bool)

(assert (=> b!1196300 m!1370955))

(declare-fun m!1370957 () Bool)

(assert (=> b!1196301 m!1370957))

(assert (=> b!1196060 m!1370601))

(declare-fun tp!340725 () Bool)

(declare-fun b!1196303 () Bool)

(declare-fun e!768358 () Bool)

(declare-fun tp!340726 () Bool)

(assert (=> b!1196303 (= e!768358 (and (inv!16049 (left!10494 (right!10824 (right!10824 (right!10824 t!4115))))) tp!340726 (inv!16049 (right!10824 (right!10824 (right!10824 (right!10824 t!4115))))) tp!340725))))

(declare-fun b!1196305 () Bool)

(declare-fun e!768357 () Bool)

(declare-fun tp!340724 () Bool)

(assert (=> b!1196305 (= e!768357 tp!340724)))

(declare-fun b!1196304 () Bool)

(assert (=> b!1196304 (= e!768358 (and (inv!16050 (xs!6671 (right!10824 (right!10824 (right!10824 t!4115))))) e!768357))))

(assert (=> b!1196060 (= tp!340682 (and (inv!16049 (right!10824 (right!10824 (right!10824 t!4115)))) e!768358))))

(assert (= (and b!1196060 ((_ is Node!3964) (right!10824 (right!10824 (right!10824 t!4115))))) b!1196303))

(assert (= b!1196304 b!1196305))

(assert (= (and b!1196060 ((_ is Leaf!6071) (right!10824 (right!10824 (right!10824 t!4115))))) b!1196304))

(declare-fun m!1370959 () Bool)

(assert (=> b!1196303 m!1370959))

(declare-fun m!1370961 () Bool)

(assert (=> b!1196303 m!1370961))

(declare-fun m!1370963 () Bool)

(assert (=> b!1196304 m!1370963))

(assert (=> b!1196060 m!1370603))

(declare-fun e!768360 () Bool)

(declare-fun tp!340728 () Bool)

(declare-fun tp!340729 () Bool)

(declare-fun b!1196306 () Bool)

(assert (=> b!1196306 (= e!768360 (and (inv!16049 (left!10494 (left!10494 (left!10494 (left!10494 t!4115))))) tp!340729 (inv!16049 (right!10824 (left!10494 (left!10494 (left!10494 t!4115))))) tp!340728))))

(declare-fun b!1196308 () Bool)

(declare-fun e!768359 () Bool)

(declare-fun tp!340727 () Bool)

(assert (=> b!1196308 (= e!768359 tp!340727)))

(declare-fun b!1196307 () Bool)

(assert (=> b!1196307 (= e!768360 (and (inv!16050 (xs!6671 (left!10494 (left!10494 (left!10494 t!4115))))) e!768359))))

(assert (=> b!1196049 (= tp!340674 (and (inv!16049 (left!10494 (left!10494 (left!10494 t!4115)))) e!768360))))

(assert (= (and b!1196049 ((_ is Node!3964) (left!10494 (left!10494 (left!10494 t!4115))))) b!1196306))

(assert (= b!1196307 b!1196308))

(assert (= (and b!1196049 ((_ is Leaf!6071) (left!10494 (left!10494 (left!10494 t!4115))))) b!1196307))

(declare-fun m!1370965 () Bool)

(assert (=> b!1196306 m!1370965))

(declare-fun m!1370967 () Bool)

(assert (=> b!1196306 m!1370967))

(declare-fun m!1370969 () Bool)

(assert (=> b!1196307 m!1370969))

(assert (=> b!1196049 m!1370583))

(declare-fun e!768362 () Bool)

(declare-fun tp!340732 () Bool)

(declare-fun tp!340731 () Bool)

(declare-fun b!1196309 () Bool)

(assert (=> b!1196309 (= e!768362 (and (inv!16049 (left!10494 (right!10824 (left!10494 (left!10494 t!4115))))) tp!340732 (inv!16049 (right!10824 (right!10824 (left!10494 (left!10494 t!4115))))) tp!340731))))

(declare-fun b!1196311 () Bool)

(declare-fun e!768361 () Bool)

(declare-fun tp!340730 () Bool)

(assert (=> b!1196311 (= e!768361 tp!340730)))

(declare-fun b!1196310 () Bool)

(assert (=> b!1196310 (= e!768362 (and (inv!16050 (xs!6671 (right!10824 (left!10494 (left!10494 t!4115))))) e!768361))))

(assert (=> b!1196049 (= tp!340673 (and (inv!16049 (right!10824 (left!10494 (left!10494 t!4115)))) e!768362))))

(assert (= (and b!1196049 ((_ is Node!3964) (right!10824 (left!10494 (left!10494 t!4115))))) b!1196309))

(assert (= b!1196310 b!1196311))

(assert (= (and b!1196049 ((_ is Leaf!6071) (right!10824 (left!10494 (left!10494 t!4115))))) b!1196310))

(declare-fun m!1370971 () Bool)

(assert (=> b!1196309 m!1370971))

(declare-fun m!1370973 () Bool)

(assert (=> b!1196309 m!1370973))

(declare-fun m!1370975 () Bool)

(assert (=> b!1196310 m!1370975))

(assert (=> b!1196049 m!1370585))

(declare-fun b!1196312 () Bool)

(declare-fun e!768363 () Bool)

(declare-fun tp!340733 () Bool)

(assert (=> b!1196312 (= e!768363 (and tp_is_empty!5955 tp!340733))))

(assert (=> b!1196059 (= tp!340678 e!768363)))

(assert (= (and b!1196059 ((_ is Cons!12031) (innerList!4024 (xs!6671 (left!10494 (right!10824 t!4115)))))) b!1196312))

(check-sat (not b!1196216) (not b!1196240) (not b!1196159) (not b!1196242) (not b!1196196) (not b!1196310) (not b!1196185) (not b!1196136) (not b!1196299) (not d!341503) (not b!1196278) (not b!1196057) (not b!1196206) (not d!341481) (not b!1196207) (not b!1196308) (not b!1196132) (not b!1196247) (not b!1196285) (not b!1196264) (not d!341571) (not b!1196311) (not d!341573) (not b!1196256) (not b!1196286) (not b!1196287) (not b!1196269) (not b!1196138) (not b!1196301) (not b!1196131) (not d!341497) (not d!341495) (not b!1196272) (not b!1196254) (not b!1196281) (not b!1196292) (not b!1196297) (not b!1196289) (not b!1196183) (not b!1196275) (not b!1196276) (not b!1196210) (not d!341507) (not b!1196232) (not bm!83232) (not b!1196277) (not b!1196223) (not b!1196271) (not b!1196303) (not d!341519) (not b!1196294) (not b!1196153) (not b!1196279) (not b!1196155) (not b!1196214) (not b!1196266) (not b!1196229) (not b!1196258) (not d!341583) (not b!1196226) (not d!341487) (not b!1196209) (not d!341537) (not b!1196283) (not b!1196245) (not d!341551) (not d!341543) (not d!341509) (not b!1196267) (not d!341501) (not b!1196309) (not b!1196251) (not d!341531) (not b!1196298) (not b!1196222) (not b!1196260) (not b!1196268) (not b!1196302) (not b!1196220) (not b!1196306) (not d!341465) (not b!1196212) (not b!1196253) (not b!1196295) (not b!1196249) (not b!1196296) (not b!1196305) (not b!1196290) (not d!341539) (not b!1196284) (not b!1196225) (not b!1196293) (not d!341493) (not b!1196282) (not b!1196157) (not b!1196202) (not b!1196049) (not b!1196219) (not d!341533) (not b!1196230) (not b!1196227) (not d!341499) (not b!1196134) (not b!1196208) (not d!341569) (not b!1196263) (not b!1196203) (not b!1196201) (not b!1196244) (not b!1196265) (not d!341461) (not b!1196274) (not d!341525) (not b!1196238) (not b!1196304) (not d!341535) (not b!1196217) (not d!341513) (not b!1196054) (not b!1196224) (not b!1196312) (not b!1196291) (not b!1196205) (not b!1196300) (not b!1196060) (not b!1196235) (not b!1196307) (not b!1196262) (not d!341467) (not b!1196280) (not d!341563) (not b!1196197) (not b!1196288) (not d!341581) tp_is_empty!5955)
(check-sat)
