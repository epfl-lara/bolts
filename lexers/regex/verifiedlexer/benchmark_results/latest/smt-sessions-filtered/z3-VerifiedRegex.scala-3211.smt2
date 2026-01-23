; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187084 () Bool)

(assert start!187084)

(declare-fun b!1869182 () Bool)

(declare-fun res!836865 () Bool)

(declare-fun e!1192718 () Bool)

(assert (=> b!1869182 (=> (not res!836865) (not e!1192718))))

(declare-datatypes ((T!33228 0))(
  ( (T!33229 (val!5958 Int)) )
))
(declare-datatypes ((List!20775 0))(
  ( (Nil!20693) (Cons!20693 (h!26094 T!33228) (t!172954 List!20775)) )
))
(declare-datatypes ((IArray!13781 0))(
  ( (IArray!13782 (innerList!6948 List!20775)) )
))
(declare-datatypes ((Conc!6888 0))(
  ( (Node!6888 (left!16685 Conc!6888) (right!17015 Conc!6888) (csize!14006 Int) (cheight!7099 Int)) (Leaf!10100 (xs!9770 IArray!13781) (csize!14007 Int)) (Empty!6888) )
))
(declare-fun t!4595 () Conc!6888)

(get-info :version)

(assert (=> b!1869182 (= res!836865 ((_ is Node!6888) t!4595))))

(declare-fun b!1869183 () Bool)

(declare-fun res!836864 () Bool)

(assert (=> b!1869183 (=> (not res!836864) (not e!1192718))))

(declare-fun e!1192720 () Bool)

(assert (=> b!1869183 (= res!836864 e!1192720)))

(declare-fun res!836863 () Bool)

(assert (=> b!1869183 (=> res!836863 e!1192720)))

(assert (=> b!1869183 (= res!836863 (not ((_ is Node!6888) t!4595)))))

(declare-fun tp!531933 () Bool)

(declare-fun b!1869184 () Bool)

(declare-fun tp!531932 () Bool)

(declare-fun e!1192721 () Bool)

(declare-fun inv!27440 (Conc!6888) Bool)

(assert (=> b!1869184 (= e!1192721 (and (inv!27440 (left!16685 t!4595)) tp!531932 (inv!27440 (right!17015 t!4595)) tp!531933))))

(declare-fun res!836862 () Bool)

(assert (=> start!187084 (=> (not res!836862) (not e!1192718))))

(declare-fun isBalanced!2189 (Conc!6888) Bool)

(assert (=> start!187084 (= res!836862 (isBalanced!2189 t!4595))))

(assert (=> start!187084 e!1192718))

(assert (=> start!187084 (and (inv!27440 t!4595) e!1192721)))

(declare-fun b!1869185 () Bool)

(declare-fun ConcPrimitiveSize!16 (Conc!6888) Int)

(assert (=> b!1869185 (= e!1192718 (not (< (ConcPrimitiveSize!16 (left!16685 t!4595)) (ConcPrimitiveSize!16 t!4595))))))

(declare-fun lt!719017 () List!20775)

(declare-fun lt!719015 () List!20775)

(declare-fun tail!2839 (List!20775) List!20775)

(declare-fun ++!5616 (List!20775 List!20775) List!20775)

(assert (=> b!1869185 (= (tail!2839 (++!5616 lt!719017 lt!719015)) (++!5616 (tail!2839 lt!719017) lt!719015))))

(declare-datatypes ((Unit!35311 0))(
  ( (Unit!35312) )
))
(declare-fun lt!719016 () Unit!35311)

(declare-fun lemmaTailOfConcatIsTailConcat!42 (List!20775 List!20775) Unit!35311)

(assert (=> b!1869185 (= lt!719016 (lemmaTailOfConcatIsTailConcat!42 lt!719017 lt!719015))))

(declare-fun list!8482 (Conc!6888) List!20775)

(assert (=> b!1869185 (= lt!719015 (list!8482 (right!17015 t!4595)))))

(assert (=> b!1869185 (= lt!719017 (list!8482 (left!16685 t!4595)))))

(declare-fun b!1869186 () Bool)

(declare-fun res!836861 () Bool)

(assert (=> b!1869186 (=> (not res!836861) (not e!1192718))))

(declare-fun isEmpty!12927 (Conc!6888) Bool)

(assert (=> b!1869186 (= res!836861 (not (isEmpty!12927 t!4595)))))

(declare-fun b!1869187 () Bool)

(assert (=> b!1869187 (= e!1192720 (not (isEmpty!12927 (left!16685 t!4595))))))

(declare-fun b!1869188 () Bool)

(declare-fun e!1192719 () Bool)

(declare-fun tp!531931 () Bool)

(assert (=> b!1869188 (= e!1192719 tp!531931)))

(declare-fun b!1869189 () Bool)

(declare-fun res!836860 () Bool)

(assert (=> b!1869189 (=> (not res!836860) (not e!1192718))))

(assert (=> b!1869189 (= res!836860 (not ((_ is Leaf!10100) t!4595)))))

(declare-fun b!1869190 () Bool)

(declare-fun inv!27441 (IArray!13781) Bool)

(assert (=> b!1869190 (= e!1192721 (and (inv!27441 (xs!9770 t!4595)) e!1192719))))

(assert (= (and start!187084 res!836862) b!1869186))

(assert (= (and b!1869186 res!836861) b!1869189))

(assert (= (and b!1869189 res!836860) b!1869183))

(assert (= (and b!1869183 (not res!836863)) b!1869187))

(assert (= (and b!1869183 res!836864) b!1869182))

(assert (= (and b!1869182 res!836865) b!1869185))

(assert (= (and start!187084 ((_ is Node!6888) t!4595)) b!1869184))

(assert (= b!1869190 b!1869188))

(assert (= (and start!187084 ((_ is Leaf!10100) t!4595)) b!1869190))

(declare-fun m!2294835 () Bool)

(assert (=> b!1869185 m!2294835))

(declare-fun m!2294837 () Bool)

(assert (=> b!1869185 m!2294837))

(declare-fun m!2294839 () Bool)

(assert (=> b!1869185 m!2294839))

(declare-fun m!2294841 () Bool)

(assert (=> b!1869185 m!2294841))

(assert (=> b!1869185 m!2294837))

(declare-fun m!2294843 () Bool)

(assert (=> b!1869185 m!2294843))

(declare-fun m!2294845 () Bool)

(assert (=> b!1869185 m!2294845))

(declare-fun m!2294847 () Bool)

(assert (=> b!1869185 m!2294847))

(declare-fun m!2294849 () Bool)

(assert (=> b!1869185 m!2294849))

(declare-fun m!2294851 () Bool)

(assert (=> b!1869185 m!2294851))

(assert (=> b!1869185 m!2294845))

(declare-fun m!2294853 () Bool)

(assert (=> b!1869186 m!2294853))

(declare-fun m!2294855 () Bool)

(assert (=> b!1869190 m!2294855))

(declare-fun m!2294857 () Bool)

(assert (=> start!187084 m!2294857))

(declare-fun m!2294859 () Bool)

(assert (=> start!187084 m!2294859))

(declare-fun m!2294861 () Bool)

(assert (=> b!1869184 m!2294861))

(declare-fun m!2294863 () Bool)

(assert (=> b!1869184 m!2294863))

(declare-fun m!2294865 () Bool)

(assert (=> b!1869187 m!2294865))

(check-sat (not start!187084) (not b!1869184) (not b!1869190) (not b!1869185) (not b!1869187) (not b!1869186) (not b!1869188))
(check-sat)
(get-model)

(declare-fun d!571296 () Bool)

(declare-fun size!16417 (List!20775) Int)

(assert (=> d!571296 (= (inv!27441 (xs!9770 t!4595)) (<= (size!16417 (innerList!6948 (xs!9770 t!4595))) 2147483647))))

(declare-fun bs!411900 () Bool)

(assert (= bs!411900 d!571296))

(declare-fun m!2294867 () Bool)

(assert (=> bs!411900 m!2294867))

(assert (=> b!1869190 d!571296))

(declare-fun d!571298 () Bool)

(assert (=> d!571298 (= (tail!2839 (++!5616 lt!719017 lt!719015)) (++!5616 (tail!2839 lt!719017) lt!719015))))

(declare-fun lt!719020 () Unit!35311)

(declare-fun choose!11748 (List!20775 List!20775) Unit!35311)

(assert (=> d!571298 (= lt!719020 (choose!11748 lt!719017 lt!719015))))

(declare-fun isEmpty!12928 (List!20775) Bool)

(assert (=> d!571298 (not (isEmpty!12928 lt!719017))))

(assert (=> d!571298 (= (lemmaTailOfConcatIsTailConcat!42 lt!719017 lt!719015) lt!719020)))

(declare-fun bs!411901 () Bool)

(assert (= bs!411901 d!571298))

(declare-fun m!2294869 () Bool)

(assert (=> bs!411901 m!2294869))

(assert (=> bs!411901 m!2294845))

(assert (=> bs!411901 m!2294847))

(assert (=> bs!411901 m!2294837))

(assert (=> bs!411901 m!2294837))

(assert (=> bs!411901 m!2294839))

(declare-fun m!2294871 () Bool)

(assert (=> bs!411901 m!2294871))

(assert (=> bs!411901 m!2294845))

(assert (=> b!1869185 d!571298))

(declare-fun b!1869207 () Bool)

(declare-fun e!1192730 () List!20775)

(assert (=> b!1869207 (= e!1192730 Nil!20693)))

(declare-fun b!1869208 () Bool)

(declare-fun e!1192731 () List!20775)

(assert (=> b!1869208 (= e!1192730 e!1192731)))

(declare-fun c!304537 () Bool)

(assert (=> b!1869208 (= c!304537 ((_ is Leaf!10100) (right!17015 t!4595)))))

(declare-fun d!571304 () Bool)

(declare-fun c!304536 () Bool)

(assert (=> d!571304 (= c!304536 ((_ is Empty!6888) (right!17015 t!4595)))))

(assert (=> d!571304 (= (list!8482 (right!17015 t!4595)) e!1192730)))

(declare-fun b!1869210 () Bool)

(assert (=> b!1869210 (= e!1192731 (++!5616 (list!8482 (left!16685 (right!17015 t!4595))) (list!8482 (right!17015 (right!17015 t!4595)))))))

(declare-fun b!1869209 () Bool)

(declare-fun list!8483 (IArray!13781) List!20775)

(assert (=> b!1869209 (= e!1192731 (list!8483 (xs!9770 (right!17015 t!4595))))))

(assert (= (and d!571304 c!304536) b!1869207))

(assert (= (and d!571304 (not c!304536)) b!1869208))

(assert (= (and b!1869208 c!304537) b!1869209))

(assert (= (and b!1869208 (not c!304537)) b!1869210))

(declare-fun m!2294873 () Bool)

(assert (=> b!1869210 m!2294873))

(declare-fun m!2294875 () Bool)

(assert (=> b!1869210 m!2294875))

(assert (=> b!1869210 m!2294873))

(assert (=> b!1869210 m!2294875))

(declare-fun m!2294877 () Bool)

(assert (=> b!1869210 m!2294877))

(declare-fun m!2294879 () Bool)

(assert (=> b!1869209 m!2294879))

(assert (=> b!1869185 d!571304))

(declare-fun d!571306 () Bool)

(assert (=> d!571306 (= (tail!2839 lt!719017) (t!172954 lt!719017))))

(assert (=> b!1869185 d!571306))

(declare-fun b!1869227 () Bool)

(declare-fun e!1192740 () List!20775)

(assert (=> b!1869227 (= e!1192740 lt!719015)))

(declare-fun b!1869228 () Bool)

(assert (=> b!1869228 (= e!1192740 (Cons!20693 (h!26094 (tail!2839 lt!719017)) (++!5616 (t!172954 (tail!2839 lt!719017)) lt!719015)))))

(declare-fun b!1869229 () Bool)

(declare-fun res!836871 () Bool)

(declare-fun e!1192741 () Bool)

(assert (=> b!1869229 (=> (not res!836871) (not e!1192741))))

(declare-fun lt!719027 () List!20775)

(assert (=> b!1869229 (= res!836871 (= (size!16417 lt!719027) (+ (size!16417 (tail!2839 lt!719017)) (size!16417 lt!719015))))))

(declare-fun b!1869230 () Bool)

(assert (=> b!1869230 (= e!1192741 (or (not (= lt!719015 Nil!20693)) (= lt!719027 (tail!2839 lt!719017))))))

(declare-fun d!571308 () Bool)

(assert (=> d!571308 e!1192741))

(declare-fun res!836870 () Bool)

(assert (=> d!571308 (=> (not res!836870) (not e!1192741))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3082 (List!20775) (InoxSet T!33228))

(assert (=> d!571308 (= res!836870 (= (content!3082 lt!719027) ((_ map or) (content!3082 (tail!2839 lt!719017)) (content!3082 lt!719015))))))

(assert (=> d!571308 (= lt!719027 e!1192740)))

(declare-fun c!304544 () Bool)

(assert (=> d!571308 (= c!304544 ((_ is Nil!20693) (tail!2839 lt!719017)))))

(assert (=> d!571308 (= (++!5616 (tail!2839 lt!719017) lt!719015) lt!719027)))

(assert (= (and d!571308 c!304544) b!1869227))

(assert (= (and d!571308 (not c!304544)) b!1869228))

(assert (= (and d!571308 res!836870) b!1869229))

(assert (= (and b!1869229 res!836871) b!1869230))

(declare-fun m!2294899 () Bool)

(assert (=> b!1869228 m!2294899))

(declare-fun m!2294901 () Bool)

(assert (=> b!1869229 m!2294901))

(assert (=> b!1869229 m!2294845))

(declare-fun m!2294903 () Bool)

(assert (=> b!1869229 m!2294903))

(declare-fun m!2294905 () Bool)

(assert (=> b!1869229 m!2294905))

(declare-fun m!2294907 () Bool)

(assert (=> d!571308 m!2294907))

(assert (=> d!571308 m!2294845))

(declare-fun m!2294909 () Bool)

(assert (=> d!571308 m!2294909))

(declare-fun m!2294911 () Bool)

(assert (=> d!571308 m!2294911))

(assert (=> b!1869185 d!571308))

(declare-fun b!1869247 () Bool)

(declare-fun e!1192751 () Int)

(assert (=> b!1869247 (= e!1192751 0)))

(declare-fun b!1869248 () Bool)

(declare-fun e!1192750 () Int)

(assert (=> b!1869248 (= e!1192750 e!1192751)))

(declare-fun c!304554 () Bool)

(assert (=> b!1869248 (= c!304554 ((_ is Leaf!10100) (left!16685 t!4595)))))

(declare-fun b!1869249 () Bool)

(declare-fun call!115942 () Int)

(declare-fun IArrayPrimitiveSize!15 (IArray!13781) Int)

(assert (=> b!1869249 (= e!1192751 (+ 1 (IArrayPrimitiveSize!15 (xs!9770 (left!16685 t!4595))) call!115942))))

(declare-fun d!571316 () Bool)

(declare-fun lt!719033 () Int)

(assert (=> d!571316 (>= lt!719033 0)))

(assert (=> d!571316 (= lt!719033 e!1192750)))

(declare-fun c!304553 () Bool)

(assert (=> d!571316 (= c!304553 ((_ is Node!6888) (left!16685 t!4595)))))

(assert (=> d!571316 (= (ConcPrimitiveSize!16 (left!16685 t!4595)) lt!719033)))

(declare-fun b!1869250 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!1869250 (= e!1192750 (+ 1 (ConcPrimitiveSize!16 (left!16685 (left!16685 t!4595))) (ConcPrimitiveSize!16 (right!17015 (left!16685 t!4595))) (BigIntAbs!0 (csize!14006 (left!16685 t!4595))) call!115942))))

(declare-fun bm!115937 () Bool)

(assert (=> bm!115937 (= call!115942 (BigIntAbs!0 (ite c!304553 (cheight!7099 (left!16685 t!4595)) (csize!14007 (left!16685 t!4595)))))))

(assert (= (and d!571316 c!304553) b!1869250))

(assert (= (and d!571316 (not c!304553)) b!1869248))

(assert (= (and b!1869248 c!304554) b!1869249))

(assert (= (and b!1869248 (not c!304554)) b!1869247))

(assert (= (or b!1869250 b!1869249) bm!115937))

(declare-fun m!2294917 () Bool)

(assert (=> b!1869249 m!2294917))

(declare-fun m!2294919 () Bool)

(assert (=> b!1869250 m!2294919))

(declare-fun m!2294921 () Bool)

(assert (=> b!1869250 m!2294921))

(declare-fun m!2294923 () Bool)

(assert (=> b!1869250 m!2294923))

(declare-fun m!2294925 () Bool)

(assert (=> bm!115937 m!2294925))

(assert (=> b!1869185 d!571316))

(declare-fun b!1869255 () Bool)

(declare-fun e!1192754 () List!20775)

(assert (=> b!1869255 (= e!1192754 lt!719015)))

(declare-fun b!1869256 () Bool)

(assert (=> b!1869256 (= e!1192754 (Cons!20693 (h!26094 lt!719017) (++!5616 (t!172954 lt!719017) lt!719015)))))

(declare-fun b!1869257 () Bool)

(declare-fun res!836873 () Bool)

(declare-fun e!1192755 () Bool)

(assert (=> b!1869257 (=> (not res!836873) (not e!1192755))))

(declare-fun lt!719034 () List!20775)

(assert (=> b!1869257 (= res!836873 (= (size!16417 lt!719034) (+ (size!16417 lt!719017) (size!16417 lt!719015))))))

(declare-fun b!1869258 () Bool)

(assert (=> b!1869258 (= e!1192755 (or (not (= lt!719015 Nil!20693)) (= lt!719034 lt!719017)))))

(declare-fun d!571320 () Bool)

(assert (=> d!571320 e!1192755))

(declare-fun res!836872 () Bool)

(assert (=> d!571320 (=> (not res!836872) (not e!1192755))))

(assert (=> d!571320 (= res!836872 (= (content!3082 lt!719034) ((_ map or) (content!3082 lt!719017) (content!3082 lt!719015))))))

(assert (=> d!571320 (= lt!719034 e!1192754)))

(declare-fun c!304557 () Bool)

(assert (=> d!571320 (= c!304557 ((_ is Nil!20693) lt!719017))))

(assert (=> d!571320 (= (++!5616 lt!719017 lt!719015) lt!719034)))

(assert (= (and d!571320 c!304557) b!1869255))

(assert (= (and d!571320 (not c!304557)) b!1869256))

(assert (= (and d!571320 res!836872) b!1869257))

(assert (= (and b!1869257 res!836873) b!1869258))

(declare-fun m!2294935 () Bool)

(assert (=> b!1869256 m!2294935))

(declare-fun m!2294937 () Bool)

(assert (=> b!1869257 m!2294937))

(declare-fun m!2294939 () Bool)

(assert (=> b!1869257 m!2294939))

(assert (=> b!1869257 m!2294905))

(declare-fun m!2294941 () Bool)

(assert (=> d!571320 m!2294941))

(declare-fun m!2294943 () Bool)

(assert (=> d!571320 m!2294943))

(assert (=> d!571320 m!2294911))

(assert (=> b!1869185 d!571320))

(declare-fun b!1869263 () Bool)

(declare-fun e!1192759 () Int)

(assert (=> b!1869263 (= e!1192759 0)))

(declare-fun b!1869264 () Bool)

(declare-fun e!1192758 () Int)

(assert (=> b!1869264 (= e!1192758 e!1192759)))

(declare-fun c!304561 () Bool)

(assert (=> b!1869264 (= c!304561 ((_ is Leaf!10100) t!4595))))

(declare-fun b!1869265 () Bool)

(declare-fun call!115943 () Int)

(assert (=> b!1869265 (= e!1192759 (+ 1 (IArrayPrimitiveSize!15 (xs!9770 t!4595)) call!115943))))

(declare-fun d!571324 () Bool)

(declare-fun lt!719035 () Int)

(assert (=> d!571324 (>= lt!719035 0)))

(assert (=> d!571324 (= lt!719035 e!1192758)))

(declare-fun c!304560 () Bool)

(assert (=> d!571324 (= c!304560 ((_ is Node!6888) t!4595))))

(assert (=> d!571324 (= (ConcPrimitiveSize!16 t!4595) lt!719035)))

(declare-fun b!1869266 () Bool)

(assert (=> b!1869266 (= e!1192758 (+ 1 (ConcPrimitiveSize!16 (left!16685 t!4595)) (ConcPrimitiveSize!16 (right!17015 t!4595)) (BigIntAbs!0 (csize!14006 t!4595)) call!115943))))

(declare-fun bm!115938 () Bool)

(assert (=> bm!115938 (= call!115943 (BigIntAbs!0 (ite c!304560 (cheight!7099 t!4595) (csize!14007 t!4595))))))

(assert (= (and d!571324 c!304560) b!1869266))

(assert (= (and d!571324 (not c!304560)) b!1869264))

(assert (= (and b!1869264 c!304561) b!1869265))

(assert (= (and b!1869264 (not c!304561)) b!1869263))

(assert (= (or b!1869266 b!1869265) bm!115938))

(declare-fun m!2294953 () Bool)

(assert (=> b!1869265 m!2294953))

(assert (=> b!1869266 m!2294841))

(declare-fun m!2294955 () Bool)

(assert (=> b!1869266 m!2294955))

(declare-fun m!2294957 () Bool)

(assert (=> b!1869266 m!2294957))

(declare-fun m!2294959 () Bool)

(assert (=> bm!115938 m!2294959))

(assert (=> b!1869185 d!571324))

(declare-fun d!571328 () Bool)

(assert (=> d!571328 (= (tail!2839 (++!5616 lt!719017 lt!719015)) (t!172954 (++!5616 lt!719017 lt!719015)))))

(assert (=> b!1869185 d!571328))

(declare-fun b!1869267 () Bool)

(declare-fun e!1192760 () List!20775)

(assert (=> b!1869267 (= e!1192760 Nil!20693)))

(declare-fun b!1869268 () Bool)

(declare-fun e!1192761 () List!20775)

(assert (=> b!1869268 (= e!1192760 e!1192761)))

(declare-fun c!304563 () Bool)

(assert (=> b!1869268 (= c!304563 ((_ is Leaf!10100) (left!16685 t!4595)))))

(declare-fun d!571330 () Bool)

(declare-fun c!304562 () Bool)

(assert (=> d!571330 (= c!304562 ((_ is Empty!6888) (left!16685 t!4595)))))

(assert (=> d!571330 (= (list!8482 (left!16685 t!4595)) e!1192760)))

(declare-fun b!1869270 () Bool)

(assert (=> b!1869270 (= e!1192761 (++!5616 (list!8482 (left!16685 (left!16685 t!4595))) (list!8482 (right!17015 (left!16685 t!4595)))))))

(declare-fun b!1869269 () Bool)

(assert (=> b!1869269 (= e!1192761 (list!8483 (xs!9770 (left!16685 t!4595))))))

(assert (= (and d!571330 c!304562) b!1869267))

(assert (= (and d!571330 (not c!304562)) b!1869268))

(assert (= (and b!1869268 c!304563) b!1869269))

(assert (= (and b!1869268 (not c!304563)) b!1869270))

(declare-fun m!2294961 () Bool)

(assert (=> b!1869270 m!2294961))

(declare-fun m!2294963 () Bool)

(assert (=> b!1869270 m!2294963))

(assert (=> b!1869270 m!2294961))

(assert (=> b!1869270 m!2294963))

(declare-fun m!2294965 () Bool)

(assert (=> b!1869270 m!2294965))

(declare-fun m!2294967 () Bool)

(assert (=> b!1869269 m!2294967))

(assert (=> b!1869185 d!571330))

(declare-fun d!571332 () Bool)

(declare-fun lt!719038 () Bool)

(assert (=> d!571332 (= lt!719038 (isEmpty!12928 (list!8482 t!4595)))))

(declare-fun size!16418 (Conc!6888) Int)

(assert (=> d!571332 (= lt!719038 (= (size!16418 t!4595) 0))))

(assert (=> d!571332 (= (isEmpty!12927 t!4595) lt!719038)))

(declare-fun bs!411903 () Bool)

(assert (= bs!411903 d!571332))

(declare-fun m!2294969 () Bool)

(assert (=> bs!411903 m!2294969))

(assert (=> bs!411903 m!2294969))

(declare-fun m!2294971 () Bool)

(assert (=> bs!411903 m!2294971))

(declare-fun m!2294973 () Bool)

(assert (=> bs!411903 m!2294973))

(assert (=> b!1869186 d!571332))

(declare-fun d!571334 () Bool)

(declare-fun lt!719039 () Bool)

(assert (=> d!571334 (= lt!719039 (isEmpty!12928 (list!8482 (left!16685 t!4595))))))

(assert (=> d!571334 (= lt!719039 (= (size!16418 (left!16685 t!4595)) 0))))

(assert (=> d!571334 (= (isEmpty!12927 (left!16685 t!4595)) lt!719039)))

(declare-fun bs!411904 () Bool)

(assert (= bs!411904 d!571334))

(assert (=> bs!411904 m!2294849))

(assert (=> bs!411904 m!2294849))

(declare-fun m!2294975 () Bool)

(assert (=> bs!411904 m!2294975))

(declare-fun m!2294977 () Bool)

(assert (=> bs!411904 m!2294977))

(assert (=> b!1869187 d!571334))

(declare-fun d!571336 () Bool)

(declare-fun c!304569 () Bool)

(assert (=> d!571336 (= c!304569 ((_ is Node!6888) (left!16685 t!4595)))))

(declare-fun e!1192772 () Bool)

(assert (=> d!571336 (= (inv!27440 (left!16685 t!4595)) e!1192772)))

(declare-fun b!1869289 () Bool)

(declare-fun inv!27442 (Conc!6888) Bool)

(assert (=> b!1869289 (= e!1192772 (inv!27442 (left!16685 t!4595)))))

(declare-fun b!1869290 () Bool)

(declare-fun e!1192773 () Bool)

(assert (=> b!1869290 (= e!1192772 e!1192773)))

(declare-fun res!836882 () Bool)

(assert (=> b!1869290 (= res!836882 (not ((_ is Leaf!10100) (left!16685 t!4595))))))

(assert (=> b!1869290 (=> res!836882 e!1192773)))

(declare-fun b!1869291 () Bool)

(declare-fun inv!27443 (Conc!6888) Bool)

(assert (=> b!1869291 (= e!1192773 (inv!27443 (left!16685 t!4595)))))

(assert (= (and d!571336 c!304569) b!1869289))

(assert (= (and d!571336 (not c!304569)) b!1869290))

(assert (= (and b!1869290 (not res!836882)) b!1869291))

(declare-fun m!2294993 () Bool)

(assert (=> b!1869289 m!2294993))

(declare-fun m!2294995 () Bool)

(assert (=> b!1869291 m!2294995))

(assert (=> b!1869184 d!571336))

(declare-fun d!571340 () Bool)

(declare-fun c!304571 () Bool)

(assert (=> d!571340 (= c!304571 ((_ is Node!6888) (right!17015 t!4595)))))

(declare-fun e!1192776 () Bool)

(assert (=> d!571340 (= (inv!27440 (right!17015 t!4595)) e!1192776)))

(declare-fun b!1869296 () Bool)

(assert (=> b!1869296 (= e!1192776 (inv!27442 (right!17015 t!4595)))))

(declare-fun b!1869297 () Bool)

(declare-fun e!1192777 () Bool)

(assert (=> b!1869297 (= e!1192776 e!1192777)))

(declare-fun res!836885 () Bool)

(assert (=> b!1869297 (= res!836885 (not ((_ is Leaf!10100) (right!17015 t!4595))))))

(assert (=> b!1869297 (=> res!836885 e!1192777)))

(declare-fun b!1869298 () Bool)

(assert (=> b!1869298 (= e!1192777 (inv!27443 (right!17015 t!4595)))))

(assert (= (and d!571340 c!304571) b!1869296))

(assert (= (and d!571340 (not c!304571)) b!1869297))

(assert (= (and b!1869297 (not res!836885)) b!1869298))

(declare-fun m!2295003 () Bool)

(assert (=> b!1869296 m!2295003))

(declare-fun m!2295007 () Bool)

(assert (=> b!1869298 m!2295007))

(assert (=> b!1869184 d!571340))

(declare-fun b!1869317 () Bool)

(declare-fun res!836903 () Bool)

(declare-fun e!1192786 () Bool)

(assert (=> b!1869317 (=> (not res!836903) (not e!1192786))))

(assert (=> b!1869317 (= res!836903 (isBalanced!2189 (right!17015 t!4595)))))

(declare-fun b!1869318 () Bool)

(declare-fun res!836904 () Bool)

(assert (=> b!1869318 (=> (not res!836904) (not e!1192786))))

(assert (=> b!1869318 (= res!836904 (not (isEmpty!12927 (left!16685 t!4595))))))

(declare-fun b!1869319 () Bool)

(declare-fun e!1192787 () Bool)

(assert (=> b!1869319 (= e!1192787 e!1192786)))

(declare-fun res!836902 () Bool)

(assert (=> b!1869319 (=> (not res!836902) (not e!1192786))))

(declare-fun height!1074 (Conc!6888) Int)

(assert (=> b!1869319 (= res!836902 (<= (- 1) (- (height!1074 (left!16685 t!4595)) (height!1074 (right!17015 t!4595)))))))

(declare-fun b!1869320 () Bool)

(assert (=> b!1869320 (= e!1192786 (not (isEmpty!12927 (right!17015 t!4595))))))

(declare-fun d!571342 () Bool)

(declare-fun res!836905 () Bool)

(assert (=> d!571342 (=> res!836905 e!1192787)))

(assert (=> d!571342 (= res!836905 (not ((_ is Node!6888) t!4595)))))

(assert (=> d!571342 (= (isBalanced!2189 t!4595) e!1192787)))

(declare-fun b!1869321 () Bool)

(declare-fun res!836901 () Bool)

(assert (=> b!1869321 (=> (not res!836901) (not e!1192786))))

(assert (=> b!1869321 (= res!836901 (<= (- (height!1074 (left!16685 t!4595)) (height!1074 (right!17015 t!4595))) 1))))

(declare-fun b!1869322 () Bool)

(declare-fun res!836900 () Bool)

(assert (=> b!1869322 (=> (not res!836900) (not e!1192786))))

(assert (=> b!1869322 (= res!836900 (isBalanced!2189 (left!16685 t!4595)))))

(assert (= (and d!571342 (not res!836905)) b!1869319))

(assert (= (and b!1869319 res!836902) b!1869321))

(assert (= (and b!1869321 res!836901) b!1869322))

(assert (= (and b!1869322 res!836900) b!1869317))

(assert (= (and b!1869317 res!836903) b!1869318))

(assert (= (and b!1869318 res!836904) b!1869320))

(declare-fun m!2295017 () Bool)

(assert (=> b!1869322 m!2295017))

(declare-fun m!2295019 () Bool)

(assert (=> b!1869317 m!2295019))

(declare-fun m!2295021 () Bool)

(assert (=> b!1869320 m!2295021))

(assert (=> b!1869318 m!2294865))

(declare-fun m!2295023 () Bool)

(assert (=> b!1869321 m!2295023))

(declare-fun m!2295025 () Bool)

(assert (=> b!1869321 m!2295025))

(assert (=> b!1869319 m!2295023))

(assert (=> b!1869319 m!2295025))

(assert (=> start!187084 d!571342))

(declare-fun d!571348 () Bool)

(declare-fun c!304574 () Bool)

(assert (=> d!571348 (= c!304574 ((_ is Node!6888) t!4595))))

(declare-fun e!1192788 () Bool)

(assert (=> d!571348 (= (inv!27440 t!4595) e!1192788)))

(declare-fun b!1869323 () Bool)

(assert (=> b!1869323 (= e!1192788 (inv!27442 t!4595))))

(declare-fun b!1869324 () Bool)

(declare-fun e!1192789 () Bool)

(assert (=> b!1869324 (= e!1192788 e!1192789)))

(declare-fun res!836906 () Bool)

(assert (=> b!1869324 (= res!836906 (not ((_ is Leaf!10100) t!4595)))))

(assert (=> b!1869324 (=> res!836906 e!1192789)))

(declare-fun b!1869325 () Bool)

(assert (=> b!1869325 (= e!1192789 (inv!27443 t!4595))))

(assert (= (and d!571348 c!304574) b!1869323))

(assert (= (and d!571348 (not c!304574)) b!1869324))

(assert (= (and b!1869324 (not res!836906)) b!1869325))

(declare-fun m!2295027 () Bool)

(assert (=> b!1869323 m!2295027))

(declare-fun m!2295029 () Bool)

(assert (=> b!1869325 m!2295029))

(assert (=> start!187084 d!571348))

(declare-fun b!1869333 () Bool)

(declare-fun e!1192794 () Bool)

(declare-fun tp_is_empty!8693 () Bool)

(declare-fun tp!531936 () Bool)

(assert (=> b!1869333 (= e!1192794 (and tp_is_empty!8693 tp!531936))))

(assert (=> b!1869188 (= tp!531931 e!1192794)))

(assert (= (and b!1869188 ((_ is Cons!20693) (innerList!6948 (xs!9770 t!4595)))) b!1869333))

(declare-fun tp!531945 () Bool)

(declare-fun tp!531944 () Bool)

(declare-fun b!1869345 () Bool)

(declare-fun e!1192801 () Bool)

(assert (=> b!1869345 (= e!1192801 (and (inv!27440 (left!16685 (left!16685 t!4595))) tp!531945 (inv!27440 (right!17015 (left!16685 t!4595))) tp!531944))))

(declare-fun b!1869347 () Bool)

(declare-fun e!1192802 () Bool)

(declare-fun tp!531943 () Bool)

(assert (=> b!1869347 (= e!1192802 tp!531943)))

(declare-fun b!1869346 () Bool)

(assert (=> b!1869346 (= e!1192801 (and (inv!27441 (xs!9770 (left!16685 t!4595))) e!1192802))))

(assert (=> b!1869184 (= tp!531932 (and (inv!27440 (left!16685 t!4595)) e!1192801))))

(assert (= (and b!1869184 ((_ is Node!6888) (left!16685 t!4595))) b!1869345))

(assert (= b!1869346 b!1869347))

(assert (= (and b!1869184 ((_ is Leaf!10100) (left!16685 t!4595))) b!1869346))

(declare-fun m!2295045 () Bool)

(assert (=> b!1869345 m!2295045))

(declare-fun m!2295047 () Bool)

(assert (=> b!1869345 m!2295047))

(declare-fun m!2295049 () Bool)

(assert (=> b!1869346 m!2295049))

(assert (=> b!1869184 m!2294861))

(declare-fun tp!531948 () Bool)

(declare-fun e!1192803 () Bool)

(declare-fun tp!531947 () Bool)

(declare-fun b!1869348 () Bool)

(assert (=> b!1869348 (= e!1192803 (and (inv!27440 (left!16685 (right!17015 t!4595))) tp!531948 (inv!27440 (right!17015 (right!17015 t!4595))) tp!531947))))

(declare-fun b!1869350 () Bool)

(declare-fun e!1192804 () Bool)

(declare-fun tp!531946 () Bool)

(assert (=> b!1869350 (= e!1192804 tp!531946)))

(declare-fun b!1869349 () Bool)

(assert (=> b!1869349 (= e!1192803 (and (inv!27441 (xs!9770 (right!17015 t!4595))) e!1192804))))

(assert (=> b!1869184 (= tp!531933 (and (inv!27440 (right!17015 t!4595)) e!1192803))))

(assert (= (and b!1869184 ((_ is Node!6888) (right!17015 t!4595))) b!1869348))

(assert (= b!1869349 b!1869350))

(assert (= (and b!1869184 ((_ is Leaf!10100) (right!17015 t!4595))) b!1869349))

(declare-fun m!2295051 () Bool)

(assert (=> b!1869348 m!2295051))

(declare-fun m!2295053 () Bool)

(assert (=> b!1869348 m!2295053))

(declare-fun m!2295055 () Bool)

(assert (=> b!1869349 m!2295055))

(assert (=> b!1869184 m!2294863))

(check-sat (not d!571308) (not b!1869250) (not b!1869318) (not b!1869265) (not b!1869333) (not b!1869228) (not b!1869270) (not bm!115937) (not d!571332) (not b!1869319) (not b!1869350) (not b!1869322) (not b!1869184) (not b!1869298) (not b!1869229) (not b!1869210) (not b!1869346) (not b!1869325) (not b!1869256) (not b!1869257) (not d!571334) (not b!1869320) (not b!1869289) (not b!1869291) (not d!571298) (not b!1869296) (not bm!115938) tp_is_empty!8693 (not b!1869323) (not b!1869209) (not b!1869266) (not d!571320) (not b!1869347) (not b!1869269) (not b!1869349) (not b!1869317) (not b!1869345) (not b!1869321) (not d!571296) (not b!1869249) (not b!1869348))
(check-sat)
(get-model)

(declare-fun d!571360 () Bool)

(declare-fun res!836932 () Bool)

(declare-fun e!1192826 () Bool)

(assert (=> d!571360 (=> (not res!836932) (not e!1192826))))

(assert (=> d!571360 (= res!836932 (<= (size!16417 (list!8483 (xs!9770 t!4595))) 512))))

(assert (=> d!571360 (= (inv!27443 t!4595) e!1192826)))

(declare-fun b!1869395 () Bool)

(declare-fun res!836933 () Bool)

(assert (=> b!1869395 (=> (not res!836933) (not e!1192826))))

(assert (=> b!1869395 (= res!836933 (= (csize!14007 t!4595) (size!16417 (list!8483 (xs!9770 t!4595)))))))

(declare-fun b!1869396 () Bool)

(assert (=> b!1869396 (= e!1192826 (and (> (csize!14007 t!4595) 0) (<= (csize!14007 t!4595) 512)))))

(assert (= (and d!571360 res!836932) b!1869395))

(assert (= (and b!1869395 res!836933) b!1869396))

(declare-fun m!2295083 () Bool)

(assert (=> d!571360 m!2295083))

(assert (=> d!571360 m!2295083))

(declare-fun m!2295085 () Bool)

(assert (=> d!571360 m!2295085))

(assert (=> b!1869395 m!2295083))

(assert (=> b!1869395 m!2295083))

(assert (=> b!1869395 m!2295085))

(assert (=> b!1869325 d!571360))

(declare-fun d!571362 () Bool)

(declare-fun lt!719048 () Bool)

(assert (=> d!571362 (= lt!719048 (isEmpty!12928 (list!8482 (right!17015 t!4595))))))

(assert (=> d!571362 (= lt!719048 (= (size!16418 (right!17015 t!4595)) 0))))

(assert (=> d!571362 (= (isEmpty!12927 (right!17015 t!4595)) lt!719048)))

(declare-fun bs!411908 () Bool)

(assert (= bs!411908 d!571362))

(assert (=> bs!411908 m!2294851))

(assert (=> bs!411908 m!2294851))

(declare-fun m!2295087 () Bool)

(assert (=> bs!411908 m!2295087))

(declare-fun m!2295089 () Bool)

(assert (=> bs!411908 m!2295089))

(assert (=> b!1869320 d!571362))

(declare-fun d!571364 () Bool)

(assert (=> d!571364 (= (inv!27441 (xs!9770 (right!17015 t!4595))) (<= (size!16417 (innerList!6948 (xs!9770 (right!17015 t!4595)))) 2147483647))))

(declare-fun bs!411909 () Bool)

(assert (= bs!411909 d!571364))

(declare-fun m!2295091 () Bool)

(assert (=> bs!411909 m!2295091))

(assert (=> b!1869349 d!571364))

(declare-fun d!571366 () Bool)

(assert (=> d!571366 (= (isEmpty!12928 (list!8482 t!4595)) ((_ is Nil!20693) (list!8482 t!4595)))))

(assert (=> d!571332 d!571366))

(declare-fun b!1869397 () Bool)

(declare-fun e!1192827 () List!20775)

(assert (=> b!1869397 (= e!1192827 Nil!20693)))

(declare-fun b!1869398 () Bool)

(declare-fun e!1192828 () List!20775)

(assert (=> b!1869398 (= e!1192827 e!1192828)))

(declare-fun c!304579 () Bool)

(assert (=> b!1869398 (= c!304579 ((_ is Leaf!10100) t!4595))))

(declare-fun d!571368 () Bool)

(declare-fun c!304578 () Bool)

(assert (=> d!571368 (= c!304578 ((_ is Empty!6888) t!4595))))

(assert (=> d!571368 (= (list!8482 t!4595) e!1192827)))

(declare-fun b!1869400 () Bool)

(assert (=> b!1869400 (= e!1192828 (++!5616 (list!8482 (left!16685 t!4595)) (list!8482 (right!17015 t!4595))))))

(declare-fun b!1869399 () Bool)

(assert (=> b!1869399 (= e!1192828 (list!8483 (xs!9770 t!4595)))))

(assert (= (and d!571368 c!304578) b!1869397))

(assert (= (and d!571368 (not c!304578)) b!1869398))

(assert (= (and b!1869398 c!304579) b!1869399))

(assert (= (and b!1869398 (not c!304579)) b!1869400))

(assert (=> b!1869400 m!2294849))

(assert (=> b!1869400 m!2294851))

(assert (=> b!1869400 m!2294849))

(assert (=> b!1869400 m!2294851))

(declare-fun m!2295093 () Bool)

(assert (=> b!1869400 m!2295093))

(assert (=> b!1869399 m!2295083))

(assert (=> d!571332 d!571368))

(declare-fun d!571370 () Bool)

(declare-fun lt!719051 () Int)

(assert (=> d!571370 (= lt!719051 (size!16417 (list!8482 t!4595)))))

(assert (=> d!571370 (= lt!719051 (ite ((_ is Empty!6888) t!4595) 0 (ite ((_ is Leaf!10100) t!4595) (csize!14007 t!4595) (csize!14006 t!4595))))))

(assert (=> d!571370 (= (size!16418 t!4595) lt!719051)))

(declare-fun bs!411910 () Bool)

(assert (= bs!411910 d!571370))

(assert (=> bs!411910 m!2294969))

(assert (=> bs!411910 m!2294969))

(declare-fun m!2295095 () Bool)

(assert (=> bs!411910 m!2295095))

(assert (=> d!571332 d!571370))

(declare-fun d!571372 () Bool)

(assert (=> d!571372 (= (height!1074 (left!16685 t!4595)) (ite ((_ is Empty!6888) (left!16685 t!4595)) 0 (ite ((_ is Leaf!10100) (left!16685 t!4595)) 1 (cheight!7099 (left!16685 t!4595)))))))

(assert (=> b!1869321 d!571372))

(declare-fun d!571374 () Bool)

(assert (=> d!571374 (= (height!1074 (right!17015 t!4595)) (ite ((_ is Empty!6888) (right!17015 t!4595)) 0 (ite ((_ is Leaf!10100) (right!17015 t!4595)) 1 (cheight!7099 (right!17015 t!4595)))))))

(assert (=> b!1869321 d!571374))

(declare-fun d!571376 () Bool)

(declare-fun c!304580 () Bool)

(assert (=> d!571376 (= c!304580 ((_ is Node!6888) (left!16685 (right!17015 t!4595))))))

(declare-fun e!1192829 () Bool)

(assert (=> d!571376 (= (inv!27440 (left!16685 (right!17015 t!4595))) e!1192829)))

(declare-fun b!1869401 () Bool)

(assert (=> b!1869401 (= e!1192829 (inv!27442 (left!16685 (right!17015 t!4595))))))

(declare-fun b!1869402 () Bool)

(declare-fun e!1192830 () Bool)

(assert (=> b!1869402 (= e!1192829 e!1192830)))

(declare-fun res!836934 () Bool)

(assert (=> b!1869402 (= res!836934 (not ((_ is Leaf!10100) (left!16685 (right!17015 t!4595)))))))

(assert (=> b!1869402 (=> res!836934 e!1192830)))

(declare-fun b!1869403 () Bool)

(assert (=> b!1869403 (= e!1192830 (inv!27443 (left!16685 (right!17015 t!4595))))))

(assert (= (and d!571376 c!304580) b!1869401))

(assert (= (and d!571376 (not c!304580)) b!1869402))

(assert (= (and b!1869402 (not res!836934)) b!1869403))

(declare-fun m!2295097 () Bool)

(assert (=> b!1869401 m!2295097))

(declare-fun m!2295099 () Bool)

(assert (=> b!1869403 m!2295099))

(assert (=> b!1869348 d!571376))

(declare-fun d!571378 () Bool)

(declare-fun c!304581 () Bool)

(assert (=> d!571378 (= c!304581 ((_ is Node!6888) (right!17015 (right!17015 t!4595))))))

(declare-fun e!1192831 () Bool)

(assert (=> d!571378 (= (inv!27440 (right!17015 (right!17015 t!4595))) e!1192831)))

(declare-fun b!1869404 () Bool)

(assert (=> b!1869404 (= e!1192831 (inv!27442 (right!17015 (right!17015 t!4595))))))

(declare-fun b!1869405 () Bool)

(declare-fun e!1192832 () Bool)

(assert (=> b!1869405 (= e!1192831 e!1192832)))

(declare-fun res!836935 () Bool)

(assert (=> b!1869405 (= res!836935 (not ((_ is Leaf!10100) (right!17015 (right!17015 t!4595)))))))

(assert (=> b!1869405 (=> res!836935 e!1192832)))

(declare-fun b!1869406 () Bool)

(assert (=> b!1869406 (= e!1192832 (inv!27443 (right!17015 (right!17015 t!4595))))))

(assert (= (and d!571378 c!304581) b!1869404))

(assert (= (and d!571378 (not c!304581)) b!1869405))

(assert (= (and b!1869405 (not res!836935)) b!1869406))

(declare-fun m!2295101 () Bool)

(assert (=> b!1869404 m!2295101))

(declare-fun m!2295103 () Bool)

(assert (=> b!1869406 m!2295103))

(assert (=> b!1869348 d!571378))

(declare-fun d!571380 () Bool)

(declare-fun c!304584 () Bool)

(assert (=> d!571380 (= c!304584 ((_ is Nil!20693) lt!719027))))

(declare-fun e!1192835 () (InoxSet T!33228))

(assert (=> d!571380 (= (content!3082 lt!719027) e!1192835)))

(declare-fun b!1869411 () Bool)

(assert (=> b!1869411 (= e!1192835 ((as const (Array T!33228 Bool)) false))))

(declare-fun b!1869412 () Bool)

(assert (=> b!1869412 (= e!1192835 ((_ map or) (store ((as const (Array T!33228 Bool)) false) (h!26094 lt!719027) true) (content!3082 (t!172954 lt!719027))))))

(assert (= (and d!571380 c!304584) b!1869411))

(assert (= (and d!571380 (not c!304584)) b!1869412))

(declare-fun m!2295105 () Bool)

(assert (=> b!1869412 m!2295105))

(declare-fun m!2295107 () Bool)

(assert (=> b!1869412 m!2295107))

(assert (=> d!571308 d!571380))

(declare-fun d!571382 () Bool)

(declare-fun c!304585 () Bool)

(assert (=> d!571382 (= c!304585 ((_ is Nil!20693) (tail!2839 lt!719017)))))

(declare-fun e!1192836 () (InoxSet T!33228))

(assert (=> d!571382 (= (content!3082 (tail!2839 lt!719017)) e!1192836)))

(declare-fun b!1869413 () Bool)

(assert (=> b!1869413 (= e!1192836 ((as const (Array T!33228 Bool)) false))))

(declare-fun b!1869414 () Bool)

(assert (=> b!1869414 (= e!1192836 ((_ map or) (store ((as const (Array T!33228 Bool)) false) (h!26094 (tail!2839 lt!719017)) true) (content!3082 (t!172954 (tail!2839 lt!719017)))))))

(assert (= (and d!571382 c!304585) b!1869413))

(assert (= (and d!571382 (not c!304585)) b!1869414))

(declare-fun m!2295109 () Bool)

(assert (=> b!1869414 m!2295109))

(declare-fun m!2295111 () Bool)

(assert (=> b!1869414 m!2295111))

(assert (=> d!571308 d!571382))

(declare-fun d!571384 () Bool)

(declare-fun c!304586 () Bool)

(assert (=> d!571384 (= c!304586 ((_ is Nil!20693) lt!719015))))

(declare-fun e!1192837 () (InoxSet T!33228))

(assert (=> d!571384 (= (content!3082 lt!719015) e!1192837)))

(declare-fun b!1869415 () Bool)

(assert (=> b!1869415 (= e!1192837 ((as const (Array T!33228 Bool)) false))))

(declare-fun b!1869416 () Bool)

(assert (=> b!1869416 (= e!1192837 ((_ map or) (store ((as const (Array T!33228 Bool)) false) (h!26094 lt!719015) true) (content!3082 (t!172954 lt!719015))))))

(assert (= (and d!571384 c!304586) b!1869415))

(assert (= (and d!571384 (not c!304586)) b!1869416))

(declare-fun m!2295113 () Bool)

(assert (=> b!1869416 m!2295113))

(declare-fun m!2295115 () Bool)

(assert (=> b!1869416 m!2295115))

(assert (=> d!571308 d!571384))

(declare-fun b!1869417 () Bool)

(declare-fun res!836939 () Bool)

(declare-fun e!1192838 () Bool)

(assert (=> b!1869417 (=> (not res!836939) (not e!1192838))))

(assert (=> b!1869417 (= res!836939 (isBalanced!2189 (right!17015 (left!16685 t!4595))))))

(declare-fun b!1869418 () Bool)

(declare-fun res!836940 () Bool)

(assert (=> b!1869418 (=> (not res!836940) (not e!1192838))))

(assert (=> b!1869418 (= res!836940 (not (isEmpty!12927 (left!16685 (left!16685 t!4595)))))))

(declare-fun b!1869419 () Bool)

(declare-fun e!1192839 () Bool)

(assert (=> b!1869419 (= e!1192839 e!1192838)))

(declare-fun res!836938 () Bool)

(assert (=> b!1869419 (=> (not res!836938) (not e!1192838))))

(assert (=> b!1869419 (= res!836938 (<= (- 1) (- (height!1074 (left!16685 (left!16685 t!4595))) (height!1074 (right!17015 (left!16685 t!4595))))))))

(declare-fun b!1869420 () Bool)

(assert (=> b!1869420 (= e!1192838 (not (isEmpty!12927 (right!17015 (left!16685 t!4595)))))))

(declare-fun d!571386 () Bool)

(declare-fun res!836941 () Bool)

(assert (=> d!571386 (=> res!836941 e!1192839)))

(assert (=> d!571386 (= res!836941 (not ((_ is Node!6888) (left!16685 t!4595))))))

(assert (=> d!571386 (= (isBalanced!2189 (left!16685 t!4595)) e!1192839)))

(declare-fun b!1869421 () Bool)

(declare-fun res!836937 () Bool)

(assert (=> b!1869421 (=> (not res!836937) (not e!1192838))))

(assert (=> b!1869421 (= res!836937 (<= (- (height!1074 (left!16685 (left!16685 t!4595))) (height!1074 (right!17015 (left!16685 t!4595)))) 1))))

(declare-fun b!1869422 () Bool)

(declare-fun res!836936 () Bool)

(assert (=> b!1869422 (=> (not res!836936) (not e!1192838))))

(assert (=> b!1869422 (= res!836936 (isBalanced!2189 (left!16685 (left!16685 t!4595))))))

(assert (= (and d!571386 (not res!836941)) b!1869419))

(assert (= (and b!1869419 res!836938) b!1869421))

(assert (= (and b!1869421 res!836937) b!1869422))

(assert (= (and b!1869422 res!836936) b!1869417))

(assert (= (and b!1869417 res!836939) b!1869418))

(assert (= (and b!1869418 res!836940) b!1869420))

(declare-fun m!2295117 () Bool)

(assert (=> b!1869422 m!2295117))

(declare-fun m!2295119 () Bool)

(assert (=> b!1869417 m!2295119))

(declare-fun m!2295121 () Bool)

(assert (=> b!1869420 m!2295121))

(declare-fun m!2295123 () Bool)

(assert (=> b!1869418 m!2295123))

(declare-fun m!2295125 () Bool)

(assert (=> b!1869421 m!2295125))

(declare-fun m!2295127 () Bool)

(assert (=> b!1869421 m!2295127))

(assert (=> b!1869419 m!2295125))

(assert (=> b!1869419 m!2295127))

(assert (=> b!1869322 d!571386))

(declare-fun d!571388 () Bool)

(assert (=> d!571388 (= (list!8483 (xs!9770 (right!17015 t!4595))) (innerList!6948 (xs!9770 (right!17015 t!4595))))))

(assert (=> b!1869209 d!571388))

(declare-fun d!571390 () Bool)

(declare-fun lt!719054 () Int)

(assert (=> d!571390 (>= lt!719054 0)))

(declare-fun ListPrimitiveSize!135 (List!20775) Int)

(assert (=> d!571390 (= lt!719054 (+ 1 (ListPrimitiveSize!135 (innerList!6948 (xs!9770 t!4595)))))))

(assert (=> d!571390 (= (IArrayPrimitiveSize!15 (xs!9770 t!4595)) lt!719054)))

(declare-fun bs!411911 () Bool)

(assert (= bs!411911 d!571390))

(declare-fun m!2295129 () Bool)

(assert (=> bs!411911 m!2295129))

(assert (=> b!1869265 d!571390))

(declare-fun b!1869423 () Bool)

(declare-fun e!1192840 () List!20775)

(assert (=> b!1869423 (= e!1192840 (list!8482 (right!17015 (right!17015 t!4595))))))

(declare-fun b!1869424 () Bool)

(assert (=> b!1869424 (= e!1192840 (Cons!20693 (h!26094 (list!8482 (left!16685 (right!17015 t!4595)))) (++!5616 (t!172954 (list!8482 (left!16685 (right!17015 t!4595)))) (list!8482 (right!17015 (right!17015 t!4595))))))))

(declare-fun b!1869425 () Bool)

(declare-fun res!836943 () Bool)

(declare-fun e!1192841 () Bool)

(assert (=> b!1869425 (=> (not res!836943) (not e!1192841))))

(declare-fun lt!719055 () List!20775)

(assert (=> b!1869425 (= res!836943 (= (size!16417 lt!719055) (+ (size!16417 (list!8482 (left!16685 (right!17015 t!4595)))) (size!16417 (list!8482 (right!17015 (right!17015 t!4595)))))))))

(declare-fun b!1869426 () Bool)

(assert (=> b!1869426 (= e!1192841 (or (not (= (list!8482 (right!17015 (right!17015 t!4595))) Nil!20693)) (= lt!719055 (list!8482 (left!16685 (right!17015 t!4595))))))))

(declare-fun d!571392 () Bool)

(assert (=> d!571392 e!1192841))

(declare-fun res!836942 () Bool)

(assert (=> d!571392 (=> (not res!836942) (not e!1192841))))

(assert (=> d!571392 (= res!836942 (= (content!3082 lt!719055) ((_ map or) (content!3082 (list!8482 (left!16685 (right!17015 t!4595)))) (content!3082 (list!8482 (right!17015 (right!17015 t!4595)))))))))

(assert (=> d!571392 (= lt!719055 e!1192840)))

(declare-fun c!304587 () Bool)

(assert (=> d!571392 (= c!304587 ((_ is Nil!20693) (list!8482 (left!16685 (right!17015 t!4595)))))))

(assert (=> d!571392 (= (++!5616 (list!8482 (left!16685 (right!17015 t!4595))) (list!8482 (right!17015 (right!17015 t!4595)))) lt!719055)))

(assert (= (and d!571392 c!304587) b!1869423))

(assert (= (and d!571392 (not c!304587)) b!1869424))

(assert (= (and d!571392 res!836942) b!1869425))

(assert (= (and b!1869425 res!836943) b!1869426))

(assert (=> b!1869424 m!2294875))

(declare-fun m!2295131 () Bool)

(assert (=> b!1869424 m!2295131))

(declare-fun m!2295133 () Bool)

(assert (=> b!1869425 m!2295133))

(assert (=> b!1869425 m!2294873))

(declare-fun m!2295135 () Bool)

(assert (=> b!1869425 m!2295135))

(assert (=> b!1869425 m!2294875))

(declare-fun m!2295137 () Bool)

(assert (=> b!1869425 m!2295137))

(declare-fun m!2295139 () Bool)

(assert (=> d!571392 m!2295139))

(assert (=> d!571392 m!2294873))

(declare-fun m!2295141 () Bool)

(assert (=> d!571392 m!2295141))

(assert (=> d!571392 m!2294875))

(declare-fun m!2295143 () Bool)

(assert (=> d!571392 m!2295143))

(assert (=> b!1869210 d!571392))

(declare-fun b!1869427 () Bool)

(declare-fun e!1192842 () List!20775)

(assert (=> b!1869427 (= e!1192842 Nil!20693)))

(declare-fun b!1869428 () Bool)

(declare-fun e!1192843 () List!20775)

(assert (=> b!1869428 (= e!1192842 e!1192843)))

(declare-fun c!304589 () Bool)

(assert (=> b!1869428 (= c!304589 ((_ is Leaf!10100) (left!16685 (right!17015 t!4595))))))

(declare-fun d!571394 () Bool)

(declare-fun c!304588 () Bool)

(assert (=> d!571394 (= c!304588 ((_ is Empty!6888) (left!16685 (right!17015 t!4595))))))

(assert (=> d!571394 (= (list!8482 (left!16685 (right!17015 t!4595))) e!1192842)))

(declare-fun b!1869430 () Bool)

(assert (=> b!1869430 (= e!1192843 (++!5616 (list!8482 (left!16685 (left!16685 (right!17015 t!4595)))) (list!8482 (right!17015 (left!16685 (right!17015 t!4595))))))))

(declare-fun b!1869429 () Bool)

(assert (=> b!1869429 (= e!1192843 (list!8483 (xs!9770 (left!16685 (right!17015 t!4595)))))))

(assert (= (and d!571394 c!304588) b!1869427))

(assert (= (and d!571394 (not c!304588)) b!1869428))

(assert (= (and b!1869428 c!304589) b!1869429))

(assert (= (and b!1869428 (not c!304589)) b!1869430))

(declare-fun m!2295145 () Bool)

(assert (=> b!1869430 m!2295145))

(declare-fun m!2295147 () Bool)

(assert (=> b!1869430 m!2295147))

(assert (=> b!1869430 m!2295145))

(assert (=> b!1869430 m!2295147))

(declare-fun m!2295149 () Bool)

(assert (=> b!1869430 m!2295149))

(declare-fun m!2295151 () Bool)

(assert (=> b!1869429 m!2295151))

(assert (=> b!1869210 d!571394))

(declare-fun b!1869431 () Bool)

(declare-fun e!1192844 () List!20775)

(assert (=> b!1869431 (= e!1192844 Nil!20693)))

(declare-fun b!1869432 () Bool)

(declare-fun e!1192845 () List!20775)

(assert (=> b!1869432 (= e!1192844 e!1192845)))

(declare-fun c!304591 () Bool)

(assert (=> b!1869432 (= c!304591 ((_ is Leaf!10100) (right!17015 (right!17015 t!4595))))))

(declare-fun d!571396 () Bool)

(declare-fun c!304590 () Bool)

(assert (=> d!571396 (= c!304590 ((_ is Empty!6888) (right!17015 (right!17015 t!4595))))))

(assert (=> d!571396 (= (list!8482 (right!17015 (right!17015 t!4595))) e!1192844)))

(declare-fun b!1869434 () Bool)

(assert (=> b!1869434 (= e!1192845 (++!5616 (list!8482 (left!16685 (right!17015 (right!17015 t!4595)))) (list!8482 (right!17015 (right!17015 (right!17015 t!4595))))))))

(declare-fun b!1869433 () Bool)

(assert (=> b!1869433 (= e!1192845 (list!8483 (xs!9770 (right!17015 (right!17015 t!4595)))))))

(assert (= (and d!571396 c!304590) b!1869431))

(assert (= (and d!571396 (not c!304590)) b!1869432))

(assert (= (and b!1869432 c!304591) b!1869433))

(assert (= (and b!1869432 (not c!304591)) b!1869434))

(declare-fun m!2295153 () Bool)

(assert (=> b!1869434 m!2295153))

(declare-fun m!2295155 () Bool)

(assert (=> b!1869434 m!2295155))

(assert (=> b!1869434 m!2295153))

(assert (=> b!1869434 m!2295155))

(declare-fun m!2295157 () Bool)

(assert (=> b!1869434 m!2295157))

(declare-fun m!2295159 () Bool)

(assert (=> b!1869433 m!2295159))

(assert (=> b!1869210 d!571396))

(assert (=> b!1869266 d!571316))

(declare-fun b!1869435 () Bool)

(declare-fun e!1192847 () Int)

(assert (=> b!1869435 (= e!1192847 0)))

(declare-fun b!1869436 () Bool)

(declare-fun e!1192846 () Int)

(assert (=> b!1869436 (= e!1192846 e!1192847)))

(declare-fun c!304593 () Bool)

(assert (=> b!1869436 (= c!304593 ((_ is Leaf!10100) (right!17015 t!4595)))))

(declare-fun b!1869437 () Bool)

(declare-fun call!115944 () Int)

(assert (=> b!1869437 (= e!1192847 (+ 1 (IArrayPrimitiveSize!15 (xs!9770 (right!17015 t!4595))) call!115944))))

(declare-fun d!571398 () Bool)

(declare-fun lt!719056 () Int)

(assert (=> d!571398 (>= lt!719056 0)))

(assert (=> d!571398 (= lt!719056 e!1192846)))

(declare-fun c!304592 () Bool)

(assert (=> d!571398 (= c!304592 ((_ is Node!6888) (right!17015 t!4595)))))

(assert (=> d!571398 (= (ConcPrimitiveSize!16 (right!17015 t!4595)) lt!719056)))

(declare-fun b!1869438 () Bool)

(assert (=> b!1869438 (= e!1192846 (+ 1 (ConcPrimitiveSize!16 (left!16685 (right!17015 t!4595))) (ConcPrimitiveSize!16 (right!17015 (right!17015 t!4595))) (BigIntAbs!0 (csize!14006 (right!17015 t!4595))) call!115944))))

(declare-fun bm!115939 () Bool)

(assert (=> bm!115939 (= call!115944 (BigIntAbs!0 (ite c!304592 (cheight!7099 (right!17015 t!4595)) (csize!14007 (right!17015 t!4595)))))))

(assert (= (and d!571398 c!304592) b!1869438))

(assert (= (and d!571398 (not c!304592)) b!1869436))

(assert (= (and b!1869436 c!304593) b!1869437))

(assert (= (and b!1869436 (not c!304593)) b!1869435))

(assert (= (or b!1869438 b!1869437) bm!115939))

(declare-fun m!2295161 () Bool)

(assert (=> b!1869437 m!2295161))

(declare-fun m!2295163 () Bool)

(assert (=> b!1869438 m!2295163))

(declare-fun m!2295165 () Bool)

(assert (=> b!1869438 m!2295165))

(declare-fun m!2295167 () Bool)

(assert (=> b!1869438 m!2295167))

(declare-fun m!2295169 () Bool)

(assert (=> bm!115939 m!2295169))

(assert (=> b!1869266 d!571398))

(declare-fun d!571400 () Bool)

(assert (=> d!571400 (= (BigIntAbs!0 (csize!14006 t!4595)) (ite (>= (csize!14006 t!4595) 0) (csize!14006 t!4595) (- (csize!14006 t!4595))))))

(assert (=> b!1869266 d!571400))

(assert (=> b!1869184 d!571336))

(assert (=> b!1869184 d!571340))

(declare-fun b!1869439 () Bool)

(declare-fun e!1192848 () List!20775)

(assert (=> b!1869439 (= e!1192848 lt!719015)))

(declare-fun b!1869440 () Bool)

(assert (=> b!1869440 (= e!1192848 (Cons!20693 (h!26094 (t!172954 lt!719017)) (++!5616 (t!172954 (t!172954 lt!719017)) lt!719015)))))

(declare-fun b!1869441 () Bool)

(declare-fun res!836945 () Bool)

(declare-fun e!1192849 () Bool)

(assert (=> b!1869441 (=> (not res!836945) (not e!1192849))))

(declare-fun lt!719057 () List!20775)

(assert (=> b!1869441 (= res!836945 (= (size!16417 lt!719057) (+ (size!16417 (t!172954 lt!719017)) (size!16417 lt!719015))))))

(declare-fun b!1869442 () Bool)

(assert (=> b!1869442 (= e!1192849 (or (not (= lt!719015 Nil!20693)) (= lt!719057 (t!172954 lt!719017))))))

(declare-fun d!571402 () Bool)

(assert (=> d!571402 e!1192849))

(declare-fun res!836944 () Bool)

(assert (=> d!571402 (=> (not res!836944) (not e!1192849))))

(assert (=> d!571402 (= res!836944 (= (content!3082 lt!719057) ((_ map or) (content!3082 (t!172954 lt!719017)) (content!3082 lt!719015))))))

(assert (=> d!571402 (= lt!719057 e!1192848)))

(declare-fun c!304594 () Bool)

(assert (=> d!571402 (= c!304594 ((_ is Nil!20693) (t!172954 lt!719017)))))

(assert (=> d!571402 (= (++!5616 (t!172954 lt!719017) lt!719015) lt!719057)))

(assert (= (and d!571402 c!304594) b!1869439))

(assert (= (and d!571402 (not c!304594)) b!1869440))

(assert (= (and d!571402 res!836944) b!1869441))

(assert (= (and b!1869441 res!836945) b!1869442))

(declare-fun m!2295171 () Bool)

(assert (=> b!1869440 m!2295171))

(declare-fun m!2295173 () Bool)

(assert (=> b!1869441 m!2295173))

(declare-fun m!2295175 () Bool)

(assert (=> b!1869441 m!2295175))

(assert (=> b!1869441 m!2294905))

(declare-fun m!2295177 () Bool)

(assert (=> d!571402 m!2295177))

(declare-fun m!2295179 () Bool)

(assert (=> d!571402 m!2295179))

(assert (=> d!571402 m!2294911))

(assert (=> b!1869256 d!571402))

(declare-fun d!571404 () Bool)

(assert (=> d!571404 (= (BigIntAbs!0 (ite c!304560 (cheight!7099 t!4595) (csize!14007 t!4595))) (ite (>= (ite c!304560 (cheight!7099 t!4595) (csize!14007 t!4595)) 0) (ite c!304560 (cheight!7099 t!4595) (csize!14007 t!4595)) (- (ite c!304560 (cheight!7099 t!4595) (csize!14007 t!4595)))))))

(assert (=> bm!115938 d!571404))

(declare-fun d!571406 () Bool)

(declare-fun lt!719060 () Int)

(assert (=> d!571406 (>= lt!719060 0)))

(declare-fun e!1192852 () Int)

(assert (=> d!571406 (= lt!719060 e!1192852)))

(declare-fun c!304597 () Bool)

(assert (=> d!571406 (= c!304597 ((_ is Nil!20693) lt!719034))))

(assert (=> d!571406 (= (size!16417 lt!719034) lt!719060)))

(declare-fun b!1869447 () Bool)

(assert (=> b!1869447 (= e!1192852 0)))

(declare-fun b!1869448 () Bool)

(assert (=> b!1869448 (= e!1192852 (+ 1 (size!16417 (t!172954 lt!719034))))))

(assert (= (and d!571406 c!304597) b!1869447))

(assert (= (and d!571406 (not c!304597)) b!1869448))

(declare-fun m!2295181 () Bool)

(assert (=> b!1869448 m!2295181))

(assert (=> b!1869257 d!571406))

(declare-fun d!571408 () Bool)

(declare-fun lt!719061 () Int)

(assert (=> d!571408 (>= lt!719061 0)))

(declare-fun e!1192853 () Int)

(assert (=> d!571408 (= lt!719061 e!1192853)))

(declare-fun c!304598 () Bool)

(assert (=> d!571408 (= c!304598 ((_ is Nil!20693) lt!719017))))

(assert (=> d!571408 (= (size!16417 lt!719017) lt!719061)))

(declare-fun b!1869449 () Bool)

(assert (=> b!1869449 (= e!1192853 0)))

(declare-fun b!1869450 () Bool)

(assert (=> b!1869450 (= e!1192853 (+ 1 (size!16417 (t!172954 lt!719017))))))

(assert (= (and d!571408 c!304598) b!1869449))

(assert (= (and d!571408 (not c!304598)) b!1869450))

(assert (=> b!1869450 m!2295175))

(assert (=> b!1869257 d!571408))

(declare-fun d!571410 () Bool)

(declare-fun lt!719062 () Int)

(assert (=> d!571410 (>= lt!719062 0)))

(declare-fun e!1192854 () Int)

(assert (=> d!571410 (= lt!719062 e!1192854)))

(declare-fun c!304599 () Bool)

(assert (=> d!571410 (= c!304599 ((_ is Nil!20693) lt!719015))))

(assert (=> d!571410 (= (size!16417 lt!719015) lt!719062)))

(declare-fun b!1869451 () Bool)

(assert (=> b!1869451 (= e!1192854 0)))

(declare-fun b!1869452 () Bool)

(assert (=> b!1869452 (= e!1192854 (+ 1 (size!16417 (t!172954 lt!719015))))))

(assert (= (and d!571410 c!304599) b!1869451))

(assert (= (and d!571410 (not c!304599)) b!1869452))

(declare-fun m!2295183 () Bool)

(assert (=> b!1869452 m!2295183))

(assert (=> b!1869257 d!571410))

(declare-fun d!571412 () Bool)

(declare-fun res!836952 () Bool)

(declare-fun e!1192857 () Bool)

(assert (=> d!571412 (=> (not res!836952) (not e!1192857))))

(assert (=> d!571412 (= res!836952 (= (csize!14006 (left!16685 t!4595)) (+ (size!16418 (left!16685 (left!16685 t!4595))) (size!16418 (right!17015 (left!16685 t!4595))))))))

(assert (=> d!571412 (= (inv!27442 (left!16685 t!4595)) e!1192857)))

(declare-fun b!1869459 () Bool)

(declare-fun res!836953 () Bool)

(assert (=> b!1869459 (=> (not res!836953) (not e!1192857))))

(assert (=> b!1869459 (= res!836953 (and (not (= (left!16685 (left!16685 t!4595)) Empty!6888)) (not (= (right!17015 (left!16685 t!4595)) Empty!6888))))))

(declare-fun b!1869460 () Bool)

(declare-fun res!836954 () Bool)

(assert (=> b!1869460 (=> (not res!836954) (not e!1192857))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1869460 (= res!836954 (= (cheight!7099 (left!16685 t!4595)) (+ (max!0 (height!1074 (left!16685 (left!16685 t!4595))) (height!1074 (right!17015 (left!16685 t!4595)))) 1)))))

(declare-fun b!1869461 () Bool)

(assert (=> b!1869461 (= e!1192857 (<= 0 (cheight!7099 (left!16685 t!4595))))))

(assert (= (and d!571412 res!836952) b!1869459))

(assert (= (and b!1869459 res!836953) b!1869460))

(assert (= (and b!1869460 res!836954) b!1869461))

(declare-fun m!2295185 () Bool)

(assert (=> d!571412 m!2295185))

(declare-fun m!2295187 () Bool)

(assert (=> d!571412 m!2295187))

(assert (=> b!1869460 m!2295125))

(assert (=> b!1869460 m!2295127))

(assert (=> b!1869460 m!2295125))

(assert (=> b!1869460 m!2295127))

(declare-fun m!2295189 () Bool)

(assert (=> b!1869460 m!2295189))

(assert (=> b!1869289 d!571412))

(declare-fun d!571414 () Bool)

(assert (=> d!571414 (= (list!8483 (xs!9770 (left!16685 t!4595))) (innerList!6948 (xs!9770 (left!16685 t!4595))))))

(assert (=> b!1869269 d!571414))

(declare-fun b!1869462 () Bool)

(declare-fun e!1192858 () List!20775)

(assert (=> b!1869462 (= e!1192858 (list!8482 (right!17015 (left!16685 t!4595))))))

(declare-fun b!1869463 () Bool)

(assert (=> b!1869463 (= e!1192858 (Cons!20693 (h!26094 (list!8482 (left!16685 (left!16685 t!4595)))) (++!5616 (t!172954 (list!8482 (left!16685 (left!16685 t!4595)))) (list!8482 (right!17015 (left!16685 t!4595))))))))

(declare-fun b!1869464 () Bool)

(declare-fun res!836956 () Bool)

(declare-fun e!1192859 () Bool)

(assert (=> b!1869464 (=> (not res!836956) (not e!1192859))))

(declare-fun lt!719063 () List!20775)

(assert (=> b!1869464 (= res!836956 (= (size!16417 lt!719063) (+ (size!16417 (list!8482 (left!16685 (left!16685 t!4595)))) (size!16417 (list!8482 (right!17015 (left!16685 t!4595)))))))))

(declare-fun b!1869465 () Bool)

(assert (=> b!1869465 (= e!1192859 (or (not (= (list!8482 (right!17015 (left!16685 t!4595))) Nil!20693)) (= lt!719063 (list!8482 (left!16685 (left!16685 t!4595))))))))

(declare-fun d!571416 () Bool)

(assert (=> d!571416 e!1192859))

(declare-fun res!836955 () Bool)

(assert (=> d!571416 (=> (not res!836955) (not e!1192859))))

(assert (=> d!571416 (= res!836955 (= (content!3082 lt!719063) ((_ map or) (content!3082 (list!8482 (left!16685 (left!16685 t!4595)))) (content!3082 (list!8482 (right!17015 (left!16685 t!4595)))))))))

(assert (=> d!571416 (= lt!719063 e!1192858)))

(declare-fun c!304600 () Bool)

(assert (=> d!571416 (= c!304600 ((_ is Nil!20693) (list!8482 (left!16685 (left!16685 t!4595)))))))

(assert (=> d!571416 (= (++!5616 (list!8482 (left!16685 (left!16685 t!4595))) (list!8482 (right!17015 (left!16685 t!4595)))) lt!719063)))

(assert (= (and d!571416 c!304600) b!1869462))

(assert (= (and d!571416 (not c!304600)) b!1869463))

(assert (= (and d!571416 res!836955) b!1869464))

(assert (= (and b!1869464 res!836956) b!1869465))

(assert (=> b!1869463 m!2294963))

(declare-fun m!2295191 () Bool)

(assert (=> b!1869463 m!2295191))

(declare-fun m!2295193 () Bool)

(assert (=> b!1869464 m!2295193))

(assert (=> b!1869464 m!2294961))

(declare-fun m!2295195 () Bool)

(assert (=> b!1869464 m!2295195))

(assert (=> b!1869464 m!2294963))

(declare-fun m!2295197 () Bool)

(assert (=> b!1869464 m!2295197))

(declare-fun m!2295199 () Bool)

(assert (=> d!571416 m!2295199))

(assert (=> d!571416 m!2294961))

(declare-fun m!2295201 () Bool)

(assert (=> d!571416 m!2295201))

(assert (=> d!571416 m!2294963))

(declare-fun m!2295203 () Bool)

(assert (=> d!571416 m!2295203))

(assert (=> b!1869270 d!571416))

(declare-fun b!1869466 () Bool)

(declare-fun e!1192860 () List!20775)

(assert (=> b!1869466 (= e!1192860 Nil!20693)))

(declare-fun b!1869467 () Bool)

(declare-fun e!1192861 () List!20775)

(assert (=> b!1869467 (= e!1192860 e!1192861)))

(declare-fun c!304602 () Bool)

(assert (=> b!1869467 (= c!304602 ((_ is Leaf!10100) (left!16685 (left!16685 t!4595))))))

(declare-fun d!571418 () Bool)

(declare-fun c!304601 () Bool)

(assert (=> d!571418 (= c!304601 ((_ is Empty!6888) (left!16685 (left!16685 t!4595))))))

(assert (=> d!571418 (= (list!8482 (left!16685 (left!16685 t!4595))) e!1192860)))

(declare-fun b!1869469 () Bool)

(assert (=> b!1869469 (= e!1192861 (++!5616 (list!8482 (left!16685 (left!16685 (left!16685 t!4595)))) (list!8482 (right!17015 (left!16685 (left!16685 t!4595))))))))

(declare-fun b!1869468 () Bool)

(assert (=> b!1869468 (= e!1192861 (list!8483 (xs!9770 (left!16685 (left!16685 t!4595)))))))

(assert (= (and d!571418 c!304601) b!1869466))

(assert (= (and d!571418 (not c!304601)) b!1869467))

(assert (= (and b!1869467 c!304602) b!1869468))

(assert (= (and b!1869467 (not c!304602)) b!1869469))

(declare-fun m!2295205 () Bool)

(assert (=> b!1869469 m!2295205))

(declare-fun m!2295207 () Bool)

(assert (=> b!1869469 m!2295207))

(assert (=> b!1869469 m!2295205))

(assert (=> b!1869469 m!2295207))

(declare-fun m!2295209 () Bool)

(assert (=> b!1869469 m!2295209))

(declare-fun m!2295211 () Bool)

(assert (=> b!1869468 m!2295211))

(assert (=> b!1869270 d!571418))

(declare-fun b!1869470 () Bool)

(declare-fun e!1192862 () List!20775)

(assert (=> b!1869470 (= e!1192862 Nil!20693)))

(declare-fun b!1869471 () Bool)

(declare-fun e!1192863 () List!20775)

(assert (=> b!1869471 (= e!1192862 e!1192863)))

(declare-fun c!304604 () Bool)

(assert (=> b!1869471 (= c!304604 ((_ is Leaf!10100) (right!17015 (left!16685 t!4595))))))

(declare-fun d!571420 () Bool)

(declare-fun c!304603 () Bool)

(assert (=> d!571420 (= c!304603 ((_ is Empty!6888) (right!17015 (left!16685 t!4595))))))

(assert (=> d!571420 (= (list!8482 (right!17015 (left!16685 t!4595))) e!1192862)))

(declare-fun b!1869473 () Bool)

(assert (=> b!1869473 (= e!1192863 (++!5616 (list!8482 (left!16685 (right!17015 (left!16685 t!4595)))) (list!8482 (right!17015 (right!17015 (left!16685 t!4595))))))))

(declare-fun b!1869472 () Bool)

(assert (=> b!1869472 (= e!1192863 (list!8483 (xs!9770 (right!17015 (left!16685 t!4595)))))))

(assert (= (and d!571420 c!304603) b!1869470))

(assert (= (and d!571420 (not c!304603)) b!1869471))

(assert (= (and b!1869471 c!304604) b!1869472))

(assert (= (and b!1869471 (not c!304604)) b!1869473))

(declare-fun m!2295213 () Bool)

(assert (=> b!1869473 m!2295213))

(declare-fun m!2295215 () Bool)

(assert (=> b!1869473 m!2295215))

(assert (=> b!1869473 m!2295213))

(assert (=> b!1869473 m!2295215))

(declare-fun m!2295217 () Bool)

(assert (=> b!1869473 m!2295217))

(declare-fun m!2295219 () Bool)

(assert (=> b!1869472 m!2295219))

(assert (=> b!1869270 d!571420))

(declare-fun d!571422 () Bool)

(declare-fun res!836957 () Bool)

(declare-fun e!1192864 () Bool)

(assert (=> d!571422 (=> (not res!836957) (not e!1192864))))

(assert (=> d!571422 (= res!836957 (= (csize!14006 (right!17015 t!4595)) (+ (size!16418 (left!16685 (right!17015 t!4595))) (size!16418 (right!17015 (right!17015 t!4595))))))))

(assert (=> d!571422 (= (inv!27442 (right!17015 t!4595)) e!1192864)))

(declare-fun b!1869474 () Bool)

(declare-fun res!836958 () Bool)

(assert (=> b!1869474 (=> (not res!836958) (not e!1192864))))

(assert (=> b!1869474 (= res!836958 (and (not (= (left!16685 (right!17015 t!4595)) Empty!6888)) (not (= (right!17015 (right!17015 t!4595)) Empty!6888))))))

(declare-fun b!1869475 () Bool)

(declare-fun res!836959 () Bool)

(assert (=> b!1869475 (=> (not res!836959) (not e!1192864))))

(assert (=> b!1869475 (= res!836959 (= (cheight!7099 (right!17015 t!4595)) (+ (max!0 (height!1074 (left!16685 (right!17015 t!4595))) (height!1074 (right!17015 (right!17015 t!4595)))) 1)))))

(declare-fun b!1869476 () Bool)

(assert (=> b!1869476 (= e!1192864 (<= 0 (cheight!7099 (right!17015 t!4595))))))

(assert (= (and d!571422 res!836957) b!1869474))

(assert (= (and b!1869474 res!836958) b!1869475))

(assert (= (and b!1869475 res!836959) b!1869476))

(declare-fun m!2295221 () Bool)

(assert (=> d!571422 m!2295221))

(declare-fun m!2295223 () Bool)

(assert (=> d!571422 m!2295223))

(declare-fun m!2295225 () Bool)

(assert (=> b!1869475 m!2295225))

(declare-fun m!2295227 () Bool)

(assert (=> b!1869475 m!2295227))

(assert (=> b!1869475 m!2295225))

(assert (=> b!1869475 m!2295227))

(declare-fun m!2295229 () Bool)

(assert (=> b!1869475 m!2295229))

(assert (=> b!1869296 d!571422))

(declare-fun d!571424 () Bool)

(declare-fun res!836960 () Bool)

(declare-fun e!1192865 () Bool)

(assert (=> d!571424 (=> (not res!836960) (not e!1192865))))

(assert (=> d!571424 (= res!836960 (<= (size!16417 (list!8483 (xs!9770 (left!16685 t!4595)))) 512))))

(assert (=> d!571424 (= (inv!27443 (left!16685 t!4595)) e!1192865)))

(declare-fun b!1869477 () Bool)

(declare-fun res!836961 () Bool)

(assert (=> b!1869477 (=> (not res!836961) (not e!1192865))))

(assert (=> b!1869477 (= res!836961 (= (csize!14007 (left!16685 t!4595)) (size!16417 (list!8483 (xs!9770 (left!16685 t!4595))))))))

(declare-fun b!1869478 () Bool)

(assert (=> b!1869478 (= e!1192865 (and (> (csize!14007 (left!16685 t!4595)) 0) (<= (csize!14007 (left!16685 t!4595)) 512)))))

(assert (= (and d!571424 res!836960) b!1869477))

(assert (= (and b!1869477 res!836961) b!1869478))

(assert (=> d!571424 m!2294967))

(assert (=> d!571424 m!2294967))

(declare-fun m!2295231 () Bool)

(assert (=> d!571424 m!2295231))

(assert (=> b!1869477 m!2294967))

(assert (=> b!1869477 m!2294967))

(assert (=> b!1869477 m!2295231))

(assert (=> b!1869291 d!571424))

(declare-fun d!571426 () Bool)

(declare-fun lt!719064 () Int)

(assert (=> d!571426 (>= lt!719064 0)))

(declare-fun e!1192866 () Int)

(assert (=> d!571426 (= lt!719064 e!1192866)))

(declare-fun c!304605 () Bool)

(assert (=> d!571426 (= c!304605 ((_ is Nil!20693) (innerList!6948 (xs!9770 t!4595))))))

(assert (=> d!571426 (= (size!16417 (innerList!6948 (xs!9770 t!4595))) lt!719064)))

(declare-fun b!1869479 () Bool)

(assert (=> b!1869479 (= e!1192866 0)))

(declare-fun b!1869480 () Bool)

(assert (=> b!1869480 (= e!1192866 (+ 1 (size!16417 (t!172954 (innerList!6948 (xs!9770 t!4595))))))))

(assert (= (and d!571426 c!304605) b!1869479))

(assert (= (and d!571426 (not c!304605)) b!1869480))

(declare-fun m!2295233 () Bool)

(assert (=> b!1869480 m!2295233))

(assert (=> d!571296 d!571426))

(declare-fun d!571428 () Bool)

(declare-fun res!836962 () Bool)

(declare-fun e!1192867 () Bool)

(assert (=> d!571428 (=> (not res!836962) (not e!1192867))))

(assert (=> d!571428 (= res!836962 (<= (size!16417 (list!8483 (xs!9770 (right!17015 t!4595)))) 512))))

(assert (=> d!571428 (= (inv!27443 (right!17015 t!4595)) e!1192867)))

(declare-fun b!1869481 () Bool)

(declare-fun res!836963 () Bool)

(assert (=> b!1869481 (=> (not res!836963) (not e!1192867))))

(assert (=> b!1869481 (= res!836963 (= (csize!14007 (right!17015 t!4595)) (size!16417 (list!8483 (xs!9770 (right!17015 t!4595))))))))

(declare-fun b!1869482 () Bool)

(assert (=> b!1869482 (= e!1192867 (and (> (csize!14007 (right!17015 t!4595)) 0) (<= (csize!14007 (right!17015 t!4595)) 512)))))

(assert (= (and d!571428 res!836962) b!1869481))

(assert (= (and b!1869481 res!836963) b!1869482))

(assert (=> d!571428 m!2294879))

(assert (=> d!571428 m!2294879))

(declare-fun m!2295235 () Bool)

(assert (=> d!571428 m!2295235))

(assert (=> b!1869481 m!2294879))

(assert (=> b!1869481 m!2294879))

(assert (=> b!1869481 m!2295235))

(assert (=> b!1869298 d!571428))

(declare-fun d!571430 () Bool)

(declare-fun lt!719065 () Int)

(assert (=> d!571430 (>= lt!719065 0)))

(assert (=> d!571430 (= lt!719065 (+ 1 (ListPrimitiveSize!135 (innerList!6948 (xs!9770 (left!16685 t!4595))))))))

(assert (=> d!571430 (= (IArrayPrimitiveSize!15 (xs!9770 (left!16685 t!4595))) lt!719065)))

(declare-fun bs!411912 () Bool)

(assert (= bs!411912 d!571430))

(declare-fun m!2295237 () Bool)

(assert (=> bs!411912 m!2295237))

(assert (=> b!1869249 d!571430))

(declare-fun d!571432 () Bool)

(assert (=> d!571432 (= (isEmpty!12928 (list!8482 (left!16685 t!4595))) ((_ is Nil!20693) (list!8482 (left!16685 t!4595))))))

(assert (=> d!571334 d!571432))

(assert (=> d!571334 d!571330))

(declare-fun d!571434 () Bool)

(declare-fun lt!719066 () Int)

(assert (=> d!571434 (= lt!719066 (size!16417 (list!8482 (left!16685 t!4595))))))

(assert (=> d!571434 (= lt!719066 (ite ((_ is Empty!6888) (left!16685 t!4595)) 0 (ite ((_ is Leaf!10100) (left!16685 t!4595)) (csize!14007 (left!16685 t!4595)) (csize!14006 (left!16685 t!4595)))))))

(assert (=> d!571434 (= (size!16418 (left!16685 t!4595)) lt!719066)))

(declare-fun bs!411913 () Bool)

(assert (= bs!411913 d!571434))

(assert (=> bs!411913 m!2294849))

(assert (=> bs!411913 m!2294849))

(declare-fun m!2295239 () Bool)

(assert (=> bs!411913 m!2295239))

(assert (=> d!571334 d!571434))

(declare-fun b!1869483 () Bool)

(declare-fun e!1192868 () List!20775)

(assert (=> b!1869483 (= e!1192868 lt!719015)))

(declare-fun b!1869484 () Bool)

(assert (=> b!1869484 (= e!1192868 (Cons!20693 (h!26094 (t!172954 (tail!2839 lt!719017))) (++!5616 (t!172954 (t!172954 (tail!2839 lt!719017))) lt!719015)))))

(declare-fun b!1869485 () Bool)

(declare-fun res!836965 () Bool)

(declare-fun e!1192869 () Bool)

(assert (=> b!1869485 (=> (not res!836965) (not e!1192869))))

(declare-fun lt!719067 () List!20775)

(assert (=> b!1869485 (= res!836965 (= (size!16417 lt!719067) (+ (size!16417 (t!172954 (tail!2839 lt!719017))) (size!16417 lt!719015))))))

(declare-fun b!1869486 () Bool)

(assert (=> b!1869486 (= e!1192869 (or (not (= lt!719015 Nil!20693)) (= lt!719067 (t!172954 (tail!2839 lt!719017)))))))

(declare-fun d!571436 () Bool)

(assert (=> d!571436 e!1192869))

(declare-fun res!836964 () Bool)

(assert (=> d!571436 (=> (not res!836964) (not e!1192869))))

(assert (=> d!571436 (= res!836964 (= (content!3082 lt!719067) ((_ map or) (content!3082 (t!172954 (tail!2839 lt!719017))) (content!3082 lt!719015))))))

(assert (=> d!571436 (= lt!719067 e!1192868)))

(declare-fun c!304606 () Bool)

(assert (=> d!571436 (= c!304606 ((_ is Nil!20693) (t!172954 (tail!2839 lt!719017))))))

(assert (=> d!571436 (= (++!5616 (t!172954 (tail!2839 lt!719017)) lt!719015) lt!719067)))

(assert (= (and d!571436 c!304606) b!1869483))

(assert (= (and d!571436 (not c!304606)) b!1869484))

(assert (= (and d!571436 res!836964) b!1869485))

(assert (= (and b!1869485 res!836965) b!1869486))

(declare-fun m!2295241 () Bool)

(assert (=> b!1869484 m!2295241))

(declare-fun m!2295243 () Bool)

(assert (=> b!1869485 m!2295243))

(declare-fun m!2295245 () Bool)

(assert (=> b!1869485 m!2295245))

(assert (=> b!1869485 m!2294905))

(declare-fun m!2295247 () Bool)

(assert (=> d!571436 m!2295247))

(assert (=> d!571436 m!2295111))

(assert (=> d!571436 m!2294911))

(assert (=> b!1869228 d!571436))

(declare-fun d!571438 () Bool)

(declare-fun c!304607 () Bool)

(assert (=> d!571438 (= c!304607 ((_ is Nil!20693) lt!719034))))

(declare-fun e!1192870 () (InoxSet T!33228))

(assert (=> d!571438 (= (content!3082 lt!719034) e!1192870)))

(declare-fun b!1869487 () Bool)

(assert (=> b!1869487 (= e!1192870 ((as const (Array T!33228 Bool)) false))))

(declare-fun b!1869488 () Bool)

(assert (=> b!1869488 (= e!1192870 ((_ map or) (store ((as const (Array T!33228 Bool)) false) (h!26094 lt!719034) true) (content!3082 (t!172954 lt!719034))))))

(assert (= (and d!571438 c!304607) b!1869487))

(assert (= (and d!571438 (not c!304607)) b!1869488))

(declare-fun m!2295249 () Bool)

(assert (=> b!1869488 m!2295249))

(declare-fun m!2295251 () Bool)

(assert (=> b!1869488 m!2295251))

(assert (=> d!571320 d!571438))

(declare-fun d!571440 () Bool)

(declare-fun c!304608 () Bool)

(assert (=> d!571440 (= c!304608 ((_ is Nil!20693) lt!719017))))

(declare-fun e!1192871 () (InoxSet T!33228))

(assert (=> d!571440 (= (content!3082 lt!719017) e!1192871)))

(declare-fun b!1869489 () Bool)

(assert (=> b!1869489 (= e!1192871 ((as const (Array T!33228 Bool)) false))))

(declare-fun b!1869490 () Bool)

(assert (=> b!1869490 (= e!1192871 ((_ map or) (store ((as const (Array T!33228 Bool)) false) (h!26094 lt!719017) true) (content!3082 (t!172954 lt!719017))))))

(assert (= (and d!571440 c!304608) b!1869489))

(assert (= (and d!571440 (not c!304608)) b!1869490))

(declare-fun m!2295253 () Bool)

(assert (=> b!1869490 m!2295253))

(assert (=> b!1869490 m!2295179))

(assert (=> d!571320 d!571440))

(assert (=> d!571320 d!571384))

(declare-fun b!1869491 () Bool)

(declare-fun e!1192873 () Int)

(assert (=> b!1869491 (= e!1192873 0)))

(declare-fun b!1869492 () Bool)

(declare-fun e!1192872 () Int)

(assert (=> b!1869492 (= e!1192872 e!1192873)))

(declare-fun c!304610 () Bool)

(assert (=> b!1869492 (= c!304610 ((_ is Leaf!10100) (left!16685 (left!16685 t!4595))))))

(declare-fun b!1869493 () Bool)

(declare-fun call!115945 () Int)

(assert (=> b!1869493 (= e!1192873 (+ 1 (IArrayPrimitiveSize!15 (xs!9770 (left!16685 (left!16685 t!4595)))) call!115945))))

(declare-fun d!571442 () Bool)

(declare-fun lt!719068 () Int)

(assert (=> d!571442 (>= lt!719068 0)))

(assert (=> d!571442 (= lt!719068 e!1192872)))

(declare-fun c!304609 () Bool)

(assert (=> d!571442 (= c!304609 ((_ is Node!6888) (left!16685 (left!16685 t!4595))))))

(assert (=> d!571442 (= (ConcPrimitiveSize!16 (left!16685 (left!16685 t!4595))) lt!719068)))

(declare-fun b!1869494 () Bool)

(assert (=> b!1869494 (= e!1192872 (+ 1 (ConcPrimitiveSize!16 (left!16685 (left!16685 (left!16685 t!4595)))) (ConcPrimitiveSize!16 (right!17015 (left!16685 (left!16685 t!4595)))) (BigIntAbs!0 (csize!14006 (left!16685 (left!16685 t!4595)))) call!115945))))

(declare-fun bm!115940 () Bool)

(assert (=> bm!115940 (= call!115945 (BigIntAbs!0 (ite c!304609 (cheight!7099 (left!16685 (left!16685 t!4595))) (csize!14007 (left!16685 (left!16685 t!4595))))))))

(assert (= (and d!571442 c!304609) b!1869494))

(assert (= (and d!571442 (not c!304609)) b!1869492))

(assert (= (and b!1869492 c!304610) b!1869493))

(assert (= (and b!1869492 (not c!304610)) b!1869491))

(assert (= (or b!1869494 b!1869493) bm!115940))

(declare-fun m!2295255 () Bool)

(assert (=> b!1869493 m!2295255))

(declare-fun m!2295257 () Bool)

(assert (=> b!1869494 m!2295257))

(declare-fun m!2295259 () Bool)

(assert (=> b!1869494 m!2295259))

(declare-fun m!2295261 () Bool)

(assert (=> b!1869494 m!2295261))

(declare-fun m!2295263 () Bool)

(assert (=> bm!115940 m!2295263))

(assert (=> b!1869250 d!571442))

(declare-fun b!1869495 () Bool)

(declare-fun e!1192875 () Int)

(assert (=> b!1869495 (= e!1192875 0)))

(declare-fun b!1869496 () Bool)

(declare-fun e!1192874 () Int)

(assert (=> b!1869496 (= e!1192874 e!1192875)))

(declare-fun c!304612 () Bool)

(assert (=> b!1869496 (= c!304612 ((_ is Leaf!10100) (right!17015 (left!16685 t!4595))))))

(declare-fun b!1869497 () Bool)

(declare-fun call!115946 () Int)

(assert (=> b!1869497 (= e!1192875 (+ 1 (IArrayPrimitiveSize!15 (xs!9770 (right!17015 (left!16685 t!4595)))) call!115946))))

(declare-fun d!571444 () Bool)

(declare-fun lt!719069 () Int)

(assert (=> d!571444 (>= lt!719069 0)))

(assert (=> d!571444 (= lt!719069 e!1192874)))

(declare-fun c!304611 () Bool)

(assert (=> d!571444 (= c!304611 ((_ is Node!6888) (right!17015 (left!16685 t!4595))))))

(assert (=> d!571444 (= (ConcPrimitiveSize!16 (right!17015 (left!16685 t!4595))) lt!719069)))

(declare-fun b!1869498 () Bool)

(assert (=> b!1869498 (= e!1192874 (+ 1 (ConcPrimitiveSize!16 (left!16685 (right!17015 (left!16685 t!4595)))) (ConcPrimitiveSize!16 (right!17015 (right!17015 (left!16685 t!4595)))) (BigIntAbs!0 (csize!14006 (right!17015 (left!16685 t!4595)))) call!115946))))

(declare-fun bm!115941 () Bool)

(assert (=> bm!115941 (= call!115946 (BigIntAbs!0 (ite c!304611 (cheight!7099 (right!17015 (left!16685 t!4595))) (csize!14007 (right!17015 (left!16685 t!4595))))))))

(assert (= (and d!571444 c!304611) b!1869498))

(assert (= (and d!571444 (not c!304611)) b!1869496))

(assert (= (and b!1869496 c!304612) b!1869497))

(assert (= (and b!1869496 (not c!304612)) b!1869495))

(assert (= (or b!1869498 b!1869497) bm!115941))

(declare-fun m!2295265 () Bool)

(assert (=> b!1869497 m!2295265))

(declare-fun m!2295267 () Bool)

(assert (=> b!1869498 m!2295267))

(declare-fun m!2295269 () Bool)

(assert (=> b!1869498 m!2295269))

(declare-fun m!2295271 () Bool)

(assert (=> b!1869498 m!2295271))

(declare-fun m!2295273 () Bool)

(assert (=> bm!115941 m!2295273))

(assert (=> b!1869250 d!571444))

(declare-fun d!571446 () Bool)

(assert (=> d!571446 (= (BigIntAbs!0 (csize!14006 (left!16685 t!4595))) (ite (>= (csize!14006 (left!16685 t!4595)) 0) (csize!14006 (left!16685 t!4595)) (- (csize!14006 (left!16685 t!4595)))))))

(assert (=> b!1869250 d!571446))

(declare-fun d!571448 () Bool)

(declare-fun lt!719070 () Int)

(assert (=> d!571448 (>= lt!719070 0)))

(declare-fun e!1192876 () Int)

(assert (=> d!571448 (= lt!719070 e!1192876)))

(declare-fun c!304613 () Bool)

(assert (=> d!571448 (= c!304613 ((_ is Nil!20693) lt!719027))))

(assert (=> d!571448 (= (size!16417 lt!719027) lt!719070)))

(declare-fun b!1869499 () Bool)

(assert (=> b!1869499 (= e!1192876 0)))

(declare-fun b!1869500 () Bool)

(assert (=> b!1869500 (= e!1192876 (+ 1 (size!16417 (t!172954 lt!719027))))))

(assert (= (and d!571448 c!304613) b!1869499))

(assert (= (and d!571448 (not c!304613)) b!1869500))

(declare-fun m!2295275 () Bool)

(assert (=> b!1869500 m!2295275))

(assert (=> b!1869229 d!571448))

(declare-fun d!571450 () Bool)

(declare-fun lt!719071 () Int)

(assert (=> d!571450 (>= lt!719071 0)))

(declare-fun e!1192877 () Int)

(assert (=> d!571450 (= lt!719071 e!1192877)))

(declare-fun c!304614 () Bool)

(assert (=> d!571450 (= c!304614 ((_ is Nil!20693) (tail!2839 lt!719017)))))

(assert (=> d!571450 (= (size!16417 (tail!2839 lt!719017)) lt!719071)))

(declare-fun b!1869501 () Bool)

(assert (=> b!1869501 (= e!1192877 0)))

(declare-fun b!1869502 () Bool)

(assert (=> b!1869502 (= e!1192877 (+ 1 (size!16417 (t!172954 (tail!2839 lt!719017)))))))

(assert (= (and d!571450 c!304614) b!1869501))

(assert (= (and d!571450 (not c!304614)) b!1869502))

(assert (=> b!1869502 m!2295245))

(assert (=> b!1869229 d!571450))

(assert (=> b!1869229 d!571410))

(declare-fun d!571452 () Bool)

(assert (=> d!571452 (= (BigIntAbs!0 (ite c!304553 (cheight!7099 (left!16685 t!4595)) (csize!14007 (left!16685 t!4595)))) (ite (>= (ite c!304553 (cheight!7099 (left!16685 t!4595)) (csize!14007 (left!16685 t!4595))) 0) (ite c!304553 (cheight!7099 (left!16685 t!4595)) (csize!14007 (left!16685 t!4595))) (- (ite c!304553 (cheight!7099 (left!16685 t!4595)) (csize!14007 (left!16685 t!4595))))))))

(assert (=> bm!115937 d!571452))

(declare-fun b!1869503 () Bool)

(declare-fun res!836969 () Bool)

(declare-fun e!1192878 () Bool)

(assert (=> b!1869503 (=> (not res!836969) (not e!1192878))))

(assert (=> b!1869503 (= res!836969 (isBalanced!2189 (right!17015 (right!17015 t!4595))))))

(declare-fun b!1869504 () Bool)

(declare-fun res!836970 () Bool)

(assert (=> b!1869504 (=> (not res!836970) (not e!1192878))))

(assert (=> b!1869504 (= res!836970 (not (isEmpty!12927 (left!16685 (right!17015 t!4595)))))))

(declare-fun b!1869505 () Bool)

(declare-fun e!1192879 () Bool)

(assert (=> b!1869505 (= e!1192879 e!1192878)))

(declare-fun res!836968 () Bool)

(assert (=> b!1869505 (=> (not res!836968) (not e!1192878))))

(assert (=> b!1869505 (= res!836968 (<= (- 1) (- (height!1074 (left!16685 (right!17015 t!4595))) (height!1074 (right!17015 (right!17015 t!4595))))))))

(declare-fun b!1869506 () Bool)

(assert (=> b!1869506 (= e!1192878 (not (isEmpty!12927 (right!17015 (right!17015 t!4595)))))))

(declare-fun d!571454 () Bool)

(declare-fun res!836971 () Bool)

(assert (=> d!571454 (=> res!836971 e!1192879)))

(assert (=> d!571454 (= res!836971 (not ((_ is Node!6888) (right!17015 t!4595))))))

(assert (=> d!571454 (= (isBalanced!2189 (right!17015 t!4595)) e!1192879)))

(declare-fun b!1869507 () Bool)

(declare-fun res!836967 () Bool)

(assert (=> b!1869507 (=> (not res!836967) (not e!1192878))))

(assert (=> b!1869507 (= res!836967 (<= (- (height!1074 (left!16685 (right!17015 t!4595))) (height!1074 (right!17015 (right!17015 t!4595)))) 1))))

(declare-fun b!1869508 () Bool)

(declare-fun res!836966 () Bool)

(assert (=> b!1869508 (=> (not res!836966) (not e!1192878))))

(assert (=> b!1869508 (= res!836966 (isBalanced!2189 (left!16685 (right!17015 t!4595))))))

(assert (= (and d!571454 (not res!836971)) b!1869505))

(assert (= (and b!1869505 res!836968) b!1869507))

(assert (= (and b!1869507 res!836967) b!1869508))

(assert (= (and b!1869508 res!836966) b!1869503))

(assert (= (and b!1869503 res!836969) b!1869504))

(assert (= (and b!1869504 res!836970) b!1869506))

(declare-fun m!2295277 () Bool)

(assert (=> b!1869508 m!2295277))

(declare-fun m!2295279 () Bool)

(assert (=> b!1869503 m!2295279))

(declare-fun m!2295281 () Bool)

(assert (=> b!1869506 m!2295281))

(declare-fun m!2295283 () Bool)

(assert (=> b!1869504 m!2295283))

(assert (=> b!1869507 m!2295225))

(assert (=> b!1869507 m!2295227))

(assert (=> b!1869505 m!2295225))

(assert (=> b!1869505 m!2295227))

(assert (=> b!1869317 d!571454))

(declare-fun d!571456 () Bool)

(declare-fun res!836972 () Bool)

(declare-fun e!1192880 () Bool)

(assert (=> d!571456 (=> (not res!836972) (not e!1192880))))

(assert (=> d!571456 (= res!836972 (= (csize!14006 t!4595) (+ (size!16418 (left!16685 t!4595)) (size!16418 (right!17015 t!4595)))))))

(assert (=> d!571456 (= (inv!27442 t!4595) e!1192880)))

(declare-fun b!1869509 () Bool)

(declare-fun res!836973 () Bool)

(assert (=> b!1869509 (=> (not res!836973) (not e!1192880))))

(assert (=> b!1869509 (= res!836973 (and (not (= (left!16685 t!4595) Empty!6888)) (not (= (right!17015 t!4595) Empty!6888))))))

(declare-fun b!1869510 () Bool)

(declare-fun res!836974 () Bool)

(assert (=> b!1869510 (=> (not res!836974) (not e!1192880))))

(assert (=> b!1869510 (= res!836974 (= (cheight!7099 t!4595) (+ (max!0 (height!1074 (left!16685 t!4595)) (height!1074 (right!17015 t!4595))) 1)))))

(declare-fun b!1869511 () Bool)

(assert (=> b!1869511 (= e!1192880 (<= 0 (cheight!7099 t!4595)))))

(assert (= (and d!571456 res!836972) b!1869509))

(assert (= (and b!1869509 res!836973) b!1869510))

(assert (= (and b!1869510 res!836974) b!1869511))

(assert (=> d!571456 m!2294977))

(assert (=> d!571456 m!2295089))

(assert (=> b!1869510 m!2295023))

(assert (=> b!1869510 m!2295025))

(assert (=> b!1869510 m!2295023))

(assert (=> b!1869510 m!2295025))

(declare-fun m!2295285 () Bool)

(assert (=> b!1869510 m!2295285))

(assert (=> b!1869323 d!571456))

(assert (=> b!1869318 d!571334))

(declare-fun d!571458 () Bool)

(declare-fun c!304615 () Bool)

(assert (=> d!571458 (= c!304615 ((_ is Node!6888) (left!16685 (left!16685 t!4595))))))

(declare-fun e!1192881 () Bool)

(assert (=> d!571458 (= (inv!27440 (left!16685 (left!16685 t!4595))) e!1192881)))

(declare-fun b!1869512 () Bool)

(assert (=> b!1869512 (= e!1192881 (inv!27442 (left!16685 (left!16685 t!4595))))))

(declare-fun b!1869513 () Bool)

(declare-fun e!1192882 () Bool)

(assert (=> b!1869513 (= e!1192881 e!1192882)))

(declare-fun res!836975 () Bool)

(assert (=> b!1869513 (= res!836975 (not ((_ is Leaf!10100) (left!16685 (left!16685 t!4595)))))))

(assert (=> b!1869513 (=> res!836975 e!1192882)))

(declare-fun b!1869514 () Bool)

(assert (=> b!1869514 (= e!1192882 (inv!27443 (left!16685 (left!16685 t!4595))))))

(assert (= (and d!571458 c!304615) b!1869512))

(assert (= (and d!571458 (not c!304615)) b!1869513))

(assert (= (and b!1869513 (not res!836975)) b!1869514))

(declare-fun m!2295287 () Bool)

(assert (=> b!1869512 m!2295287))

(declare-fun m!2295289 () Bool)

(assert (=> b!1869514 m!2295289))

(assert (=> b!1869345 d!571458))

(declare-fun d!571460 () Bool)

(declare-fun c!304616 () Bool)

(assert (=> d!571460 (= c!304616 ((_ is Node!6888) (right!17015 (left!16685 t!4595))))))

(declare-fun e!1192883 () Bool)

(assert (=> d!571460 (= (inv!27440 (right!17015 (left!16685 t!4595))) e!1192883)))

(declare-fun b!1869515 () Bool)

(assert (=> b!1869515 (= e!1192883 (inv!27442 (right!17015 (left!16685 t!4595))))))

(declare-fun b!1869516 () Bool)

(declare-fun e!1192884 () Bool)

(assert (=> b!1869516 (= e!1192883 e!1192884)))

(declare-fun res!836976 () Bool)

(assert (=> b!1869516 (= res!836976 (not ((_ is Leaf!10100) (right!17015 (left!16685 t!4595)))))))

(assert (=> b!1869516 (=> res!836976 e!1192884)))

(declare-fun b!1869517 () Bool)

(assert (=> b!1869517 (= e!1192884 (inv!27443 (right!17015 (left!16685 t!4595))))))

(assert (= (and d!571460 c!304616) b!1869515))

(assert (= (and d!571460 (not c!304616)) b!1869516))

(assert (= (and b!1869516 (not res!836976)) b!1869517))

(declare-fun m!2295291 () Bool)

(assert (=> b!1869515 m!2295291))

(declare-fun m!2295293 () Bool)

(assert (=> b!1869517 m!2295293))

(assert (=> b!1869345 d!571460))

(assert (=> d!571298 d!571306))

(assert (=> d!571298 d!571308))

(declare-fun d!571462 () Bool)

(assert (=> d!571462 (= (tail!2839 (++!5616 lt!719017 lt!719015)) (++!5616 (tail!2839 lt!719017) lt!719015))))

(assert (=> d!571462 true))

(declare-fun _$73!130 () Unit!35311)

(assert (=> d!571462 (= (choose!11748 lt!719017 lt!719015) _$73!130)))

(declare-fun bs!411914 () Bool)

(assert (= bs!411914 d!571462))

(assert (=> bs!411914 m!2294837))

(assert (=> bs!411914 m!2294837))

(assert (=> bs!411914 m!2294839))

(assert (=> bs!411914 m!2294845))

(assert (=> bs!411914 m!2294845))

(assert (=> bs!411914 m!2294847))

(assert (=> d!571298 d!571462))

(declare-fun d!571464 () Bool)

(assert (=> d!571464 (= (isEmpty!12928 lt!719017) ((_ is Nil!20693) lt!719017))))

(assert (=> d!571298 d!571464))

(assert (=> d!571298 d!571320))

(assert (=> d!571298 d!571328))

(assert (=> b!1869319 d!571372))

(assert (=> b!1869319 d!571374))

(declare-fun d!571466 () Bool)

(assert (=> d!571466 (= (inv!27441 (xs!9770 (left!16685 t!4595))) (<= (size!16417 (innerList!6948 (xs!9770 (left!16685 t!4595)))) 2147483647))))

(declare-fun bs!411915 () Bool)

(assert (= bs!411915 d!571466))

(declare-fun m!2295295 () Bool)

(assert (=> bs!411915 m!2295295))

(assert (=> b!1869346 d!571466))

(declare-fun b!1869518 () Bool)

(declare-fun e!1192885 () Bool)

(declare-fun tp!531964 () Bool)

(assert (=> b!1869518 (= e!1192885 (and tp_is_empty!8693 tp!531964))))

(assert (=> b!1869333 (= tp!531936 e!1192885)))

(assert (= (and b!1869333 ((_ is Cons!20693) (t!172954 (innerList!6948 (xs!9770 t!4595))))) b!1869518))

(declare-fun b!1869519 () Bool)

(declare-fun e!1192886 () Bool)

(declare-fun tp!531965 () Bool)

(assert (=> b!1869519 (= e!1192886 (and tp_is_empty!8693 tp!531965))))

(assert (=> b!1869347 (= tp!531943 e!1192886)))

(assert (= (and b!1869347 ((_ is Cons!20693) (innerList!6948 (xs!9770 (left!16685 t!4595))))) b!1869519))

(declare-fun tp!531967 () Bool)

(declare-fun e!1192887 () Bool)

(declare-fun tp!531968 () Bool)

(declare-fun b!1869520 () Bool)

(assert (=> b!1869520 (= e!1192887 (and (inv!27440 (left!16685 (left!16685 (right!17015 t!4595)))) tp!531968 (inv!27440 (right!17015 (left!16685 (right!17015 t!4595)))) tp!531967))))

(declare-fun b!1869522 () Bool)

(declare-fun e!1192888 () Bool)

(declare-fun tp!531966 () Bool)

(assert (=> b!1869522 (= e!1192888 tp!531966)))

(declare-fun b!1869521 () Bool)

(assert (=> b!1869521 (= e!1192887 (and (inv!27441 (xs!9770 (left!16685 (right!17015 t!4595)))) e!1192888))))

(assert (=> b!1869348 (= tp!531948 (and (inv!27440 (left!16685 (right!17015 t!4595))) e!1192887))))

(assert (= (and b!1869348 ((_ is Node!6888) (left!16685 (right!17015 t!4595)))) b!1869520))

(assert (= b!1869521 b!1869522))

(assert (= (and b!1869348 ((_ is Leaf!10100) (left!16685 (right!17015 t!4595)))) b!1869521))

(declare-fun m!2295297 () Bool)

(assert (=> b!1869520 m!2295297))

(declare-fun m!2295299 () Bool)

(assert (=> b!1869520 m!2295299))

(declare-fun m!2295301 () Bool)

(assert (=> b!1869521 m!2295301))

(assert (=> b!1869348 m!2295051))

(declare-fun e!1192889 () Bool)

(declare-fun b!1869523 () Bool)

(declare-fun tp!531970 () Bool)

(declare-fun tp!531971 () Bool)

(assert (=> b!1869523 (= e!1192889 (and (inv!27440 (left!16685 (right!17015 (right!17015 t!4595)))) tp!531971 (inv!27440 (right!17015 (right!17015 (right!17015 t!4595)))) tp!531970))))

(declare-fun b!1869525 () Bool)

(declare-fun e!1192890 () Bool)

(declare-fun tp!531969 () Bool)

(assert (=> b!1869525 (= e!1192890 tp!531969)))

(declare-fun b!1869524 () Bool)

(assert (=> b!1869524 (= e!1192889 (and (inv!27441 (xs!9770 (right!17015 (right!17015 t!4595)))) e!1192890))))

(assert (=> b!1869348 (= tp!531947 (and (inv!27440 (right!17015 (right!17015 t!4595))) e!1192889))))

(assert (= (and b!1869348 ((_ is Node!6888) (right!17015 (right!17015 t!4595)))) b!1869523))

(assert (= b!1869524 b!1869525))

(assert (= (and b!1869348 ((_ is Leaf!10100) (right!17015 (right!17015 t!4595)))) b!1869524))

(declare-fun m!2295303 () Bool)

(assert (=> b!1869523 m!2295303))

(declare-fun m!2295305 () Bool)

(assert (=> b!1869523 m!2295305))

(declare-fun m!2295307 () Bool)

(assert (=> b!1869524 m!2295307))

(assert (=> b!1869348 m!2295053))

(declare-fun tp!531973 () Bool)

(declare-fun e!1192891 () Bool)

(declare-fun tp!531974 () Bool)

(declare-fun b!1869526 () Bool)

(assert (=> b!1869526 (= e!1192891 (and (inv!27440 (left!16685 (left!16685 (left!16685 t!4595)))) tp!531974 (inv!27440 (right!17015 (left!16685 (left!16685 t!4595)))) tp!531973))))

(declare-fun b!1869528 () Bool)

(declare-fun e!1192892 () Bool)

(declare-fun tp!531972 () Bool)

(assert (=> b!1869528 (= e!1192892 tp!531972)))

(declare-fun b!1869527 () Bool)

(assert (=> b!1869527 (= e!1192891 (and (inv!27441 (xs!9770 (left!16685 (left!16685 t!4595)))) e!1192892))))

(assert (=> b!1869345 (= tp!531945 (and (inv!27440 (left!16685 (left!16685 t!4595))) e!1192891))))

(assert (= (and b!1869345 ((_ is Node!6888) (left!16685 (left!16685 t!4595)))) b!1869526))

(assert (= b!1869527 b!1869528))

(assert (= (and b!1869345 ((_ is Leaf!10100) (left!16685 (left!16685 t!4595)))) b!1869527))

(declare-fun m!2295309 () Bool)

(assert (=> b!1869526 m!2295309))

(declare-fun m!2295311 () Bool)

(assert (=> b!1869526 m!2295311))

(declare-fun m!2295313 () Bool)

(assert (=> b!1869527 m!2295313))

(assert (=> b!1869345 m!2295045))

(declare-fun tp!531977 () Bool)

(declare-fun e!1192893 () Bool)

(declare-fun tp!531976 () Bool)

(declare-fun b!1869529 () Bool)

(assert (=> b!1869529 (= e!1192893 (and (inv!27440 (left!16685 (right!17015 (left!16685 t!4595)))) tp!531977 (inv!27440 (right!17015 (right!17015 (left!16685 t!4595)))) tp!531976))))

(declare-fun b!1869531 () Bool)

(declare-fun e!1192894 () Bool)

(declare-fun tp!531975 () Bool)

(assert (=> b!1869531 (= e!1192894 tp!531975)))

(declare-fun b!1869530 () Bool)

(assert (=> b!1869530 (= e!1192893 (and (inv!27441 (xs!9770 (right!17015 (left!16685 t!4595)))) e!1192894))))

(assert (=> b!1869345 (= tp!531944 (and (inv!27440 (right!17015 (left!16685 t!4595))) e!1192893))))

(assert (= (and b!1869345 ((_ is Node!6888) (right!17015 (left!16685 t!4595)))) b!1869529))

(assert (= b!1869530 b!1869531))

(assert (= (and b!1869345 ((_ is Leaf!10100) (right!17015 (left!16685 t!4595)))) b!1869530))

(declare-fun m!2295315 () Bool)

(assert (=> b!1869529 m!2295315))

(declare-fun m!2295317 () Bool)

(assert (=> b!1869529 m!2295317))

(declare-fun m!2295319 () Bool)

(assert (=> b!1869530 m!2295319))

(assert (=> b!1869345 m!2295047))

(declare-fun b!1869532 () Bool)

(declare-fun e!1192895 () Bool)

(declare-fun tp!531978 () Bool)

(assert (=> b!1869532 (= e!1192895 (and tp_is_empty!8693 tp!531978))))

(assert (=> b!1869350 (= tp!531946 e!1192895)))

(assert (= (and b!1869350 ((_ is Cons!20693) (innerList!6948 (xs!9770 (right!17015 t!4595))))) b!1869532))

(check-sat (not b!1869433) (not b!1869406) (not b!1869460) (not d!571466) (not b!1869490) (not d!571436) (not b!1869419) (not b!1869448) (not b!1869468) (not d!571428) (not b!1869481) (not b!1869450) (not d!571434) (not b!1869395) (not b!1869520) (not d!571402) (not b!1869488) (not b!1869452) (not bm!115940) (not b!1869424) (not b!1869412) (not d!571360) (not b!1869414) (not b!1869464) (not b!1869528) (not d!571422) (not b!1869510) (not d!571456) (not b!1869504) (not b!1869401) (not d!571430) (not b!1869503) (not b!1869420) (not b!1869473) (not b!1869524) (not b!1869493) (not b!1869531) (not d!571390) (not b!1869434) (not b!1869494) (not b!1869475) (not b!1869527) (not b!1869512) (not b!1869507) (not d!571364) (not b!1869418) (not b!1869530) (not b!1869523) (not b!1869508) (not b!1869521) (not b!1869519) (not b!1869417) (not b!1869399) (not d!571424) (not b!1869437) (not b!1869441) (not b!1869429) (not b!1869404) (not b!1869480) (not b!1869484) (not d!571462) (not b!1869522) (not b!1869514) (not b!1869477) (not d!571412) (not b!1869497) (not d!571362) (not b!1869416) (not b!1869421) (not d!571370) (not b!1869440) (not b!1869526) (not b!1869485) tp_is_empty!8693 (not b!1869502) (not b!1869500) (not b!1869505) (not b!1869472) (not b!1869403) (not b!1869438) (not b!1869469) (not bm!115941) (not b!1869425) (not b!1869506) (not b!1869400) (not b!1869345) (not bm!115939) (not b!1869529) (not b!1869532) (not d!571392) (not b!1869498) (not b!1869525) (not b!1869515) (not b!1869348) (not b!1869517) (not b!1869422) (not b!1869518) (not b!1869463) (not d!571416) (not b!1869430))
(check-sat)
