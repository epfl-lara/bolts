; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186324 () Bool)

(assert start!186324)

(declare-fun b!1862937 () Bool)

(declare-fun res!834209 () Bool)

(declare-fun e!1189476 () Bool)

(assert (=> b!1862937 (=> (not res!834209) (not e!1189476))))

(declare-datatypes ((T!33004 0))(
  ( (T!33005 (val!5926 Int)) )
))
(declare-datatypes ((List!20743 0))(
  ( (Nil!20661) (Cons!20661 (h!26062 T!33004) (t!172810 List!20743)) )
))
(declare-datatypes ((IArray!13717 0))(
  ( (IArray!13718 (innerList!6916 List!20743)) )
))
(declare-datatypes ((Conc!6856 0))(
  ( (Node!6856 (left!16637 Conc!6856) (right!16967 Conc!6856) (csize!13942 Int) (cheight!7067 Int)) (Leaf!10052 (xs!9732 IArray!13717) (csize!13943 Int)) (Empty!6856) )
))
(declare-fun t!4595 () Conc!6856)

(declare-fun isEmpty!12867 (Conc!6856) Bool)

(assert (=> b!1862937 (= res!834209 (not (isEmpty!12867 t!4595)))))

(declare-fun b!1862938 () Bool)

(declare-fun res!834207 () Bool)

(assert (=> b!1862938 (=> (not res!834207) (not e!1189476))))

(get-info :version)

(assert (=> b!1862938 (= res!834207 (not ((_ is Leaf!10052) t!4595)))))

(declare-fun b!1862939 () Bool)

(declare-fun e!1189475 () Bool)

(assert (=> b!1862939 (= e!1189475 (not (isEmpty!12867 (left!16637 t!4595))))))

(declare-fun b!1862940 () Bool)

(declare-fun lt!718046 () List!20743)

(assert (=> b!1862940 (= e!1189476 (not (not (= lt!718046 Nil!20661))))))

(declare-fun lt!718045 () List!20743)

(declare-fun tail!2813 (List!20743) List!20743)

(declare-fun ++!5584 (List!20743 List!20743) List!20743)

(assert (=> b!1862940 (= (tail!2813 (++!5584 lt!718046 lt!718045)) (++!5584 (tail!2813 lt!718046) lt!718045))))

(declare-datatypes ((Unit!35275 0))(
  ( (Unit!35276) )
))
(declare-fun lt!718047 () Unit!35275)

(declare-fun lemmaTailOfConcatIsTailConcat!28 (List!20743 List!20743) Unit!35275)

(assert (=> b!1862940 (= lt!718047 (lemmaTailOfConcatIsTailConcat!28 lt!718046 lt!718045))))

(declare-fun list!8428 (Conc!6856) List!20743)

(assert (=> b!1862940 (= lt!718045 (list!8428 (right!16967 t!4595)))))

(assert (=> b!1862940 (= lt!718046 (list!8428 (left!16637 t!4595)))))

(declare-fun b!1862942 () Bool)

(declare-fun res!834206 () Bool)

(assert (=> b!1862942 (=> (not res!834206) (not e!1189476))))

(assert (=> b!1862942 (= res!834206 ((_ is Node!6856) t!4595))))

(declare-fun b!1862943 () Bool)

(declare-fun e!1189474 () Bool)

(declare-fun tp!530751 () Bool)

(assert (=> b!1862943 (= e!1189474 tp!530751)))

(declare-fun b!1862944 () Bool)

(declare-fun res!834205 () Bool)

(assert (=> b!1862944 (=> (not res!834205) (not e!1189476))))

(assert (=> b!1862944 (= res!834205 e!1189475)))

(declare-fun res!834204 () Bool)

(assert (=> b!1862944 (=> res!834204 e!1189475)))

(assert (=> b!1862944 (= res!834204 (not ((_ is Node!6856) t!4595)))))

(declare-fun b!1862945 () Bool)

(declare-fun tp!530750 () Bool)

(declare-fun e!1189477 () Bool)

(declare-fun tp!530752 () Bool)

(declare-fun inv!27272 (Conc!6856) Bool)

(assert (=> b!1862945 (= e!1189477 (and (inv!27272 (left!16637 t!4595)) tp!530752 (inv!27272 (right!16967 t!4595)) tp!530750))))

(declare-fun b!1862941 () Bool)

(declare-fun inv!27273 (IArray!13717) Bool)

(assert (=> b!1862941 (= e!1189477 (and (inv!27273 (xs!9732 t!4595)) e!1189474))))

(declare-fun res!834208 () Bool)

(assert (=> start!186324 (=> (not res!834208) (not e!1189476))))

(declare-fun isBalanced!2157 (Conc!6856) Bool)

(assert (=> start!186324 (= res!834208 (isBalanced!2157 t!4595))))

(assert (=> start!186324 e!1189476))

(assert (=> start!186324 (and (inv!27272 t!4595) e!1189477)))

(assert (= (and start!186324 res!834208) b!1862937))

(assert (= (and b!1862937 res!834209) b!1862938))

(assert (= (and b!1862938 res!834207) b!1862944))

(assert (= (and b!1862944 (not res!834204)) b!1862939))

(assert (= (and b!1862944 res!834205) b!1862942))

(assert (= (and b!1862942 res!834206) b!1862940))

(assert (= (and start!186324 ((_ is Node!6856) t!4595)) b!1862945))

(assert (= b!1862941 b!1862943))

(assert (= (and start!186324 ((_ is Leaf!10052) t!4595)) b!1862941))

(declare-fun m!2286779 () Bool)

(assert (=> b!1862940 m!2286779))

(declare-fun m!2286781 () Bool)

(assert (=> b!1862940 m!2286781))

(declare-fun m!2286783 () Bool)

(assert (=> b!1862940 m!2286783))

(declare-fun m!2286785 () Bool)

(assert (=> b!1862940 m!2286785))

(declare-fun m!2286787 () Bool)

(assert (=> b!1862940 m!2286787))

(assert (=> b!1862940 m!2286779))

(declare-fun m!2286789 () Bool)

(assert (=> b!1862940 m!2286789))

(assert (=> b!1862940 m!2286783))

(declare-fun m!2286791 () Bool)

(assert (=> b!1862940 m!2286791))

(declare-fun m!2286793 () Bool)

(assert (=> b!1862937 m!2286793))

(declare-fun m!2286795 () Bool)

(assert (=> b!1862945 m!2286795))

(declare-fun m!2286797 () Bool)

(assert (=> b!1862945 m!2286797))

(declare-fun m!2286799 () Bool)

(assert (=> start!186324 m!2286799))

(declare-fun m!2286801 () Bool)

(assert (=> start!186324 m!2286801))

(declare-fun m!2286803 () Bool)

(assert (=> b!1862941 m!2286803))

(declare-fun m!2286805 () Bool)

(assert (=> b!1862939 m!2286805))

(check-sat (not b!1862940) (not b!1862939) (not start!186324) (not b!1862943) (not b!1862941) (not b!1862937) (not b!1862945))
(check-sat)
(get-model)

(declare-fun d!568564 () Bool)

(declare-fun lt!718053 () Bool)

(declare-fun isEmpty!12869 (List!20743) Bool)

(assert (=> d!568564 (= lt!718053 (isEmpty!12869 (list!8428 (left!16637 t!4595))))))

(declare-fun size!16359 (Conc!6856) Int)

(assert (=> d!568564 (= lt!718053 (= (size!16359 (left!16637 t!4595)) 0))))

(assert (=> d!568564 (= (isEmpty!12867 (left!16637 t!4595)) lt!718053)))

(declare-fun bs!411582 () Bool)

(assert (= bs!411582 d!568564))

(assert (=> bs!411582 m!2286787))

(assert (=> bs!411582 m!2286787))

(declare-fun m!2286813 () Bool)

(assert (=> bs!411582 m!2286813))

(declare-fun m!2286815 () Bool)

(assert (=> bs!411582 m!2286815))

(assert (=> b!1862939 d!568564))

(declare-fun d!568568 () Bool)

(declare-fun c!303386 () Bool)

(assert (=> d!568568 (= c!303386 ((_ is Node!6856) (left!16637 t!4595)))))

(declare-fun e!1189490 () Bool)

(assert (=> d!568568 (= (inv!27272 (left!16637 t!4595)) e!1189490)))

(declare-fun b!1862964 () Bool)

(declare-fun inv!27276 (Conc!6856) Bool)

(assert (=> b!1862964 (= e!1189490 (inv!27276 (left!16637 t!4595)))))

(declare-fun b!1862965 () Bool)

(declare-fun e!1189491 () Bool)

(assert (=> b!1862965 (= e!1189490 e!1189491)))

(declare-fun res!834216 () Bool)

(assert (=> b!1862965 (= res!834216 (not ((_ is Leaf!10052) (left!16637 t!4595))))))

(assert (=> b!1862965 (=> res!834216 e!1189491)))

(declare-fun b!1862966 () Bool)

(declare-fun inv!27277 (Conc!6856) Bool)

(assert (=> b!1862966 (= e!1189491 (inv!27277 (left!16637 t!4595)))))

(assert (= (and d!568568 c!303386) b!1862964))

(assert (= (and d!568568 (not c!303386)) b!1862965))

(assert (= (and b!1862965 (not res!834216)) b!1862966))

(declare-fun m!2286831 () Bool)

(assert (=> b!1862964 m!2286831))

(declare-fun m!2286833 () Bool)

(assert (=> b!1862966 m!2286833))

(assert (=> b!1862945 d!568568))

(declare-fun d!568576 () Bool)

(declare-fun c!303387 () Bool)

(assert (=> d!568576 (= c!303387 ((_ is Node!6856) (right!16967 t!4595)))))

(declare-fun e!1189492 () Bool)

(assert (=> d!568576 (= (inv!27272 (right!16967 t!4595)) e!1189492)))

(declare-fun b!1862967 () Bool)

(assert (=> b!1862967 (= e!1189492 (inv!27276 (right!16967 t!4595)))))

(declare-fun b!1862968 () Bool)

(declare-fun e!1189493 () Bool)

(assert (=> b!1862968 (= e!1189492 e!1189493)))

(declare-fun res!834217 () Bool)

(assert (=> b!1862968 (= res!834217 (not ((_ is Leaf!10052) (right!16967 t!4595))))))

(assert (=> b!1862968 (=> res!834217 e!1189493)))

(declare-fun b!1862969 () Bool)

(assert (=> b!1862969 (= e!1189493 (inv!27277 (right!16967 t!4595)))))

(assert (= (and d!568576 c!303387) b!1862967))

(assert (= (and d!568576 (not c!303387)) b!1862968))

(assert (= (and b!1862968 (not res!834217)) b!1862969))

(declare-fun m!2286835 () Bool)

(assert (=> b!1862967 m!2286835))

(declare-fun m!2286837 () Bool)

(assert (=> b!1862969 m!2286837))

(assert (=> b!1862945 d!568576))

(declare-fun b!1863002 () Bool)

(declare-fun e!1189508 () Bool)

(declare-fun e!1189509 () Bool)

(assert (=> b!1863002 (= e!1189508 e!1189509)))

(declare-fun res!834238 () Bool)

(assert (=> b!1863002 (=> (not res!834238) (not e!1189509))))

(declare-fun height!1046 (Conc!6856) Int)

(assert (=> b!1863002 (= res!834238 (<= (- 1) (- (height!1046 (left!16637 t!4595)) (height!1046 (right!16967 t!4595)))))))

(declare-fun b!1863004 () Bool)

(assert (=> b!1863004 (= e!1189509 (not (isEmpty!12867 (right!16967 t!4595))))))

(declare-fun b!1863005 () Bool)

(declare-fun res!834239 () Bool)

(assert (=> b!1863005 (=> (not res!834239) (not e!1189509))))

(assert (=> b!1863005 (= res!834239 (isBalanced!2157 (right!16967 t!4595)))))

(declare-fun b!1863006 () Bool)

(declare-fun res!834234 () Bool)

(assert (=> b!1863006 (=> (not res!834234) (not e!1189509))))

(assert (=> b!1863006 (= res!834234 (isBalanced!2157 (left!16637 t!4595)))))

(declare-fun b!1863007 () Bool)

(declare-fun res!834237 () Bool)

(assert (=> b!1863007 (=> (not res!834237) (not e!1189509))))

(assert (=> b!1863007 (= res!834237 (<= (- (height!1046 (left!16637 t!4595)) (height!1046 (right!16967 t!4595))) 1))))

(declare-fun b!1863003 () Bool)

(declare-fun res!834235 () Bool)

(assert (=> b!1863003 (=> (not res!834235) (not e!1189509))))

(assert (=> b!1863003 (= res!834235 (not (isEmpty!12867 (left!16637 t!4595))))))

(declare-fun d!568578 () Bool)

(declare-fun res!834236 () Bool)

(assert (=> d!568578 (=> res!834236 e!1189508)))

(assert (=> d!568578 (= res!834236 (not ((_ is Node!6856) t!4595)))))

(assert (=> d!568578 (= (isBalanced!2157 t!4595) e!1189508)))

(assert (= (and d!568578 (not res!834236)) b!1863002))

(assert (= (and b!1863002 res!834238) b!1863007))

(assert (= (and b!1863007 res!834237) b!1863006))

(assert (= (and b!1863006 res!834234) b!1863005))

(assert (= (and b!1863005 res!834239) b!1863003))

(assert (= (and b!1863003 res!834235) b!1863004))

(assert (=> b!1863003 m!2286805))

(declare-fun m!2286847 () Bool)

(assert (=> b!1863006 m!2286847))

(declare-fun m!2286849 () Bool)

(assert (=> b!1863004 m!2286849))

(declare-fun m!2286851 () Bool)

(assert (=> b!1863007 m!2286851))

(declare-fun m!2286853 () Bool)

(assert (=> b!1863007 m!2286853))

(declare-fun m!2286855 () Bool)

(assert (=> b!1863005 m!2286855))

(assert (=> b!1863002 m!2286851))

(assert (=> b!1863002 m!2286853))

(assert (=> start!186324 d!568578))

(declare-fun d!568582 () Bool)

(declare-fun c!303396 () Bool)

(assert (=> d!568582 (= c!303396 ((_ is Node!6856) t!4595))))

(declare-fun e!1189510 () Bool)

(assert (=> d!568582 (= (inv!27272 t!4595) e!1189510)))

(declare-fun b!1863008 () Bool)

(assert (=> b!1863008 (= e!1189510 (inv!27276 t!4595))))

(declare-fun b!1863009 () Bool)

(declare-fun e!1189511 () Bool)

(assert (=> b!1863009 (= e!1189510 e!1189511)))

(declare-fun res!834240 () Bool)

(assert (=> b!1863009 (= res!834240 (not ((_ is Leaf!10052) t!4595)))))

(assert (=> b!1863009 (=> res!834240 e!1189511)))

(declare-fun b!1863010 () Bool)

(assert (=> b!1863010 (= e!1189511 (inv!27277 t!4595))))

(assert (= (and d!568582 c!303396) b!1863008))

(assert (= (and d!568582 (not c!303396)) b!1863009))

(assert (= (and b!1863009 (not res!834240)) b!1863010))

(declare-fun m!2286857 () Bool)

(assert (=> b!1863008 m!2286857))

(declare-fun m!2286859 () Bool)

(assert (=> b!1863010 m!2286859))

(assert (=> start!186324 d!568582))

(declare-fun d!568584 () Bool)

(declare-fun lt!718057 () Bool)

(assert (=> d!568584 (= lt!718057 (isEmpty!12869 (list!8428 t!4595)))))

(assert (=> d!568584 (= lt!718057 (= (size!16359 t!4595) 0))))

(assert (=> d!568584 (= (isEmpty!12867 t!4595) lt!718057)))

(declare-fun bs!411584 () Bool)

(assert (= bs!411584 d!568584))

(declare-fun m!2286861 () Bool)

(assert (=> bs!411584 m!2286861))

(assert (=> bs!411584 m!2286861))

(declare-fun m!2286863 () Bool)

(assert (=> bs!411584 m!2286863))

(declare-fun m!2286865 () Bool)

(assert (=> bs!411584 m!2286865))

(assert (=> b!1862937 d!568584))

(declare-fun b!1863030 () Bool)

(declare-fun e!1189521 () List!20743)

(assert (=> b!1863030 (= e!1189521 (++!5584 (list!8428 (left!16637 (right!16967 t!4595))) (list!8428 (right!16967 (right!16967 t!4595)))))))

(declare-fun d!568586 () Bool)

(declare-fun c!303403 () Bool)

(assert (=> d!568586 (= c!303403 ((_ is Empty!6856) (right!16967 t!4595)))))

(declare-fun e!1189520 () List!20743)

(assert (=> d!568586 (= (list!8428 (right!16967 t!4595)) e!1189520)))

(declare-fun b!1863029 () Bool)

(declare-fun list!8430 (IArray!13717) List!20743)

(assert (=> b!1863029 (= e!1189521 (list!8430 (xs!9732 (right!16967 t!4595))))))

(declare-fun b!1863027 () Bool)

(assert (=> b!1863027 (= e!1189520 Nil!20661)))

(declare-fun b!1863028 () Bool)

(assert (=> b!1863028 (= e!1189520 e!1189521)))

(declare-fun c!303404 () Bool)

(assert (=> b!1863028 (= c!303404 ((_ is Leaf!10052) (right!16967 t!4595)))))

(assert (= (and d!568586 c!303403) b!1863027))

(assert (= (and d!568586 (not c!303403)) b!1863028))

(assert (= (and b!1863028 c!303404) b!1863029))

(assert (= (and b!1863028 (not c!303404)) b!1863030))

(declare-fun m!2286891 () Bool)

(assert (=> b!1863030 m!2286891))

(declare-fun m!2286893 () Bool)

(assert (=> b!1863030 m!2286893))

(assert (=> b!1863030 m!2286891))

(assert (=> b!1863030 m!2286893))

(declare-fun m!2286895 () Bool)

(assert (=> b!1863030 m!2286895))

(declare-fun m!2286897 () Bool)

(assert (=> b!1863029 m!2286897))

(assert (=> b!1862940 d!568586))

(declare-fun b!1863055 () Bool)

(declare-fun e!1189533 () List!20743)

(assert (=> b!1863055 (= e!1189533 lt!718045)))

(declare-fun b!1863057 () Bool)

(declare-fun res!834262 () Bool)

(declare-fun e!1189532 () Bool)

(assert (=> b!1863057 (=> (not res!834262) (not e!1189532))))

(declare-fun lt!718065 () List!20743)

(declare-fun size!16360 (List!20743) Int)

(assert (=> b!1863057 (= res!834262 (= (size!16360 lt!718065) (+ (size!16360 (tail!2813 lt!718046)) (size!16360 lt!718045))))))

(declare-fun b!1863058 () Bool)

(assert (=> b!1863058 (= e!1189532 (or (not (= lt!718045 Nil!20661)) (= lt!718065 (tail!2813 lt!718046))))))

(declare-fun b!1863056 () Bool)

(assert (=> b!1863056 (= e!1189533 (Cons!20661 (h!26062 (tail!2813 lt!718046)) (++!5584 (t!172810 (tail!2813 lt!718046)) lt!718045)))))

(declare-fun d!568594 () Bool)

(assert (=> d!568594 e!1189532))

(declare-fun res!834261 () Bool)

(assert (=> d!568594 (=> (not res!834261) (not e!1189532))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3067 (List!20743) (InoxSet T!33004))

(assert (=> d!568594 (= res!834261 (= (content!3067 lt!718065) ((_ map or) (content!3067 (tail!2813 lt!718046)) (content!3067 lt!718045))))))

(assert (=> d!568594 (= lt!718065 e!1189533)))

(declare-fun c!303409 () Bool)

(assert (=> d!568594 (= c!303409 ((_ is Nil!20661) (tail!2813 lt!718046)))))

(assert (=> d!568594 (= (++!5584 (tail!2813 lt!718046) lt!718045) lt!718065)))

(assert (= (and d!568594 c!303409) b!1863055))

(assert (= (and d!568594 (not c!303409)) b!1863056))

(assert (= (and d!568594 res!834261) b!1863057))

(assert (= (and b!1863057 res!834262) b!1863058))

(declare-fun m!2286911 () Bool)

(assert (=> b!1863057 m!2286911))

(assert (=> b!1863057 m!2286779))

(declare-fun m!2286913 () Bool)

(assert (=> b!1863057 m!2286913))

(declare-fun m!2286915 () Bool)

(assert (=> b!1863057 m!2286915))

(declare-fun m!2286917 () Bool)

(assert (=> b!1863056 m!2286917))

(declare-fun m!2286919 () Bool)

(assert (=> d!568594 m!2286919))

(assert (=> d!568594 m!2286779))

(declare-fun m!2286921 () Bool)

(assert (=> d!568594 m!2286921))

(declare-fun m!2286923 () Bool)

(assert (=> d!568594 m!2286923))

(assert (=> b!1862940 d!568594))

(declare-fun d!568602 () Bool)

(assert (=> d!568602 (= (tail!2813 (++!5584 lt!718046 lt!718045)) (t!172810 (++!5584 lt!718046 lt!718045)))))

(assert (=> b!1862940 d!568602))

(declare-fun b!1863059 () Bool)

(declare-fun e!1189535 () List!20743)

(assert (=> b!1863059 (= e!1189535 lt!718045)))

(declare-fun b!1863061 () Bool)

(declare-fun res!834264 () Bool)

(declare-fun e!1189534 () Bool)

(assert (=> b!1863061 (=> (not res!834264) (not e!1189534))))

(declare-fun lt!718066 () List!20743)

(assert (=> b!1863061 (= res!834264 (= (size!16360 lt!718066) (+ (size!16360 lt!718046) (size!16360 lt!718045))))))

(declare-fun b!1863062 () Bool)

(assert (=> b!1863062 (= e!1189534 (or (not (= lt!718045 Nil!20661)) (= lt!718066 lt!718046)))))

(declare-fun b!1863060 () Bool)

(assert (=> b!1863060 (= e!1189535 (Cons!20661 (h!26062 lt!718046) (++!5584 (t!172810 lt!718046) lt!718045)))))

(declare-fun d!568604 () Bool)

(assert (=> d!568604 e!1189534))

(declare-fun res!834263 () Bool)

(assert (=> d!568604 (=> (not res!834263) (not e!1189534))))

(assert (=> d!568604 (= res!834263 (= (content!3067 lt!718066) ((_ map or) (content!3067 lt!718046) (content!3067 lt!718045))))))

(assert (=> d!568604 (= lt!718066 e!1189535)))

(declare-fun c!303410 () Bool)

(assert (=> d!568604 (= c!303410 ((_ is Nil!20661) lt!718046))))

(assert (=> d!568604 (= (++!5584 lt!718046 lt!718045) lt!718066)))

(assert (= (and d!568604 c!303410) b!1863059))

(assert (= (and d!568604 (not c!303410)) b!1863060))

(assert (= (and d!568604 res!834263) b!1863061))

(assert (= (and b!1863061 res!834264) b!1863062))

(declare-fun m!2286925 () Bool)

(assert (=> b!1863061 m!2286925))

(declare-fun m!2286927 () Bool)

(assert (=> b!1863061 m!2286927))

(assert (=> b!1863061 m!2286915))

(declare-fun m!2286929 () Bool)

(assert (=> b!1863060 m!2286929))

(declare-fun m!2286931 () Bool)

(assert (=> d!568604 m!2286931))

(declare-fun m!2286933 () Bool)

(assert (=> d!568604 m!2286933))

(assert (=> d!568604 m!2286923))

(assert (=> b!1862940 d!568604))

(declare-fun d!568606 () Bool)

(assert (=> d!568606 (= (tail!2813 lt!718046) (t!172810 lt!718046))))

(assert (=> b!1862940 d!568606))

(declare-fun b!1863066 () Bool)

(declare-fun e!1189537 () List!20743)

(assert (=> b!1863066 (= e!1189537 (++!5584 (list!8428 (left!16637 (left!16637 t!4595))) (list!8428 (right!16967 (left!16637 t!4595)))))))

(declare-fun d!568608 () Bool)

(declare-fun c!303411 () Bool)

(assert (=> d!568608 (= c!303411 ((_ is Empty!6856) (left!16637 t!4595)))))

(declare-fun e!1189536 () List!20743)

(assert (=> d!568608 (= (list!8428 (left!16637 t!4595)) e!1189536)))

(declare-fun b!1863065 () Bool)

(assert (=> b!1863065 (= e!1189537 (list!8430 (xs!9732 (left!16637 t!4595))))))

(declare-fun b!1863063 () Bool)

(assert (=> b!1863063 (= e!1189536 Nil!20661)))

(declare-fun b!1863064 () Bool)

(assert (=> b!1863064 (= e!1189536 e!1189537)))

(declare-fun c!303412 () Bool)

(assert (=> b!1863064 (= c!303412 ((_ is Leaf!10052) (left!16637 t!4595)))))

(assert (= (and d!568608 c!303411) b!1863063))

(assert (= (and d!568608 (not c!303411)) b!1863064))

(assert (= (and b!1863064 c!303412) b!1863065))

(assert (= (and b!1863064 (not c!303412)) b!1863066))

(declare-fun m!2286935 () Bool)

(assert (=> b!1863066 m!2286935))

(declare-fun m!2286937 () Bool)

(assert (=> b!1863066 m!2286937))

(assert (=> b!1863066 m!2286935))

(assert (=> b!1863066 m!2286937))

(declare-fun m!2286939 () Bool)

(assert (=> b!1863066 m!2286939))

(declare-fun m!2286941 () Bool)

(assert (=> b!1863065 m!2286941))

(assert (=> b!1862940 d!568608))

(declare-fun d!568610 () Bool)

(assert (=> d!568610 (= (tail!2813 (++!5584 lt!718046 lt!718045)) (++!5584 (tail!2813 lt!718046) lt!718045))))

(declare-fun lt!718069 () Unit!35275)

(declare-fun choose!11725 (List!20743 List!20743) Unit!35275)

(assert (=> d!568610 (= lt!718069 (choose!11725 lt!718046 lt!718045))))

(assert (=> d!568610 (not (isEmpty!12869 lt!718046))))

(assert (=> d!568610 (= (lemmaTailOfConcatIsTailConcat!28 lt!718046 lt!718045) lt!718069)))

(declare-fun bs!411586 () Bool)

(assert (= bs!411586 d!568610))

(declare-fun m!2286959 () Bool)

(assert (=> bs!411586 m!2286959))

(declare-fun m!2286965 () Bool)

(assert (=> bs!411586 m!2286965))

(assert (=> bs!411586 m!2286779))

(assert (=> bs!411586 m!2286781))

(assert (=> bs!411586 m!2286783))

(assert (=> bs!411586 m!2286783))

(assert (=> bs!411586 m!2286791))

(assert (=> bs!411586 m!2286779))

(assert (=> b!1862940 d!568610))

(declare-fun d!568614 () Bool)

(assert (=> d!568614 (= (inv!27273 (xs!9732 t!4595)) (<= (size!16360 (innerList!6916 (xs!9732 t!4595))) 2147483647))))

(declare-fun bs!411587 () Bool)

(assert (= bs!411587 d!568614))

(declare-fun m!2286973 () Bool)

(assert (=> bs!411587 m!2286973))

(assert (=> b!1862941 d!568614))

(declare-fun b!1863103 () Bool)

(declare-fun tp!530774 () Bool)

(declare-fun tp!530775 () Bool)

(declare-fun e!1189558 () Bool)

(assert (=> b!1863103 (= e!1189558 (and (inv!27272 (left!16637 (left!16637 t!4595))) tp!530774 (inv!27272 (right!16967 (left!16637 t!4595))) tp!530775))))

(declare-fun b!1863105 () Bool)

(declare-fun e!1189557 () Bool)

(declare-fun tp!530776 () Bool)

(assert (=> b!1863105 (= e!1189557 tp!530776)))

(declare-fun b!1863104 () Bool)

(assert (=> b!1863104 (= e!1189558 (and (inv!27273 (xs!9732 (left!16637 t!4595))) e!1189557))))

(assert (=> b!1862945 (= tp!530752 (and (inv!27272 (left!16637 t!4595)) e!1189558))))

(assert (= (and b!1862945 ((_ is Node!6856) (left!16637 t!4595))) b!1863103))

(assert (= b!1863104 b!1863105))

(assert (= (and b!1862945 ((_ is Leaf!10052) (left!16637 t!4595))) b!1863104))

(declare-fun m!2286975 () Bool)

(assert (=> b!1863103 m!2286975))

(declare-fun m!2286977 () Bool)

(assert (=> b!1863103 m!2286977))

(declare-fun m!2286979 () Bool)

(assert (=> b!1863104 m!2286979))

(assert (=> b!1862945 m!2286795))

(declare-fun e!1189560 () Bool)

(declare-fun b!1863106 () Bool)

(declare-fun tp!530777 () Bool)

(declare-fun tp!530778 () Bool)

(assert (=> b!1863106 (= e!1189560 (and (inv!27272 (left!16637 (right!16967 t!4595))) tp!530777 (inv!27272 (right!16967 (right!16967 t!4595))) tp!530778))))

(declare-fun b!1863108 () Bool)

(declare-fun e!1189559 () Bool)

(declare-fun tp!530779 () Bool)

(assert (=> b!1863108 (= e!1189559 tp!530779)))

(declare-fun b!1863107 () Bool)

(assert (=> b!1863107 (= e!1189560 (and (inv!27273 (xs!9732 (right!16967 t!4595))) e!1189559))))

(assert (=> b!1862945 (= tp!530750 (and (inv!27272 (right!16967 t!4595)) e!1189560))))

(assert (= (and b!1862945 ((_ is Node!6856) (right!16967 t!4595))) b!1863106))

(assert (= b!1863107 b!1863108))

(assert (= (and b!1862945 ((_ is Leaf!10052) (right!16967 t!4595))) b!1863107))

(declare-fun m!2286981 () Bool)

(assert (=> b!1863106 m!2286981))

(declare-fun m!2286983 () Bool)

(assert (=> b!1863106 m!2286983))

(declare-fun m!2286985 () Bool)

(assert (=> b!1863107 m!2286985))

(assert (=> b!1862945 m!2286797))

(declare-fun b!1863113 () Bool)

(declare-fun e!1189563 () Bool)

(declare-fun tp_is_empty!8639 () Bool)

(declare-fun tp!530782 () Bool)

(assert (=> b!1863113 (= e!1189563 (and tp_is_empty!8639 tp!530782))))

(assert (=> b!1862943 (= tp!530751 e!1189563)))

(assert (= (and b!1862943 ((_ is Cons!20661) (innerList!6916 (xs!9732 t!4595)))) b!1863113))

(check-sat (not d!568564) (not b!1862969) (not b!1863008) (not d!568610) (not b!1863006) (not b!1863106) (not b!1863004) (not b!1863010) (not b!1863003) (not b!1863002) (not b!1863113) (not d!568614) (not b!1863057) tp_is_empty!8639 (not d!568594) (not b!1863061) (not b!1863065) (not b!1863066) (not b!1862964) (not d!568584) (not b!1863029) (not b!1863060) (not b!1863030) (not b!1863007) (not b!1863104) (not b!1863005) (not b!1863107) (not b!1862945) (not b!1862967) (not b!1863108) (not b!1863056) (not b!1863105) (not b!1862966) (not b!1863103) (not d!568604))
(check-sat)
(get-model)

(declare-fun d!568616 () Bool)

(declare-fun lt!718072 () Int)

(assert (=> d!568616 (>= lt!718072 0)))

(declare-fun e!1189566 () Int)

(assert (=> d!568616 (= lt!718072 e!1189566)))

(declare-fun c!303416 () Bool)

(assert (=> d!568616 (= c!303416 ((_ is Nil!20661) lt!718065))))

(assert (=> d!568616 (= (size!16360 lt!718065) lt!718072)))

(declare-fun b!1863118 () Bool)

(assert (=> b!1863118 (= e!1189566 0)))

(declare-fun b!1863119 () Bool)

(assert (=> b!1863119 (= e!1189566 (+ 1 (size!16360 (t!172810 lt!718065))))))

(assert (= (and d!568616 c!303416) b!1863118))

(assert (= (and d!568616 (not c!303416)) b!1863119))

(declare-fun m!2286987 () Bool)

(assert (=> b!1863119 m!2286987))

(assert (=> b!1863057 d!568616))

(declare-fun d!568618 () Bool)

(declare-fun lt!718073 () Int)

(assert (=> d!568618 (>= lt!718073 0)))

(declare-fun e!1189567 () Int)

(assert (=> d!568618 (= lt!718073 e!1189567)))

(declare-fun c!303417 () Bool)

(assert (=> d!568618 (= c!303417 ((_ is Nil!20661) (tail!2813 lt!718046)))))

(assert (=> d!568618 (= (size!16360 (tail!2813 lt!718046)) lt!718073)))

(declare-fun b!1863120 () Bool)

(assert (=> b!1863120 (= e!1189567 0)))

(declare-fun b!1863121 () Bool)

(assert (=> b!1863121 (= e!1189567 (+ 1 (size!16360 (t!172810 (tail!2813 lt!718046)))))))

(assert (= (and d!568618 c!303417) b!1863120))

(assert (= (and d!568618 (not c!303417)) b!1863121))

(declare-fun m!2286989 () Bool)

(assert (=> b!1863121 m!2286989))

(assert (=> b!1863057 d!568618))

(declare-fun d!568620 () Bool)

(declare-fun lt!718074 () Int)

(assert (=> d!568620 (>= lt!718074 0)))

(declare-fun e!1189568 () Int)

(assert (=> d!568620 (= lt!718074 e!1189568)))

(declare-fun c!303418 () Bool)

(assert (=> d!568620 (= c!303418 ((_ is Nil!20661) lt!718045))))

(assert (=> d!568620 (= (size!16360 lt!718045) lt!718074)))

(declare-fun b!1863122 () Bool)

(assert (=> b!1863122 (= e!1189568 0)))

(declare-fun b!1863123 () Bool)

(assert (=> b!1863123 (= e!1189568 (+ 1 (size!16360 (t!172810 lt!718045))))))

(assert (= (and d!568620 c!303418) b!1863122))

(assert (= (and d!568620 (not c!303418)) b!1863123))

(declare-fun m!2286991 () Bool)

(assert (=> b!1863123 m!2286991))

(assert (=> b!1863057 d!568620))

(declare-fun d!568622 () Bool)

(declare-fun c!303421 () Bool)

(assert (=> d!568622 (= c!303421 ((_ is Nil!20661) lt!718066))))

(declare-fun e!1189571 () (InoxSet T!33004))

(assert (=> d!568622 (= (content!3067 lt!718066) e!1189571)))

(declare-fun b!1863128 () Bool)

(assert (=> b!1863128 (= e!1189571 ((as const (Array T!33004 Bool)) false))))

(declare-fun b!1863129 () Bool)

(assert (=> b!1863129 (= e!1189571 ((_ map or) (store ((as const (Array T!33004 Bool)) false) (h!26062 lt!718066) true) (content!3067 (t!172810 lt!718066))))))

(assert (= (and d!568622 c!303421) b!1863128))

(assert (= (and d!568622 (not c!303421)) b!1863129))

(declare-fun m!2286993 () Bool)

(assert (=> b!1863129 m!2286993))

(declare-fun m!2286995 () Bool)

(assert (=> b!1863129 m!2286995))

(assert (=> d!568604 d!568622))

(declare-fun d!568624 () Bool)

(declare-fun c!303422 () Bool)

(assert (=> d!568624 (= c!303422 ((_ is Nil!20661) lt!718046))))

(declare-fun e!1189572 () (InoxSet T!33004))

(assert (=> d!568624 (= (content!3067 lt!718046) e!1189572)))

(declare-fun b!1863130 () Bool)

(assert (=> b!1863130 (= e!1189572 ((as const (Array T!33004 Bool)) false))))

(declare-fun b!1863131 () Bool)

(assert (=> b!1863131 (= e!1189572 ((_ map or) (store ((as const (Array T!33004 Bool)) false) (h!26062 lt!718046) true) (content!3067 (t!172810 lt!718046))))))

(assert (= (and d!568624 c!303422) b!1863130))

(assert (= (and d!568624 (not c!303422)) b!1863131))

(declare-fun m!2286997 () Bool)

(assert (=> b!1863131 m!2286997))

(declare-fun m!2286999 () Bool)

(assert (=> b!1863131 m!2286999))

(assert (=> d!568604 d!568624))

(declare-fun d!568626 () Bool)

(declare-fun c!303423 () Bool)

(assert (=> d!568626 (= c!303423 ((_ is Nil!20661) lt!718045))))

(declare-fun e!1189573 () (InoxSet T!33004))

(assert (=> d!568626 (= (content!3067 lt!718045) e!1189573)))

(declare-fun b!1863132 () Bool)

(assert (=> b!1863132 (= e!1189573 ((as const (Array T!33004 Bool)) false))))

(declare-fun b!1863133 () Bool)

(assert (=> b!1863133 (= e!1189573 ((_ map or) (store ((as const (Array T!33004 Bool)) false) (h!26062 lt!718045) true) (content!3067 (t!172810 lt!718045))))))

(assert (= (and d!568626 c!303423) b!1863132))

(assert (= (and d!568626 (not c!303423)) b!1863133))

(declare-fun m!2287001 () Bool)

(assert (=> b!1863133 m!2287001))

(declare-fun m!2287003 () Bool)

(assert (=> b!1863133 m!2287003))

(assert (=> d!568604 d!568626))

(declare-fun b!1863134 () Bool)

(declare-fun e!1189575 () List!20743)

(assert (=> b!1863134 (= e!1189575 (list!8428 (right!16967 (right!16967 t!4595))))))

(declare-fun b!1863136 () Bool)

(declare-fun res!834273 () Bool)

(declare-fun e!1189574 () Bool)

(assert (=> b!1863136 (=> (not res!834273) (not e!1189574))))

(declare-fun lt!718075 () List!20743)

(assert (=> b!1863136 (= res!834273 (= (size!16360 lt!718075) (+ (size!16360 (list!8428 (left!16637 (right!16967 t!4595)))) (size!16360 (list!8428 (right!16967 (right!16967 t!4595)))))))))

(declare-fun b!1863137 () Bool)

(assert (=> b!1863137 (= e!1189574 (or (not (= (list!8428 (right!16967 (right!16967 t!4595))) Nil!20661)) (= lt!718075 (list!8428 (left!16637 (right!16967 t!4595))))))))

(declare-fun b!1863135 () Bool)

(assert (=> b!1863135 (= e!1189575 (Cons!20661 (h!26062 (list!8428 (left!16637 (right!16967 t!4595)))) (++!5584 (t!172810 (list!8428 (left!16637 (right!16967 t!4595)))) (list!8428 (right!16967 (right!16967 t!4595))))))))

(declare-fun d!568628 () Bool)

(assert (=> d!568628 e!1189574))

(declare-fun res!834272 () Bool)

(assert (=> d!568628 (=> (not res!834272) (not e!1189574))))

(assert (=> d!568628 (= res!834272 (= (content!3067 lt!718075) ((_ map or) (content!3067 (list!8428 (left!16637 (right!16967 t!4595)))) (content!3067 (list!8428 (right!16967 (right!16967 t!4595)))))))))

(assert (=> d!568628 (= lt!718075 e!1189575)))

(declare-fun c!303424 () Bool)

(assert (=> d!568628 (= c!303424 ((_ is Nil!20661) (list!8428 (left!16637 (right!16967 t!4595)))))))

(assert (=> d!568628 (= (++!5584 (list!8428 (left!16637 (right!16967 t!4595))) (list!8428 (right!16967 (right!16967 t!4595)))) lt!718075)))

(assert (= (and d!568628 c!303424) b!1863134))

(assert (= (and d!568628 (not c!303424)) b!1863135))

(assert (= (and d!568628 res!834272) b!1863136))

(assert (= (and b!1863136 res!834273) b!1863137))

(declare-fun m!2287005 () Bool)

(assert (=> b!1863136 m!2287005))

(assert (=> b!1863136 m!2286891))

(declare-fun m!2287007 () Bool)

(assert (=> b!1863136 m!2287007))

(assert (=> b!1863136 m!2286893))

(declare-fun m!2287009 () Bool)

(assert (=> b!1863136 m!2287009))

(assert (=> b!1863135 m!2286893))

(declare-fun m!2287011 () Bool)

(assert (=> b!1863135 m!2287011))

(declare-fun m!2287013 () Bool)

(assert (=> d!568628 m!2287013))

(assert (=> d!568628 m!2286891))

(declare-fun m!2287015 () Bool)

(assert (=> d!568628 m!2287015))

(assert (=> d!568628 m!2286893))

(declare-fun m!2287017 () Bool)

(assert (=> d!568628 m!2287017))

(assert (=> b!1863030 d!568628))

(declare-fun b!1863141 () Bool)

(declare-fun e!1189577 () List!20743)

(assert (=> b!1863141 (= e!1189577 (++!5584 (list!8428 (left!16637 (left!16637 (right!16967 t!4595)))) (list!8428 (right!16967 (left!16637 (right!16967 t!4595))))))))

(declare-fun d!568630 () Bool)

(declare-fun c!303425 () Bool)

(assert (=> d!568630 (= c!303425 ((_ is Empty!6856) (left!16637 (right!16967 t!4595))))))

(declare-fun e!1189576 () List!20743)

(assert (=> d!568630 (= (list!8428 (left!16637 (right!16967 t!4595))) e!1189576)))

(declare-fun b!1863140 () Bool)

(assert (=> b!1863140 (= e!1189577 (list!8430 (xs!9732 (left!16637 (right!16967 t!4595)))))))

(declare-fun b!1863138 () Bool)

(assert (=> b!1863138 (= e!1189576 Nil!20661)))

(declare-fun b!1863139 () Bool)

(assert (=> b!1863139 (= e!1189576 e!1189577)))

(declare-fun c!303426 () Bool)

(assert (=> b!1863139 (= c!303426 ((_ is Leaf!10052) (left!16637 (right!16967 t!4595))))))

(assert (= (and d!568630 c!303425) b!1863138))

(assert (= (and d!568630 (not c!303425)) b!1863139))

(assert (= (and b!1863139 c!303426) b!1863140))

(assert (= (and b!1863139 (not c!303426)) b!1863141))

(declare-fun m!2287019 () Bool)

(assert (=> b!1863141 m!2287019))

(declare-fun m!2287021 () Bool)

(assert (=> b!1863141 m!2287021))

(assert (=> b!1863141 m!2287019))

(assert (=> b!1863141 m!2287021))

(declare-fun m!2287023 () Bool)

(assert (=> b!1863141 m!2287023))

(declare-fun m!2287025 () Bool)

(assert (=> b!1863140 m!2287025))

(assert (=> b!1863030 d!568630))

(declare-fun b!1863145 () Bool)

(declare-fun e!1189579 () List!20743)

(assert (=> b!1863145 (= e!1189579 (++!5584 (list!8428 (left!16637 (right!16967 (right!16967 t!4595)))) (list!8428 (right!16967 (right!16967 (right!16967 t!4595))))))))

(declare-fun d!568632 () Bool)

(declare-fun c!303427 () Bool)

(assert (=> d!568632 (= c!303427 ((_ is Empty!6856) (right!16967 (right!16967 t!4595))))))

(declare-fun e!1189578 () List!20743)

(assert (=> d!568632 (= (list!8428 (right!16967 (right!16967 t!4595))) e!1189578)))

(declare-fun b!1863144 () Bool)

(assert (=> b!1863144 (= e!1189579 (list!8430 (xs!9732 (right!16967 (right!16967 t!4595)))))))

(declare-fun b!1863142 () Bool)

(assert (=> b!1863142 (= e!1189578 Nil!20661)))

(declare-fun b!1863143 () Bool)

(assert (=> b!1863143 (= e!1189578 e!1189579)))

(declare-fun c!303428 () Bool)

(assert (=> b!1863143 (= c!303428 ((_ is Leaf!10052) (right!16967 (right!16967 t!4595))))))

(assert (= (and d!568632 c!303427) b!1863142))

(assert (= (and d!568632 (not c!303427)) b!1863143))

(assert (= (and b!1863143 c!303428) b!1863144))

(assert (= (and b!1863143 (not c!303428)) b!1863145))

(declare-fun m!2287027 () Bool)

(assert (=> b!1863145 m!2287027))

(declare-fun m!2287029 () Bool)

(assert (=> b!1863145 m!2287029))

(assert (=> b!1863145 m!2287027))

(assert (=> b!1863145 m!2287029))

(declare-fun m!2287031 () Bool)

(assert (=> b!1863145 m!2287031))

(declare-fun m!2287033 () Bool)

(assert (=> b!1863144 m!2287033))

(assert (=> b!1863030 d!568632))

(declare-fun d!568634 () Bool)

(assert (=> d!568634 (= (inv!27273 (xs!9732 (right!16967 t!4595))) (<= (size!16360 (innerList!6916 (xs!9732 (right!16967 t!4595)))) 2147483647))))

(declare-fun bs!411588 () Bool)

(assert (= bs!411588 d!568634))

(declare-fun m!2287035 () Bool)

(assert (=> bs!411588 m!2287035))

(assert (=> b!1863107 d!568634))

(declare-fun b!1863146 () Bool)

(declare-fun e!1189581 () List!20743)

(assert (=> b!1863146 (= e!1189581 lt!718045)))

(declare-fun b!1863148 () Bool)

(declare-fun res!834275 () Bool)

(declare-fun e!1189580 () Bool)

(assert (=> b!1863148 (=> (not res!834275) (not e!1189580))))

(declare-fun lt!718076 () List!20743)

(assert (=> b!1863148 (= res!834275 (= (size!16360 lt!718076) (+ (size!16360 (t!172810 (tail!2813 lt!718046))) (size!16360 lt!718045))))))

(declare-fun b!1863149 () Bool)

(assert (=> b!1863149 (= e!1189580 (or (not (= lt!718045 Nil!20661)) (= lt!718076 (t!172810 (tail!2813 lt!718046)))))))

(declare-fun b!1863147 () Bool)

(assert (=> b!1863147 (= e!1189581 (Cons!20661 (h!26062 (t!172810 (tail!2813 lt!718046))) (++!5584 (t!172810 (t!172810 (tail!2813 lt!718046))) lt!718045)))))

(declare-fun d!568636 () Bool)

(assert (=> d!568636 e!1189580))

(declare-fun res!834274 () Bool)

(assert (=> d!568636 (=> (not res!834274) (not e!1189580))))

(assert (=> d!568636 (= res!834274 (= (content!3067 lt!718076) ((_ map or) (content!3067 (t!172810 (tail!2813 lt!718046))) (content!3067 lt!718045))))))

(assert (=> d!568636 (= lt!718076 e!1189581)))

(declare-fun c!303429 () Bool)

(assert (=> d!568636 (= c!303429 ((_ is Nil!20661) (t!172810 (tail!2813 lt!718046))))))

(assert (=> d!568636 (= (++!5584 (t!172810 (tail!2813 lt!718046)) lt!718045) lt!718076)))

(assert (= (and d!568636 c!303429) b!1863146))

(assert (= (and d!568636 (not c!303429)) b!1863147))

(assert (= (and d!568636 res!834274) b!1863148))

(assert (= (and b!1863148 res!834275) b!1863149))

(declare-fun m!2287037 () Bool)

(assert (=> b!1863148 m!2287037))

(assert (=> b!1863148 m!2286989))

(assert (=> b!1863148 m!2286915))

(declare-fun m!2287039 () Bool)

(assert (=> b!1863147 m!2287039))

(declare-fun m!2287041 () Bool)

(assert (=> d!568636 m!2287041))

(declare-fun m!2287043 () Bool)

(assert (=> d!568636 m!2287043))

(assert (=> d!568636 m!2286923))

(assert (=> b!1863056 d!568636))

(declare-fun d!568638 () Bool)

(assert (=> d!568638 (= (isEmpty!12869 (list!8428 (left!16637 t!4595))) ((_ is Nil!20661) (list!8428 (left!16637 t!4595))))))

(assert (=> d!568564 d!568638))

(assert (=> d!568564 d!568608))

(declare-fun d!568640 () Bool)

(declare-fun lt!718079 () Int)

(assert (=> d!568640 (= lt!718079 (size!16360 (list!8428 (left!16637 t!4595))))))

(assert (=> d!568640 (= lt!718079 (ite ((_ is Empty!6856) (left!16637 t!4595)) 0 (ite ((_ is Leaf!10052) (left!16637 t!4595)) (csize!13943 (left!16637 t!4595)) (csize!13942 (left!16637 t!4595)))))))

(assert (=> d!568640 (= (size!16359 (left!16637 t!4595)) lt!718079)))

(declare-fun bs!411589 () Bool)

(assert (= bs!411589 d!568640))

(assert (=> bs!411589 m!2286787))

(assert (=> bs!411589 m!2286787))

(declare-fun m!2287045 () Bool)

(assert (=> bs!411589 m!2287045))

(assert (=> d!568564 d!568640))

(declare-fun d!568642 () Bool)

(declare-fun c!303430 () Bool)

(assert (=> d!568642 (= c!303430 ((_ is Node!6856) (left!16637 (right!16967 t!4595))))))

(declare-fun e!1189582 () Bool)

(assert (=> d!568642 (= (inv!27272 (left!16637 (right!16967 t!4595))) e!1189582)))

(declare-fun b!1863150 () Bool)

(assert (=> b!1863150 (= e!1189582 (inv!27276 (left!16637 (right!16967 t!4595))))))

(declare-fun b!1863151 () Bool)

(declare-fun e!1189583 () Bool)

(assert (=> b!1863151 (= e!1189582 e!1189583)))

(declare-fun res!834276 () Bool)

(assert (=> b!1863151 (= res!834276 (not ((_ is Leaf!10052) (left!16637 (right!16967 t!4595)))))))

(assert (=> b!1863151 (=> res!834276 e!1189583)))

(declare-fun b!1863152 () Bool)

(assert (=> b!1863152 (= e!1189583 (inv!27277 (left!16637 (right!16967 t!4595))))))

(assert (= (and d!568642 c!303430) b!1863150))

(assert (= (and d!568642 (not c!303430)) b!1863151))

(assert (= (and b!1863151 (not res!834276)) b!1863152))

(declare-fun m!2287047 () Bool)

(assert (=> b!1863150 m!2287047))

(declare-fun m!2287049 () Bool)

(assert (=> b!1863152 m!2287049))

(assert (=> b!1863106 d!568642))

(declare-fun d!568644 () Bool)

(declare-fun c!303431 () Bool)

(assert (=> d!568644 (= c!303431 ((_ is Node!6856) (right!16967 (right!16967 t!4595))))))

(declare-fun e!1189584 () Bool)

(assert (=> d!568644 (= (inv!27272 (right!16967 (right!16967 t!4595))) e!1189584)))

(declare-fun b!1863153 () Bool)

(assert (=> b!1863153 (= e!1189584 (inv!27276 (right!16967 (right!16967 t!4595))))))

(declare-fun b!1863154 () Bool)

(declare-fun e!1189585 () Bool)

(assert (=> b!1863154 (= e!1189584 e!1189585)))

(declare-fun res!834277 () Bool)

(assert (=> b!1863154 (= res!834277 (not ((_ is Leaf!10052) (right!16967 (right!16967 t!4595)))))))

(assert (=> b!1863154 (=> res!834277 e!1189585)))

(declare-fun b!1863155 () Bool)

(assert (=> b!1863155 (= e!1189585 (inv!27277 (right!16967 (right!16967 t!4595))))))

(assert (= (and d!568644 c!303431) b!1863153))

(assert (= (and d!568644 (not c!303431)) b!1863154))

(assert (= (and b!1863154 (not res!834277)) b!1863155))

(declare-fun m!2287051 () Bool)

(assert (=> b!1863153 m!2287051))

(declare-fun m!2287053 () Bool)

(assert (=> b!1863155 m!2287053))

(assert (=> b!1863106 d!568644))

(declare-fun d!568646 () Bool)

(assert (=> d!568646 (= (list!8430 (xs!9732 (right!16967 t!4595))) (innerList!6916 (xs!9732 (right!16967 t!4595))))))

(assert (=> b!1863029 d!568646))

(declare-fun d!568648 () Bool)

(declare-fun res!834282 () Bool)

(declare-fun e!1189588 () Bool)

(assert (=> d!568648 (=> (not res!834282) (not e!1189588))))

(assert (=> d!568648 (= res!834282 (<= (size!16360 (list!8430 (xs!9732 (left!16637 t!4595)))) 512))))

(assert (=> d!568648 (= (inv!27277 (left!16637 t!4595)) e!1189588)))

(declare-fun b!1863160 () Bool)

(declare-fun res!834283 () Bool)

(assert (=> b!1863160 (=> (not res!834283) (not e!1189588))))

(assert (=> b!1863160 (= res!834283 (= (csize!13943 (left!16637 t!4595)) (size!16360 (list!8430 (xs!9732 (left!16637 t!4595))))))))

(declare-fun b!1863161 () Bool)

(assert (=> b!1863161 (= e!1189588 (and (> (csize!13943 (left!16637 t!4595)) 0) (<= (csize!13943 (left!16637 t!4595)) 512)))))

(assert (= (and d!568648 res!834282) b!1863160))

(assert (= (and b!1863160 res!834283) b!1863161))

(assert (=> d!568648 m!2286941))

(assert (=> d!568648 m!2286941))

(declare-fun m!2287055 () Bool)

(assert (=> d!568648 m!2287055))

(assert (=> b!1863160 m!2286941))

(assert (=> b!1863160 m!2286941))

(assert (=> b!1863160 m!2287055))

(assert (=> b!1862966 d!568648))

(declare-fun d!568650 () Bool)

(declare-fun c!303432 () Bool)

(assert (=> d!568650 (= c!303432 ((_ is Nil!20661) lt!718065))))

(declare-fun e!1189589 () (InoxSet T!33004))

(assert (=> d!568650 (= (content!3067 lt!718065) e!1189589)))

(declare-fun b!1863162 () Bool)

(assert (=> b!1863162 (= e!1189589 ((as const (Array T!33004 Bool)) false))))

(declare-fun b!1863163 () Bool)

(assert (=> b!1863163 (= e!1189589 ((_ map or) (store ((as const (Array T!33004 Bool)) false) (h!26062 lt!718065) true) (content!3067 (t!172810 lt!718065))))))

(assert (= (and d!568650 c!303432) b!1863162))

(assert (= (and d!568650 (not c!303432)) b!1863163))

(declare-fun m!2287057 () Bool)

(assert (=> b!1863163 m!2287057))

(declare-fun m!2287059 () Bool)

(assert (=> b!1863163 m!2287059))

(assert (=> d!568594 d!568650))

(declare-fun d!568652 () Bool)

(declare-fun c!303433 () Bool)

(assert (=> d!568652 (= c!303433 ((_ is Nil!20661) (tail!2813 lt!718046)))))

(declare-fun e!1189590 () (InoxSet T!33004))

(assert (=> d!568652 (= (content!3067 (tail!2813 lt!718046)) e!1189590)))

(declare-fun b!1863164 () Bool)

(assert (=> b!1863164 (= e!1189590 ((as const (Array T!33004 Bool)) false))))

(declare-fun b!1863165 () Bool)

(assert (=> b!1863165 (= e!1189590 ((_ map or) (store ((as const (Array T!33004 Bool)) false) (h!26062 (tail!2813 lt!718046)) true) (content!3067 (t!172810 (tail!2813 lt!718046)))))))

(assert (= (and d!568652 c!303433) b!1863164))

(assert (= (and d!568652 (not c!303433)) b!1863165))

(declare-fun m!2287061 () Bool)

(assert (=> b!1863165 m!2287061))

(assert (=> b!1863165 m!2287043))

(assert (=> d!568594 d!568652))

(assert (=> d!568594 d!568626))

(declare-fun d!568654 () Bool)

(assert (=> d!568654 (= (isEmpty!12869 (list!8428 t!4595)) ((_ is Nil!20661) (list!8428 t!4595)))))

(assert (=> d!568584 d!568654))

(declare-fun b!1863169 () Bool)

(declare-fun e!1189592 () List!20743)

(assert (=> b!1863169 (= e!1189592 (++!5584 (list!8428 (left!16637 t!4595)) (list!8428 (right!16967 t!4595))))))

(declare-fun d!568656 () Bool)

(declare-fun c!303434 () Bool)

(assert (=> d!568656 (= c!303434 ((_ is Empty!6856) t!4595))))

(declare-fun e!1189591 () List!20743)

(assert (=> d!568656 (= (list!8428 t!4595) e!1189591)))

(declare-fun b!1863168 () Bool)

(assert (=> b!1863168 (= e!1189592 (list!8430 (xs!9732 t!4595)))))

(declare-fun b!1863166 () Bool)

(assert (=> b!1863166 (= e!1189591 Nil!20661)))

(declare-fun b!1863167 () Bool)

(assert (=> b!1863167 (= e!1189591 e!1189592)))

(declare-fun c!303435 () Bool)

(assert (=> b!1863167 (= c!303435 ((_ is Leaf!10052) t!4595))))

(assert (= (and d!568656 c!303434) b!1863166))

(assert (= (and d!568656 (not c!303434)) b!1863167))

(assert (= (and b!1863167 c!303435) b!1863168))

(assert (= (and b!1863167 (not c!303435)) b!1863169))

(assert (=> b!1863169 m!2286787))

(assert (=> b!1863169 m!2286789))

(assert (=> b!1863169 m!2286787))

(assert (=> b!1863169 m!2286789))

(declare-fun m!2287063 () Bool)

(assert (=> b!1863169 m!2287063))

(declare-fun m!2287065 () Bool)

(assert (=> b!1863168 m!2287065))

(assert (=> d!568584 d!568656))

(declare-fun d!568658 () Bool)

(declare-fun lt!718080 () Int)

(assert (=> d!568658 (= lt!718080 (size!16360 (list!8428 t!4595)))))

(assert (=> d!568658 (= lt!718080 (ite ((_ is Empty!6856) t!4595) 0 (ite ((_ is Leaf!10052) t!4595) (csize!13943 t!4595) (csize!13942 t!4595))))))

(assert (=> d!568658 (= (size!16359 t!4595) lt!718080)))

(declare-fun bs!411590 () Bool)

(assert (= bs!411590 d!568658))

(assert (=> bs!411590 m!2286861))

(assert (=> bs!411590 m!2286861))

(declare-fun m!2287067 () Bool)

(assert (=> bs!411590 m!2287067))

(assert (=> d!568584 d!568658))

(declare-fun d!568660 () Bool)

(assert (=> d!568660 (= (height!1046 (left!16637 t!4595)) (ite ((_ is Empty!6856) (left!16637 t!4595)) 0 (ite ((_ is Leaf!10052) (left!16637 t!4595)) 1 (cheight!7067 (left!16637 t!4595)))))))

(assert (=> b!1863007 d!568660))

(declare-fun d!568662 () Bool)

(assert (=> d!568662 (= (height!1046 (right!16967 t!4595)) (ite ((_ is Empty!6856) (right!16967 t!4595)) 0 (ite ((_ is Leaf!10052) (right!16967 t!4595)) 1 (cheight!7067 (right!16967 t!4595)))))))

(assert (=> b!1863007 d!568662))

(declare-fun d!568664 () Bool)

(declare-fun res!834290 () Bool)

(declare-fun e!1189595 () Bool)

(assert (=> d!568664 (=> (not res!834290) (not e!1189595))))

(assert (=> d!568664 (= res!834290 (= (csize!13942 (left!16637 t!4595)) (+ (size!16359 (left!16637 (left!16637 t!4595))) (size!16359 (right!16967 (left!16637 t!4595))))))))

(assert (=> d!568664 (= (inv!27276 (left!16637 t!4595)) e!1189595)))

(declare-fun b!1863176 () Bool)

(declare-fun res!834291 () Bool)

(assert (=> b!1863176 (=> (not res!834291) (not e!1189595))))

(assert (=> b!1863176 (= res!834291 (and (not (= (left!16637 (left!16637 t!4595)) Empty!6856)) (not (= (right!16967 (left!16637 t!4595)) Empty!6856))))))

(declare-fun b!1863177 () Bool)

(declare-fun res!834292 () Bool)

(assert (=> b!1863177 (=> (not res!834292) (not e!1189595))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1863177 (= res!834292 (= (cheight!7067 (left!16637 t!4595)) (+ (max!0 (height!1046 (left!16637 (left!16637 t!4595))) (height!1046 (right!16967 (left!16637 t!4595)))) 1)))))

(declare-fun b!1863178 () Bool)

(assert (=> b!1863178 (= e!1189595 (<= 0 (cheight!7067 (left!16637 t!4595))))))

(assert (= (and d!568664 res!834290) b!1863176))

(assert (= (and b!1863176 res!834291) b!1863177))

(assert (= (and b!1863177 res!834292) b!1863178))

(declare-fun m!2287069 () Bool)

(assert (=> d!568664 m!2287069))

(declare-fun m!2287071 () Bool)

(assert (=> d!568664 m!2287071))

(declare-fun m!2287073 () Bool)

(assert (=> b!1863177 m!2287073))

(declare-fun m!2287075 () Bool)

(assert (=> b!1863177 m!2287075))

(assert (=> b!1863177 m!2287073))

(assert (=> b!1863177 m!2287075))

(declare-fun m!2287077 () Bool)

(assert (=> b!1863177 m!2287077))

(assert (=> b!1862964 d!568664))

(declare-fun b!1863179 () Bool)

(declare-fun e!1189596 () Bool)

(declare-fun e!1189597 () Bool)

(assert (=> b!1863179 (= e!1189596 e!1189597)))

(declare-fun res!834297 () Bool)

(assert (=> b!1863179 (=> (not res!834297) (not e!1189597))))

(assert (=> b!1863179 (= res!834297 (<= (- 1) (- (height!1046 (left!16637 (left!16637 t!4595))) (height!1046 (right!16967 (left!16637 t!4595))))))))

(declare-fun b!1863181 () Bool)

(assert (=> b!1863181 (= e!1189597 (not (isEmpty!12867 (right!16967 (left!16637 t!4595)))))))

(declare-fun b!1863182 () Bool)

(declare-fun res!834298 () Bool)

(assert (=> b!1863182 (=> (not res!834298) (not e!1189597))))

(assert (=> b!1863182 (= res!834298 (isBalanced!2157 (right!16967 (left!16637 t!4595))))))

(declare-fun b!1863183 () Bool)

(declare-fun res!834293 () Bool)

(assert (=> b!1863183 (=> (not res!834293) (not e!1189597))))

(assert (=> b!1863183 (= res!834293 (isBalanced!2157 (left!16637 (left!16637 t!4595))))))

(declare-fun b!1863184 () Bool)

(declare-fun res!834296 () Bool)

(assert (=> b!1863184 (=> (not res!834296) (not e!1189597))))

(assert (=> b!1863184 (= res!834296 (<= (- (height!1046 (left!16637 (left!16637 t!4595))) (height!1046 (right!16967 (left!16637 t!4595)))) 1))))

(declare-fun b!1863180 () Bool)

(declare-fun res!834294 () Bool)

(assert (=> b!1863180 (=> (not res!834294) (not e!1189597))))

(assert (=> b!1863180 (= res!834294 (not (isEmpty!12867 (left!16637 (left!16637 t!4595)))))))

(declare-fun d!568666 () Bool)

(declare-fun res!834295 () Bool)

(assert (=> d!568666 (=> res!834295 e!1189596)))

(assert (=> d!568666 (= res!834295 (not ((_ is Node!6856) (left!16637 t!4595))))))

(assert (=> d!568666 (= (isBalanced!2157 (left!16637 t!4595)) e!1189596)))

(assert (= (and d!568666 (not res!834295)) b!1863179))

(assert (= (and b!1863179 res!834297) b!1863184))

(assert (= (and b!1863184 res!834296) b!1863183))

(assert (= (and b!1863183 res!834293) b!1863182))

(assert (= (and b!1863182 res!834298) b!1863180))

(assert (= (and b!1863180 res!834294) b!1863181))

(declare-fun m!2287079 () Bool)

(assert (=> b!1863180 m!2287079))

(declare-fun m!2287081 () Bool)

(assert (=> b!1863183 m!2287081))

(declare-fun m!2287083 () Bool)

(assert (=> b!1863181 m!2287083))

(assert (=> b!1863184 m!2287073))

(assert (=> b!1863184 m!2287075))

(declare-fun m!2287085 () Bool)

(assert (=> b!1863182 m!2287085))

(assert (=> b!1863179 m!2287073))

(assert (=> b!1863179 m!2287075))

(assert (=> b!1863006 d!568666))

(declare-fun d!568668 () Bool)

(assert (=> d!568668 (= (list!8430 (xs!9732 (left!16637 t!4595))) (innerList!6916 (xs!9732 (left!16637 t!4595))))))

(assert (=> b!1863065 d!568668))

(assert (=> b!1862945 d!568568))

(assert (=> b!1862945 d!568576))

(declare-fun b!1863185 () Bool)

(declare-fun e!1189599 () List!20743)

(assert (=> b!1863185 (= e!1189599 (list!8428 (right!16967 (left!16637 t!4595))))))

(declare-fun b!1863187 () Bool)

(declare-fun res!834300 () Bool)

(declare-fun e!1189598 () Bool)

(assert (=> b!1863187 (=> (not res!834300) (not e!1189598))))

(declare-fun lt!718081 () List!20743)

(assert (=> b!1863187 (= res!834300 (= (size!16360 lt!718081) (+ (size!16360 (list!8428 (left!16637 (left!16637 t!4595)))) (size!16360 (list!8428 (right!16967 (left!16637 t!4595)))))))))

(declare-fun b!1863188 () Bool)

(assert (=> b!1863188 (= e!1189598 (or (not (= (list!8428 (right!16967 (left!16637 t!4595))) Nil!20661)) (= lt!718081 (list!8428 (left!16637 (left!16637 t!4595))))))))

(declare-fun b!1863186 () Bool)

(assert (=> b!1863186 (= e!1189599 (Cons!20661 (h!26062 (list!8428 (left!16637 (left!16637 t!4595)))) (++!5584 (t!172810 (list!8428 (left!16637 (left!16637 t!4595)))) (list!8428 (right!16967 (left!16637 t!4595))))))))

(declare-fun d!568670 () Bool)

(assert (=> d!568670 e!1189598))

(declare-fun res!834299 () Bool)

(assert (=> d!568670 (=> (not res!834299) (not e!1189598))))

(assert (=> d!568670 (= res!834299 (= (content!3067 lt!718081) ((_ map or) (content!3067 (list!8428 (left!16637 (left!16637 t!4595)))) (content!3067 (list!8428 (right!16967 (left!16637 t!4595)))))))))

(assert (=> d!568670 (= lt!718081 e!1189599)))

(declare-fun c!303436 () Bool)

(assert (=> d!568670 (= c!303436 ((_ is Nil!20661) (list!8428 (left!16637 (left!16637 t!4595)))))))

(assert (=> d!568670 (= (++!5584 (list!8428 (left!16637 (left!16637 t!4595))) (list!8428 (right!16967 (left!16637 t!4595)))) lt!718081)))

(assert (= (and d!568670 c!303436) b!1863185))

(assert (= (and d!568670 (not c!303436)) b!1863186))

(assert (= (and d!568670 res!834299) b!1863187))

(assert (= (and b!1863187 res!834300) b!1863188))

(declare-fun m!2287087 () Bool)

(assert (=> b!1863187 m!2287087))

(assert (=> b!1863187 m!2286935))

(declare-fun m!2287089 () Bool)

(assert (=> b!1863187 m!2287089))

(assert (=> b!1863187 m!2286937))

(declare-fun m!2287091 () Bool)

(assert (=> b!1863187 m!2287091))

(assert (=> b!1863186 m!2286937))

(declare-fun m!2287093 () Bool)

(assert (=> b!1863186 m!2287093))

(declare-fun m!2287095 () Bool)

(assert (=> d!568670 m!2287095))

(assert (=> d!568670 m!2286935))

(declare-fun m!2287097 () Bool)

(assert (=> d!568670 m!2287097))

(assert (=> d!568670 m!2286937))

(declare-fun m!2287099 () Bool)

(assert (=> d!568670 m!2287099))

(assert (=> b!1863066 d!568670))

(declare-fun b!1863192 () Bool)

(declare-fun e!1189601 () List!20743)

(assert (=> b!1863192 (= e!1189601 (++!5584 (list!8428 (left!16637 (left!16637 (left!16637 t!4595)))) (list!8428 (right!16967 (left!16637 (left!16637 t!4595))))))))

(declare-fun d!568672 () Bool)

(declare-fun c!303437 () Bool)

(assert (=> d!568672 (= c!303437 ((_ is Empty!6856) (left!16637 (left!16637 t!4595))))))

(declare-fun e!1189600 () List!20743)

(assert (=> d!568672 (= (list!8428 (left!16637 (left!16637 t!4595))) e!1189600)))

(declare-fun b!1863191 () Bool)

(assert (=> b!1863191 (= e!1189601 (list!8430 (xs!9732 (left!16637 (left!16637 t!4595)))))))

(declare-fun b!1863189 () Bool)

(assert (=> b!1863189 (= e!1189600 Nil!20661)))

(declare-fun b!1863190 () Bool)

(assert (=> b!1863190 (= e!1189600 e!1189601)))

(declare-fun c!303438 () Bool)

(assert (=> b!1863190 (= c!303438 ((_ is Leaf!10052) (left!16637 (left!16637 t!4595))))))

(assert (= (and d!568672 c!303437) b!1863189))

(assert (= (and d!568672 (not c!303437)) b!1863190))

(assert (= (and b!1863190 c!303438) b!1863191))

(assert (= (and b!1863190 (not c!303438)) b!1863192))

(declare-fun m!2287101 () Bool)

(assert (=> b!1863192 m!2287101))

(declare-fun m!2287103 () Bool)

(assert (=> b!1863192 m!2287103))

(assert (=> b!1863192 m!2287101))

(assert (=> b!1863192 m!2287103))

(declare-fun m!2287105 () Bool)

(assert (=> b!1863192 m!2287105))

(declare-fun m!2287107 () Bool)

(assert (=> b!1863191 m!2287107))

(assert (=> b!1863066 d!568672))

(declare-fun b!1863196 () Bool)

(declare-fun e!1189603 () List!20743)

(assert (=> b!1863196 (= e!1189603 (++!5584 (list!8428 (left!16637 (right!16967 (left!16637 t!4595)))) (list!8428 (right!16967 (right!16967 (left!16637 t!4595))))))))

(declare-fun d!568674 () Bool)

(declare-fun c!303439 () Bool)

(assert (=> d!568674 (= c!303439 ((_ is Empty!6856) (right!16967 (left!16637 t!4595))))))

(declare-fun e!1189602 () List!20743)

(assert (=> d!568674 (= (list!8428 (right!16967 (left!16637 t!4595))) e!1189602)))

(declare-fun b!1863195 () Bool)

(assert (=> b!1863195 (= e!1189603 (list!8430 (xs!9732 (right!16967 (left!16637 t!4595)))))))

(declare-fun b!1863193 () Bool)

(assert (=> b!1863193 (= e!1189602 Nil!20661)))

(declare-fun b!1863194 () Bool)

(assert (=> b!1863194 (= e!1189602 e!1189603)))

(declare-fun c!303440 () Bool)

(assert (=> b!1863194 (= c!303440 ((_ is Leaf!10052) (right!16967 (left!16637 t!4595))))))

(assert (= (and d!568674 c!303439) b!1863193))

(assert (= (and d!568674 (not c!303439)) b!1863194))

(assert (= (and b!1863194 c!303440) b!1863195))

(assert (= (and b!1863194 (not c!303440)) b!1863196))

(declare-fun m!2287109 () Bool)

(assert (=> b!1863196 m!2287109))

(declare-fun m!2287111 () Bool)

(assert (=> b!1863196 m!2287111))

(assert (=> b!1863196 m!2287109))

(assert (=> b!1863196 m!2287111))

(declare-fun m!2287113 () Bool)

(assert (=> b!1863196 m!2287113))

(declare-fun m!2287115 () Bool)

(assert (=> b!1863195 m!2287115))

(assert (=> b!1863066 d!568674))

(declare-fun d!568676 () Bool)

(declare-fun res!834301 () Bool)

(declare-fun e!1189604 () Bool)

(assert (=> d!568676 (=> (not res!834301) (not e!1189604))))

(assert (=> d!568676 (= res!834301 (<= (size!16360 (list!8430 (xs!9732 t!4595))) 512))))

(assert (=> d!568676 (= (inv!27277 t!4595) e!1189604)))

(declare-fun b!1863197 () Bool)

(declare-fun res!834302 () Bool)

(assert (=> b!1863197 (=> (not res!834302) (not e!1189604))))

(assert (=> b!1863197 (= res!834302 (= (csize!13943 t!4595) (size!16360 (list!8430 (xs!9732 t!4595)))))))

(declare-fun b!1863198 () Bool)

(assert (=> b!1863198 (= e!1189604 (and (> (csize!13943 t!4595) 0) (<= (csize!13943 t!4595) 512)))))

(assert (= (and d!568676 res!834301) b!1863197))

(assert (= (and b!1863197 res!834302) b!1863198))

(assert (=> d!568676 m!2287065))

(assert (=> d!568676 m!2287065))

(declare-fun m!2287117 () Bool)

(assert (=> d!568676 m!2287117))

(assert (=> b!1863197 m!2287065))

(assert (=> b!1863197 m!2287065))

(assert (=> b!1863197 m!2287117))

(assert (=> b!1863010 d!568676))

(declare-fun d!568678 () Bool)

(assert (=> d!568678 (= (isEmpty!12869 lt!718046) ((_ is Nil!20661) lt!718046))))

(assert (=> d!568610 d!568678))

(assert (=> d!568610 d!568594))

(assert (=> d!568610 d!568602))

(assert (=> d!568610 d!568604))

(assert (=> d!568610 d!568606))

(declare-fun d!568680 () Bool)

(assert (=> d!568680 (= (tail!2813 (++!5584 lt!718046 lt!718045)) (++!5584 (tail!2813 lt!718046) lt!718045))))

(assert (=> d!568680 true))

(declare-fun _$73!118 () Unit!35275)

(assert (=> d!568680 (= (choose!11725 lt!718046 lt!718045) _$73!118)))

(declare-fun bs!411591 () Bool)

(assert (= bs!411591 d!568680))

(assert (=> bs!411591 m!2286783))

(assert (=> bs!411591 m!2286783))

(assert (=> bs!411591 m!2286791))

(assert (=> bs!411591 m!2286779))

(assert (=> bs!411591 m!2286779))

(assert (=> bs!411591 m!2286781))

(assert (=> d!568610 d!568680))

(declare-fun d!568682 () Bool)

(declare-fun lt!718082 () Int)

(assert (=> d!568682 (>= lt!718082 0)))

(declare-fun e!1189605 () Int)

(assert (=> d!568682 (= lt!718082 e!1189605)))

(declare-fun c!303441 () Bool)

(assert (=> d!568682 (= c!303441 ((_ is Nil!20661) lt!718066))))

(assert (=> d!568682 (= (size!16360 lt!718066) lt!718082)))

(declare-fun b!1863199 () Bool)

(assert (=> b!1863199 (= e!1189605 0)))

(declare-fun b!1863200 () Bool)

(assert (=> b!1863200 (= e!1189605 (+ 1 (size!16360 (t!172810 lt!718066))))))

(assert (= (and d!568682 c!303441) b!1863199))

(assert (= (and d!568682 (not c!303441)) b!1863200))

(declare-fun m!2287119 () Bool)

(assert (=> b!1863200 m!2287119))

(assert (=> b!1863061 d!568682))

(declare-fun d!568684 () Bool)

(declare-fun lt!718083 () Int)

(assert (=> d!568684 (>= lt!718083 0)))

(declare-fun e!1189606 () Int)

(assert (=> d!568684 (= lt!718083 e!1189606)))

(declare-fun c!303442 () Bool)

(assert (=> d!568684 (= c!303442 ((_ is Nil!20661) lt!718046))))

(assert (=> d!568684 (= (size!16360 lt!718046) lt!718083)))

(declare-fun b!1863201 () Bool)

(assert (=> b!1863201 (= e!1189606 0)))

(declare-fun b!1863202 () Bool)

(assert (=> b!1863202 (= e!1189606 (+ 1 (size!16360 (t!172810 lt!718046))))))

(assert (= (and d!568684 c!303442) b!1863201))

(assert (= (and d!568684 (not c!303442)) b!1863202))

(declare-fun m!2287121 () Bool)

(assert (=> b!1863202 m!2287121))

(assert (=> b!1863061 d!568684))

(assert (=> b!1863061 d!568620))

(declare-fun d!568686 () Bool)

(declare-fun lt!718084 () Int)

(assert (=> d!568686 (>= lt!718084 0)))

(declare-fun e!1189607 () Int)

(assert (=> d!568686 (= lt!718084 e!1189607)))

(declare-fun c!303443 () Bool)

(assert (=> d!568686 (= c!303443 ((_ is Nil!20661) (innerList!6916 (xs!9732 t!4595))))))

(assert (=> d!568686 (= (size!16360 (innerList!6916 (xs!9732 t!4595))) lt!718084)))

(declare-fun b!1863203 () Bool)

(assert (=> b!1863203 (= e!1189607 0)))

(declare-fun b!1863204 () Bool)

(assert (=> b!1863204 (= e!1189607 (+ 1 (size!16360 (t!172810 (innerList!6916 (xs!9732 t!4595))))))))

(assert (= (and d!568686 c!303443) b!1863203))

(assert (= (and d!568686 (not c!303443)) b!1863204))

(declare-fun m!2287123 () Bool)

(assert (=> b!1863204 m!2287123))

(assert (=> d!568614 d!568686))

(declare-fun b!1863205 () Bool)

(declare-fun e!1189608 () Bool)

(declare-fun e!1189609 () Bool)

(assert (=> b!1863205 (= e!1189608 e!1189609)))

(declare-fun res!834307 () Bool)

(assert (=> b!1863205 (=> (not res!834307) (not e!1189609))))

(assert (=> b!1863205 (= res!834307 (<= (- 1) (- (height!1046 (left!16637 (right!16967 t!4595))) (height!1046 (right!16967 (right!16967 t!4595))))))))

(declare-fun b!1863207 () Bool)

(assert (=> b!1863207 (= e!1189609 (not (isEmpty!12867 (right!16967 (right!16967 t!4595)))))))

(declare-fun b!1863208 () Bool)

(declare-fun res!834308 () Bool)

(assert (=> b!1863208 (=> (not res!834308) (not e!1189609))))

(assert (=> b!1863208 (= res!834308 (isBalanced!2157 (right!16967 (right!16967 t!4595))))))

(declare-fun b!1863209 () Bool)

(declare-fun res!834303 () Bool)

(assert (=> b!1863209 (=> (not res!834303) (not e!1189609))))

(assert (=> b!1863209 (= res!834303 (isBalanced!2157 (left!16637 (right!16967 t!4595))))))

(declare-fun b!1863210 () Bool)

(declare-fun res!834306 () Bool)

(assert (=> b!1863210 (=> (not res!834306) (not e!1189609))))

(assert (=> b!1863210 (= res!834306 (<= (- (height!1046 (left!16637 (right!16967 t!4595))) (height!1046 (right!16967 (right!16967 t!4595)))) 1))))

(declare-fun b!1863206 () Bool)

(declare-fun res!834304 () Bool)

(assert (=> b!1863206 (=> (not res!834304) (not e!1189609))))

(assert (=> b!1863206 (= res!834304 (not (isEmpty!12867 (left!16637 (right!16967 t!4595)))))))

(declare-fun d!568688 () Bool)

(declare-fun res!834305 () Bool)

(assert (=> d!568688 (=> res!834305 e!1189608)))

(assert (=> d!568688 (= res!834305 (not ((_ is Node!6856) (right!16967 t!4595))))))

(assert (=> d!568688 (= (isBalanced!2157 (right!16967 t!4595)) e!1189608)))

(assert (= (and d!568688 (not res!834305)) b!1863205))

(assert (= (and b!1863205 res!834307) b!1863210))

(assert (= (and b!1863210 res!834306) b!1863209))

(assert (= (and b!1863209 res!834303) b!1863208))

(assert (= (and b!1863208 res!834308) b!1863206))

(assert (= (and b!1863206 res!834304) b!1863207))

(declare-fun m!2287125 () Bool)

(assert (=> b!1863206 m!2287125))

(declare-fun m!2287127 () Bool)

(assert (=> b!1863209 m!2287127))

(declare-fun m!2287129 () Bool)

(assert (=> b!1863207 m!2287129))

(declare-fun m!2287131 () Bool)

(assert (=> b!1863210 m!2287131))

(declare-fun m!2287133 () Bool)

(assert (=> b!1863210 m!2287133))

(declare-fun m!2287135 () Bool)

(assert (=> b!1863208 m!2287135))

(assert (=> b!1863205 m!2287131))

(assert (=> b!1863205 m!2287133))

(assert (=> b!1863005 d!568688))

(assert (=> b!1863003 d!568564))

(declare-fun d!568690 () Bool)

(declare-fun lt!718085 () Bool)

(assert (=> d!568690 (= lt!718085 (isEmpty!12869 (list!8428 (right!16967 t!4595))))))

(assert (=> d!568690 (= lt!718085 (= (size!16359 (right!16967 t!4595)) 0))))

(assert (=> d!568690 (= (isEmpty!12867 (right!16967 t!4595)) lt!718085)))

(declare-fun bs!411592 () Bool)

(assert (= bs!411592 d!568690))

(assert (=> bs!411592 m!2286789))

(assert (=> bs!411592 m!2286789))

(declare-fun m!2287137 () Bool)

(assert (=> bs!411592 m!2287137))

(declare-fun m!2287139 () Bool)

(assert (=> bs!411592 m!2287139))

(assert (=> b!1863004 d!568690))

(declare-fun b!1863211 () Bool)

(declare-fun e!1189611 () List!20743)

(assert (=> b!1863211 (= e!1189611 lt!718045)))

(declare-fun b!1863213 () Bool)

(declare-fun res!834310 () Bool)

(declare-fun e!1189610 () Bool)

(assert (=> b!1863213 (=> (not res!834310) (not e!1189610))))

(declare-fun lt!718086 () List!20743)

(assert (=> b!1863213 (= res!834310 (= (size!16360 lt!718086) (+ (size!16360 (t!172810 lt!718046)) (size!16360 lt!718045))))))

(declare-fun b!1863214 () Bool)

(assert (=> b!1863214 (= e!1189610 (or (not (= lt!718045 Nil!20661)) (= lt!718086 (t!172810 lt!718046))))))

(declare-fun b!1863212 () Bool)

(assert (=> b!1863212 (= e!1189611 (Cons!20661 (h!26062 (t!172810 lt!718046)) (++!5584 (t!172810 (t!172810 lt!718046)) lt!718045)))))

(declare-fun d!568692 () Bool)

(assert (=> d!568692 e!1189610))

(declare-fun res!834309 () Bool)

(assert (=> d!568692 (=> (not res!834309) (not e!1189610))))

(assert (=> d!568692 (= res!834309 (= (content!3067 lt!718086) ((_ map or) (content!3067 (t!172810 lt!718046)) (content!3067 lt!718045))))))

(assert (=> d!568692 (= lt!718086 e!1189611)))

(declare-fun c!303444 () Bool)

(assert (=> d!568692 (= c!303444 ((_ is Nil!20661) (t!172810 lt!718046)))))

(assert (=> d!568692 (= (++!5584 (t!172810 lt!718046) lt!718045) lt!718086)))

(assert (= (and d!568692 c!303444) b!1863211))

(assert (= (and d!568692 (not c!303444)) b!1863212))

(assert (= (and d!568692 res!834309) b!1863213))

(assert (= (and b!1863213 res!834310) b!1863214))

(declare-fun m!2287141 () Bool)

(assert (=> b!1863213 m!2287141))

(assert (=> b!1863213 m!2287121))

(assert (=> b!1863213 m!2286915))

(declare-fun m!2287143 () Bool)

(assert (=> b!1863212 m!2287143))

(declare-fun m!2287145 () Bool)

(assert (=> d!568692 m!2287145))

(assert (=> d!568692 m!2286999))

(assert (=> d!568692 m!2286923))

(assert (=> b!1863060 d!568692))

(assert (=> b!1863002 d!568660))

(assert (=> b!1863002 d!568662))

(declare-fun d!568694 () Bool)

(declare-fun res!834311 () Bool)

(declare-fun e!1189612 () Bool)

(assert (=> d!568694 (=> (not res!834311) (not e!1189612))))

(assert (=> d!568694 (= res!834311 (<= (size!16360 (list!8430 (xs!9732 (right!16967 t!4595)))) 512))))

(assert (=> d!568694 (= (inv!27277 (right!16967 t!4595)) e!1189612)))

(declare-fun b!1863215 () Bool)

(declare-fun res!834312 () Bool)

(assert (=> b!1863215 (=> (not res!834312) (not e!1189612))))

(assert (=> b!1863215 (= res!834312 (= (csize!13943 (right!16967 t!4595)) (size!16360 (list!8430 (xs!9732 (right!16967 t!4595))))))))

(declare-fun b!1863216 () Bool)

(assert (=> b!1863216 (= e!1189612 (and (> (csize!13943 (right!16967 t!4595)) 0) (<= (csize!13943 (right!16967 t!4595)) 512)))))

(assert (= (and d!568694 res!834311) b!1863215))

(assert (= (and b!1863215 res!834312) b!1863216))

(assert (=> d!568694 m!2286897))

(assert (=> d!568694 m!2286897))

(declare-fun m!2287147 () Bool)

(assert (=> d!568694 m!2287147))

(assert (=> b!1863215 m!2286897))

(assert (=> b!1863215 m!2286897))

(assert (=> b!1863215 m!2287147))

(assert (=> b!1862969 d!568694))

(declare-fun d!568696 () Bool)

(declare-fun res!834313 () Bool)

(declare-fun e!1189613 () Bool)

(assert (=> d!568696 (=> (not res!834313) (not e!1189613))))

(assert (=> d!568696 (= res!834313 (= (csize!13942 t!4595) (+ (size!16359 (left!16637 t!4595)) (size!16359 (right!16967 t!4595)))))))

(assert (=> d!568696 (= (inv!27276 t!4595) e!1189613)))

(declare-fun b!1863217 () Bool)

(declare-fun res!834314 () Bool)

(assert (=> b!1863217 (=> (not res!834314) (not e!1189613))))

(assert (=> b!1863217 (= res!834314 (and (not (= (left!16637 t!4595) Empty!6856)) (not (= (right!16967 t!4595) Empty!6856))))))

(declare-fun b!1863218 () Bool)

(declare-fun res!834315 () Bool)

(assert (=> b!1863218 (=> (not res!834315) (not e!1189613))))

(assert (=> b!1863218 (= res!834315 (= (cheight!7067 t!4595) (+ (max!0 (height!1046 (left!16637 t!4595)) (height!1046 (right!16967 t!4595))) 1)))))

(declare-fun b!1863219 () Bool)

(assert (=> b!1863219 (= e!1189613 (<= 0 (cheight!7067 t!4595)))))

(assert (= (and d!568696 res!834313) b!1863217))

(assert (= (and b!1863217 res!834314) b!1863218))

(assert (= (and b!1863218 res!834315) b!1863219))

(assert (=> d!568696 m!2286815))

(assert (=> d!568696 m!2287139))

(assert (=> b!1863218 m!2286851))

(assert (=> b!1863218 m!2286853))

(assert (=> b!1863218 m!2286851))

(assert (=> b!1863218 m!2286853))

(declare-fun m!2287149 () Bool)

(assert (=> b!1863218 m!2287149))

(assert (=> b!1863008 d!568696))

(declare-fun d!568698 () Bool)

(declare-fun c!303445 () Bool)

(assert (=> d!568698 (= c!303445 ((_ is Node!6856) (left!16637 (left!16637 t!4595))))))

(declare-fun e!1189614 () Bool)

(assert (=> d!568698 (= (inv!27272 (left!16637 (left!16637 t!4595))) e!1189614)))

(declare-fun b!1863220 () Bool)

(assert (=> b!1863220 (= e!1189614 (inv!27276 (left!16637 (left!16637 t!4595))))))

(declare-fun b!1863221 () Bool)

(declare-fun e!1189615 () Bool)

(assert (=> b!1863221 (= e!1189614 e!1189615)))

(declare-fun res!834316 () Bool)

(assert (=> b!1863221 (= res!834316 (not ((_ is Leaf!10052) (left!16637 (left!16637 t!4595)))))))

(assert (=> b!1863221 (=> res!834316 e!1189615)))

(declare-fun b!1863222 () Bool)

(assert (=> b!1863222 (= e!1189615 (inv!27277 (left!16637 (left!16637 t!4595))))))

(assert (= (and d!568698 c!303445) b!1863220))

(assert (= (and d!568698 (not c!303445)) b!1863221))

(assert (= (and b!1863221 (not res!834316)) b!1863222))

(declare-fun m!2287151 () Bool)

(assert (=> b!1863220 m!2287151))

(declare-fun m!2287153 () Bool)

(assert (=> b!1863222 m!2287153))

(assert (=> b!1863103 d!568698))

(declare-fun d!568700 () Bool)

(declare-fun c!303446 () Bool)

(assert (=> d!568700 (= c!303446 ((_ is Node!6856) (right!16967 (left!16637 t!4595))))))

(declare-fun e!1189616 () Bool)

(assert (=> d!568700 (= (inv!27272 (right!16967 (left!16637 t!4595))) e!1189616)))

(declare-fun b!1863223 () Bool)

(assert (=> b!1863223 (= e!1189616 (inv!27276 (right!16967 (left!16637 t!4595))))))

(declare-fun b!1863224 () Bool)

(declare-fun e!1189617 () Bool)

(assert (=> b!1863224 (= e!1189616 e!1189617)))

(declare-fun res!834317 () Bool)

(assert (=> b!1863224 (= res!834317 (not ((_ is Leaf!10052) (right!16967 (left!16637 t!4595)))))))

(assert (=> b!1863224 (=> res!834317 e!1189617)))

(declare-fun b!1863225 () Bool)

(assert (=> b!1863225 (= e!1189617 (inv!27277 (right!16967 (left!16637 t!4595))))))

(assert (= (and d!568700 c!303446) b!1863223))

(assert (= (and d!568700 (not c!303446)) b!1863224))

(assert (= (and b!1863224 (not res!834317)) b!1863225))

(declare-fun m!2287155 () Bool)

(assert (=> b!1863223 m!2287155))

(declare-fun m!2287157 () Bool)

(assert (=> b!1863225 m!2287157))

(assert (=> b!1863103 d!568700))

(declare-fun d!568702 () Bool)

(declare-fun res!834318 () Bool)

(declare-fun e!1189618 () Bool)

(assert (=> d!568702 (=> (not res!834318) (not e!1189618))))

(assert (=> d!568702 (= res!834318 (= (csize!13942 (right!16967 t!4595)) (+ (size!16359 (left!16637 (right!16967 t!4595))) (size!16359 (right!16967 (right!16967 t!4595))))))))

(assert (=> d!568702 (= (inv!27276 (right!16967 t!4595)) e!1189618)))

(declare-fun b!1863226 () Bool)

(declare-fun res!834319 () Bool)

(assert (=> b!1863226 (=> (not res!834319) (not e!1189618))))

(assert (=> b!1863226 (= res!834319 (and (not (= (left!16637 (right!16967 t!4595)) Empty!6856)) (not (= (right!16967 (right!16967 t!4595)) Empty!6856))))))

(declare-fun b!1863227 () Bool)

(declare-fun res!834320 () Bool)

(assert (=> b!1863227 (=> (not res!834320) (not e!1189618))))

(assert (=> b!1863227 (= res!834320 (= (cheight!7067 (right!16967 t!4595)) (+ (max!0 (height!1046 (left!16637 (right!16967 t!4595))) (height!1046 (right!16967 (right!16967 t!4595)))) 1)))))

(declare-fun b!1863228 () Bool)

(assert (=> b!1863228 (= e!1189618 (<= 0 (cheight!7067 (right!16967 t!4595))))))

(assert (= (and d!568702 res!834318) b!1863226))

(assert (= (and b!1863226 res!834319) b!1863227))

(assert (= (and b!1863227 res!834320) b!1863228))

(declare-fun m!2287159 () Bool)

(assert (=> d!568702 m!2287159))

(declare-fun m!2287161 () Bool)

(assert (=> d!568702 m!2287161))

(assert (=> b!1863227 m!2287131))

(assert (=> b!1863227 m!2287133))

(assert (=> b!1863227 m!2287131))

(assert (=> b!1863227 m!2287133))

(declare-fun m!2287163 () Bool)

(assert (=> b!1863227 m!2287163))

(assert (=> b!1862967 d!568702))

(declare-fun d!568704 () Bool)

(assert (=> d!568704 (= (inv!27273 (xs!9732 (left!16637 t!4595))) (<= (size!16360 (innerList!6916 (xs!9732 (left!16637 t!4595)))) 2147483647))))

(declare-fun bs!411593 () Bool)

(assert (= bs!411593 d!568704))

(declare-fun m!2287165 () Bool)

(assert (=> bs!411593 m!2287165))

(assert (=> b!1863104 d!568704))

(declare-fun b!1863229 () Bool)

(declare-fun e!1189619 () Bool)

(declare-fun tp!530783 () Bool)

(assert (=> b!1863229 (= e!1189619 (and tp_is_empty!8639 tp!530783))))

(assert (=> b!1863105 (= tp!530776 e!1189619)))

(assert (= (and b!1863105 ((_ is Cons!20661) (innerList!6916 (xs!9732 (left!16637 t!4595))))) b!1863229))

(declare-fun tp!530784 () Bool)

(declare-fun e!1189621 () Bool)

(declare-fun tp!530785 () Bool)

(declare-fun b!1863230 () Bool)

(assert (=> b!1863230 (= e!1189621 (and (inv!27272 (left!16637 (left!16637 (left!16637 t!4595)))) tp!530784 (inv!27272 (right!16967 (left!16637 (left!16637 t!4595)))) tp!530785))))

(declare-fun b!1863232 () Bool)

(declare-fun e!1189620 () Bool)

(declare-fun tp!530786 () Bool)

(assert (=> b!1863232 (= e!1189620 tp!530786)))

(declare-fun b!1863231 () Bool)

(assert (=> b!1863231 (= e!1189621 (and (inv!27273 (xs!9732 (left!16637 (left!16637 t!4595)))) e!1189620))))

(assert (=> b!1863103 (= tp!530774 (and (inv!27272 (left!16637 (left!16637 t!4595))) e!1189621))))

(assert (= (and b!1863103 ((_ is Node!6856) (left!16637 (left!16637 t!4595)))) b!1863230))

(assert (= b!1863231 b!1863232))

(assert (= (and b!1863103 ((_ is Leaf!10052) (left!16637 (left!16637 t!4595)))) b!1863231))

(declare-fun m!2287167 () Bool)

(assert (=> b!1863230 m!2287167))

(declare-fun m!2287169 () Bool)

(assert (=> b!1863230 m!2287169))

(declare-fun m!2287171 () Bool)

(assert (=> b!1863231 m!2287171))

(assert (=> b!1863103 m!2286975))

(declare-fun tp!530788 () Bool)

(declare-fun tp!530787 () Bool)

(declare-fun b!1863233 () Bool)

(declare-fun e!1189623 () Bool)

(assert (=> b!1863233 (= e!1189623 (and (inv!27272 (left!16637 (right!16967 (left!16637 t!4595)))) tp!530787 (inv!27272 (right!16967 (right!16967 (left!16637 t!4595)))) tp!530788))))

(declare-fun b!1863235 () Bool)

(declare-fun e!1189622 () Bool)

(declare-fun tp!530789 () Bool)

(assert (=> b!1863235 (= e!1189622 tp!530789)))

(declare-fun b!1863234 () Bool)

(assert (=> b!1863234 (= e!1189623 (and (inv!27273 (xs!9732 (right!16967 (left!16637 t!4595)))) e!1189622))))

(assert (=> b!1863103 (= tp!530775 (and (inv!27272 (right!16967 (left!16637 t!4595))) e!1189623))))

(assert (= (and b!1863103 ((_ is Node!6856) (right!16967 (left!16637 t!4595)))) b!1863233))

(assert (= b!1863234 b!1863235))

(assert (= (and b!1863103 ((_ is Leaf!10052) (right!16967 (left!16637 t!4595)))) b!1863234))

(declare-fun m!2287173 () Bool)

(assert (=> b!1863233 m!2287173))

(declare-fun m!2287175 () Bool)

(assert (=> b!1863233 m!2287175))

(declare-fun m!2287177 () Bool)

(assert (=> b!1863234 m!2287177))

(assert (=> b!1863103 m!2286977))

(declare-fun b!1863236 () Bool)

(declare-fun e!1189624 () Bool)

(declare-fun tp!530790 () Bool)

(assert (=> b!1863236 (= e!1189624 (and tp_is_empty!8639 tp!530790))))

(assert (=> b!1863108 (= tp!530779 e!1189624)))

(assert (= (and b!1863108 ((_ is Cons!20661) (innerList!6916 (xs!9732 (right!16967 t!4595))))) b!1863236))

(declare-fun e!1189626 () Bool)

(declare-fun b!1863237 () Bool)

(declare-fun tp!530792 () Bool)

(declare-fun tp!530791 () Bool)

(assert (=> b!1863237 (= e!1189626 (and (inv!27272 (left!16637 (left!16637 (right!16967 t!4595)))) tp!530791 (inv!27272 (right!16967 (left!16637 (right!16967 t!4595)))) tp!530792))))

(declare-fun b!1863239 () Bool)

(declare-fun e!1189625 () Bool)

(declare-fun tp!530793 () Bool)

(assert (=> b!1863239 (= e!1189625 tp!530793)))

(declare-fun b!1863238 () Bool)

(assert (=> b!1863238 (= e!1189626 (and (inv!27273 (xs!9732 (left!16637 (right!16967 t!4595)))) e!1189625))))

(assert (=> b!1863106 (= tp!530777 (and (inv!27272 (left!16637 (right!16967 t!4595))) e!1189626))))

(assert (= (and b!1863106 ((_ is Node!6856) (left!16637 (right!16967 t!4595)))) b!1863237))

(assert (= b!1863238 b!1863239))

(assert (= (and b!1863106 ((_ is Leaf!10052) (left!16637 (right!16967 t!4595)))) b!1863238))

(declare-fun m!2287179 () Bool)

(assert (=> b!1863237 m!2287179))

(declare-fun m!2287181 () Bool)

(assert (=> b!1863237 m!2287181))

(declare-fun m!2287183 () Bool)

(assert (=> b!1863238 m!2287183))

(assert (=> b!1863106 m!2286981))

(declare-fun b!1863240 () Bool)

(declare-fun tp!530794 () Bool)

(declare-fun e!1189628 () Bool)

(declare-fun tp!530795 () Bool)

(assert (=> b!1863240 (= e!1189628 (and (inv!27272 (left!16637 (right!16967 (right!16967 t!4595)))) tp!530794 (inv!27272 (right!16967 (right!16967 (right!16967 t!4595)))) tp!530795))))

(declare-fun b!1863242 () Bool)

(declare-fun e!1189627 () Bool)

(declare-fun tp!530796 () Bool)

(assert (=> b!1863242 (= e!1189627 tp!530796)))

(declare-fun b!1863241 () Bool)

(assert (=> b!1863241 (= e!1189628 (and (inv!27273 (xs!9732 (right!16967 (right!16967 t!4595)))) e!1189627))))

(assert (=> b!1863106 (= tp!530778 (and (inv!27272 (right!16967 (right!16967 t!4595))) e!1189628))))

(assert (= (and b!1863106 ((_ is Node!6856) (right!16967 (right!16967 t!4595)))) b!1863240))

(assert (= b!1863241 b!1863242))

(assert (= (and b!1863106 ((_ is Leaf!10052) (right!16967 (right!16967 t!4595)))) b!1863241))

(declare-fun m!2287185 () Bool)

(assert (=> b!1863240 m!2287185))

(declare-fun m!2287187 () Bool)

(assert (=> b!1863240 m!2287187))

(declare-fun m!2287189 () Bool)

(assert (=> b!1863241 m!2287189))

(assert (=> b!1863106 m!2286983))

(declare-fun b!1863243 () Bool)

(declare-fun e!1189629 () Bool)

(declare-fun tp!530797 () Bool)

(assert (=> b!1863243 (= e!1189629 (and tp_is_empty!8639 tp!530797))))

(assert (=> b!1863113 (= tp!530782 e!1189629)))

(assert (= (and b!1863113 ((_ is Cons!20661) (t!172810 (innerList!6916 (xs!9732 t!4595))))) b!1863243))

(check-sat (not b!1863231) (not d!568692) (not b!1863243) (not d!568648) (not d!568664) (not b!1863218) (not d!568640) (not b!1863123) (not b!1863184) (not b!1863209) (not d!568676) (not b!1863163) (not b!1863148) (not d!568634) (not b!1863200) (not b!1863241) (not b!1863205) (not b!1863207) (not b!1863144) (not b!1863202) (not b!1863152) (not b!1863195) (not b!1863168) (not b!1863210) (not b!1863192) (not d!568694) (not b!1863182) (not d!568658) (not b!1863213) (not b!1863233) (not b!1863215) (not b!1863230) (not b!1863140) (not b!1863220) (not b!1863183) (not b!1863165) (not d!568696) (not b!1863135) (not b!1863180) (not b!1863234) (not b!1863106) (not b!1863133) (not b!1863206) (not b!1863196) (not b!1863212) (not d!568670) (not b!1863131) (not b!1863186) (not b!1863238) (not b!1863141) (not b!1863227) (not b!1863235) (not b!1863229) (not b!1863222) (not b!1863181) (not b!1863129) (not d!568636) (not b!1863160) (not b!1863177) (not b!1863225) (not b!1863223) (not b!1863145) (not b!1863208) (not d!568690) (not b!1863239) (not b!1863155) (not b!1863237) (not b!1863236) (not b!1863147) (not b!1863121) (not b!1863232) (not d!568628) (not b!1863197) (not b!1863169) (not b!1863179) (not b!1863242) (not b!1863119) (not b!1863136) (not b!1863187) (not b!1863153) tp_is_empty!8639 (not d!568702) (not b!1863240) (not b!1863191) (not b!1863103) (not b!1863150) (not d!568680) (not d!568704) (not b!1863204))
(check-sat)
