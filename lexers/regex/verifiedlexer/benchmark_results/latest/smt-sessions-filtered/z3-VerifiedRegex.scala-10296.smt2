; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535758 () Bool)

(assert start!535758)

(declare-fun b!5082973 () Bool)

(declare-fun e!3170457 () Bool)

(declare-fun e!3170458 () Bool)

(assert (=> b!5082973 (= e!3170457 e!3170458)))

(declare-fun res!2163877 () Bool)

(assert (=> b!5082973 (=> (not res!2163877) (not e!3170458))))

(declare-fun lt!2091269 () Int)

(declare-datatypes ((T!105258 0))(
  ( (T!105259 (val!23668 Int)) )
))
(declare-datatypes ((List!58578 0))(
  ( (Nil!58454) (Cons!58454 (h!64902 T!105258) (t!371405 List!58578)) )
))
(declare-datatypes ((IArray!31229 0))(
  ( (IArray!31230 (innerList!15672 List!58578)) )
))
(declare-datatypes ((Conc!15584 0))(
  ( (Node!15584 (left!42846 Conc!15584) (right!43176 Conc!15584) (csize!31398 Int) (cheight!15795 Int)) (Leaf!25881 (xs!18962 IArray!31229) (csize!31399 Int)) (Empty!15584) )
))
(declare-fun ys!41 () Conc!15584)

(get-info :version)

(assert (=> b!5082973 (= res!2163877 (and (or (> (- 1) lt!2091269) (> lt!2091269 1)) (>= lt!2091269 (- 1)) ((_ is Node!15584) ys!41)))))

(declare-fun xs!286 () Conc!15584)

(declare-fun height!2161 (Conc!15584) Int)

(assert (=> b!5082973 (= lt!2091269 (- (height!2161 ys!41) (height!2161 xs!286)))))

(declare-fun b!5082974 () Bool)

(declare-fun e!3170459 () Bool)

(declare-fun tp!1417307 () Bool)

(assert (=> b!5082974 (= e!3170459 tp!1417307)))

(declare-fun b!5082975 () Bool)

(declare-fun e!3170461 () Bool)

(declare-fun tp!1417303 () Bool)

(assert (=> b!5082975 (= e!3170461 tp!1417303)))

(declare-fun b!5082976 () Bool)

(declare-fun tp!1417304 () Bool)

(declare-fun tp!1417305 () Bool)

(declare-fun e!3170462 () Bool)

(declare-fun inv!77665 (Conc!15584) Bool)

(assert (=> b!5082976 (= e!3170462 (and (inv!77665 (left!42846 xs!286)) tp!1417304 (inv!77665 (right!43176 xs!286)) tp!1417305))))

(declare-fun res!2163880 () Bool)

(assert (=> start!535758 (=> (not res!2163880) (not e!3170457))))

(declare-fun isBalanced!4446 (Conc!15584) Bool)

(assert (=> start!535758 (= res!2163880 (isBalanced!4446 xs!286))))

(assert (=> start!535758 e!3170457))

(assert (=> start!535758 (and (inv!77665 xs!286) e!3170462)))

(declare-fun e!3170460 () Bool)

(assert (=> start!535758 (and (inv!77665 ys!41) e!3170460)))

(declare-fun b!5082977 () Bool)

(declare-fun tp!1417306 () Bool)

(declare-fun tp!1417302 () Bool)

(assert (=> b!5082977 (= e!3170460 (and (inv!77665 (left!42846 ys!41)) tp!1417302 (inv!77665 (right!43176 ys!41)) tp!1417306))))

(declare-fun b!5082978 () Bool)

(declare-fun res!2163881 () Bool)

(assert (=> b!5082978 (=> (not res!2163881) (not e!3170458))))

(assert (=> b!5082978 (= res!2163881 (< (height!2161 (right!43176 ys!41)) (height!2161 (left!42846 ys!41))))))

(declare-fun b!5082979 () Bool)

(declare-fun inv!77666 (IArray!31229) Bool)

(assert (=> b!5082979 (= e!3170460 (and (inv!77666 (xs!18962 ys!41)) e!3170461))))

(declare-fun b!5082980 () Bool)

(declare-fun res!2163879 () Bool)

(assert (=> b!5082980 (=> (not res!2163879) (not e!3170457))))

(assert (=> b!5082980 (= res!2163879 (and (not (= xs!286 Empty!15584)) (not (= ys!41 Empty!15584))))))

(declare-fun b!5082981 () Bool)

(assert (=> b!5082981 (= e!3170462 (and (inv!77666 (xs!18962 xs!286)) e!3170459))))

(declare-fun b!5082982 () Bool)

(assert (=> b!5082982 (= e!3170458 (not ((_ is Node!15584) (left!42846 ys!41))))))

(declare-fun b!5082983 () Bool)

(declare-fun res!2163878 () Bool)

(assert (=> b!5082983 (=> (not res!2163878) (not e!3170457))))

(assert (=> b!5082983 (= res!2163878 (isBalanced!4446 ys!41))))

(assert (= (and start!535758 res!2163880) b!5082983))

(assert (= (and b!5082983 res!2163878) b!5082980))

(assert (= (and b!5082980 res!2163879) b!5082973))

(assert (= (and b!5082973 res!2163877) b!5082978))

(assert (= (and b!5082978 res!2163881) b!5082982))

(assert (= (and start!535758 ((_ is Node!15584) xs!286)) b!5082976))

(assert (= b!5082981 b!5082974))

(assert (= (and start!535758 ((_ is Leaf!25881) xs!286)) b!5082981))

(assert (= (and start!535758 ((_ is Node!15584) ys!41)) b!5082977))

(assert (= b!5082979 b!5082975))

(assert (= (and start!535758 ((_ is Leaf!25881) ys!41)) b!5082979))

(declare-fun m!6137826 () Bool)

(assert (=> b!5082976 m!6137826))

(declare-fun m!6137828 () Bool)

(assert (=> b!5082976 m!6137828))

(declare-fun m!6137830 () Bool)

(assert (=> b!5082977 m!6137830))

(declare-fun m!6137832 () Bool)

(assert (=> b!5082977 m!6137832))

(declare-fun m!6137834 () Bool)

(assert (=> b!5082979 m!6137834))

(declare-fun m!6137836 () Bool)

(assert (=> b!5082981 m!6137836))

(declare-fun m!6137838 () Bool)

(assert (=> b!5082978 m!6137838))

(declare-fun m!6137840 () Bool)

(assert (=> b!5082978 m!6137840))

(declare-fun m!6137842 () Bool)

(assert (=> start!535758 m!6137842))

(declare-fun m!6137844 () Bool)

(assert (=> start!535758 m!6137844))

(declare-fun m!6137846 () Bool)

(assert (=> start!535758 m!6137846))

(declare-fun m!6137848 () Bool)

(assert (=> b!5082973 m!6137848))

(declare-fun m!6137850 () Bool)

(assert (=> b!5082973 m!6137850))

(declare-fun m!6137852 () Bool)

(assert (=> b!5082983 m!6137852))

(check-sat (not b!5082976) (not start!535758) (not b!5082973) (not b!5082977) (not b!5082979) (not b!5082981) (not b!5082978) (not b!5082974) (not b!5082983) (not b!5082975))
(check-sat)
(get-model)

(declare-fun d!1644071 () Bool)

(declare-fun size!39114 (List!58578) Int)

(assert (=> d!1644071 (= (inv!77666 (xs!18962 ys!41)) (<= (size!39114 (innerList!15672 (xs!18962 ys!41))) 2147483647))))

(declare-fun bs!1190744 () Bool)

(assert (= bs!1190744 d!1644071))

(declare-fun m!6137854 () Bool)

(assert (=> bs!1190744 m!6137854))

(assert (=> b!5082979 d!1644071))

(declare-fun d!1644081 () Bool)

(assert (=> d!1644081 (= (height!2161 ys!41) (ite ((_ is Empty!15584) ys!41) 0 (ite ((_ is Leaf!25881) ys!41) 1 (cheight!15795 ys!41))))))

(assert (=> b!5082973 d!1644081))

(declare-fun d!1644083 () Bool)

(assert (=> d!1644083 (= (height!2161 xs!286) (ite ((_ is Empty!15584) xs!286) 0 (ite ((_ is Leaf!25881) xs!286) 1 (cheight!15795 xs!286))))))

(assert (=> b!5082973 d!1644083))

(declare-fun b!5083020 () Bool)

(declare-fun e!3170476 () Bool)

(declare-fun e!3170475 () Bool)

(assert (=> b!5083020 (= e!3170476 e!3170475)))

(declare-fun res!2163920 () Bool)

(assert (=> b!5083020 (=> (not res!2163920) (not e!3170475))))

(assert (=> b!5083020 (= res!2163920 (<= (- 1) (- (height!2161 (left!42846 ys!41)) (height!2161 (right!43176 ys!41)))))))

(declare-fun b!5083021 () Bool)

(declare-fun res!2163918 () Bool)

(assert (=> b!5083021 (=> (not res!2163918) (not e!3170475))))

(declare-fun isEmpty!31670 (Conc!15584) Bool)

(assert (=> b!5083021 (= res!2163918 (not (isEmpty!31670 (left!42846 ys!41))))))

(declare-fun b!5083022 () Bool)

(declare-fun res!2163922 () Bool)

(assert (=> b!5083022 (=> (not res!2163922) (not e!3170475))))

(assert (=> b!5083022 (= res!2163922 (isBalanced!4446 (right!43176 ys!41)))))

(declare-fun b!5083023 () Bool)

(declare-fun res!2163923 () Bool)

(assert (=> b!5083023 (=> (not res!2163923) (not e!3170475))))

(assert (=> b!5083023 (= res!2163923 (<= (- (height!2161 (left!42846 ys!41)) (height!2161 (right!43176 ys!41))) 1))))

(declare-fun b!5083024 () Bool)

(assert (=> b!5083024 (= e!3170475 (not (isEmpty!31670 (right!43176 ys!41))))))

(declare-fun b!5083025 () Bool)

(declare-fun res!2163921 () Bool)

(assert (=> b!5083025 (=> (not res!2163921) (not e!3170475))))

(assert (=> b!5083025 (= res!2163921 (isBalanced!4446 (left!42846 ys!41)))))

(declare-fun d!1644085 () Bool)

(declare-fun res!2163919 () Bool)

(assert (=> d!1644085 (=> res!2163919 e!3170476)))

(assert (=> d!1644085 (= res!2163919 (not ((_ is Node!15584) ys!41)))))

(assert (=> d!1644085 (= (isBalanced!4446 ys!41) e!3170476)))

(assert (= (and d!1644085 (not res!2163919)) b!5083020))

(assert (= (and b!5083020 res!2163920) b!5083023))

(assert (= (and b!5083023 res!2163923) b!5083025))

(assert (= (and b!5083025 res!2163921) b!5083022))

(assert (= (and b!5083022 res!2163922) b!5083021))

(assert (= (and b!5083021 res!2163918) b!5083024))

(declare-fun m!6137876 () Bool)

(assert (=> b!5083021 m!6137876))

(assert (=> b!5083023 m!6137840))

(assert (=> b!5083023 m!6137838))

(declare-fun m!6137878 () Bool)

(assert (=> b!5083022 m!6137878))

(declare-fun m!6137880 () Bool)

(assert (=> b!5083025 m!6137880))

(assert (=> b!5083020 m!6137840))

(assert (=> b!5083020 m!6137838))

(declare-fun m!6137882 () Bool)

(assert (=> b!5083024 m!6137882))

(assert (=> b!5082983 d!1644085))

(declare-fun d!1644091 () Bool)

(assert (=> d!1644091 (= (height!2161 (right!43176 ys!41)) (ite ((_ is Empty!15584) (right!43176 ys!41)) 0 (ite ((_ is Leaf!25881) (right!43176 ys!41)) 1 (cheight!15795 (right!43176 ys!41)))))))

(assert (=> b!5082978 d!1644091))

(declare-fun d!1644093 () Bool)

(assert (=> d!1644093 (= (height!2161 (left!42846 ys!41)) (ite ((_ is Empty!15584) (left!42846 ys!41)) 0 (ite ((_ is Leaf!25881) (left!42846 ys!41)) 1 (cheight!15795 (left!42846 ys!41)))))))

(assert (=> b!5082978 d!1644093))

(declare-fun d!1644095 () Bool)

(declare-fun c!873338 () Bool)

(assert (=> d!1644095 (= c!873338 ((_ is Node!15584) (left!42846 ys!41)))))

(declare-fun e!3170489 () Bool)

(assert (=> d!1644095 (= (inv!77665 (left!42846 ys!41)) e!3170489)))

(declare-fun b!5083044 () Bool)

(declare-fun inv!77667 (Conc!15584) Bool)

(assert (=> b!5083044 (= e!3170489 (inv!77667 (left!42846 ys!41)))))

(declare-fun b!5083045 () Bool)

(declare-fun e!3170490 () Bool)

(assert (=> b!5083045 (= e!3170489 e!3170490)))

(declare-fun res!2163930 () Bool)

(assert (=> b!5083045 (= res!2163930 (not ((_ is Leaf!25881) (left!42846 ys!41))))))

(assert (=> b!5083045 (=> res!2163930 e!3170490)))

(declare-fun b!5083046 () Bool)

(declare-fun inv!77668 (Conc!15584) Bool)

(assert (=> b!5083046 (= e!3170490 (inv!77668 (left!42846 ys!41)))))

(assert (= (and d!1644095 c!873338) b!5083044))

(assert (= (and d!1644095 (not c!873338)) b!5083045))

(assert (= (and b!5083045 (not res!2163930)) b!5083046))

(declare-fun m!6137892 () Bool)

(assert (=> b!5083044 m!6137892))

(declare-fun m!6137894 () Bool)

(assert (=> b!5083046 m!6137894))

(assert (=> b!5082977 d!1644095))

(declare-fun d!1644101 () Bool)

(declare-fun c!873339 () Bool)

(assert (=> d!1644101 (= c!873339 ((_ is Node!15584) (right!43176 ys!41)))))

(declare-fun e!3170491 () Bool)

(assert (=> d!1644101 (= (inv!77665 (right!43176 ys!41)) e!3170491)))

(declare-fun b!5083047 () Bool)

(assert (=> b!5083047 (= e!3170491 (inv!77667 (right!43176 ys!41)))))

(declare-fun b!5083048 () Bool)

(declare-fun e!3170492 () Bool)

(assert (=> b!5083048 (= e!3170491 e!3170492)))

(declare-fun res!2163931 () Bool)

(assert (=> b!5083048 (= res!2163931 (not ((_ is Leaf!25881) (right!43176 ys!41))))))

(assert (=> b!5083048 (=> res!2163931 e!3170492)))

(declare-fun b!5083049 () Bool)

(assert (=> b!5083049 (= e!3170492 (inv!77668 (right!43176 ys!41)))))

(assert (= (and d!1644101 c!873339) b!5083047))

(assert (= (and d!1644101 (not c!873339)) b!5083048))

(assert (= (and b!5083048 (not res!2163931)) b!5083049))

(declare-fun m!6137896 () Bool)

(assert (=> b!5083047 m!6137896))

(declare-fun m!6137898 () Bool)

(assert (=> b!5083049 m!6137898))

(assert (=> b!5082977 d!1644101))

(declare-fun b!5083050 () Bool)

(declare-fun e!3170494 () Bool)

(declare-fun e!3170493 () Bool)

(assert (=> b!5083050 (= e!3170494 e!3170493)))

(declare-fun res!2163934 () Bool)

(assert (=> b!5083050 (=> (not res!2163934) (not e!3170493))))

(assert (=> b!5083050 (= res!2163934 (<= (- 1) (- (height!2161 (left!42846 xs!286)) (height!2161 (right!43176 xs!286)))))))

(declare-fun b!5083051 () Bool)

(declare-fun res!2163932 () Bool)

(assert (=> b!5083051 (=> (not res!2163932) (not e!3170493))))

(assert (=> b!5083051 (= res!2163932 (not (isEmpty!31670 (left!42846 xs!286))))))

(declare-fun b!5083052 () Bool)

(declare-fun res!2163936 () Bool)

(assert (=> b!5083052 (=> (not res!2163936) (not e!3170493))))

(assert (=> b!5083052 (= res!2163936 (isBalanced!4446 (right!43176 xs!286)))))

(declare-fun b!5083053 () Bool)

(declare-fun res!2163937 () Bool)

(assert (=> b!5083053 (=> (not res!2163937) (not e!3170493))))

(assert (=> b!5083053 (= res!2163937 (<= (- (height!2161 (left!42846 xs!286)) (height!2161 (right!43176 xs!286))) 1))))

(declare-fun b!5083054 () Bool)

(assert (=> b!5083054 (= e!3170493 (not (isEmpty!31670 (right!43176 xs!286))))))

(declare-fun b!5083055 () Bool)

(declare-fun res!2163935 () Bool)

(assert (=> b!5083055 (=> (not res!2163935) (not e!3170493))))

(assert (=> b!5083055 (= res!2163935 (isBalanced!4446 (left!42846 xs!286)))))

(declare-fun d!1644103 () Bool)

(declare-fun res!2163933 () Bool)

(assert (=> d!1644103 (=> res!2163933 e!3170494)))

(assert (=> d!1644103 (= res!2163933 (not ((_ is Node!15584) xs!286)))))

(assert (=> d!1644103 (= (isBalanced!4446 xs!286) e!3170494)))

(assert (= (and d!1644103 (not res!2163933)) b!5083050))

(assert (= (and b!5083050 res!2163934) b!5083053))

(assert (= (and b!5083053 res!2163937) b!5083055))

(assert (= (and b!5083055 res!2163935) b!5083052))

(assert (= (and b!5083052 res!2163936) b!5083051))

(assert (= (and b!5083051 res!2163932) b!5083054))

(declare-fun m!6137906 () Bool)

(assert (=> b!5083051 m!6137906))

(declare-fun m!6137908 () Bool)

(assert (=> b!5083053 m!6137908))

(declare-fun m!6137910 () Bool)

(assert (=> b!5083053 m!6137910))

(declare-fun m!6137912 () Bool)

(assert (=> b!5083052 m!6137912))

(declare-fun m!6137914 () Bool)

(assert (=> b!5083055 m!6137914))

(assert (=> b!5083050 m!6137908))

(assert (=> b!5083050 m!6137910))

(declare-fun m!6137916 () Bool)

(assert (=> b!5083054 m!6137916))

(assert (=> start!535758 d!1644103))

(declare-fun d!1644109 () Bool)

(declare-fun c!873342 () Bool)

(assert (=> d!1644109 (= c!873342 ((_ is Node!15584) xs!286))))

(declare-fun e!3170499 () Bool)

(assert (=> d!1644109 (= (inv!77665 xs!286) e!3170499)))

(declare-fun b!5083062 () Bool)

(assert (=> b!5083062 (= e!3170499 (inv!77667 xs!286))))

(declare-fun b!5083063 () Bool)

(declare-fun e!3170500 () Bool)

(assert (=> b!5083063 (= e!3170499 e!3170500)))

(declare-fun res!2163940 () Bool)

(assert (=> b!5083063 (= res!2163940 (not ((_ is Leaf!25881) xs!286)))))

(assert (=> b!5083063 (=> res!2163940 e!3170500)))

(declare-fun b!5083064 () Bool)

(assert (=> b!5083064 (= e!3170500 (inv!77668 xs!286))))

(assert (= (and d!1644109 c!873342) b!5083062))

(assert (= (and d!1644109 (not c!873342)) b!5083063))

(assert (= (and b!5083063 (not res!2163940)) b!5083064))

(declare-fun m!6137922 () Bool)

(assert (=> b!5083062 m!6137922))

(declare-fun m!6137924 () Bool)

(assert (=> b!5083064 m!6137924))

(assert (=> start!535758 d!1644109))

(declare-fun d!1644113 () Bool)

(declare-fun c!873344 () Bool)

(assert (=> d!1644113 (= c!873344 ((_ is Node!15584) ys!41))))

(declare-fun e!3170503 () Bool)

(assert (=> d!1644113 (= (inv!77665 ys!41) e!3170503)))

(declare-fun b!5083068 () Bool)

(assert (=> b!5083068 (= e!3170503 (inv!77667 ys!41))))

(declare-fun b!5083069 () Bool)

(declare-fun e!3170504 () Bool)

(assert (=> b!5083069 (= e!3170503 e!3170504)))

(declare-fun res!2163942 () Bool)

(assert (=> b!5083069 (= res!2163942 (not ((_ is Leaf!25881) ys!41)))))

(assert (=> b!5083069 (=> res!2163942 e!3170504)))

(declare-fun b!5083070 () Bool)

(assert (=> b!5083070 (= e!3170504 (inv!77668 ys!41))))

(assert (= (and d!1644113 c!873344) b!5083068))

(assert (= (and d!1644113 (not c!873344)) b!5083069))

(assert (= (and b!5083069 (not res!2163942)) b!5083070))

(declare-fun m!6137930 () Bool)

(assert (=> b!5083068 m!6137930))

(declare-fun m!6137932 () Bool)

(assert (=> b!5083070 m!6137932))

(assert (=> start!535758 d!1644113))

(declare-fun d!1644117 () Bool)

(assert (=> d!1644117 (= (inv!77666 (xs!18962 xs!286)) (<= (size!39114 (innerList!15672 (xs!18962 xs!286))) 2147483647))))

(declare-fun bs!1190746 () Bool)

(assert (= bs!1190746 d!1644117))

(declare-fun m!6137938 () Bool)

(assert (=> bs!1190746 m!6137938))

(assert (=> b!5082981 d!1644117))

(declare-fun d!1644121 () Bool)

(declare-fun c!873346 () Bool)

(assert (=> d!1644121 (= c!873346 ((_ is Node!15584) (left!42846 xs!286)))))

(declare-fun e!3170507 () Bool)

(assert (=> d!1644121 (= (inv!77665 (left!42846 xs!286)) e!3170507)))

(declare-fun b!5083074 () Bool)

(assert (=> b!5083074 (= e!3170507 (inv!77667 (left!42846 xs!286)))))

(declare-fun b!5083075 () Bool)

(declare-fun e!3170508 () Bool)

(assert (=> b!5083075 (= e!3170507 e!3170508)))

(declare-fun res!2163944 () Bool)

(assert (=> b!5083075 (= res!2163944 (not ((_ is Leaf!25881) (left!42846 xs!286))))))

(assert (=> b!5083075 (=> res!2163944 e!3170508)))

(declare-fun b!5083076 () Bool)

(assert (=> b!5083076 (= e!3170508 (inv!77668 (left!42846 xs!286)))))

(assert (= (and d!1644121 c!873346) b!5083074))

(assert (= (and d!1644121 (not c!873346)) b!5083075))

(assert (= (and b!5083075 (not res!2163944)) b!5083076))

(declare-fun m!6137942 () Bool)

(assert (=> b!5083074 m!6137942))

(declare-fun m!6137944 () Bool)

(assert (=> b!5083076 m!6137944))

(assert (=> b!5082976 d!1644121))

(declare-fun d!1644123 () Bool)

(declare-fun c!873347 () Bool)

(assert (=> d!1644123 (= c!873347 ((_ is Node!15584) (right!43176 xs!286)))))

(declare-fun e!3170511 () Bool)

(assert (=> d!1644123 (= (inv!77665 (right!43176 xs!286)) e!3170511)))

(declare-fun b!5083081 () Bool)

(assert (=> b!5083081 (= e!3170511 (inv!77667 (right!43176 xs!286)))))

(declare-fun b!5083082 () Bool)

(declare-fun e!3170512 () Bool)

(assert (=> b!5083082 (= e!3170511 e!3170512)))

(declare-fun res!2163945 () Bool)

(assert (=> b!5083082 (= res!2163945 (not ((_ is Leaf!25881) (right!43176 xs!286))))))

(assert (=> b!5083082 (=> res!2163945 e!3170512)))

(declare-fun b!5083083 () Bool)

(assert (=> b!5083083 (= e!3170512 (inv!77668 (right!43176 xs!286)))))

(assert (= (and d!1644123 c!873347) b!5083081))

(assert (= (and d!1644123 (not c!873347)) b!5083082))

(assert (= (and b!5083082 (not res!2163945)) b!5083083))

(declare-fun m!6137946 () Bool)

(assert (=> b!5083081 m!6137946))

(declare-fun m!6137948 () Bool)

(assert (=> b!5083083 m!6137948))

(assert (=> b!5082976 d!1644123))

(declare-fun b!5083097 () Bool)

(declare-fun e!3170520 () Bool)

(declare-fun tp_is_empty!37091 () Bool)

(declare-fun tp!1417319 () Bool)

(assert (=> b!5083097 (= e!3170520 (and tp_is_empty!37091 tp!1417319))))

(assert (=> b!5082974 (= tp!1417307 e!3170520)))

(assert (= (and b!5082974 ((_ is Cons!58454) (innerList!15672 (xs!18962 xs!286)))) b!5083097))

(declare-fun tp!1417332 () Bool)

(declare-fun b!5083112 () Bool)

(declare-fun tp!1417333 () Bool)

(declare-fun e!3170529 () Bool)

(assert (=> b!5083112 (= e!3170529 (and (inv!77665 (left!42846 (left!42846 ys!41))) tp!1417333 (inv!77665 (right!43176 (left!42846 ys!41))) tp!1417332))))

(declare-fun b!5083114 () Bool)

(declare-fun e!3170530 () Bool)

(declare-fun tp!1417334 () Bool)

(assert (=> b!5083114 (= e!3170530 tp!1417334)))

(declare-fun b!5083113 () Bool)

(assert (=> b!5083113 (= e!3170529 (and (inv!77666 (xs!18962 (left!42846 ys!41))) e!3170530))))

(assert (=> b!5082977 (= tp!1417302 (and (inv!77665 (left!42846 ys!41)) e!3170529))))

(assert (= (and b!5082977 ((_ is Node!15584) (left!42846 ys!41))) b!5083112))

(assert (= b!5083113 b!5083114))

(assert (= (and b!5082977 ((_ is Leaf!25881) (left!42846 ys!41))) b!5083113))

(declare-fun m!6137962 () Bool)

(assert (=> b!5083112 m!6137962))

(declare-fun m!6137964 () Bool)

(assert (=> b!5083112 m!6137964))

(declare-fun m!6137966 () Bool)

(assert (=> b!5083113 m!6137966))

(assert (=> b!5082977 m!6137830))

(declare-fun tp!1417336 () Bool)

(declare-fun tp!1417337 () Bool)

(declare-fun e!3170532 () Bool)

(declare-fun b!5083116 () Bool)

(assert (=> b!5083116 (= e!3170532 (and (inv!77665 (left!42846 (right!43176 ys!41))) tp!1417337 (inv!77665 (right!43176 (right!43176 ys!41))) tp!1417336))))

(declare-fun b!5083118 () Bool)

(declare-fun e!3170533 () Bool)

(declare-fun tp!1417338 () Bool)

(assert (=> b!5083118 (= e!3170533 tp!1417338)))

(declare-fun b!5083117 () Bool)

(assert (=> b!5083117 (= e!3170532 (and (inv!77666 (xs!18962 (right!43176 ys!41))) e!3170533))))

(assert (=> b!5082977 (= tp!1417306 (and (inv!77665 (right!43176 ys!41)) e!3170532))))

(assert (= (and b!5082977 ((_ is Node!15584) (right!43176 ys!41))) b!5083116))

(assert (= b!5083117 b!5083118))

(assert (= (and b!5082977 ((_ is Leaf!25881) (right!43176 ys!41))) b!5083117))

(declare-fun m!6137968 () Bool)

(assert (=> b!5083116 m!6137968))

(declare-fun m!6137972 () Bool)

(assert (=> b!5083116 m!6137972))

(declare-fun m!6137976 () Bool)

(assert (=> b!5083117 m!6137976))

(assert (=> b!5082977 m!6137832))

(declare-fun b!5083122 () Bool)

(declare-fun e!3170537 () Bool)

(declare-fun tp!1417344 () Bool)

(declare-fun tp!1417342 () Bool)

(assert (=> b!5083122 (= e!3170537 (and (inv!77665 (left!42846 (left!42846 xs!286))) tp!1417344 (inv!77665 (right!43176 (left!42846 xs!286))) tp!1417342))))

(declare-fun b!5083125 () Bool)

(declare-fun e!3170539 () Bool)

(declare-fun tp!1417346 () Bool)

(assert (=> b!5083125 (= e!3170539 tp!1417346)))

(declare-fun b!5083123 () Bool)

(assert (=> b!5083123 (= e!3170537 (and (inv!77666 (xs!18962 (left!42846 xs!286))) e!3170539))))

(assert (=> b!5082976 (= tp!1417304 (and (inv!77665 (left!42846 xs!286)) e!3170537))))

(assert (= (and b!5082976 ((_ is Node!15584) (left!42846 xs!286))) b!5083122))

(assert (= b!5083123 b!5083125))

(assert (= (and b!5082976 ((_ is Leaf!25881) (left!42846 xs!286))) b!5083123))

(declare-fun m!6137980 () Bool)

(assert (=> b!5083122 m!6137980))

(declare-fun m!6137984 () Bool)

(assert (=> b!5083122 m!6137984))

(declare-fun m!6137988 () Bool)

(assert (=> b!5083123 m!6137988))

(assert (=> b!5082976 m!6137826))

(declare-fun b!5083128 () Bool)

(declare-fun tp!1417349 () Bool)

(declare-fun tp!1417348 () Bool)

(declare-fun e!3170540 () Bool)

(assert (=> b!5083128 (= e!3170540 (and (inv!77665 (left!42846 (right!43176 xs!286))) tp!1417349 (inv!77665 (right!43176 (right!43176 xs!286))) tp!1417348))))

(declare-fun b!5083130 () Bool)

(declare-fun e!3170541 () Bool)

(declare-fun tp!1417350 () Bool)

(assert (=> b!5083130 (= e!3170541 tp!1417350)))

(declare-fun b!5083129 () Bool)

(assert (=> b!5083129 (= e!3170540 (and (inv!77666 (xs!18962 (right!43176 xs!286))) e!3170541))))

(assert (=> b!5082976 (= tp!1417305 (and (inv!77665 (right!43176 xs!286)) e!3170540))))

(assert (= (and b!5082976 ((_ is Node!15584) (right!43176 xs!286))) b!5083128))

(assert (= b!5083129 b!5083130))

(assert (= (and b!5082976 ((_ is Leaf!25881) (right!43176 xs!286))) b!5083129))

(declare-fun m!6137992 () Bool)

(assert (=> b!5083128 m!6137992))

(declare-fun m!6137994 () Bool)

(assert (=> b!5083128 m!6137994))

(declare-fun m!6137996 () Bool)

(assert (=> b!5083129 m!6137996))

(assert (=> b!5082976 m!6137828))

(declare-fun b!5083131 () Bool)

(declare-fun e!3170542 () Bool)

(declare-fun tp!1417351 () Bool)

(assert (=> b!5083131 (= e!3170542 (and tp_is_empty!37091 tp!1417351))))

(assert (=> b!5082975 (= tp!1417303 e!3170542)))

(assert (= (and b!5082975 ((_ is Cons!58454) (innerList!15672 (xs!18962 ys!41)))) b!5083131))

(check-sat (not b!5083129) (not b!5083046) (not b!5083113) (not b!5083049) (not b!5083070) (not b!5082976) (not b!5083047) (not b!5083051) (not b!5083044) (not b!5083123) (not b!5083116) (not b!5083068) (not b!5083025) (not b!5083020) (not b!5083081) (not b!5083064) (not b!5083074) (not b!5083053) (not b!5083118) (not b!5083130) (not b!5083131) (not b!5083112) (not b!5083021) (not b!5083125) (not b!5083024) (not b!5083097) (not b!5083076) (not d!1644071) (not b!5083054) (not b!5083052) (not b!5083023) (not b!5083022) (not b!5083128) (not b!5083050) (not b!5083114) (not b!5083055) (not d!1644117) (not b!5083062) tp_is_empty!37091 (not b!5083117) (not b!5083122) (not b!5082977) (not b!5083083))
(check-sat)
(get-model)

(declare-fun d!1644125 () Bool)

(declare-fun res!2163952 () Bool)

(declare-fun e!3170545 () Bool)

(assert (=> d!1644125 (=> (not res!2163952) (not e!3170545))))

(declare-fun size!39116 (Conc!15584) Int)

(assert (=> d!1644125 (= res!2163952 (= (csize!31398 (right!43176 ys!41)) (+ (size!39116 (left!42846 (right!43176 ys!41))) (size!39116 (right!43176 (right!43176 ys!41))))))))

(assert (=> d!1644125 (= (inv!77667 (right!43176 ys!41)) e!3170545)))

(declare-fun b!5083138 () Bool)

(declare-fun res!2163953 () Bool)

(assert (=> b!5083138 (=> (not res!2163953) (not e!3170545))))

(assert (=> b!5083138 (= res!2163953 (and (not (= (left!42846 (right!43176 ys!41)) Empty!15584)) (not (= (right!43176 (right!43176 ys!41)) Empty!15584))))))

(declare-fun b!5083139 () Bool)

(declare-fun res!2163954 () Bool)

(assert (=> b!5083139 (=> (not res!2163954) (not e!3170545))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5083139 (= res!2163954 (= (cheight!15795 (right!43176 ys!41)) (+ (max!0 (height!2161 (left!42846 (right!43176 ys!41))) (height!2161 (right!43176 (right!43176 ys!41)))) 1)))))

(declare-fun b!5083140 () Bool)

(assert (=> b!5083140 (= e!3170545 (<= 0 (cheight!15795 (right!43176 ys!41))))))

(assert (= (and d!1644125 res!2163952) b!5083138))

(assert (= (and b!5083138 res!2163953) b!5083139))

(assert (= (and b!5083139 res!2163954) b!5083140))

(declare-fun m!6137998 () Bool)

(assert (=> d!1644125 m!6137998))

(declare-fun m!6138000 () Bool)

(assert (=> d!1644125 m!6138000))

(declare-fun m!6138002 () Bool)

(assert (=> b!5083139 m!6138002))

(declare-fun m!6138004 () Bool)

(assert (=> b!5083139 m!6138004))

(assert (=> b!5083139 m!6138002))

(assert (=> b!5083139 m!6138004))

(declare-fun m!6138006 () Bool)

(assert (=> b!5083139 m!6138006))

(assert (=> b!5083047 d!1644125))

(declare-fun d!1644127 () Bool)

(declare-fun lt!2091272 () Bool)

(declare-fun isEmpty!31672 (List!58578) Bool)

(declare-fun list!19028 (Conc!15584) List!58578)

(assert (=> d!1644127 (= lt!2091272 (isEmpty!31672 (list!19028 (right!43176 xs!286))))))

(assert (=> d!1644127 (= lt!2091272 (= (size!39116 (right!43176 xs!286)) 0))))

(assert (=> d!1644127 (= (isEmpty!31670 (right!43176 xs!286)) lt!2091272)))

(declare-fun bs!1190748 () Bool)

(assert (= bs!1190748 d!1644127))

(declare-fun m!6138008 () Bool)

(assert (=> bs!1190748 m!6138008))

(assert (=> bs!1190748 m!6138008))

(declare-fun m!6138010 () Bool)

(assert (=> bs!1190748 m!6138010))

(declare-fun m!6138012 () Bool)

(assert (=> bs!1190748 m!6138012))

(assert (=> b!5083054 d!1644127))

(declare-fun d!1644129 () Bool)

(assert (=> d!1644129 (= (height!2161 (left!42846 xs!286)) (ite ((_ is Empty!15584) (left!42846 xs!286)) 0 (ite ((_ is Leaf!25881) (left!42846 xs!286)) 1 (cheight!15795 (left!42846 xs!286)))))))

(assert (=> b!5083053 d!1644129))

(declare-fun d!1644131 () Bool)

(assert (=> d!1644131 (= (height!2161 (right!43176 xs!286)) (ite ((_ is Empty!15584) (right!43176 xs!286)) 0 (ite ((_ is Leaf!25881) (right!43176 xs!286)) 1 (cheight!15795 (right!43176 xs!286)))))))

(assert (=> b!5083053 d!1644131))

(declare-fun b!5083141 () Bool)

(declare-fun e!3170547 () Bool)

(declare-fun e!3170546 () Bool)

(assert (=> b!5083141 (= e!3170547 e!3170546)))

(declare-fun res!2163957 () Bool)

(assert (=> b!5083141 (=> (not res!2163957) (not e!3170546))))

(assert (=> b!5083141 (= res!2163957 (<= (- 1) (- (height!2161 (left!42846 (right!43176 xs!286))) (height!2161 (right!43176 (right!43176 xs!286))))))))

(declare-fun b!5083142 () Bool)

(declare-fun res!2163955 () Bool)

(assert (=> b!5083142 (=> (not res!2163955) (not e!3170546))))

(assert (=> b!5083142 (= res!2163955 (not (isEmpty!31670 (left!42846 (right!43176 xs!286)))))))

(declare-fun b!5083143 () Bool)

(declare-fun res!2163959 () Bool)

(assert (=> b!5083143 (=> (not res!2163959) (not e!3170546))))

(assert (=> b!5083143 (= res!2163959 (isBalanced!4446 (right!43176 (right!43176 xs!286))))))

(declare-fun b!5083144 () Bool)

(declare-fun res!2163960 () Bool)

(assert (=> b!5083144 (=> (not res!2163960) (not e!3170546))))

(assert (=> b!5083144 (= res!2163960 (<= (- (height!2161 (left!42846 (right!43176 xs!286))) (height!2161 (right!43176 (right!43176 xs!286)))) 1))))

(declare-fun b!5083145 () Bool)

(assert (=> b!5083145 (= e!3170546 (not (isEmpty!31670 (right!43176 (right!43176 xs!286)))))))

(declare-fun b!5083146 () Bool)

(declare-fun res!2163958 () Bool)

(assert (=> b!5083146 (=> (not res!2163958) (not e!3170546))))

(assert (=> b!5083146 (= res!2163958 (isBalanced!4446 (left!42846 (right!43176 xs!286))))))

(declare-fun d!1644133 () Bool)

(declare-fun res!2163956 () Bool)

(assert (=> d!1644133 (=> res!2163956 e!3170547)))

(assert (=> d!1644133 (= res!2163956 (not ((_ is Node!15584) (right!43176 xs!286))))))

(assert (=> d!1644133 (= (isBalanced!4446 (right!43176 xs!286)) e!3170547)))

(assert (= (and d!1644133 (not res!2163956)) b!5083141))

(assert (= (and b!5083141 res!2163957) b!5083144))

(assert (= (and b!5083144 res!2163960) b!5083146))

(assert (= (and b!5083146 res!2163958) b!5083143))

(assert (= (and b!5083143 res!2163959) b!5083142))

(assert (= (and b!5083142 res!2163955) b!5083145))

(declare-fun m!6138014 () Bool)

(assert (=> b!5083142 m!6138014))

(declare-fun m!6138016 () Bool)

(assert (=> b!5083144 m!6138016))

(declare-fun m!6138018 () Bool)

(assert (=> b!5083144 m!6138018))

(declare-fun m!6138020 () Bool)

(assert (=> b!5083143 m!6138020))

(declare-fun m!6138022 () Bool)

(assert (=> b!5083146 m!6138022))

(assert (=> b!5083141 m!6138016))

(assert (=> b!5083141 m!6138018))

(declare-fun m!6138024 () Bool)

(assert (=> b!5083145 m!6138024))

(assert (=> b!5083052 d!1644133))

(declare-fun d!1644135 () Bool)

(declare-fun lt!2091273 () Bool)

(assert (=> d!1644135 (= lt!2091273 (isEmpty!31672 (list!19028 (left!42846 xs!286))))))

(assert (=> d!1644135 (= lt!2091273 (= (size!39116 (left!42846 xs!286)) 0))))

(assert (=> d!1644135 (= (isEmpty!31670 (left!42846 xs!286)) lt!2091273)))

(declare-fun bs!1190749 () Bool)

(assert (= bs!1190749 d!1644135))

(declare-fun m!6138026 () Bool)

(assert (=> bs!1190749 m!6138026))

(assert (=> bs!1190749 m!6138026))

(declare-fun m!6138028 () Bool)

(assert (=> bs!1190749 m!6138028))

(declare-fun m!6138030 () Bool)

(assert (=> bs!1190749 m!6138030))

(assert (=> b!5083051 d!1644135))

(assert (=> b!5083050 d!1644129))

(assert (=> b!5083050 d!1644131))

(declare-fun d!1644137 () Bool)

(assert (=> d!1644137 (= (inv!77666 (xs!18962 (right!43176 xs!286))) (<= (size!39114 (innerList!15672 (xs!18962 (right!43176 xs!286)))) 2147483647))))

(declare-fun bs!1190750 () Bool)

(assert (= bs!1190750 d!1644137))

(declare-fun m!6138032 () Bool)

(assert (=> bs!1190750 m!6138032))

(assert (=> b!5083129 d!1644137))

(declare-fun d!1644139 () Bool)

(declare-fun res!2163961 () Bool)

(declare-fun e!3170548 () Bool)

(assert (=> d!1644139 (=> (not res!2163961) (not e!3170548))))

(assert (=> d!1644139 (= res!2163961 (= (csize!31398 (left!42846 ys!41)) (+ (size!39116 (left!42846 (left!42846 ys!41))) (size!39116 (right!43176 (left!42846 ys!41))))))))

(assert (=> d!1644139 (= (inv!77667 (left!42846 ys!41)) e!3170548)))

(declare-fun b!5083147 () Bool)

(declare-fun res!2163962 () Bool)

(assert (=> b!5083147 (=> (not res!2163962) (not e!3170548))))

(assert (=> b!5083147 (= res!2163962 (and (not (= (left!42846 (left!42846 ys!41)) Empty!15584)) (not (= (right!43176 (left!42846 ys!41)) Empty!15584))))))

(declare-fun b!5083148 () Bool)

(declare-fun res!2163963 () Bool)

(assert (=> b!5083148 (=> (not res!2163963) (not e!3170548))))

(assert (=> b!5083148 (= res!2163963 (= (cheight!15795 (left!42846 ys!41)) (+ (max!0 (height!2161 (left!42846 (left!42846 ys!41))) (height!2161 (right!43176 (left!42846 ys!41)))) 1)))))

(declare-fun b!5083149 () Bool)

(assert (=> b!5083149 (= e!3170548 (<= 0 (cheight!15795 (left!42846 ys!41))))))

(assert (= (and d!1644139 res!2163961) b!5083147))

(assert (= (and b!5083147 res!2163962) b!5083148))

(assert (= (and b!5083148 res!2163963) b!5083149))

(declare-fun m!6138034 () Bool)

(assert (=> d!1644139 m!6138034))

(declare-fun m!6138036 () Bool)

(assert (=> d!1644139 m!6138036))

(declare-fun m!6138038 () Bool)

(assert (=> b!5083148 m!6138038))

(declare-fun m!6138040 () Bool)

(assert (=> b!5083148 m!6138040))

(assert (=> b!5083148 m!6138038))

(assert (=> b!5083148 m!6138040))

(declare-fun m!6138042 () Bool)

(assert (=> b!5083148 m!6138042))

(assert (=> b!5083044 d!1644139))

(declare-fun d!1644141 () Bool)

(declare-fun res!2163964 () Bool)

(declare-fun e!3170549 () Bool)

(assert (=> d!1644141 (=> (not res!2163964) (not e!3170549))))

(assert (=> d!1644141 (= res!2163964 (= (csize!31398 xs!286) (+ (size!39116 (left!42846 xs!286)) (size!39116 (right!43176 xs!286)))))))

(assert (=> d!1644141 (= (inv!77667 xs!286) e!3170549)))

(declare-fun b!5083150 () Bool)

(declare-fun res!2163965 () Bool)

(assert (=> b!5083150 (=> (not res!2163965) (not e!3170549))))

(assert (=> b!5083150 (= res!2163965 (and (not (= (left!42846 xs!286) Empty!15584)) (not (= (right!43176 xs!286) Empty!15584))))))

(declare-fun b!5083151 () Bool)

(declare-fun res!2163966 () Bool)

(assert (=> b!5083151 (=> (not res!2163966) (not e!3170549))))

(assert (=> b!5083151 (= res!2163966 (= (cheight!15795 xs!286) (+ (max!0 (height!2161 (left!42846 xs!286)) (height!2161 (right!43176 xs!286))) 1)))))

(declare-fun b!5083152 () Bool)

(assert (=> b!5083152 (= e!3170549 (<= 0 (cheight!15795 xs!286)))))

(assert (= (and d!1644141 res!2163964) b!5083150))

(assert (= (and b!5083150 res!2163965) b!5083151))

(assert (= (and b!5083151 res!2163966) b!5083152))

(assert (=> d!1644141 m!6138030))

(assert (=> d!1644141 m!6138012))

(assert (=> b!5083151 m!6137908))

(assert (=> b!5083151 m!6137910))

(assert (=> b!5083151 m!6137908))

(assert (=> b!5083151 m!6137910))

(declare-fun m!6138044 () Bool)

(assert (=> b!5083151 m!6138044))

(assert (=> b!5083062 d!1644141))

(declare-fun d!1644143 () Bool)

(assert (=> d!1644143 (= (inv!77666 (xs!18962 (right!43176 ys!41))) (<= (size!39114 (innerList!15672 (xs!18962 (right!43176 ys!41)))) 2147483647))))

(declare-fun bs!1190751 () Bool)

(assert (= bs!1190751 d!1644143))

(declare-fun m!6138046 () Bool)

(assert (=> bs!1190751 m!6138046))

(assert (=> b!5083117 d!1644143))

(declare-fun d!1644145 () Bool)

(declare-fun c!873348 () Bool)

(assert (=> d!1644145 (= c!873348 ((_ is Node!15584) (left!42846 (right!43176 ys!41))))))

(declare-fun e!3170550 () Bool)

(assert (=> d!1644145 (= (inv!77665 (left!42846 (right!43176 ys!41))) e!3170550)))

(declare-fun b!5083153 () Bool)

(assert (=> b!5083153 (= e!3170550 (inv!77667 (left!42846 (right!43176 ys!41))))))

(declare-fun b!5083154 () Bool)

(declare-fun e!3170551 () Bool)

(assert (=> b!5083154 (= e!3170550 e!3170551)))

(declare-fun res!2163967 () Bool)

(assert (=> b!5083154 (= res!2163967 (not ((_ is Leaf!25881) (left!42846 (right!43176 ys!41)))))))

(assert (=> b!5083154 (=> res!2163967 e!3170551)))

(declare-fun b!5083155 () Bool)

(assert (=> b!5083155 (= e!3170551 (inv!77668 (left!42846 (right!43176 ys!41))))))

(assert (= (and d!1644145 c!873348) b!5083153))

(assert (= (and d!1644145 (not c!873348)) b!5083154))

(assert (= (and b!5083154 (not res!2163967)) b!5083155))

(declare-fun m!6138048 () Bool)

(assert (=> b!5083153 m!6138048))

(declare-fun m!6138050 () Bool)

(assert (=> b!5083155 m!6138050))

(assert (=> b!5083116 d!1644145))

(declare-fun d!1644147 () Bool)

(declare-fun c!873349 () Bool)

(assert (=> d!1644147 (= c!873349 ((_ is Node!15584) (right!43176 (right!43176 ys!41))))))

(declare-fun e!3170552 () Bool)

(assert (=> d!1644147 (= (inv!77665 (right!43176 (right!43176 ys!41))) e!3170552)))

(declare-fun b!5083156 () Bool)

(assert (=> b!5083156 (= e!3170552 (inv!77667 (right!43176 (right!43176 ys!41))))))

(declare-fun b!5083157 () Bool)

(declare-fun e!3170553 () Bool)

(assert (=> b!5083157 (= e!3170552 e!3170553)))

(declare-fun res!2163968 () Bool)

(assert (=> b!5083157 (= res!2163968 (not ((_ is Leaf!25881) (right!43176 (right!43176 ys!41)))))))

(assert (=> b!5083157 (=> res!2163968 e!3170553)))

(declare-fun b!5083158 () Bool)

(assert (=> b!5083158 (= e!3170553 (inv!77668 (right!43176 (right!43176 ys!41))))))

(assert (= (and d!1644147 c!873349) b!5083156))

(assert (= (and d!1644147 (not c!873349)) b!5083157))

(assert (= (and b!5083157 (not res!2163968)) b!5083158))

(declare-fun m!6138052 () Bool)

(assert (=> b!5083156 m!6138052))

(declare-fun m!6138054 () Bool)

(assert (=> b!5083158 m!6138054))

(assert (=> b!5083116 d!1644147))

(declare-fun d!1644149 () Bool)

(declare-fun res!2163969 () Bool)

(declare-fun e!3170554 () Bool)

(assert (=> d!1644149 (=> (not res!2163969) (not e!3170554))))

(assert (=> d!1644149 (= res!2163969 (= (csize!31398 (left!42846 xs!286)) (+ (size!39116 (left!42846 (left!42846 xs!286))) (size!39116 (right!43176 (left!42846 xs!286))))))))

(assert (=> d!1644149 (= (inv!77667 (left!42846 xs!286)) e!3170554)))

(declare-fun b!5083159 () Bool)

(declare-fun res!2163970 () Bool)

(assert (=> b!5083159 (=> (not res!2163970) (not e!3170554))))

(assert (=> b!5083159 (= res!2163970 (and (not (= (left!42846 (left!42846 xs!286)) Empty!15584)) (not (= (right!43176 (left!42846 xs!286)) Empty!15584))))))

(declare-fun b!5083160 () Bool)

(declare-fun res!2163971 () Bool)

(assert (=> b!5083160 (=> (not res!2163971) (not e!3170554))))

(assert (=> b!5083160 (= res!2163971 (= (cheight!15795 (left!42846 xs!286)) (+ (max!0 (height!2161 (left!42846 (left!42846 xs!286))) (height!2161 (right!43176 (left!42846 xs!286)))) 1)))))

(declare-fun b!5083161 () Bool)

(assert (=> b!5083161 (= e!3170554 (<= 0 (cheight!15795 (left!42846 xs!286))))))

(assert (= (and d!1644149 res!2163969) b!5083159))

(assert (= (and b!5083159 res!2163970) b!5083160))

(assert (= (and b!5083160 res!2163971) b!5083161))

(declare-fun m!6138056 () Bool)

(assert (=> d!1644149 m!6138056))

(declare-fun m!6138058 () Bool)

(assert (=> d!1644149 m!6138058))

(declare-fun m!6138060 () Bool)

(assert (=> b!5083160 m!6138060))

(declare-fun m!6138062 () Bool)

(assert (=> b!5083160 m!6138062))

(assert (=> b!5083160 m!6138060))

(assert (=> b!5083160 m!6138062))

(declare-fun m!6138064 () Bool)

(assert (=> b!5083160 m!6138064))

(assert (=> b!5083074 d!1644149))

(declare-fun d!1644151 () Bool)

(declare-fun res!2163976 () Bool)

(declare-fun e!3170557 () Bool)

(assert (=> d!1644151 (=> (not res!2163976) (not e!3170557))))

(declare-fun list!19030 (IArray!31229) List!58578)

(assert (=> d!1644151 (= res!2163976 (<= (size!39114 (list!19030 (xs!18962 (right!43176 ys!41)))) 512))))

(assert (=> d!1644151 (= (inv!77668 (right!43176 ys!41)) e!3170557)))

(declare-fun b!5083166 () Bool)

(declare-fun res!2163977 () Bool)

(assert (=> b!5083166 (=> (not res!2163977) (not e!3170557))))

(assert (=> b!5083166 (= res!2163977 (= (csize!31399 (right!43176 ys!41)) (size!39114 (list!19030 (xs!18962 (right!43176 ys!41))))))))

(declare-fun b!5083167 () Bool)

(assert (=> b!5083167 (= e!3170557 (and (> (csize!31399 (right!43176 ys!41)) 0) (<= (csize!31399 (right!43176 ys!41)) 512)))))

(assert (= (and d!1644151 res!2163976) b!5083166))

(assert (= (and b!5083166 res!2163977) b!5083167))

(declare-fun m!6138066 () Bool)

(assert (=> d!1644151 m!6138066))

(assert (=> d!1644151 m!6138066))

(declare-fun m!6138068 () Bool)

(assert (=> d!1644151 m!6138068))

(assert (=> b!5083166 m!6138066))

(assert (=> b!5083166 m!6138066))

(assert (=> b!5083166 m!6138068))

(assert (=> b!5083049 d!1644151))

(declare-fun d!1644153 () Bool)

(assert (=> d!1644153 (= (inv!77666 (xs!18962 (left!42846 ys!41))) (<= (size!39114 (innerList!15672 (xs!18962 (left!42846 ys!41)))) 2147483647))))

(declare-fun bs!1190752 () Bool)

(assert (= bs!1190752 d!1644153))

(declare-fun m!6138070 () Bool)

(assert (=> bs!1190752 m!6138070))

(assert (=> b!5083113 d!1644153))

(declare-fun b!5083168 () Bool)

(declare-fun e!3170559 () Bool)

(declare-fun e!3170558 () Bool)

(assert (=> b!5083168 (= e!3170559 e!3170558)))

(declare-fun res!2163980 () Bool)

(assert (=> b!5083168 (=> (not res!2163980) (not e!3170558))))

(assert (=> b!5083168 (= res!2163980 (<= (- 1) (- (height!2161 (left!42846 (left!42846 xs!286))) (height!2161 (right!43176 (left!42846 xs!286))))))))

(declare-fun b!5083169 () Bool)

(declare-fun res!2163978 () Bool)

(assert (=> b!5083169 (=> (not res!2163978) (not e!3170558))))

(assert (=> b!5083169 (= res!2163978 (not (isEmpty!31670 (left!42846 (left!42846 xs!286)))))))

(declare-fun b!5083170 () Bool)

(declare-fun res!2163982 () Bool)

(assert (=> b!5083170 (=> (not res!2163982) (not e!3170558))))

(assert (=> b!5083170 (= res!2163982 (isBalanced!4446 (right!43176 (left!42846 xs!286))))))

(declare-fun b!5083171 () Bool)

(declare-fun res!2163983 () Bool)

(assert (=> b!5083171 (=> (not res!2163983) (not e!3170558))))

(assert (=> b!5083171 (= res!2163983 (<= (- (height!2161 (left!42846 (left!42846 xs!286))) (height!2161 (right!43176 (left!42846 xs!286)))) 1))))

(declare-fun b!5083172 () Bool)

(assert (=> b!5083172 (= e!3170558 (not (isEmpty!31670 (right!43176 (left!42846 xs!286)))))))

(declare-fun b!5083173 () Bool)

(declare-fun res!2163981 () Bool)

(assert (=> b!5083173 (=> (not res!2163981) (not e!3170558))))

(assert (=> b!5083173 (= res!2163981 (isBalanced!4446 (left!42846 (left!42846 xs!286))))))

(declare-fun d!1644155 () Bool)

(declare-fun res!2163979 () Bool)

(assert (=> d!1644155 (=> res!2163979 e!3170559)))

(assert (=> d!1644155 (= res!2163979 (not ((_ is Node!15584) (left!42846 xs!286))))))

(assert (=> d!1644155 (= (isBalanced!4446 (left!42846 xs!286)) e!3170559)))

(assert (= (and d!1644155 (not res!2163979)) b!5083168))

(assert (= (and b!5083168 res!2163980) b!5083171))

(assert (= (and b!5083171 res!2163983) b!5083173))

(assert (= (and b!5083173 res!2163981) b!5083170))

(assert (= (and b!5083170 res!2163982) b!5083169))

(assert (= (and b!5083169 res!2163978) b!5083172))

(declare-fun m!6138072 () Bool)

(assert (=> b!5083169 m!6138072))

(assert (=> b!5083171 m!6138060))

(assert (=> b!5083171 m!6138062))

(declare-fun m!6138074 () Bool)

(assert (=> b!5083170 m!6138074))

(declare-fun m!6138076 () Bool)

(assert (=> b!5083173 m!6138076))

(assert (=> b!5083168 m!6138060))

(assert (=> b!5083168 m!6138062))

(declare-fun m!6138078 () Bool)

(assert (=> b!5083172 m!6138078))

(assert (=> b!5083055 d!1644155))

(declare-fun d!1644157 () Bool)

(declare-fun c!873350 () Bool)

(assert (=> d!1644157 (= c!873350 ((_ is Node!15584) (left!42846 (left!42846 ys!41))))))

(declare-fun e!3170560 () Bool)

(assert (=> d!1644157 (= (inv!77665 (left!42846 (left!42846 ys!41))) e!3170560)))

(declare-fun b!5083174 () Bool)

(assert (=> b!5083174 (= e!3170560 (inv!77667 (left!42846 (left!42846 ys!41))))))

(declare-fun b!5083175 () Bool)

(declare-fun e!3170561 () Bool)

(assert (=> b!5083175 (= e!3170560 e!3170561)))

(declare-fun res!2163984 () Bool)

(assert (=> b!5083175 (= res!2163984 (not ((_ is Leaf!25881) (left!42846 (left!42846 ys!41)))))))

(assert (=> b!5083175 (=> res!2163984 e!3170561)))

(declare-fun b!5083176 () Bool)

(assert (=> b!5083176 (= e!3170561 (inv!77668 (left!42846 (left!42846 ys!41))))))

(assert (= (and d!1644157 c!873350) b!5083174))

(assert (= (and d!1644157 (not c!873350)) b!5083175))

(assert (= (and b!5083175 (not res!2163984)) b!5083176))

(declare-fun m!6138080 () Bool)

(assert (=> b!5083174 m!6138080))

(declare-fun m!6138082 () Bool)

(assert (=> b!5083176 m!6138082))

(assert (=> b!5083112 d!1644157))

(declare-fun d!1644159 () Bool)

(declare-fun c!873351 () Bool)

(assert (=> d!1644159 (= c!873351 ((_ is Node!15584) (right!43176 (left!42846 ys!41))))))

(declare-fun e!3170562 () Bool)

(assert (=> d!1644159 (= (inv!77665 (right!43176 (left!42846 ys!41))) e!3170562)))

(declare-fun b!5083177 () Bool)

(assert (=> b!5083177 (= e!3170562 (inv!77667 (right!43176 (left!42846 ys!41))))))

(declare-fun b!5083178 () Bool)

(declare-fun e!3170563 () Bool)

(assert (=> b!5083178 (= e!3170562 e!3170563)))

(declare-fun res!2163985 () Bool)

(assert (=> b!5083178 (= res!2163985 (not ((_ is Leaf!25881) (right!43176 (left!42846 ys!41)))))))

(assert (=> b!5083178 (=> res!2163985 e!3170563)))

(declare-fun b!5083179 () Bool)

(assert (=> b!5083179 (= e!3170563 (inv!77668 (right!43176 (left!42846 ys!41))))))

(assert (= (and d!1644159 c!873351) b!5083177))

(assert (= (and d!1644159 (not c!873351)) b!5083178))

(assert (= (and b!5083178 (not res!2163985)) b!5083179))

(declare-fun m!6138084 () Bool)

(assert (=> b!5083177 m!6138084))

(declare-fun m!6138086 () Bool)

(assert (=> b!5083179 m!6138086))

(assert (=> b!5083112 d!1644159))

(declare-fun d!1644161 () Bool)

(declare-fun res!2163986 () Bool)

(declare-fun e!3170564 () Bool)

(assert (=> d!1644161 (=> (not res!2163986) (not e!3170564))))

(assert (=> d!1644161 (= res!2163986 (<= (size!39114 (list!19030 (xs!18962 ys!41))) 512))))

(assert (=> d!1644161 (= (inv!77668 ys!41) e!3170564)))

(declare-fun b!5083180 () Bool)

(declare-fun res!2163987 () Bool)

(assert (=> b!5083180 (=> (not res!2163987) (not e!3170564))))

(assert (=> b!5083180 (= res!2163987 (= (csize!31399 ys!41) (size!39114 (list!19030 (xs!18962 ys!41)))))))

(declare-fun b!5083181 () Bool)

(assert (=> b!5083181 (= e!3170564 (and (> (csize!31399 ys!41) 0) (<= (csize!31399 ys!41) 512)))))

(assert (= (and d!1644161 res!2163986) b!5083180))

(assert (= (and b!5083180 res!2163987) b!5083181))

(declare-fun m!6138088 () Bool)

(assert (=> d!1644161 m!6138088))

(assert (=> d!1644161 m!6138088))

(declare-fun m!6138090 () Bool)

(assert (=> d!1644161 m!6138090))

(assert (=> b!5083180 m!6138088))

(assert (=> b!5083180 m!6138088))

(assert (=> b!5083180 m!6138090))

(assert (=> b!5083070 d!1644161))

(declare-fun d!1644163 () Bool)

(declare-fun lt!2091274 () Bool)

(assert (=> d!1644163 (= lt!2091274 (isEmpty!31672 (list!19028 (right!43176 ys!41))))))

(assert (=> d!1644163 (= lt!2091274 (= (size!39116 (right!43176 ys!41)) 0))))

(assert (=> d!1644163 (= (isEmpty!31670 (right!43176 ys!41)) lt!2091274)))

(declare-fun bs!1190753 () Bool)

(assert (= bs!1190753 d!1644163))

(declare-fun m!6138092 () Bool)

(assert (=> bs!1190753 m!6138092))

(assert (=> bs!1190753 m!6138092))

(declare-fun m!6138094 () Bool)

(assert (=> bs!1190753 m!6138094))

(declare-fun m!6138096 () Bool)

(assert (=> bs!1190753 m!6138096))

(assert (=> b!5083024 d!1644163))

(declare-fun d!1644165 () Bool)

(declare-fun res!2163988 () Bool)

(declare-fun e!3170565 () Bool)

(assert (=> d!1644165 (=> (not res!2163988) (not e!3170565))))

(assert (=> d!1644165 (= res!2163988 (= (csize!31398 (right!43176 xs!286)) (+ (size!39116 (left!42846 (right!43176 xs!286))) (size!39116 (right!43176 (right!43176 xs!286))))))))

(assert (=> d!1644165 (= (inv!77667 (right!43176 xs!286)) e!3170565)))

(declare-fun b!5083182 () Bool)

(declare-fun res!2163989 () Bool)

(assert (=> b!5083182 (=> (not res!2163989) (not e!3170565))))

(assert (=> b!5083182 (= res!2163989 (and (not (= (left!42846 (right!43176 xs!286)) Empty!15584)) (not (= (right!43176 (right!43176 xs!286)) Empty!15584))))))

(declare-fun b!5083183 () Bool)

(declare-fun res!2163990 () Bool)

(assert (=> b!5083183 (=> (not res!2163990) (not e!3170565))))

(assert (=> b!5083183 (= res!2163990 (= (cheight!15795 (right!43176 xs!286)) (+ (max!0 (height!2161 (left!42846 (right!43176 xs!286))) (height!2161 (right!43176 (right!43176 xs!286)))) 1)))))

(declare-fun b!5083184 () Bool)

(assert (=> b!5083184 (= e!3170565 (<= 0 (cheight!15795 (right!43176 xs!286))))))

(assert (= (and d!1644165 res!2163988) b!5083182))

(assert (= (and b!5083182 res!2163989) b!5083183))

(assert (= (and b!5083183 res!2163990) b!5083184))

(declare-fun m!6138098 () Bool)

(assert (=> d!1644165 m!6138098))

(declare-fun m!6138100 () Bool)

(assert (=> d!1644165 m!6138100))

(assert (=> b!5083183 m!6138016))

(assert (=> b!5083183 m!6138018))

(assert (=> b!5083183 m!6138016))

(assert (=> b!5083183 m!6138018))

(declare-fun m!6138102 () Bool)

(assert (=> b!5083183 m!6138102))

(assert (=> b!5083081 d!1644165))

(assert (=> b!5083023 d!1644093))

(assert (=> b!5083023 d!1644091))

(declare-fun d!1644167 () Bool)

(declare-fun res!2163991 () Bool)

(declare-fun e!3170566 () Bool)

(assert (=> d!1644167 (=> (not res!2163991) (not e!3170566))))

(assert (=> d!1644167 (= res!2163991 (= (csize!31398 ys!41) (+ (size!39116 (left!42846 ys!41)) (size!39116 (right!43176 ys!41)))))))

(assert (=> d!1644167 (= (inv!77667 ys!41) e!3170566)))

(declare-fun b!5083185 () Bool)

(declare-fun res!2163992 () Bool)

(assert (=> b!5083185 (=> (not res!2163992) (not e!3170566))))

(assert (=> b!5083185 (= res!2163992 (and (not (= (left!42846 ys!41) Empty!15584)) (not (= (right!43176 ys!41) Empty!15584))))))

(declare-fun b!5083186 () Bool)

(declare-fun res!2163993 () Bool)

(assert (=> b!5083186 (=> (not res!2163993) (not e!3170566))))

(assert (=> b!5083186 (= res!2163993 (= (cheight!15795 ys!41) (+ (max!0 (height!2161 (left!42846 ys!41)) (height!2161 (right!43176 ys!41))) 1)))))

(declare-fun b!5083187 () Bool)

(assert (=> b!5083187 (= e!3170566 (<= 0 (cheight!15795 ys!41)))))

(assert (= (and d!1644167 res!2163991) b!5083185))

(assert (= (and b!5083185 res!2163992) b!5083186))

(assert (= (and b!5083186 res!2163993) b!5083187))

(declare-fun m!6138104 () Bool)

(assert (=> d!1644167 m!6138104))

(assert (=> d!1644167 m!6138096))

(assert (=> b!5083186 m!6137840))

(assert (=> b!5083186 m!6137838))

(assert (=> b!5083186 m!6137840))

(assert (=> b!5083186 m!6137838))

(declare-fun m!6138106 () Bool)

(assert (=> b!5083186 m!6138106))

(assert (=> b!5083068 d!1644167))

(declare-fun b!5083188 () Bool)

(declare-fun e!3170568 () Bool)

(declare-fun e!3170567 () Bool)

(assert (=> b!5083188 (= e!3170568 e!3170567)))

(declare-fun res!2163996 () Bool)

(assert (=> b!5083188 (=> (not res!2163996) (not e!3170567))))

(assert (=> b!5083188 (= res!2163996 (<= (- 1) (- (height!2161 (left!42846 (right!43176 ys!41))) (height!2161 (right!43176 (right!43176 ys!41))))))))

(declare-fun b!5083189 () Bool)

(declare-fun res!2163994 () Bool)

(assert (=> b!5083189 (=> (not res!2163994) (not e!3170567))))

(assert (=> b!5083189 (= res!2163994 (not (isEmpty!31670 (left!42846 (right!43176 ys!41)))))))

(declare-fun b!5083190 () Bool)

(declare-fun res!2163998 () Bool)

(assert (=> b!5083190 (=> (not res!2163998) (not e!3170567))))

(assert (=> b!5083190 (= res!2163998 (isBalanced!4446 (right!43176 (right!43176 ys!41))))))

(declare-fun b!5083191 () Bool)

(declare-fun res!2163999 () Bool)

(assert (=> b!5083191 (=> (not res!2163999) (not e!3170567))))

(assert (=> b!5083191 (= res!2163999 (<= (- (height!2161 (left!42846 (right!43176 ys!41))) (height!2161 (right!43176 (right!43176 ys!41)))) 1))))

(declare-fun b!5083192 () Bool)

(assert (=> b!5083192 (= e!3170567 (not (isEmpty!31670 (right!43176 (right!43176 ys!41)))))))

(declare-fun b!5083193 () Bool)

(declare-fun res!2163997 () Bool)

(assert (=> b!5083193 (=> (not res!2163997) (not e!3170567))))

(assert (=> b!5083193 (= res!2163997 (isBalanced!4446 (left!42846 (right!43176 ys!41))))))

(declare-fun d!1644169 () Bool)

(declare-fun res!2163995 () Bool)

(assert (=> d!1644169 (=> res!2163995 e!3170568)))

(assert (=> d!1644169 (= res!2163995 (not ((_ is Node!15584) (right!43176 ys!41))))))

(assert (=> d!1644169 (= (isBalanced!4446 (right!43176 ys!41)) e!3170568)))

(assert (= (and d!1644169 (not res!2163995)) b!5083188))

(assert (= (and b!5083188 res!2163996) b!5083191))

(assert (= (and b!5083191 res!2163999) b!5083193))

(assert (= (and b!5083193 res!2163997) b!5083190))

(assert (= (and b!5083190 res!2163998) b!5083189))

(assert (= (and b!5083189 res!2163994) b!5083192))

(declare-fun m!6138108 () Bool)

(assert (=> b!5083189 m!6138108))

(assert (=> b!5083191 m!6138002))

(assert (=> b!5083191 m!6138004))

(declare-fun m!6138110 () Bool)

(assert (=> b!5083190 m!6138110))

(declare-fun m!6138112 () Bool)

(assert (=> b!5083193 m!6138112))

(assert (=> b!5083188 m!6138002))

(assert (=> b!5083188 m!6138004))

(declare-fun m!6138114 () Bool)

(assert (=> b!5083192 m!6138114))

(assert (=> b!5083022 d!1644169))

(assert (=> b!5082977 d!1644095))

(assert (=> b!5082977 d!1644101))

(declare-fun d!1644171 () Bool)

(declare-fun res!2164000 () Bool)

(declare-fun e!3170569 () Bool)

(assert (=> d!1644171 (=> (not res!2164000) (not e!3170569))))

(assert (=> d!1644171 (= res!2164000 (<= (size!39114 (list!19030 (xs!18962 (left!42846 ys!41)))) 512))))

(assert (=> d!1644171 (= (inv!77668 (left!42846 ys!41)) e!3170569)))

(declare-fun b!5083194 () Bool)

(declare-fun res!2164001 () Bool)

(assert (=> b!5083194 (=> (not res!2164001) (not e!3170569))))

(assert (=> b!5083194 (= res!2164001 (= (csize!31399 (left!42846 ys!41)) (size!39114 (list!19030 (xs!18962 (left!42846 ys!41))))))))

(declare-fun b!5083195 () Bool)

(assert (=> b!5083195 (= e!3170569 (and (> (csize!31399 (left!42846 ys!41)) 0) (<= (csize!31399 (left!42846 ys!41)) 512)))))

(assert (= (and d!1644171 res!2164000) b!5083194))

(assert (= (and b!5083194 res!2164001) b!5083195))

(declare-fun m!6138116 () Bool)

(assert (=> d!1644171 m!6138116))

(assert (=> d!1644171 m!6138116))

(declare-fun m!6138118 () Bool)

(assert (=> d!1644171 m!6138118))

(assert (=> b!5083194 m!6138116))

(assert (=> b!5083194 m!6138116))

(assert (=> b!5083194 m!6138118))

(assert (=> b!5083046 d!1644171))

(declare-fun d!1644173 () Bool)

(declare-fun lt!2091275 () Bool)

(assert (=> d!1644173 (= lt!2091275 (isEmpty!31672 (list!19028 (left!42846 ys!41))))))

(assert (=> d!1644173 (= lt!2091275 (= (size!39116 (left!42846 ys!41)) 0))))

(assert (=> d!1644173 (= (isEmpty!31670 (left!42846 ys!41)) lt!2091275)))

(declare-fun bs!1190754 () Bool)

(assert (= bs!1190754 d!1644173))

(declare-fun m!6138120 () Bool)

(assert (=> bs!1190754 m!6138120))

(assert (=> bs!1190754 m!6138120))

(declare-fun m!6138122 () Bool)

(assert (=> bs!1190754 m!6138122))

(assert (=> bs!1190754 m!6138104))

(assert (=> b!5083021 d!1644173))

(assert (=> b!5083020 d!1644093))

(assert (=> b!5083020 d!1644091))

(assert (=> b!5082976 d!1644121))

(assert (=> b!5082976 d!1644123))

(declare-fun d!1644175 () Bool)

(declare-fun lt!2091278 () Int)

(assert (=> d!1644175 (>= lt!2091278 0)))

(declare-fun e!3170572 () Int)

(assert (=> d!1644175 (= lt!2091278 e!3170572)))

(declare-fun c!873354 () Bool)

(assert (=> d!1644175 (= c!873354 ((_ is Nil!58454) (innerList!15672 (xs!18962 ys!41))))))

(assert (=> d!1644175 (= (size!39114 (innerList!15672 (xs!18962 ys!41))) lt!2091278)))

(declare-fun b!5083200 () Bool)

(assert (=> b!5083200 (= e!3170572 0)))

(declare-fun b!5083201 () Bool)

(assert (=> b!5083201 (= e!3170572 (+ 1 (size!39114 (t!371405 (innerList!15672 (xs!18962 ys!41))))))))

(assert (= (and d!1644175 c!873354) b!5083200))

(assert (= (and d!1644175 (not c!873354)) b!5083201))

(declare-fun m!6138124 () Bool)

(assert (=> b!5083201 m!6138124))

(assert (=> d!1644071 d!1644175))

(declare-fun d!1644183 () Bool)

(declare-fun res!2164002 () Bool)

(declare-fun e!3170573 () Bool)

(assert (=> d!1644183 (=> (not res!2164002) (not e!3170573))))

(assert (=> d!1644183 (= res!2164002 (<= (size!39114 (list!19030 (xs!18962 xs!286))) 512))))

(assert (=> d!1644183 (= (inv!77668 xs!286) e!3170573)))

(declare-fun b!5083202 () Bool)

(declare-fun res!2164003 () Bool)

(assert (=> b!5083202 (=> (not res!2164003) (not e!3170573))))

(assert (=> b!5083202 (= res!2164003 (= (csize!31399 xs!286) (size!39114 (list!19030 (xs!18962 xs!286)))))))

(declare-fun b!5083203 () Bool)

(assert (=> b!5083203 (= e!3170573 (and (> (csize!31399 xs!286) 0) (<= (csize!31399 xs!286) 512)))))

(assert (= (and d!1644183 res!2164002) b!5083202))

(assert (= (and b!5083202 res!2164003) b!5083203))

(declare-fun m!6138126 () Bool)

(assert (=> d!1644183 m!6138126))

(assert (=> d!1644183 m!6138126))

(declare-fun m!6138128 () Bool)

(assert (=> d!1644183 m!6138128))

(assert (=> b!5083202 m!6138126))

(assert (=> b!5083202 m!6138126))

(assert (=> b!5083202 m!6138128))

(assert (=> b!5083064 d!1644183))

(declare-fun d!1644185 () Bool)

(declare-fun res!2164004 () Bool)

(declare-fun e!3170574 () Bool)

(assert (=> d!1644185 (=> (not res!2164004) (not e!3170574))))

(assert (=> d!1644185 (= res!2164004 (<= (size!39114 (list!19030 (xs!18962 (left!42846 xs!286)))) 512))))

(assert (=> d!1644185 (= (inv!77668 (left!42846 xs!286)) e!3170574)))

(declare-fun b!5083204 () Bool)

(declare-fun res!2164005 () Bool)

(assert (=> b!5083204 (=> (not res!2164005) (not e!3170574))))

(assert (=> b!5083204 (= res!2164005 (= (csize!31399 (left!42846 xs!286)) (size!39114 (list!19030 (xs!18962 (left!42846 xs!286))))))))

(declare-fun b!5083205 () Bool)

(assert (=> b!5083205 (= e!3170574 (and (> (csize!31399 (left!42846 xs!286)) 0) (<= (csize!31399 (left!42846 xs!286)) 512)))))

(assert (= (and d!1644185 res!2164004) b!5083204))

(assert (= (and b!5083204 res!2164005) b!5083205))

(declare-fun m!6138130 () Bool)

(assert (=> d!1644185 m!6138130))

(assert (=> d!1644185 m!6138130))

(declare-fun m!6138132 () Bool)

(assert (=> d!1644185 m!6138132))

(assert (=> b!5083204 m!6138130))

(assert (=> b!5083204 m!6138130))

(assert (=> b!5083204 m!6138132))

(assert (=> b!5083076 d!1644185))

(declare-fun d!1644187 () Bool)

(declare-fun lt!2091279 () Int)

(assert (=> d!1644187 (>= lt!2091279 0)))

(declare-fun e!3170577 () Int)

(assert (=> d!1644187 (= lt!2091279 e!3170577)))

(declare-fun c!873355 () Bool)

(assert (=> d!1644187 (= c!873355 ((_ is Nil!58454) (innerList!15672 (xs!18962 xs!286))))))

(assert (=> d!1644187 (= (size!39114 (innerList!15672 (xs!18962 xs!286))) lt!2091279)))

(declare-fun b!5083210 () Bool)

(assert (=> b!5083210 (= e!3170577 0)))

(declare-fun b!5083211 () Bool)

(assert (=> b!5083211 (= e!3170577 (+ 1 (size!39114 (t!371405 (innerList!15672 (xs!18962 xs!286))))))))

(assert (= (and d!1644187 c!873355) b!5083210))

(assert (= (and d!1644187 (not c!873355)) b!5083211))

(declare-fun m!6138134 () Bool)

(assert (=> b!5083211 m!6138134))

(assert (=> d!1644117 d!1644187))

(declare-fun d!1644189 () Bool)

(declare-fun c!873356 () Bool)

(assert (=> d!1644189 (= c!873356 ((_ is Node!15584) (left!42846 (right!43176 xs!286))))))

(declare-fun e!3170578 () Bool)

(assert (=> d!1644189 (= (inv!77665 (left!42846 (right!43176 xs!286))) e!3170578)))

(declare-fun b!5083212 () Bool)

(assert (=> b!5083212 (= e!3170578 (inv!77667 (left!42846 (right!43176 xs!286))))))

(declare-fun b!5083213 () Bool)

(declare-fun e!3170579 () Bool)

(assert (=> b!5083213 (= e!3170578 e!3170579)))

(declare-fun res!2164010 () Bool)

(assert (=> b!5083213 (= res!2164010 (not ((_ is Leaf!25881) (left!42846 (right!43176 xs!286)))))))

(assert (=> b!5083213 (=> res!2164010 e!3170579)))

(declare-fun b!5083214 () Bool)

(assert (=> b!5083214 (= e!3170579 (inv!77668 (left!42846 (right!43176 xs!286))))))

(assert (= (and d!1644189 c!873356) b!5083212))

(assert (= (and d!1644189 (not c!873356)) b!5083213))

(assert (= (and b!5083213 (not res!2164010)) b!5083214))

(declare-fun m!6138136 () Bool)

(assert (=> b!5083212 m!6138136))

(declare-fun m!6138138 () Bool)

(assert (=> b!5083214 m!6138138))

(assert (=> b!5083128 d!1644189))

(declare-fun d!1644191 () Bool)

(declare-fun c!873357 () Bool)

(assert (=> d!1644191 (= c!873357 ((_ is Node!15584) (right!43176 (right!43176 xs!286))))))

(declare-fun e!3170580 () Bool)

(assert (=> d!1644191 (= (inv!77665 (right!43176 (right!43176 xs!286))) e!3170580)))

(declare-fun b!5083215 () Bool)

(assert (=> b!5083215 (= e!3170580 (inv!77667 (right!43176 (right!43176 xs!286))))))

(declare-fun b!5083216 () Bool)

(declare-fun e!3170581 () Bool)

(assert (=> b!5083216 (= e!3170580 e!3170581)))

(declare-fun res!2164011 () Bool)

(assert (=> b!5083216 (= res!2164011 (not ((_ is Leaf!25881) (right!43176 (right!43176 xs!286)))))))

(assert (=> b!5083216 (=> res!2164011 e!3170581)))

(declare-fun b!5083217 () Bool)

(assert (=> b!5083217 (= e!3170581 (inv!77668 (right!43176 (right!43176 xs!286))))))

(assert (= (and d!1644191 c!873357) b!5083215))

(assert (= (and d!1644191 (not c!873357)) b!5083216))

(assert (= (and b!5083216 (not res!2164011)) b!5083217))

(declare-fun m!6138140 () Bool)

(assert (=> b!5083215 m!6138140))

(declare-fun m!6138142 () Bool)

(assert (=> b!5083217 m!6138142))

(assert (=> b!5083128 d!1644191))

(declare-fun d!1644193 () Bool)

(assert (=> d!1644193 (= (inv!77666 (xs!18962 (left!42846 xs!286))) (<= (size!39114 (innerList!15672 (xs!18962 (left!42846 xs!286)))) 2147483647))))

(declare-fun bs!1190755 () Bool)

(assert (= bs!1190755 d!1644193))

(declare-fun m!6138144 () Bool)

(assert (=> bs!1190755 m!6138144))

(assert (=> b!5083123 d!1644193))

(declare-fun d!1644195 () Bool)

(declare-fun c!873358 () Bool)

(assert (=> d!1644195 (= c!873358 ((_ is Node!15584) (left!42846 (left!42846 xs!286))))))

(declare-fun e!3170582 () Bool)

(assert (=> d!1644195 (= (inv!77665 (left!42846 (left!42846 xs!286))) e!3170582)))

(declare-fun b!5083218 () Bool)

(assert (=> b!5083218 (= e!3170582 (inv!77667 (left!42846 (left!42846 xs!286))))))

(declare-fun b!5083219 () Bool)

(declare-fun e!3170583 () Bool)

(assert (=> b!5083219 (= e!3170582 e!3170583)))

(declare-fun res!2164012 () Bool)

(assert (=> b!5083219 (= res!2164012 (not ((_ is Leaf!25881) (left!42846 (left!42846 xs!286)))))))

(assert (=> b!5083219 (=> res!2164012 e!3170583)))

(declare-fun b!5083220 () Bool)

(assert (=> b!5083220 (= e!3170583 (inv!77668 (left!42846 (left!42846 xs!286))))))

(assert (= (and d!1644195 c!873358) b!5083218))

(assert (= (and d!1644195 (not c!873358)) b!5083219))

(assert (= (and b!5083219 (not res!2164012)) b!5083220))

(declare-fun m!6138146 () Bool)

(assert (=> b!5083218 m!6138146))

(declare-fun m!6138148 () Bool)

(assert (=> b!5083220 m!6138148))

(assert (=> b!5083122 d!1644195))

(declare-fun d!1644197 () Bool)

(declare-fun c!873359 () Bool)

(assert (=> d!1644197 (= c!873359 ((_ is Node!15584) (right!43176 (left!42846 xs!286))))))

(declare-fun e!3170584 () Bool)

(assert (=> d!1644197 (= (inv!77665 (right!43176 (left!42846 xs!286))) e!3170584)))

(declare-fun b!5083221 () Bool)

(assert (=> b!5083221 (= e!3170584 (inv!77667 (right!43176 (left!42846 xs!286))))))

(declare-fun b!5083222 () Bool)

(declare-fun e!3170585 () Bool)

(assert (=> b!5083222 (= e!3170584 e!3170585)))

(declare-fun res!2164013 () Bool)

(assert (=> b!5083222 (= res!2164013 (not ((_ is Leaf!25881) (right!43176 (left!42846 xs!286)))))))

(assert (=> b!5083222 (=> res!2164013 e!3170585)))

(declare-fun b!5083223 () Bool)

(assert (=> b!5083223 (= e!3170585 (inv!77668 (right!43176 (left!42846 xs!286))))))

(assert (= (and d!1644197 c!873359) b!5083221))

(assert (= (and d!1644197 (not c!873359)) b!5083222))

(assert (= (and b!5083222 (not res!2164013)) b!5083223))

(declare-fun m!6138150 () Bool)

(assert (=> b!5083221 m!6138150))

(declare-fun m!6138152 () Bool)

(assert (=> b!5083223 m!6138152))

(assert (=> b!5083122 d!1644197))

(declare-fun d!1644199 () Bool)

(declare-fun res!2164014 () Bool)

(declare-fun e!3170586 () Bool)

(assert (=> d!1644199 (=> (not res!2164014) (not e!3170586))))

(assert (=> d!1644199 (= res!2164014 (<= (size!39114 (list!19030 (xs!18962 (right!43176 xs!286)))) 512))))

(assert (=> d!1644199 (= (inv!77668 (right!43176 xs!286)) e!3170586)))

(declare-fun b!5083224 () Bool)

(declare-fun res!2164015 () Bool)

(assert (=> b!5083224 (=> (not res!2164015) (not e!3170586))))

(assert (=> b!5083224 (= res!2164015 (= (csize!31399 (right!43176 xs!286)) (size!39114 (list!19030 (xs!18962 (right!43176 xs!286))))))))

(declare-fun b!5083225 () Bool)

(assert (=> b!5083225 (= e!3170586 (and (> (csize!31399 (right!43176 xs!286)) 0) (<= (csize!31399 (right!43176 xs!286)) 512)))))

(assert (= (and d!1644199 res!2164014) b!5083224))

(assert (= (and b!5083224 res!2164015) b!5083225))

(declare-fun m!6138154 () Bool)

(assert (=> d!1644199 m!6138154))

(assert (=> d!1644199 m!6138154))

(declare-fun m!6138156 () Bool)

(assert (=> d!1644199 m!6138156))

(assert (=> b!5083224 m!6138154))

(assert (=> b!5083224 m!6138154))

(assert (=> b!5083224 m!6138156))

(assert (=> b!5083083 d!1644199))

(declare-fun b!5083226 () Bool)

(declare-fun e!3170588 () Bool)

(declare-fun e!3170587 () Bool)

(assert (=> b!5083226 (= e!3170588 e!3170587)))

(declare-fun res!2164018 () Bool)

(assert (=> b!5083226 (=> (not res!2164018) (not e!3170587))))

(assert (=> b!5083226 (= res!2164018 (<= (- 1) (- (height!2161 (left!42846 (left!42846 ys!41))) (height!2161 (right!43176 (left!42846 ys!41))))))))

(declare-fun b!5083227 () Bool)

(declare-fun res!2164016 () Bool)

(assert (=> b!5083227 (=> (not res!2164016) (not e!3170587))))

(assert (=> b!5083227 (= res!2164016 (not (isEmpty!31670 (left!42846 (left!42846 ys!41)))))))

(declare-fun b!5083228 () Bool)

(declare-fun res!2164020 () Bool)

(assert (=> b!5083228 (=> (not res!2164020) (not e!3170587))))

(assert (=> b!5083228 (= res!2164020 (isBalanced!4446 (right!43176 (left!42846 ys!41))))))

(declare-fun b!5083229 () Bool)

(declare-fun res!2164021 () Bool)

(assert (=> b!5083229 (=> (not res!2164021) (not e!3170587))))

(assert (=> b!5083229 (= res!2164021 (<= (- (height!2161 (left!42846 (left!42846 ys!41))) (height!2161 (right!43176 (left!42846 ys!41)))) 1))))

(declare-fun b!5083230 () Bool)

(assert (=> b!5083230 (= e!3170587 (not (isEmpty!31670 (right!43176 (left!42846 ys!41)))))))

(declare-fun b!5083231 () Bool)

(declare-fun res!2164019 () Bool)

(assert (=> b!5083231 (=> (not res!2164019) (not e!3170587))))

(assert (=> b!5083231 (= res!2164019 (isBalanced!4446 (left!42846 (left!42846 ys!41))))))

(declare-fun d!1644201 () Bool)

(declare-fun res!2164017 () Bool)

(assert (=> d!1644201 (=> res!2164017 e!3170588)))

(assert (=> d!1644201 (= res!2164017 (not ((_ is Node!15584) (left!42846 ys!41))))))

(assert (=> d!1644201 (= (isBalanced!4446 (left!42846 ys!41)) e!3170588)))

(assert (= (and d!1644201 (not res!2164017)) b!5083226))

(assert (= (and b!5083226 res!2164018) b!5083229))

(assert (= (and b!5083229 res!2164021) b!5083231))

(assert (= (and b!5083231 res!2164019) b!5083228))

(assert (= (and b!5083228 res!2164020) b!5083227))

(assert (= (and b!5083227 res!2164016) b!5083230))

(declare-fun m!6138158 () Bool)

(assert (=> b!5083227 m!6138158))

(assert (=> b!5083229 m!6138038))

(assert (=> b!5083229 m!6138040))

(declare-fun m!6138162 () Bool)

(assert (=> b!5083228 m!6138162))

(declare-fun m!6138164 () Bool)

(assert (=> b!5083231 m!6138164))

(assert (=> b!5083226 m!6138038))

(assert (=> b!5083226 m!6138040))

(declare-fun m!6138168 () Bool)

(assert (=> b!5083230 m!6138168))

(assert (=> b!5083025 d!1644201))

(declare-fun tp!1417352 () Bool)

(declare-fun e!3170590 () Bool)

(declare-fun tp!1417353 () Bool)

(declare-fun b!5083234 () Bool)

(assert (=> b!5083234 (= e!3170590 (and (inv!77665 (left!42846 (left!42846 (right!43176 xs!286)))) tp!1417353 (inv!77665 (right!43176 (left!42846 (right!43176 xs!286)))) tp!1417352))))

(declare-fun b!5083236 () Bool)

(declare-fun e!3170591 () Bool)

(declare-fun tp!1417354 () Bool)

(assert (=> b!5083236 (= e!3170591 tp!1417354)))

(declare-fun b!5083235 () Bool)

(assert (=> b!5083235 (= e!3170590 (and (inv!77666 (xs!18962 (left!42846 (right!43176 xs!286)))) e!3170591))))

(assert (=> b!5083128 (= tp!1417349 (and (inv!77665 (left!42846 (right!43176 xs!286))) e!3170590))))

(assert (= (and b!5083128 ((_ is Node!15584) (left!42846 (right!43176 xs!286)))) b!5083234))

(assert (= b!5083235 b!5083236))

(assert (= (and b!5083128 ((_ is Leaf!25881) (left!42846 (right!43176 xs!286)))) b!5083235))

(declare-fun m!6138170 () Bool)

(assert (=> b!5083234 m!6138170))

(declare-fun m!6138172 () Bool)

(assert (=> b!5083234 m!6138172))

(declare-fun m!6138174 () Bool)

(assert (=> b!5083235 m!6138174))

(assert (=> b!5083128 m!6137992))

(declare-fun e!3170592 () Bool)

(declare-fun tp!1417356 () Bool)

(declare-fun tp!1417355 () Bool)

(declare-fun b!5083237 () Bool)

(assert (=> b!5083237 (= e!3170592 (and (inv!77665 (left!42846 (right!43176 (right!43176 xs!286)))) tp!1417356 (inv!77665 (right!43176 (right!43176 (right!43176 xs!286)))) tp!1417355))))

(declare-fun b!5083239 () Bool)

(declare-fun e!3170593 () Bool)

(declare-fun tp!1417357 () Bool)

(assert (=> b!5083239 (= e!3170593 tp!1417357)))

(declare-fun b!5083238 () Bool)

(assert (=> b!5083238 (= e!3170592 (and (inv!77666 (xs!18962 (right!43176 (right!43176 xs!286)))) e!3170593))))

(assert (=> b!5083128 (= tp!1417348 (and (inv!77665 (right!43176 (right!43176 xs!286))) e!3170592))))

(assert (= (and b!5083128 ((_ is Node!15584) (right!43176 (right!43176 xs!286)))) b!5083237))

(assert (= b!5083238 b!5083239))

(assert (= (and b!5083128 ((_ is Leaf!25881) (right!43176 (right!43176 xs!286)))) b!5083238))

(declare-fun m!6138176 () Bool)

(assert (=> b!5083237 m!6138176))

(declare-fun m!6138178 () Bool)

(assert (=> b!5083237 m!6138178))

(declare-fun m!6138180 () Bool)

(assert (=> b!5083238 m!6138180))

(assert (=> b!5083128 m!6137994))

(declare-fun b!5083240 () Bool)

(declare-fun e!3170594 () Bool)

(declare-fun tp!1417358 () Bool)

(assert (=> b!5083240 (= e!3170594 (and tp_is_empty!37091 tp!1417358))))

(assert (=> b!5083131 (= tp!1417351 e!3170594)))

(assert (= (and b!5083131 ((_ is Cons!58454) (t!371405 (innerList!15672 (xs!18962 ys!41))))) b!5083240))

(declare-fun b!5083241 () Bool)

(declare-fun e!3170595 () Bool)

(declare-fun tp!1417359 () Bool)

(assert (=> b!5083241 (= e!3170595 (and tp_is_empty!37091 tp!1417359))))

(assert (=> b!5083118 (= tp!1417338 e!3170595)))

(assert (= (and b!5083118 ((_ is Cons!58454) (innerList!15672 (xs!18962 (right!43176 ys!41))))) b!5083241))

(declare-fun b!5083242 () Bool)

(declare-fun e!3170596 () Bool)

(declare-fun tp!1417360 () Bool)

(assert (=> b!5083242 (= e!3170596 (and tp_is_empty!37091 tp!1417360))))

(assert (=> b!5083097 (= tp!1417319 e!3170596)))

(assert (= (and b!5083097 ((_ is Cons!58454) (t!371405 (innerList!15672 (xs!18962 xs!286))))) b!5083242))

(declare-fun tp!1417362 () Bool)

(declare-fun b!5083243 () Bool)

(declare-fun e!3170597 () Bool)

(declare-fun tp!1417361 () Bool)

(assert (=> b!5083243 (= e!3170597 (and (inv!77665 (left!42846 (left!42846 (left!42846 xs!286)))) tp!1417362 (inv!77665 (right!43176 (left!42846 (left!42846 xs!286)))) tp!1417361))))

(declare-fun b!5083245 () Bool)

(declare-fun e!3170598 () Bool)

(declare-fun tp!1417363 () Bool)

(assert (=> b!5083245 (= e!3170598 tp!1417363)))

(declare-fun b!5083244 () Bool)

(assert (=> b!5083244 (= e!3170597 (and (inv!77666 (xs!18962 (left!42846 (left!42846 xs!286)))) e!3170598))))

(assert (=> b!5083122 (= tp!1417344 (and (inv!77665 (left!42846 (left!42846 xs!286))) e!3170597))))

(assert (= (and b!5083122 ((_ is Node!15584) (left!42846 (left!42846 xs!286)))) b!5083243))

(assert (= b!5083244 b!5083245))

(assert (= (and b!5083122 ((_ is Leaf!25881) (left!42846 (left!42846 xs!286)))) b!5083244))

(declare-fun m!6138182 () Bool)

(assert (=> b!5083243 m!6138182))

(declare-fun m!6138184 () Bool)

(assert (=> b!5083243 m!6138184))

(declare-fun m!6138186 () Bool)

(assert (=> b!5083244 m!6138186))

(assert (=> b!5083122 m!6137980))

(declare-fun tp!1417364 () Bool)

(declare-fun e!3170599 () Bool)

(declare-fun tp!1417365 () Bool)

(declare-fun b!5083248 () Bool)

(assert (=> b!5083248 (= e!3170599 (and (inv!77665 (left!42846 (right!43176 (left!42846 xs!286)))) tp!1417365 (inv!77665 (right!43176 (right!43176 (left!42846 xs!286)))) tp!1417364))))

(declare-fun b!5083251 () Bool)

(declare-fun e!3170600 () Bool)

(declare-fun tp!1417366 () Bool)

(assert (=> b!5083251 (= e!3170600 tp!1417366)))

(declare-fun b!5083249 () Bool)

(assert (=> b!5083249 (= e!3170599 (and (inv!77666 (xs!18962 (right!43176 (left!42846 xs!286)))) e!3170600))))

(assert (=> b!5083122 (= tp!1417342 (and (inv!77665 (right!43176 (left!42846 xs!286))) e!3170599))))

(assert (= (and b!5083122 ((_ is Node!15584) (right!43176 (left!42846 xs!286)))) b!5083248))

(assert (= b!5083249 b!5083251))

(assert (= (and b!5083122 ((_ is Leaf!25881) (right!43176 (left!42846 xs!286)))) b!5083249))

(declare-fun m!6138188 () Bool)

(assert (=> b!5083248 m!6138188))

(declare-fun m!6138190 () Bool)

(assert (=> b!5083248 m!6138190))

(declare-fun m!6138192 () Bool)

(assert (=> b!5083249 m!6138192))

(assert (=> b!5083122 m!6137984))

(declare-fun e!3170603 () Bool)

(declare-fun tp!1417367 () Bool)

(declare-fun b!5083253 () Bool)

(declare-fun tp!1417368 () Bool)

(assert (=> b!5083253 (= e!3170603 (and (inv!77665 (left!42846 (left!42846 (right!43176 ys!41)))) tp!1417368 (inv!77665 (right!43176 (left!42846 (right!43176 ys!41)))) tp!1417367))))

(declare-fun b!5083255 () Bool)

(declare-fun e!3170604 () Bool)

(declare-fun tp!1417369 () Bool)

(assert (=> b!5083255 (= e!3170604 tp!1417369)))

(declare-fun b!5083254 () Bool)

(assert (=> b!5083254 (= e!3170603 (and (inv!77666 (xs!18962 (left!42846 (right!43176 ys!41)))) e!3170604))))

(assert (=> b!5083116 (= tp!1417337 (and (inv!77665 (left!42846 (right!43176 ys!41))) e!3170603))))

(assert (= (and b!5083116 ((_ is Node!15584) (left!42846 (right!43176 ys!41)))) b!5083253))

(assert (= b!5083254 b!5083255))

(assert (= (and b!5083116 ((_ is Leaf!25881) (left!42846 (right!43176 ys!41)))) b!5083254))

(declare-fun m!6138194 () Bool)

(assert (=> b!5083253 m!6138194))

(declare-fun m!6138196 () Bool)

(assert (=> b!5083253 m!6138196))

(declare-fun m!6138198 () Bool)

(assert (=> b!5083254 m!6138198))

(assert (=> b!5083116 m!6137968))

(declare-fun tp!1417370 () Bool)

(declare-fun b!5083256 () Bool)

(declare-fun tp!1417371 () Bool)

(declare-fun e!3170605 () Bool)

(assert (=> b!5083256 (= e!3170605 (and (inv!77665 (left!42846 (right!43176 (right!43176 ys!41)))) tp!1417371 (inv!77665 (right!43176 (right!43176 (right!43176 ys!41)))) tp!1417370))))

(declare-fun b!5083258 () Bool)

(declare-fun e!3170606 () Bool)

(declare-fun tp!1417372 () Bool)

(assert (=> b!5083258 (= e!3170606 tp!1417372)))

(declare-fun b!5083257 () Bool)

(assert (=> b!5083257 (= e!3170605 (and (inv!77666 (xs!18962 (right!43176 (right!43176 ys!41)))) e!3170606))))

(assert (=> b!5083116 (= tp!1417336 (and (inv!77665 (right!43176 (right!43176 ys!41))) e!3170605))))

(assert (= (and b!5083116 ((_ is Node!15584) (right!43176 (right!43176 ys!41)))) b!5083256))

(assert (= b!5083257 b!5083258))

(assert (= (and b!5083116 ((_ is Leaf!25881) (right!43176 (right!43176 ys!41)))) b!5083257))

(declare-fun m!6138200 () Bool)

(assert (=> b!5083256 m!6138200))

(declare-fun m!6138202 () Bool)

(assert (=> b!5083256 m!6138202))

(declare-fun m!6138204 () Bool)

(assert (=> b!5083257 m!6138204))

(assert (=> b!5083116 m!6137972))

(declare-fun b!5083259 () Bool)

(declare-fun e!3170607 () Bool)

(declare-fun tp!1417373 () Bool)

(assert (=> b!5083259 (= e!3170607 (and tp_is_empty!37091 tp!1417373))))

(assert (=> b!5083114 (= tp!1417334 e!3170607)))

(assert (= (and b!5083114 ((_ is Cons!58454) (innerList!15672 (xs!18962 (left!42846 ys!41))))) b!5083259))

(declare-fun b!5083260 () Bool)

(declare-fun e!3170608 () Bool)

(declare-fun tp!1417374 () Bool)

(assert (=> b!5083260 (= e!3170608 (and tp_is_empty!37091 tp!1417374))))

(assert (=> b!5083130 (= tp!1417350 e!3170608)))

(assert (= (and b!5083130 ((_ is Cons!58454) (innerList!15672 (xs!18962 (right!43176 xs!286))))) b!5083260))

(declare-fun b!5083261 () Bool)

(declare-fun e!3170609 () Bool)

(declare-fun tp!1417375 () Bool)

(assert (=> b!5083261 (= e!3170609 (and tp_is_empty!37091 tp!1417375))))

(assert (=> b!5083125 (= tp!1417346 e!3170609)))

(assert (= (and b!5083125 ((_ is Cons!58454) (innerList!15672 (xs!18962 (left!42846 xs!286))))) b!5083261))

(declare-fun tp!1417377 () Bool)

(declare-fun b!5083262 () Bool)

(declare-fun e!3170610 () Bool)

(declare-fun tp!1417376 () Bool)

(assert (=> b!5083262 (= e!3170610 (and (inv!77665 (left!42846 (left!42846 (left!42846 ys!41)))) tp!1417377 (inv!77665 (right!43176 (left!42846 (left!42846 ys!41)))) tp!1417376))))

(declare-fun b!5083264 () Bool)

(declare-fun e!3170611 () Bool)

(declare-fun tp!1417378 () Bool)

(assert (=> b!5083264 (= e!3170611 tp!1417378)))

(declare-fun b!5083263 () Bool)

(assert (=> b!5083263 (= e!3170610 (and (inv!77666 (xs!18962 (left!42846 (left!42846 ys!41)))) e!3170611))))

(assert (=> b!5083112 (= tp!1417333 (and (inv!77665 (left!42846 (left!42846 ys!41))) e!3170610))))

(assert (= (and b!5083112 ((_ is Node!15584) (left!42846 (left!42846 ys!41)))) b!5083262))

(assert (= b!5083263 b!5083264))

(assert (= (and b!5083112 ((_ is Leaf!25881) (left!42846 (left!42846 ys!41)))) b!5083263))

(declare-fun m!6138206 () Bool)

(assert (=> b!5083262 m!6138206))

(declare-fun m!6138208 () Bool)

(assert (=> b!5083262 m!6138208))

(declare-fun m!6138210 () Bool)

(assert (=> b!5083263 m!6138210))

(assert (=> b!5083112 m!6137962))

(declare-fun b!5083265 () Bool)

(declare-fun tp!1417380 () Bool)

(declare-fun e!3170612 () Bool)

(declare-fun tp!1417379 () Bool)

(assert (=> b!5083265 (= e!3170612 (and (inv!77665 (left!42846 (right!43176 (left!42846 ys!41)))) tp!1417380 (inv!77665 (right!43176 (right!43176 (left!42846 ys!41)))) tp!1417379))))

(declare-fun b!5083267 () Bool)

(declare-fun e!3170613 () Bool)

(declare-fun tp!1417381 () Bool)

(assert (=> b!5083267 (= e!3170613 tp!1417381)))

(declare-fun b!5083266 () Bool)

(assert (=> b!5083266 (= e!3170612 (and (inv!77666 (xs!18962 (right!43176 (left!42846 ys!41)))) e!3170613))))

(assert (=> b!5083112 (= tp!1417332 (and (inv!77665 (right!43176 (left!42846 ys!41))) e!3170612))))

(assert (= (and b!5083112 ((_ is Node!15584) (right!43176 (left!42846 ys!41)))) b!5083265))

(assert (= b!5083266 b!5083267))

(assert (= (and b!5083112 ((_ is Leaf!25881) (right!43176 (left!42846 ys!41)))) b!5083266))

(declare-fun m!6138212 () Bool)

(assert (=> b!5083265 m!6138212))

(declare-fun m!6138214 () Bool)

(assert (=> b!5083265 m!6138214))

(declare-fun m!6138216 () Bool)

(assert (=> b!5083266 m!6138216))

(assert (=> b!5083112 m!6137964))

(check-sat (not b!5083262) (not b!5083229) (not b!5083166) (not b!5083220) (not b!5083191) (not d!1644153) (not b!5083234) (not b!5083194) (not b!5083153) (not b!5083190) (not b!5083158) (not d!1644171) (not d!1644185) (not b!5083227) (not b!5083261) (not d!1644173) (not b!5083235) (not b!5083253) (not b!5083201) (not b!5083211) (not d!1644163) (not b!5083266) (not b!5083263) (not d!1644143) (not b!5083238) (not d!1644139) (not b!5083169) (not d!1644137) (not b!5083214) (not d!1644167) (not b!5083174) (not d!1644127) (not b!5083242) (not d!1644165) (not b!5083151) (not b!5083186) (not b!5083236) (not b!5083264) (not b!5083228) (not d!1644193) (not b!5083112) (not b!5083193) (not b!5083243) (not b!5083172) (not b!5083231) (not b!5083267) (not b!5083173) (not d!1644125) (not b!5083230) (not b!5083240) (not b!5083254) (not b!5083188) (not b!5083251) (not b!5083239) (not b!5083226) (not b!5083204) (not b!5083260) (not b!5083241) (not b!5083256) (not b!5083215) (not b!5083142) (not b!5083217) (not b!5083183) (not b!5083265) (not b!5083170) (not b!5083255) (not b!5083176) (not b!5083128) (not b!5083192) (not b!5083245) (not b!5083223) (not d!1644151) (not b!5083171) (not b!5083248) tp_is_empty!37091 (not d!1644161) (not b!5083145) (not b!5083179) (not b!5083144) (not b!5083224) (not b!5083249) (not b!5083168) (not d!1644149) (not d!1644199) (not b!5083180) (not b!5083148) (not b!5083258) (not b!5083202) (not b!5083143) (not b!5083259) (not b!5083244) (not b!5083257) (not b!5083122) (not b!5083146) (not d!1644135) (not b!5083141) (not b!5083189) (not b!5083160) (not b!5083177) (not b!5083139) (not b!5083116) (not b!5083237) (not b!5083221) (not d!1644141) (not b!5083212) (not b!5083156) (not d!1644183) (not b!5083155) (not b!5083218))
(check-sat)
(get-model)

(declare-fun b!5083384 () Bool)

(declare-fun e!3170676 () Bool)

(declare-fun e!3170675 () Bool)

(assert (=> b!5083384 (= e!3170676 e!3170675)))

(declare-fun res!2164092 () Bool)

(assert (=> b!5083384 (=> (not res!2164092) (not e!3170675))))

(assert (=> b!5083384 (= res!2164092 (<= (- 1) (- (height!2161 (left!42846 (left!42846 (right!43176 xs!286)))) (height!2161 (right!43176 (left!42846 (right!43176 xs!286)))))))))

(declare-fun b!5083385 () Bool)

(declare-fun res!2164090 () Bool)

(assert (=> b!5083385 (=> (not res!2164090) (not e!3170675))))

(assert (=> b!5083385 (= res!2164090 (not (isEmpty!31670 (left!42846 (left!42846 (right!43176 xs!286))))))))

(declare-fun b!5083386 () Bool)

(declare-fun res!2164094 () Bool)

(assert (=> b!5083386 (=> (not res!2164094) (not e!3170675))))

(assert (=> b!5083386 (= res!2164094 (isBalanced!4446 (right!43176 (left!42846 (right!43176 xs!286)))))))

(declare-fun b!5083387 () Bool)

(declare-fun res!2164095 () Bool)

(assert (=> b!5083387 (=> (not res!2164095) (not e!3170675))))

(assert (=> b!5083387 (= res!2164095 (<= (- (height!2161 (left!42846 (left!42846 (right!43176 xs!286)))) (height!2161 (right!43176 (left!42846 (right!43176 xs!286))))) 1))))

(declare-fun b!5083388 () Bool)

(assert (=> b!5083388 (= e!3170675 (not (isEmpty!31670 (right!43176 (left!42846 (right!43176 xs!286))))))))

(declare-fun b!5083389 () Bool)

(declare-fun res!2164093 () Bool)

(assert (=> b!5083389 (=> (not res!2164093) (not e!3170675))))

(assert (=> b!5083389 (= res!2164093 (isBalanced!4446 (left!42846 (left!42846 (right!43176 xs!286)))))))

(declare-fun d!1644269 () Bool)

(declare-fun res!2164091 () Bool)

(assert (=> d!1644269 (=> res!2164091 e!3170676)))

(assert (=> d!1644269 (= res!2164091 (not ((_ is Node!15584) (left!42846 (right!43176 xs!286)))))))

(assert (=> d!1644269 (= (isBalanced!4446 (left!42846 (right!43176 xs!286))) e!3170676)))

(assert (= (and d!1644269 (not res!2164091)) b!5083384))

(assert (= (and b!5083384 res!2164092) b!5083387))

(assert (= (and b!5083387 res!2164095) b!5083389))

(assert (= (and b!5083389 res!2164093) b!5083386))

(assert (= (and b!5083386 res!2164094) b!5083385))

(assert (= (and b!5083385 res!2164090) b!5083388))

(declare-fun m!6138430 () Bool)

(assert (=> b!5083385 m!6138430))

(declare-fun m!6138432 () Bool)

(assert (=> b!5083387 m!6138432))

(declare-fun m!6138434 () Bool)

(assert (=> b!5083387 m!6138434))

(declare-fun m!6138436 () Bool)

(assert (=> b!5083386 m!6138436))

(declare-fun m!6138438 () Bool)

(assert (=> b!5083389 m!6138438))

(assert (=> b!5083384 m!6138432))

(assert (=> b!5083384 m!6138434))

(declare-fun m!6138440 () Bool)

(assert (=> b!5083388 m!6138440))

(assert (=> b!5083146 d!1644269))

(declare-fun d!1644271 () Bool)

(assert (=> d!1644271 (= (inv!77666 (xs!18962 (left!42846 (left!42846 ys!41)))) (<= (size!39114 (innerList!15672 (xs!18962 (left!42846 (left!42846 ys!41))))) 2147483647))))

(declare-fun bs!1190764 () Bool)

(assert (= bs!1190764 d!1644271))

(declare-fun m!6138442 () Bool)

(assert (=> bs!1190764 m!6138442))

(assert (=> b!5083263 d!1644271))

(declare-fun d!1644273 () Bool)

(declare-fun lt!2091290 () Int)

(assert (=> d!1644273 (>= lt!2091290 0)))

(declare-fun e!3170677 () Int)

(assert (=> d!1644273 (= lt!2091290 e!3170677)))

(declare-fun c!873372 () Bool)

(assert (=> d!1644273 (= c!873372 ((_ is Nil!58454) (list!19030 (xs!18962 (left!42846 xs!286)))))))

(assert (=> d!1644273 (= (size!39114 (list!19030 (xs!18962 (left!42846 xs!286)))) lt!2091290)))

(declare-fun b!5083390 () Bool)

(assert (=> b!5083390 (= e!3170677 0)))

(declare-fun b!5083391 () Bool)

(assert (=> b!5083391 (= e!3170677 (+ 1 (size!39114 (t!371405 (list!19030 (xs!18962 (left!42846 xs!286)))))))))

(assert (= (and d!1644273 c!873372) b!5083390))

(assert (= (and d!1644273 (not c!873372)) b!5083391))

(declare-fun m!6138444 () Bool)

(assert (=> b!5083391 m!6138444))

(assert (=> d!1644185 d!1644273))

(declare-fun d!1644275 () Bool)

(assert (=> d!1644275 (= (list!19030 (xs!18962 (left!42846 xs!286))) (innerList!15672 (xs!18962 (left!42846 xs!286))))))

(assert (=> d!1644185 d!1644275))

(declare-fun b!5083392 () Bool)

(declare-fun e!3170679 () Bool)

(declare-fun e!3170678 () Bool)

(assert (=> b!5083392 (= e!3170679 e!3170678)))

(declare-fun res!2164098 () Bool)

(assert (=> b!5083392 (=> (not res!2164098) (not e!3170678))))

(assert (=> b!5083392 (= res!2164098 (<= (- 1) (- (height!2161 (left!42846 (right!43176 (left!42846 xs!286)))) (height!2161 (right!43176 (right!43176 (left!42846 xs!286)))))))))

(declare-fun b!5083393 () Bool)

(declare-fun res!2164096 () Bool)

(assert (=> b!5083393 (=> (not res!2164096) (not e!3170678))))

(assert (=> b!5083393 (= res!2164096 (not (isEmpty!31670 (left!42846 (right!43176 (left!42846 xs!286))))))))

(declare-fun b!5083394 () Bool)

(declare-fun res!2164100 () Bool)

(assert (=> b!5083394 (=> (not res!2164100) (not e!3170678))))

(assert (=> b!5083394 (= res!2164100 (isBalanced!4446 (right!43176 (right!43176 (left!42846 xs!286)))))))

(declare-fun b!5083395 () Bool)

(declare-fun res!2164101 () Bool)

(assert (=> b!5083395 (=> (not res!2164101) (not e!3170678))))

(assert (=> b!5083395 (= res!2164101 (<= (- (height!2161 (left!42846 (right!43176 (left!42846 xs!286)))) (height!2161 (right!43176 (right!43176 (left!42846 xs!286))))) 1))))

(declare-fun b!5083396 () Bool)

(assert (=> b!5083396 (= e!3170678 (not (isEmpty!31670 (right!43176 (right!43176 (left!42846 xs!286))))))))

(declare-fun b!5083397 () Bool)

(declare-fun res!2164099 () Bool)

(assert (=> b!5083397 (=> (not res!2164099) (not e!3170678))))

(assert (=> b!5083397 (= res!2164099 (isBalanced!4446 (left!42846 (right!43176 (left!42846 xs!286)))))))

(declare-fun d!1644277 () Bool)

(declare-fun res!2164097 () Bool)

(assert (=> d!1644277 (=> res!2164097 e!3170679)))

(assert (=> d!1644277 (= res!2164097 (not ((_ is Node!15584) (right!43176 (left!42846 xs!286)))))))

(assert (=> d!1644277 (= (isBalanced!4446 (right!43176 (left!42846 xs!286))) e!3170679)))

(assert (= (and d!1644277 (not res!2164097)) b!5083392))

(assert (= (and b!5083392 res!2164098) b!5083395))

(assert (= (and b!5083395 res!2164101) b!5083397))

(assert (= (and b!5083397 res!2164099) b!5083394))

(assert (= (and b!5083394 res!2164100) b!5083393))

(assert (= (and b!5083393 res!2164096) b!5083396))

(declare-fun m!6138446 () Bool)

(assert (=> b!5083393 m!6138446))

(declare-fun m!6138448 () Bool)

(assert (=> b!5083395 m!6138448))

(declare-fun m!6138450 () Bool)

(assert (=> b!5083395 m!6138450))

(declare-fun m!6138452 () Bool)

(assert (=> b!5083394 m!6138452))

(declare-fun m!6138454 () Bool)

(assert (=> b!5083397 m!6138454))

(assert (=> b!5083392 m!6138448))

(assert (=> b!5083392 m!6138450))

(declare-fun m!6138456 () Bool)

(assert (=> b!5083396 m!6138456))

(assert (=> b!5083170 d!1644277))

(declare-fun d!1644279 () Bool)

(declare-fun res!2164102 () Bool)

(declare-fun e!3170680 () Bool)

(assert (=> d!1644279 (=> (not res!2164102) (not e!3170680))))

(assert (=> d!1644279 (= res!2164102 (<= (size!39114 (list!19030 (xs!18962 (right!43176 (right!43176 ys!41))))) 512))))

(assert (=> d!1644279 (= (inv!77668 (right!43176 (right!43176 ys!41))) e!3170680)))

(declare-fun b!5083398 () Bool)

(declare-fun res!2164103 () Bool)

(assert (=> b!5083398 (=> (not res!2164103) (not e!3170680))))

(assert (=> b!5083398 (= res!2164103 (= (csize!31399 (right!43176 (right!43176 ys!41))) (size!39114 (list!19030 (xs!18962 (right!43176 (right!43176 ys!41)))))))))

(declare-fun b!5083399 () Bool)

(assert (=> b!5083399 (= e!3170680 (and (> (csize!31399 (right!43176 (right!43176 ys!41))) 0) (<= (csize!31399 (right!43176 (right!43176 ys!41))) 512)))))

(assert (= (and d!1644279 res!2164102) b!5083398))

(assert (= (and b!5083398 res!2164103) b!5083399))

(declare-fun m!6138458 () Bool)

(assert (=> d!1644279 m!6138458))

(assert (=> d!1644279 m!6138458))

(declare-fun m!6138460 () Bool)

(assert (=> d!1644279 m!6138460))

(assert (=> b!5083398 m!6138458))

(assert (=> b!5083398 m!6138458))

(assert (=> b!5083398 m!6138460))

(assert (=> b!5083158 d!1644279))

(declare-fun d!1644281 () Bool)

(declare-fun lt!2091291 () Int)

(assert (=> d!1644281 (>= lt!2091291 0)))

(declare-fun e!3170681 () Int)

(assert (=> d!1644281 (= lt!2091291 e!3170681)))

(declare-fun c!873373 () Bool)

(assert (=> d!1644281 (= c!873373 ((_ is Nil!58454) (list!19030 (xs!18962 (right!43176 ys!41)))))))

(assert (=> d!1644281 (= (size!39114 (list!19030 (xs!18962 (right!43176 ys!41)))) lt!2091291)))

(declare-fun b!5083400 () Bool)

(assert (=> b!5083400 (= e!3170681 0)))

(declare-fun b!5083401 () Bool)

(assert (=> b!5083401 (= e!3170681 (+ 1 (size!39114 (t!371405 (list!19030 (xs!18962 (right!43176 ys!41)))))))))

(assert (= (and d!1644281 c!873373) b!5083400))

(assert (= (and d!1644281 (not c!873373)) b!5083401))

(declare-fun m!6138462 () Bool)

(assert (=> b!5083401 m!6138462))

(assert (=> b!5083166 d!1644281))

(declare-fun d!1644283 () Bool)

(assert (=> d!1644283 (= (list!19030 (xs!18962 (right!43176 ys!41))) (innerList!15672 (xs!18962 (right!43176 ys!41))))))

(assert (=> b!5083166 d!1644283))

(declare-fun d!1644285 () Bool)

(assert (=> d!1644285 (= (height!2161 (left!42846 (right!43176 xs!286))) (ite ((_ is Empty!15584) (left!42846 (right!43176 xs!286))) 0 (ite ((_ is Leaf!25881) (left!42846 (right!43176 xs!286))) 1 (cheight!15795 (left!42846 (right!43176 xs!286))))))))

(assert (=> b!5083144 d!1644285))

(declare-fun d!1644287 () Bool)

(assert (=> d!1644287 (= (height!2161 (right!43176 (right!43176 xs!286))) (ite ((_ is Empty!15584) (right!43176 (right!43176 xs!286))) 0 (ite ((_ is Leaf!25881) (right!43176 (right!43176 xs!286))) 1 (cheight!15795 (right!43176 (right!43176 xs!286))))))))

(assert (=> b!5083144 d!1644287))

(declare-fun d!1644289 () Bool)

(declare-fun res!2164104 () Bool)

(declare-fun e!3170682 () Bool)

(assert (=> d!1644289 (=> (not res!2164104) (not e!3170682))))

(assert (=> d!1644289 (= res!2164104 (<= (size!39114 (list!19030 (xs!18962 (right!43176 (left!42846 xs!286))))) 512))))

(assert (=> d!1644289 (= (inv!77668 (right!43176 (left!42846 xs!286))) e!3170682)))

(declare-fun b!5083402 () Bool)

(declare-fun res!2164105 () Bool)

(assert (=> b!5083402 (=> (not res!2164105) (not e!3170682))))

(assert (=> b!5083402 (= res!2164105 (= (csize!31399 (right!43176 (left!42846 xs!286))) (size!39114 (list!19030 (xs!18962 (right!43176 (left!42846 xs!286)))))))))

(declare-fun b!5083403 () Bool)

(assert (=> b!5083403 (= e!3170682 (and (> (csize!31399 (right!43176 (left!42846 xs!286))) 0) (<= (csize!31399 (right!43176 (left!42846 xs!286))) 512)))))

(assert (= (and d!1644289 res!2164104) b!5083402))

(assert (= (and b!5083402 res!2164105) b!5083403))

(declare-fun m!6138464 () Bool)

(assert (=> d!1644289 m!6138464))

(assert (=> d!1644289 m!6138464))

(declare-fun m!6138466 () Bool)

(assert (=> d!1644289 m!6138466))

(assert (=> b!5083402 m!6138464))

(assert (=> b!5083402 m!6138464))

(assert (=> b!5083402 m!6138466))

(assert (=> b!5083223 d!1644289))

(declare-fun d!1644291 () Bool)

(assert (=> d!1644291 (= (inv!77666 (xs!18962 (right!43176 (right!43176 ys!41)))) (<= (size!39114 (innerList!15672 (xs!18962 (right!43176 (right!43176 ys!41))))) 2147483647))))

(declare-fun bs!1190765 () Bool)

(assert (= bs!1190765 d!1644291))

(declare-fun m!6138468 () Bool)

(assert (=> bs!1190765 m!6138468))

(assert (=> b!5083257 d!1644291))

(declare-fun d!1644293 () Bool)

(assert (=> d!1644293 (= (height!2161 (left!42846 (left!42846 xs!286))) (ite ((_ is Empty!15584) (left!42846 (left!42846 xs!286))) 0 (ite ((_ is Leaf!25881) (left!42846 (left!42846 xs!286))) 1 (cheight!15795 (left!42846 (left!42846 xs!286))))))))

(assert (=> b!5083168 d!1644293))

(declare-fun d!1644295 () Bool)

(assert (=> d!1644295 (= (height!2161 (right!43176 (left!42846 xs!286))) (ite ((_ is Empty!15584) (right!43176 (left!42846 xs!286))) 0 (ite ((_ is Leaf!25881) (right!43176 (left!42846 xs!286))) 1 (cheight!15795 (right!43176 (left!42846 xs!286))))))))

(assert (=> b!5083168 d!1644295))

(declare-fun d!1644297 () Bool)

(declare-fun res!2164106 () Bool)

(declare-fun e!3170683 () Bool)

(assert (=> d!1644297 (=> (not res!2164106) (not e!3170683))))

(assert (=> d!1644297 (= res!2164106 (= (csize!31398 (right!43176 (right!43176 ys!41))) (+ (size!39116 (left!42846 (right!43176 (right!43176 ys!41)))) (size!39116 (right!43176 (right!43176 (right!43176 ys!41)))))))))

(assert (=> d!1644297 (= (inv!77667 (right!43176 (right!43176 ys!41))) e!3170683)))

(declare-fun b!5083404 () Bool)

(declare-fun res!2164107 () Bool)

(assert (=> b!5083404 (=> (not res!2164107) (not e!3170683))))

(assert (=> b!5083404 (= res!2164107 (and (not (= (left!42846 (right!43176 (right!43176 ys!41))) Empty!15584)) (not (= (right!43176 (right!43176 (right!43176 ys!41))) Empty!15584))))))

(declare-fun b!5083405 () Bool)

(declare-fun res!2164108 () Bool)

(assert (=> b!5083405 (=> (not res!2164108) (not e!3170683))))

(assert (=> b!5083405 (= res!2164108 (= (cheight!15795 (right!43176 (right!43176 ys!41))) (+ (max!0 (height!2161 (left!42846 (right!43176 (right!43176 ys!41)))) (height!2161 (right!43176 (right!43176 (right!43176 ys!41))))) 1)))))

(declare-fun b!5083406 () Bool)

(assert (=> b!5083406 (= e!3170683 (<= 0 (cheight!15795 (right!43176 (right!43176 ys!41)))))))

(assert (= (and d!1644297 res!2164106) b!5083404))

(assert (= (and b!5083404 res!2164107) b!5083405))

(assert (= (and b!5083405 res!2164108) b!5083406))

(declare-fun m!6138470 () Bool)

(assert (=> d!1644297 m!6138470))

(declare-fun m!6138472 () Bool)

(assert (=> d!1644297 m!6138472))

(declare-fun m!6138474 () Bool)

(assert (=> b!5083405 m!6138474))

(declare-fun m!6138476 () Bool)

(assert (=> b!5083405 m!6138476))

(assert (=> b!5083405 m!6138474))

(assert (=> b!5083405 m!6138476))

(declare-fun m!6138478 () Bool)

(assert (=> b!5083405 m!6138478))

(assert (=> b!5083156 d!1644297))

(declare-fun d!1644299 () Bool)

(assert (=> d!1644299 (= (max!0 (height!2161 (left!42846 (right!43176 ys!41))) (height!2161 (right!43176 (right!43176 ys!41)))) (ite (< (height!2161 (left!42846 (right!43176 ys!41))) (height!2161 (right!43176 (right!43176 ys!41)))) (height!2161 (right!43176 (right!43176 ys!41))) (height!2161 (left!42846 (right!43176 ys!41)))))))

(assert (=> b!5083139 d!1644299))

(declare-fun d!1644301 () Bool)

(assert (=> d!1644301 (= (height!2161 (left!42846 (right!43176 ys!41))) (ite ((_ is Empty!15584) (left!42846 (right!43176 ys!41))) 0 (ite ((_ is Leaf!25881) (left!42846 (right!43176 ys!41))) 1 (cheight!15795 (left!42846 (right!43176 ys!41))))))))

(assert (=> b!5083139 d!1644301))

(declare-fun d!1644303 () Bool)

(assert (=> d!1644303 (= (height!2161 (right!43176 (right!43176 ys!41))) (ite ((_ is Empty!15584) (right!43176 (right!43176 ys!41))) 0 (ite ((_ is Leaf!25881) (right!43176 (right!43176 ys!41))) 1 (cheight!15795 (right!43176 (right!43176 ys!41))))))))

(assert (=> b!5083139 d!1644303))

(declare-fun d!1644305 () Bool)

(declare-fun res!2164109 () Bool)

(declare-fun e!3170684 () Bool)

(assert (=> d!1644305 (=> (not res!2164109) (not e!3170684))))

(assert (=> d!1644305 (= res!2164109 (<= (size!39114 (list!19030 (xs!18962 (left!42846 (right!43176 xs!286))))) 512))))

(assert (=> d!1644305 (= (inv!77668 (left!42846 (right!43176 xs!286))) e!3170684)))

(declare-fun b!5083407 () Bool)

(declare-fun res!2164110 () Bool)

(assert (=> b!5083407 (=> (not res!2164110) (not e!3170684))))

(assert (=> b!5083407 (= res!2164110 (= (csize!31399 (left!42846 (right!43176 xs!286))) (size!39114 (list!19030 (xs!18962 (left!42846 (right!43176 xs!286)))))))))

(declare-fun b!5083408 () Bool)

(assert (=> b!5083408 (= e!3170684 (and (> (csize!31399 (left!42846 (right!43176 xs!286))) 0) (<= (csize!31399 (left!42846 (right!43176 xs!286))) 512)))))

(assert (= (and d!1644305 res!2164109) b!5083407))

(assert (= (and b!5083407 res!2164110) b!5083408))

(declare-fun m!6138480 () Bool)

(assert (=> d!1644305 m!6138480))

(assert (=> d!1644305 m!6138480))

(declare-fun m!6138482 () Bool)

(assert (=> d!1644305 m!6138482))

(assert (=> b!5083407 m!6138480))

(assert (=> b!5083407 m!6138480))

(assert (=> b!5083407 m!6138482))

(assert (=> b!5083214 d!1644305))

(declare-fun d!1644307 () Bool)

(declare-fun lt!2091292 () Bool)

(assert (=> d!1644307 (= lt!2091292 (isEmpty!31672 (list!19028 (left!42846 (right!43176 xs!286)))))))

(assert (=> d!1644307 (= lt!2091292 (= (size!39116 (left!42846 (right!43176 xs!286))) 0))))

(assert (=> d!1644307 (= (isEmpty!31670 (left!42846 (right!43176 xs!286))) lt!2091292)))

(declare-fun bs!1190766 () Bool)

(assert (= bs!1190766 d!1644307))

(declare-fun m!6138484 () Bool)

(assert (=> bs!1190766 m!6138484))

(assert (=> bs!1190766 m!6138484))

(declare-fun m!6138486 () Bool)

(assert (=> bs!1190766 m!6138486))

(assert (=> bs!1190766 m!6138098))

(assert (=> b!5083142 d!1644307))

(declare-fun d!1644309 () Bool)

(assert (=> d!1644309 (= (height!2161 (left!42846 (left!42846 ys!41))) (ite ((_ is Empty!15584) (left!42846 (left!42846 ys!41))) 0 (ite ((_ is Leaf!25881) (left!42846 (left!42846 ys!41))) 1 (cheight!15795 (left!42846 (left!42846 ys!41))))))))

(assert (=> b!5083229 d!1644309))

(declare-fun d!1644311 () Bool)

(assert (=> d!1644311 (= (height!2161 (right!43176 (left!42846 ys!41))) (ite ((_ is Empty!15584) (right!43176 (left!42846 ys!41))) 0 (ite ((_ is Leaf!25881) (right!43176 (left!42846 ys!41))) 1 (cheight!15795 (right!43176 (left!42846 ys!41))))))))

(assert (=> b!5083229 d!1644311))

(declare-fun d!1644313 () Bool)

(declare-fun lt!2091293 () Int)

(assert (=> d!1644313 (>= lt!2091293 0)))

(declare-fun e!3170685 () Int)

(assert (=> d!1644313 (= lt!2091293 e!3170685)))

(declare-fun c!873374 () Bool)

(assert (=> d!1644313 (= c!873374 ((_ is Nil!58454) (t!371405 (innerList!15672 (xs!18962 ys!41)))))))

(assert (=> d!1644313 (= (size!39114 (t!371405 (innerList!15672 (xs!18962 ys!41)))) lt!2091293)))

(declare-fun b!5083409 () Bool)

(assert (=> b!5083409 (= e!3170685 0)))

(declare-fun b!5083410 () Bool)

(assert (=> b!5083410 (= e!3170685 (+ 1 (size!39114 (t!371405 (t!371405 (innerList!15672 (xs!18962 ys!41)))))))))

(assert (= (and d!1644313 c!873374) b!5083409))

(assert (= (and d!1644313 (not c!873374)) b!5083410))

(declare-fun m!6138488 () Bool)

(assert (=> b!5083410 m!6138488))

(assert (=> b!5083201 d!1644313))

(declare-fun d!1644315 () Bool)

(declare-fun lt!2091296 () Int)

(assert (=> d!1644315 (= lt!2091296 (size!39114 (list!19028 (left!42846 xs!286))))))

(assert (=> d!1644315 (= lt!2091296 (ite ((_ is Empty!15584) (left!42846 xs!286)) 0 (ite ((_ is Leaf!25881) (left!42846 xs!286)) (csize!31399 (left!42846 xs!286)) (csize!31398 (left!42846 xs!286)))))))

(assert (=> d!1644315 (= (size!39116 (left!42846 xs!286)) lt!2091296)))

(declare-fun bs!1190767 () Bool)

(assert (= bs!1190767 d!1644315))

(assert (=> bs!1190767 m!6138026))

(assert (=> bs!1190767 m!6138026))

(declare-fun m!6138490 () Bool)

(assert (=> bs!1190767 m!6138490))

(assert (=> d!1644141 d!1644315))

(declare-fun d!1644317 () Bool)

(declare-fun lt!2091297 () Int)

(assert (=> d!1644317 (= lt!2091297 (size!39114 (list!19028 (right!43176 xs!286))))))

(assert (=> d!1644317 (= lt!2091297 (ite ((_ is Empty!15584) (right!43176 xs!286)) 0 (ite ((_ is Leaf!25881) (right!43176 xs!286)) (csize!31399 (right!43176 xs!286)) (csize!31398 (right!43176 xs!286)))))))

(assert (=> d!1644317 (= (size!39116 (right!43176 xs!286)) lt!2091297)))

(declare-fun bs!1190768 () Bool)

(assert (= bs!1190768 d!1644317))

(assert (=> bs!1190768 m!6138008))

(assert (=> bs!1190768 m!6138008))

(declare-fun m!6138492 () Bool)

(assert (=> bs!1190768 m!6138492))

(assert (=> d!1644141 d!1644317))

(declare-fun d!1644319 () Bool)

(assert (=> d!1644319 (= (inv!77666 (xs!18962 (left!42846 (left!42846 xs!286)))) (<= (size!39114 (innerList!15672 (xs!18962 (left!42846 (left!42846 xs!286))))) 2147483647))))

(declare-fun bs!1190769 () Bool)

(assert (= bs!1190769 d!1644319))

(declare-fun m!6138494 () Bool)

(assert (=> bs!1190769 m!6138494))

(assert (=> b!5083244 d!1644319))

(declare-fun d!1644321 () Bool)

(declare-fun c!873375 () Bool)

(assert (=> d!1644321 (= c!873375 ((_ is Node!15584) (left!42846 (right!43176 (left!42846 xs!286)))))))

(declare-fun e!3170686 () Bool)

(assert (=> d!1644321 (= (inv!77665 (left!42846 (right!43176 (left!42846 xs!286)))) e!3170686)))

(declare-fun b!5083411 () Bool)

(assert (=> b!5083411 (= e!3170686 (inv!77667 (left!42846 (right!43176 (left!42846 xs!286)))))))

(declare-fun b!5083412 () Bool)

(declare-fun e!3170687 () Bool)

(assert (=> b!5083412 (= e!3170686 e!3170687)))

(declare-fun res!2164111 () Bool)

(assert (=> b!5083412 (= res!2164111 (not ((_ is Leaf!25881) (left!42846 (right!43176 (left!42846 xs!286))))))))

(assert (=> b!5083412 (=> res!2164111 e!3170687)))

(declare-fun b!5083413 () Bool)

(assert (=> b!5083413 (= e!3170687 (inv!77668 (left!42846 (right!43176 (left!42846 xs!286)))))))

(assert (= (and d!1644321 c!873375) b!5083411))

(assert (= (and d!1644321 (not c!873375)) b!5083412))

(assert (= (and b!5083412 (not res!2164111)) b!5083413))

(declare-fun m!6138496 () Bool)

(assert (=> b!5083411 m!6138496))

(declare-fun m!6138498 () Bool)

(assert (=> b!5083413 m!6138498))

(assert (=> b!5083248 d!1644321))

(declare-fun d!1644323 () Bool)

(declare-fun c!873376 () Bool)

(assert (=> d!1644323 (= c!873376 ((_ is Node!15584) (right!43176 (right!43176 (left!42846 xs!286)))))))

(declare-fun e!3170688 () Bool)

(assert (=> d!1644323 (= (inv!77665 (right!43176 (right!43176 (left!42846 xs!286)))) e!3170688)))

(declare-fun b!5083414 () Bool)

(assert (=> b!5083414 (= e!3170688 (inv!77667 (right!43176 (right!43176 (left!42846 xs!286)))))))

(declare-fun b!5083415 () Bool)

(declare-fun e!3170689 () Bool)

(assert (=> b!5083415 (= e!3170688 e!3170689)))

(declare-fun res!2164112 () Bool)

(assert (=> b!5083415 (= res!2164112 (not ((_ is Leaf!25881) (right!43176 (right!43176 (left!42846 xs!286))))))))

(assert (=> b!5083415 (=> res!2164112 e!3170689)))

(declare-fun b!5083416 () Bool)

(assert (=> b!5083416 (= e!3170689 (inv!77668 (right!43176 (right!43176 (left!42846 xs!286)))))))

(assert (= (and d!1644323 c!873376) b!5083414))

(assert (= (and d!1644323 (not c!873376)) b!5083415))

(assert (= (and b!5083415 (not res!2164112)) b!5083416))

(declare-fun m!6138500 () Bool)

(assert (=> b!5083414 m!6138500))

(declare-fun m!6138502 () Bool)

(assert (=> b!5083416 m!6138502))

(assert (=> b!5083248 d!1644323))

(declare-fun d!1644325 () Bool)

(declare-fun res!2164113 () Bool)

(declare-fun e!3170690 () Bool)

(assert (=> d!1644325 (=> (not res!2164113) (not e!3170690))))

(assert (=> d!1644325 (= res!2164113 (<= (size!39114 (list!19030 (xs!18962 (left!42846 (left!42846 xs!286))))) 512))))

(assert (=> d!1644325 (= (inv!77668 (left!42846 (left!42846 xs!286))) e!3170690)))

(declare-fun b!5083417 () Bool)

(declare-fun res!2164114 () Bool)

(assert (=> b!5083417 (=> (not res!2164114) (not e!3170690))))

(assert (=> b!5083417 (= res!2164114 (= (csize!31399 (left!42846 (left!42846 xs!286))) (size!39114 (list!19030 (xs!18962 (left!42846 (left!42846 xs!286)))))))))

(declare-fun b!5083418 () Bool)

(assert (=> b!5083418 (= e!3170690 (and (> (csize!31399 (left!42846 (left!42846 xs!286))) 0) (<= (csize!31399 (left!42846 (left!42846 xs!286))) 512)))))

(assert (= (and d!1644325 res!2164113) b!5083417))

(assert (= (and b!5083417 res!2164114) b!5083418))

(declare-fun m!6138504 () Bool)

(assert (=> d!1644325 m!6138504))

(assert (=> d!1644325 m!6138504))

(declare-fun m!6138506 () Bool)

(assert (=> d!1644325 m!6138506))

(assert (=> b!5083417 m!6138504))

(assert (=> b!5083417 m!6138504))

(assert (=> b!5083417 m!6138506))

(assert (=> b!5083220 d!1644325))

(declare-fun d!1644327 () Bool)

(declare-fun lt!2091298 () Int)

(assert (=> d!1644327 (= lt!2091298 (size!39114 (list!19028 (left!42846 (left!42846 xs!286)))))))

(assert (=> d!1644327 (= lt!2091298 (ite ((_ is Empty!15584) (left!42846 (left!42846 xs!286))) 0 (ite ((_ is Leaf!25881) (left!42846 (left!42846 xs!286))) (csize!31399 (left!42846 (left!42846 xs!286))) (csize!31398 (left!42846 (left!42846 xs!286))))))))

(assert (=> d!1644327 (= (size!39116 (left!42846 (left!42846 xs!286))) lt!2091298)))

(declare-fun bs!1190770 () Bool)

(assert (= bs!1190770 d!1644327))

(declare-fun m!6138508 () Bool)

(assert (=> bs!1190770 m!6138508))

(assert (=> bs!1190770 m!6138508))

(declare-fun m!6138510 () Bool)

(assert (=> bs!1190770 m!6138510))

(assert (=> d!1644149 d!1644327))

(declare-fun d!1644329 () Bool)

(declare-fun lt!2091299 () Int)

(assert (=> d!1644329 (= lt!2091299 (size!39114 (list!19028 (right!43176 (left!42846 xs!286)))))))

(assert (=> d!1644329 (= lt!2091299 (ite ((_ is Empty!15584) (right!43176 (left!42846 xs!286))) 0 (ite ((_ is Leaf!25881) (right!43176 (left!42846 xs!286))) (csize!31399 (right!43176 (left!42846 xs!286))) (csize!31398 (right!43176 (left!42846 xs!286))))))))

(assert (=> d!1644329 (= (size!39116 (right!43176 (left!42846 xs!286))) lt!2091299)))

(declare-fun bs!1190771 () Bool)

(assert (= bs!1190771 d!1644329))

(declare-fun m!6138512 () Bool)

(assert (=> bs!1190771 m!6138512))

(assert (=> bs!1190771 m!6138512))

(declare-fun m!6138514 () Bool)

(assert (=> bs!1190771 m!6138514))

(assert (=> d!1644149 d!1644329))

(declare-fun d!1644331 () Bool)

(declare-fun res!2164115 () Bool)

(declare-fun e!3170691 () Bool)

(assert (=> d!1644331 (=> (not res!2164115) (not e!3170691))))

(assert (=> d!1644331 (= res!2164115 (= (csize!31398 (left!42846 (right!43176 ys!41))) (+ (size!39116 (left!42846 (left!42846 (right!43176 ys!41)))) (size!39116 (right!43176 (left!42846 (right!43176 ys!41)))))))))

(assert (=> d!1644331 (= (inv!77667 (left!42846 (right!43176 ys!41))) e!3170691)))

(declare-fun b!5083419 () Bool)

(declare-fun res!2164116 () Bool)

(assert (=> b!5083419 (=> (not res!2164116) (not e!3170691))))

(assert (=> b!5083419 (= res!2164116 (and (not (= (left!42846 (left!42846 (right!43176 ys!41))) Empty!15584)) (not (= (right!43176 (left!42846 (right!43176 ys!41))) Empty!15584))))))

(declare-fun b!5083420 () Bool)

(declare-fun res!2164117 () Bool)

(assert (=> b!5083420 (=> (not res!2164117) (not e!3170691))))

(assert (=> b!5083420 (= res!2164117 (= (cheight!15795 (left!42846 (right!43176 ys!41))) (+ (max!0 (height!2161 (left!42846 (left!42846 (right!43176 ys!41)))) (height!2161 (right!43176 (left!42846 (right!43176 ys!41))))) 1)))))

(declare-fun b!5083421 () Bool)

(assert (=> b!5083421 (= e!3170691 (<= 0 (cheight!15795 (left!42846 (right!43176 ys!41)))))))

(assert (= (and d!1644331 res!2164115) b!5083419))

(assert (= (and b!5083419 res!2164116) b!5083420))

(assert (= (and b!5083420 res!2164117) b!5083421))

(declare-fun m!6138516 () Bool)

(assert (=> d!1644331 m!6138516))

(declare-fun m!6138518 () Bool)

(assert (=> d!1644331 m!6138518))

(declare-fun m!6138520 () Bool)

(assert (=> b!5083420 m!6138520))

(declare-fun m!6138522 () Bool)

(assert (=> b!5083420 m!6138522))

(assert (=> b!5083420 m!6138520))

(assert (=> b!5083420 m!6138522))

(declare-fun m!6138524 () Bool)

(assert (=> b!5083420 m!6138524))

(assert (=> b!5083153 d!1644331))

(declare-fun d!1644333 () Bool)

(declare-fun res!2164118 () Bool)

(declare-fun e!3170692 () Bool)

(assert (=> d!1644333 (=> (not res!2164118) (not e!3170692))))

(assert (=> d!1644333 (= res!2164118 (= (csize!31398 (left!42846 (left!42846 xs!286))) (+ (size!39116 (left!42846 (left!42846 (left!42846 xs!286)))) (size!39116 (right!43176 (left!42846 (left!42846 xs!286)))))))))

(assert (=> d!1644333 (= (inv!77667 (left!42846 (left!42846 xs!286))) e!3170692)))

(declare-fun b!5083422 () Bool)

(declare-fun res!2164119 () Bool)

(assert (=> b!5083422 (=> (not res!2164119) (not e!3170692))))

(assert (=> b!5083422 (= res!2164119 (and (not (= (left!42846 (left!42846 (left!42846 xs!286))) Empty!15584)) (not (= (right!43176 (left!42846 (left!42846 xs!286))) Empty!15584))))))

(declare-fun b!5083423 () Bool)

(declare-fun res!2164120 () Bool)

(assert (=> b!5083423 (=> (not res!2164120) (not e!3170692))))

(assert (=> b!5083423 (= res!2164120 (= (cheight!15795 (left!42846 (left!42846 xs!286))) (+ (max!0 (height!2161 (left!42846 (left!42846 (left!42846 xs!286)))) (height!2161 (right!43176 (left!42846 (left!42846 xs!286))))) 1)))))

(declare-fun b!5083424 () Bool)

(assert (=> b!5083424 (= e!3170692 (<= 0 (cheight!15795 (left!42846 (left!42846 xs!286)))))))

(assert (= (and d!1644333 res!2164118) b!5083422))

(assert (= (and b!5083422 res!2164119) b!5083423))

(assert (= (and b!5083423 res!2164120) b!5083424))

(declare-fun m!6138526 () Bool)

(assert (=> d!1644333 m!6138526))

(declare-fun m!6138528 () Bool)

(assert (=> d!1644333 m!6138528))

(declare-fun m!6138530 () Bool)

(assert (=> b!5083423 m!6138530))

(declare-fun m!6138532 () Bool)

(assert (=> b!5083423 m!6138532))

(assert (=> b!5083423 m!6138530))

(assert (=> b!5083423 m!6138532))

(declare-fun m!6138534 () Bool)

(assert (=> b!5083423 m!6138534))

(assert (=> b!5083218 d!1644333))

(declare-fun d!1644335 () Bool)

(assert (=> d!1644335 (= (inv!77666 (xs!18962 (right!43176 (right!43176 xs!286)))) (<= (size!39114 (innerList!15672 (xs!18962 (right!43176 (right!43176 xs!286))))) 2147483647))))

(declare-fun bs!1190772 () Bool)

(assert (= bs!1190772 d!1644335))

(declare-fun m!6138536 () Bool)

(assert (=> bs!1190772 m!6138536))

(assert (=> b!5083238 d!1644335))

(assert (=> b!5083204 d!1644273))

(assert (=> b!5083204 d!1644275))

(declare-fun d!1644337 () Bool)

(declare-fun lt!2091300 () Int)

(assert (=> d!1644337 (>= lt!2091300 0)))

(declare-fun e!3170693 () Int)

(assert (=> d!1644337 (= lt!2091300 e!3170693)))

(declare-fun c!873377 () Bool)

(assert (=> d!1644337 (= c!873377 ((_ is Nil!58454) (list!19030 (xs!18962 (right!43176 xs!286)))))))

(assert (=> d!1644337 (= (size!39114 (list!19030 (xs!18962 (right!43176 xs!286)))) lt!2091300)))

(declare-fun b!5083425 () Bool)

(assert (=> b!5083425 (= e!3170693 0)))

(declare-fun b!5083426 () Bool)

(assert (=> b!5083426 (= e!3170693 (+ 1 (size!39114 (t!371405 (list!19030 (xs!18962 (right!43176 xs!286)))))))))

(assert (= (and d!1644337 c!873377) b!5083425))

(assert (= (and d!1644337 (not c!873377)) b!5083426))

(declare-fun m!6138538 () Bool)

(assert (=> b!5083426 m!6138538))

(assert (=> d!1644199 d!1644337))

(declare-fun d!1644339 () Bool)

(assert (=> d!1644339 (= (list!19030 (xs!18962 (right!43176 xs!286))) (innerList!15672 (xs!18962 (right!43176 xs!286))))))

(assert (=> d!1644199 d!1644339))

(declare-fun d!1644341 () Bool)

(declare-fun c!873378 () Bool)

(assert (=> d!1644341 (= c!873378 ((_ is Node!15584) (left!42846 (left!42846 (right!43176 ys!41)))))))

(declare-fun e!3170694 () Bool)

(assert (=> d!1644341 (= (inv!77665 (left!42846 (left!42846 (right!43176 ys!41)))) e!3170694)))

(declare-fun b!5083427 () Bool)

(assert (=> b!5083427 (= e!3170694 (inv!77667 (left!42846 (left!42846 (right!43176 ys!41)))))))

(declare-fun b!5083428 () Bool)

(declare-fun e!3170695 () Bool)

(assert (=> b!5083428 (= e!3170694 e!3170695)))

(declare-fun res!2164121 () Bool)

(assert (=> b!5083428 (= res!2164121 (not ((_ is Leaf!25881) (left!42846 (left!42846 (right!43176 ys!41))))))))

(assert (=> b!5083428 (=> res!2164121 e!3170695)))

(declare-fun b!5083429 () Bool)

(assert (=> b!5083429 (= e!3170695 (inv!77668 (left!42846 (left!42846 (right!43176 ys!41)))))))

(assert (= (and d!1644341 c!873378) b!5083427))

(assert (= (and d!1644341 (not c!873378)) b!5083428))

(assert (= (and b!5083428 (not res!2164121)) b!5083429))

(declare-fun m!6138540 () Bool)

(assert (=> b!5083427 m!6138540))

(declare-fun m!6138542 () Bool)

(assert (=> b!5083429 m!6138542))

(assert (=> b!5083253 d!1644341))

(declare-fun d!1644343 () Bool)

(declare-fun c!873379 () Bool)

(assert (=> d!1644343 (= c!873379 ((_ is Node!15584) (right!43176 (left!42846 (right!43176 ys!41)))))))

(declare-fun e!3170696 () Bool)

(assert (=> d!1644343 (= (inv!77665 (right!43176 (left!42846 (right!43176 ys!41)))) e!3170696)))

(declare-fun b!5083430 () Bool)

(assert (=> b!5083430 (= e!3170696 (inv!77667 (right!43176 (left!42846 (right!43176 ys!41)))))))

(declare-fun b!5083431 () Bool)

(declare-fun e!3170697 () Bool)

(assert (=> b!5083431 (= e!3170696 e!3170697)))

(declare-fun res!2164122 () Bool)

(assert (=> b!5083431 (= res!2164122 (not ((_ is Leaf!25881) (right!43176 (left!42846 (right!43176 ys!41))))))))

(assert (=> b!5083431 (=> res!2164122 e!3170697)))

(declare-fun b!5083432 () Bool)

(assert (=> b!5083432 (= e!3170697 (inv!77668 (right!43176 (left!42846 (right!43176 ys!41)))))))

(assert (= (and d!1644343 c!873379) b!5083430))

(assert (= (and d!1644343 (not c!873379)) b!5083431))

(assert (= (and b!5083431 (not res!2164122)) b!5083432))

(declare-fun m!6138544 () Bool)

(assert (=> b!5083430 m!6138544))

(declare-fun m!6138546 () Bool)

(assert (=> b!5083432 m!6138546))

(assert (=> b!5083253 d!1644343))

(declare-fun d!1644345 () Bool)

(declare-fun lt!2091301 () Bool)

(assert (=> d!1644345 (= lt!2091301 (isEmpty!31672 (list!19028 (left!42846 (left!42846 ys!41)))))))

(assert (=> d!1644345 (= lt!2091301 (= (size!39116 (left!42846 (left!42846 ys!41))) 0))))

(assert (=> d!1644345 (= (isEmpty!31670 (left!42846 (left!42846 ys!41))) lt!2091301)))

(declare-fun bs!1190773 () Bool)

(assert (= bs!1190773 d!1644345))

(declare-fun m!6138548 () Bool)

(assert (=> bs!1190773 m!6138548))

(assert (=> bs!1190773 m!6138548))

(declare-fun m!6138550 () Bool)

(assert (=> bs!1190773 m!6138550))

(assert (=> bs!1190773 m!6138034))

(assert (=> b!5083227 d!1644345))

(assert (=> d!1644151 d!1644281))

(assert (=> d!1644151 d!1644283))

(declare-fun d!1644347 () Bool)

(declare-fun lt!2091302 () Bool)

(assert (=> d!1644347 (= lt!2091302 (isEmpty!31672 (list!19028 (right!43176 (left!42846 xs!286)))))))

(assert (=> d!1644347 (= lt!2091302 (= (size!39116 (right!43176 (left!42846 xs!286))) 0))))

(assert (=> d!1644347 (= (isEmpty!31670 (right!43176 (left!42846 xs!286))) lt!2091302)))

(declare-fun bs!1190774 () Bool)

(assert (= bs!1190774 d!1644347))

(assert (=> bs!1190774 m!6138512))

(assert (=> bs!1190774 m!6138512))

(declare-fun m!6138552 () Bool)

(assert (=> bs!1190774 m!6138552))

(assert (=> bs!1190774 m!6138058))

(assert (=> b!5083172 d!1644347))

(assert (=> b!5083188 d!1644301))

(assert (=> b!5083188 d!1644303))

(declare-fun d!1644349 () Bool)

(declare-fun res!2164123 () Bool)

(declare-fun e!3170698 () Bool)

(assert (=> d!1644349 (=> (not res!2164123) (not e!3170698))))

(assert (=> d!1644349 (= res!2164123 (<= (size!39114 (list!19030 (xs!18962 (right!43176 (right!43176 xs!286))))) 512))))

(assert (=> d!1644349 (= (inv!77668 (right!43176 (right!43176 xs!286))) e!3170698)))

(declare-fun b!5083433 () Bool)

(declare-fun res!2164124 () Bool)

(assert (=> b!5083433 (=> (not res!2164124) (not e!3170698))))

(assert (=> b!5083433 (= res!2164124 (= (csize!31399 (right!43176 (right!43176 xs!286))) (size!39114 (list!19030 (xs!18962 (right!43176 (right!43176 xs!286)))))))))

(declare-fun b!5083434 () Bool)

(assert (=> b!5083434 (= e!3170698 (and (> (csize!31399 (right!43176 (right!43176 xs!286))) 0) (<= (csize!31399 (right!43176 (right!43176 xs!286))) 512)))))

(assert (= (and d!1644349 res!2164123) b!5083433))

(assert (= (and b!5083433 res!2164124) b!5083434))

(declare-fun m!6138554 () Bool)

(assert (=> d!1644349 m!6138554))

(assert (=> d!1644349 m!6138554))

(declare-fun m!6138556 () Bool)

(assert (=> d!1644349 m!6138556))

(assert (=> b!5083433 m!6138554))

(assert (=> b!5083433 m!6138554))

(assert (=> b!5083433 m!6138556))

(assert (=> b!5083217 d!1644349))

(declare-fun d!1644351 () Bool)

(assert (=> d!1644351 (= (isEmpty!31672 (list!19028 (right!43176 xs!286))) ((_ is Nil!58454) (list!19028 (right!43176 xs!286))))))

(assert (=> d!1644127 d!1644351))

(declare-fun b!5083445 () Bool)

(declare-fun e!3170704 () List!58578)

(assert (=> b!5083445 (= e!3170704 (list!19030 (xs!18962 (right!43176 xs!286))))))

(declare-fun b!5083444 () Bool)

(declare-fun e!3170703 () List!58578)

(assert (=> b!5083444 (= e!3170703 e!3170704)))

(declare-fun c!873385 () Bool)

(assert (=> b!5083444 (= c!873385 ((_ is Leaf!25881) (right!43176 xs!286)))))

(declare-fun b!5083446 () Bool)

(declare-fun ++!12812 (List!58578 List!58578) List!58578)

(assert (=> b!5083446 (= e!3170704 (++!12812 (list!19028 (left!42846 (right!43176 xs!286))) (list!19028 (right!43176 (right!43176 xs!286)))))))

(declare-fun b!5083443 () Bool)

(assert (=> b!5083443 (= e!3170703 Nil!58454)))

(declare-fun d!1644353 () Bool)

(declare-fun c!873384 () Bool)

(assert (=> d!1644353 (= c!873384 ((_ is Empty!15584) (right!43176 xs!286)))))

(assert (=> d!1644353 (= (list!19028 (right!43176 xs!286)) e!3170703)))

(assert (= (and d!1644353 c!873384) b!5083443))

(assert (= (and d!1644353 (not c!873384)) b!5083444))

(assert (= (and b!5083444 c!873385) b!5083445))

(assert (= (and b!5083444 (not c!873385)) b!5083446))

(assert (=> b!5083445 m!6138154))

(assert (=> b!5083446 m!6138484))

(declare-fun m!6138558 () Bool)

(assert (=> b!5083446 m!6138558))

(assert (=> b!5083446 m!6138484))

(assert (=> b!5083446 m!6138558))

(declare-fun m!6138560 () Bool)

(assert (=> b!5083446 m!6138560))

(assert (=> d!1644127 d!1644353))

(assert (=> d!1644127 d!1644317))

(declare-fun d!1644355 () Bool)

(declare-fun lt!2091303 () Int)

(assert (=> d!1644355 (>= lt!2091303 0)))

(declare-fun e!3170705 () Int)

(assert (=> d!1644355 (= lt!2091303 e!3170705)))

(declare-fun c!873386 () Bool)

(assert (=> d!1644355 (= c!873386 ((_ is Nil!58454) (list!19030 (xs!18962 (left!42846 ys!41)))))))

(assert (=> d!1644355 (= (size!39114 (list!19030 (xs!18962 (left!42846 ys!41)))) lt!2091303)))

(declare-fun b!5083447 () Bool)

(assert (=> b!5083447 (= e!3170705 0)))

(declare-fun b!5083448 () Bool)

(assert (=> b!5083448 (= e!3170705 (+ 1 (size!39114 (t!371405 (list!19030 (xs!18962 (left!42846 ys!41)))))))))

(assert (= (and d!1644355 c!873386) b!5083447))

(assert (= (and d!1644355 (not c!873386)) b!5083448))

(declare-fun m!6138562 () Bool)

(assert (=> b!5083448 m!6138562))

(assert (=> b!5083194 d!1644355))

(declare-fun d!1644357 () Bool)

(assert (=> d!1644357 (= (list!19030 (xs!18962 (left!42846 ys!41))) (innerList!15672 (xs!18962 (left!42846 ys!41))))))

(assert (=> b!5083194 d!1644357))

(declare-fun d!1644359 () Bool)

(declare-fun res!2164125 () Bool)

(declare-fun e!3170706 () Bool)

(assert (=> d!1644359 (=> (not res!2164125) (not e!3170706))))

(assert (=> d!1644359 (= res!2164125 (= (csize!31398 (right!43176 (right!43176 xs!286))) (+ (size!39116 (left!42846 (right!43176 (right!43176 xs!286)))) (size!39116 (right!43176 (right!43176 (right!43176 xs!286)))))))))

(assert (=> d!1644359 (= (inv!77667 (right!43176 (right!43176 xs!286))) e!3170706)))

(declare-fun b!5083449 () Bool)

(declare-fun res!2164126 () Bool)

(assert (=> b!5083449 (=> (not res!2164126) (not e!3170706))))

(assert (=> b!5083449 (= res!2164126 (and (not (= (left!42846 (right!43176 (right!43176 xs!286))) Empty!15584)) (not (= (right!43176 (right!43176 (right!43176 xs!286))) Empty!15584))))))

(declare-fun b!5083450 () Bool)

(declare-fun res!2164127 () Bool)

(assert (=> b!5083450 (=> (not res!2164127) (not e!3170706))))

(assert (=> b!5083450 (= res!2164127 (= (cheight!15795 (right!43176 (right!43176 xs!286))) (+ (max!0 (height!2161 (left!42846 (right!43176 (right!43176 xs!286)))) (height!2161 (right!43176 (right!43176 (right!43176 xs!286))))) 1)))))

(declare-fun b!5083451 () Bool)

(assert (=> b!5083451 (= e!3170706 (<= 0 (cheight!15795 (right!43176 (right!43176 xs!286)))))))

(assert (= (and d!1644359 res!2164125) b!5083449))

(assert (= (and b!5083449 res!2164126) b!5083450))

(assert (= (and b!5083450 res!2164127) b!5083451))

(declare-fun m!6138564 () Bool)

(assert (=> d!1644359 m!6138564))

(declare-fun m!6138566 () Bool)

(assert (=> d!1644359 m!6138566))

(declare-fun m!6138568 () Bool)

(assert (=> b!5083450 m!6138568))

(declare-fun m!6138570 () Bool)

(assert (=> b!5083450 m!6138570))

(assert (=> b!5083450 m!6138568))

(assert (=> b!5083450 m!6138570))

(declare-fun m!6138572 () Bool)

(assert (=> b!5083450 m!6138572))

(assert (=> b!5083215 d!1644359))

(assert (=> b!5083128 d!1644189))

(assert (=> b!5083128 d!1644191))

(declare-fun d!1644361 () Bool)

(declare-fun res!2164128 () Bool)

(declare-fun e!3170707 () Bool)

(assert (=> d!1644361 (=> (not res!2164128) (not e!3170707))))

(assert (=> d!1644361 (= res!2164128 (= (csize!31398 (right!43176 (left!42846 xs!286))) (+ (size!39116 (left!42846 (right!43176 (left!42846 xs!286)))) (size!39116 (right!43176 (right!43176 (left!42846 xs!286)))))))))

(assert (=> d!1644361 (= (inv!77667 (right!43176 (left!42846 xs!286))) e!3170707)))

(declare-fun b!5083452 () Bool)

(declare-fun res!2164129 () Bool)

(assert (=> b!5083452 (=> (not res!2164129) (not e!3170707))))

(assert (=> b!5083452 (= res!2164129 (and (not (= (left!42846 (right!43176 (left!42846 xs!286))) Empty!15584)) (not (= (right!43176 (right!43176 (left!42846 xs!286))) Empty!15584))))))

(declare-fun b!5083453 () Bool)

(declare-fun res!2164130 () Bool)

(assert (=> b!5083453 (=> (not res!2164130) (not e!3170707))))

(assert (=> b!5083453 (= res!2164130 (= (cheight!15795 (right!43176 (left!42846 xs!286))) (+ (max!0 (height!2161 (left!42846 (right!43176 (left!42846 xs!286)))) (height!2161 (right!43176 (right!43176 (left!42846 xs!286))))) 1)))))

(declare-fun b!5083454 () Bool)

(assert (=> b!5083454 (= e!3170707 (<= 0 (cheight!15795 (right!43176 (left!42846 xs!286)))))))

(assert (= (and d!1644361 res!2164128) b!5083452))

(assert (= (and b!5083452 res!2164129) b!5083453))

(assert (= (and b!5083453 res!2164130) b!5083454))

(declare-fun m!6138574 () Bool)

(assert (=> d!1644361 m!6138574))

(declare-fun m!6138576 () Bool)

(assert (=> d!1644361 m!6138576))

(assert (=> b!5083453 m!6138448))

(assert (=> b!5083453 m!6138450))

(assert (=> b!5083453 m!6138448))

(assert (=> b!5083453 m!6138450))

(declare-fun m!6138578 () Bool)

(assert (=> b!5083453 m!6138578))

(assert (=> b!5083221 d!1644361))

(declare-fun d!1644363 () Bool)

(declare-fun lt!2091304 () Int)

(assert (=> d!1644363 (>= lt!2091304 0)))

(declare-fun e!3170708 () Int)

(assert (=> d!1644363 (= lt!2091304 e!3170708)))

(declare-fun c!873387 () Bool)

(assert (=> d!1644363 (= c!873387 ((_ is Nil!58454) (innerList!15672 (xs!18962 (right!43176 ys!41)))))))

(assert (=> d!1644363 (= (size!39114 (innerList!15672 (xs!18962 (right!43176 ys!41)))) lt!2091304)))

(declare-fun b!5083455 () Bool)

(assert (=> b!5083455 (= e!3170708 0)))

(declare-fun b!5083456 () Bool)

(assert (=> b!5083456 (= e!3170708 (+ 1 (size!39114 (t!371405 (innerList!15672 (xs!18962 (right!43176 ys!41)))))))))

(assert (= (and d!1644363 c!873387) b!5083455))

(assert (= (and d!1644363 (not c!873387)) b!5083456))

(declare-fun m!6138580 () Bool)

(assert (=> b!5083456 m!6138580))

(assert (=> d!1644143 d!1644363))

(declare-fun d!1644365 () Bool)

(declare-fun lt!2091305 () Int)

(assert (=> d!1644365 (= lt!2091305 (size!39114 (list!19028 (left!42846 (right!43176 ys!41)))))))

(assert (=> d!1644365 (= lt!2091305 (ite ((_ is Empty!15584) (left!42846 (right!43176 ys!41))) 0 (ite ((_ is Leaf!25881) (left!42846 (right!43176 ys!41))) (csize!31399 (left!42846 (right!43176 ys!41))) (csize!31398 (left!42846 (right!43176 ys!41))))))))

(assert (=> d!1644365 (= (size!39116 (left!42846 (right!43176 ys!41))) lt!2091305)))

(declare-fun bs!1190775 () Bool)

(assert (= bs!1190775 d!1644365))

(declare-fun m!6138582 () Bool)

(assert (=> bs!1190775 m!6138582))

(assert (=> bs!1190775 m!6138582))

(declare-fun m!6138584 () Bool)

(assert (=> bs!1190775 m!6138584))

(assert (=> d!1644125 d!1644365))

(declare-fun d!1644367 () Bool)

(declare-fun lt!2091306 () Int)

(assert (=> d!1644367 (= lt!2091306 (size!39114 (list!19028 (right!43176 (right!43176 ys!41)))))))

(assert (=> d!1644367 (= lt!2091306 (ite ((_ is Empty!15584) (right!43176 (right!43176 ys!41))) 0 (ite ((_ is Leaf!25881) (right!43176 (right!43176 ys!41))) (csize!31399 (right!43176 (right!43176 ys!41))) (csize!31398 (right!43176 (right!43176 ys!41))))))))

(assert (=> d!1644367 (= (size!39116 (right!43176 (right!43176 ys!41))) lt!2091306)))

(declare-fun bs!1190776 () Bool)

(assert (= bs!1190776 d!1644367))

(declare-fun m!6138586 () Bool)

(assert (=> bs!1190776 m!6138586))

(assert (=> bs!1190776 m!6138586))

(declare-fun m!6138588 () Bool)

(assert (=> bs!1190776 m!6138588))

(assert (=> d!1644125 d!1644367))

(declare-fun d!1644369 () Bool)

(declare-fun lt!2091307 () Bool)

(assert (=> d!1644369 (= lt!2091307 (isEmpty!31672 (list!19028 (right!43176 (right!43176 ys!41)))))))

(assert (=> d!1644369 (= lt!2091307 (= (size!39116 (right!43176 (right!43176 ys!41))) 0))))

(assert (=> d!1644369 (= (isEmpty!31670 (right!43176 (right!43176 ys!41))) lt!2091307)))

(declare-fun bs!1190777 () Bool)

(assert (= bs!1190777 d!1644369))

(assert (=> bs!1190777 m!6138586))

(assert (=> bs!1190777 m!6138586))

(declare-fun m!6138590 () Bool)

(assert (=> bs!1190777 m!6138590))

(assert (=> bs!1190777 m!6138000))

(assert (=> b!5083192 d!1644369))

(declare-fun d!1644371 () Bool)

(declare-fun res!2164131 () Bool)

(declare-fun e!3170709 () Bool)

(assert (=> d!1644371 (=> (not res!2164131) (not e!3170709))))

(assert (=> d!1644371 (= res!2164131 (= (csize!31398 (left!42846 (right!43176 xs!286))) (+ (size!39116 (left!42846 (left!42846 (right!43176 xs!286)))) (size!39116 (right!43176 (left!42846 (right!43176 xs!286)))))))))

(assert (=> d!1644371 (= (inv!77667 (left!42846 (right!43176 xs!286))) e!3170709)))

(declare-fun b!5083457 () Bool)

(declare-fun res!2164132 () Bool)

(assert (=> b!5083457 (=> (not res!2164132) (not e!3170709))))

(assert (=> b!5083457 (= res!2164132 (and (not (= (left!42846 (left!42846 (right!43176 xs!286))) Empty!15584)) (not (= (right!43176 (left!42846 (right!43176 xs!286))) Empty!15584))))))

(declare-fun b!5083458 () Bool)

(declare-fun res!2164133 () Bool)

(assert (=> b!5083458 (=> (not res!2164133) (not e!3170709))))

(assert (=> b!5083458 (= res!2164133 (= (cheight!15795 (left!42846 (right!43176 xs!286))) (+ (max!0 (height!2161 (left!42846 (left!42846 (right!43176 xs!286)))) (height!2161 (right!43176 (left!42846 (right!43176 xs!286))))) 1)))))

(declare-fun b!5083459 () Bool)

(assert (=> b!5083459 (= e!3170709 (<= 0 (cheight!15795 (left!42846 (right!43176 xs!286)))))))

(assert (= (and d!1644371 res!2164131) b!5083457))

(assert (= (and b!5083457 res!2164132) b!5083458))

(assert (= (and b!5083458 res!2164133) b!5083459))

(declare-fun m!6138592 () Bool)

(assert (=> d!1644371 m!6138592))

(declare-fun m!6138594 () Bool)

(assert (=> d!1644371 m!6138594))

(assert (=> b!5083458 m!6138432))

(assert (=> b!5083458 m!6138434))

(assert (=> b!5083458 m!6138432))

(assert (=> b!5083458 m!6138434))

(declare-fun m!6138596 () Bool)

(assert (=> b!5083458 m!6138596))

(assert (=> b!5083212 d!1644371))

(assert (=> b!5083122 d!1644195))

(assert (=> b!5083122 d!1644197))

(declare-fun d!1644373 () Bool)

(declare-fun lt!2091308 () Int)

(assert (=> d!1644373 (>= lt!2091308 0)))

(declare-fun e!3170710 () Int)

(assert (=> d!1644373 (= lt!2091308 e!3170710)))

(declare-fun c!873388 () Bool)

(assert (=> d!1644373 (= c!873388 ((_ is Nil!58454) (innerList!15672 (xs!18962 (left!42846 xs!286)))))))

(assert (=> d!1644373 (= (size!39114 (innerList!15672 (xs!18962 (left!42846 xs!286)))) lt!2091308)))

(declare-fun b!5083460 () Bool)

(assert (=> b!5083460 (= e!3170710 0)))

(declare-fun b!5083461 () Bool)

(assert (=> b!5083461 (= e!3170710 (+ 1 (size!39114 (t!371405 (innerList!15672 (xs!18962 (left!42846 xs!286)))))))))

(assert (= (and d!1644373 c!873388) b!5083460))

(assert (= (and d!1644373 (not c!873388)) b!5083461))

(declare-fun m!6138598 () Bool)

(assert (=> b!5083461 m!6138598))

(assert (=> d!1644193 d!1644373))

(declare-fun b!5083462 () Bool)

(declare-fun e!3170712 () Bool)

(declare-fun e!3170711 () Bool)

(assert (=> b!5083462 (= e!3170712 e!3170711)))

(declare-fun res!2164136 () Bool)

(assert (=> b!5083462 (=> (not res!2164136) (not e!3170711))))

(assert (=> b!5083462 (= res!2164136 (<= (- 1) (- (height!2161 (left!42846 (right!43176 (right!43176 ys!41)))) (height!2161 (right!43176 (right!43176 (right!43176 ys!41)))))))))

(declare-fun b!5083463 () Bool)

(declare-fun res!2164134 () Bool)

(assert (=> b!5083463 (=> (not res!2164134) (not e!3170711))))

(assert (=> b!5083463 (= res!2164134 (not (isEmpty!31670 (left!42846 (right!43176 (right!43176 ys!41))))))))

(declare-fun b!5083464 () Bool)

(declare-fun res!2164138 () Bool)

(assert (=> b!5083464 (=> (not res!2164138) (not e!3170711))))

(assert (=> b!5083464 (= res!2164138 (isBalanced!4446 (right!43176 (right!43176 (right!43176 ys!41)))))))

(declare-fun b!5083465 () Bool)

(declare-fun res!2164139 () Bool)

(assert (=> b!5083465 (=> (not res!2164139) (not e!3170711))))

(assert (=> b!5083465 (= res!2164139 (<= (- (height!2161 (left!42846 (right!43176 (right!43176 ys!41)))) (height!2161 (right!43176 (right!43176 (right!43176 ys!41))))) 1))))

(declare-fun b!5083466 () Bool)

(assert (=> b!5083466 (= e!3170711 (not (isEmpty!31670 (right!43176 (right!43176 (right!43176 ys!41))))))))

(declare-fun b!5083467 () Bool)

(declare-fun res!2164137 () Bool)

(assert (=> b!5083467 (=> (not res!2164137) (not e!3170711))))

(assert (=> b!5083467 (= res!2164137 (isBalanced!4446 (left!42846 (right!43176 (right!43176 ys!41)))))))

(declare-fun d!1644375 () Bool)

(declare-fun res!2164135 () Bool)

(assert (=> d!1644375 (=> res!2164135 e!3170712)))

(assert (=> d!1644375 (= res!2164135 (not ((_ is Node!15584) (right!43176 (right!43176 ys!41)))))))

(assert (=> d!1644375 (= (isBalanced!4446 (right!43176 (right!43176 ys!41))) e!3170712)))

(assert (= (and d!1644375 (not res!2164135)) b!5083462))

(assert (= (and b!5083462 res!2164136) b!5083465))

(assert (= (and b!5083465 res!2164139) b!5083467))

(assert (= (and b!5083467 res!2164137) b!5083464))

(assert (= (and b!5083464 res!2164138) b!5083463))

(assert (= (and b!5083463 res!2164134) b!5083466))

(declare-fun m!6138600 () Bool)

(assert (=> b!5083463 m!6138600))

(assert (=> b!5083465 m!6138474))

(assert (=> b!5083465 m!6138476))

(declare-fun m!6138602 () Bool)

(assert (=> b!5083464 m!6138602))

(declare-fun m!6138604 () Bool)

(assert (=> b!5083467 m!6138604))

(assert (=> b!5083462 m!6138474))

(assert (=> b!5083462 m!6138476))

(declare-fun m!6138606 () Bool)

(assert (=> b!5083466 m!6138606))

(assert (=> b!5083190 d!1644375))

(declare-fun d!1644377 () Bool)

(declare-fun c!873389 () Bool)

(assert (=> d!1644377 (= c!873389 ((_ is Node!15584) (left!42846 (right!43176 (left!42846 ys!41)))))))

(declare-fun e!3170713 () Bool)

(assert (=> d!1644377 (= (inv!77665 (left!42846 (right!43176 (left!42846 ys!41)))) e!3170713)))

(declare-fun b!5083468 () Bool)

(assert (=> b!5083468 (= e!3170713 (inv!77667 (left!42846 (right!43176 (left!42846 ys!41)))))))

(declare-fun b!5083469 () Bool)

(declare-fun e!3170714 () Bool)

(assert (=> b!5083469 (= e!3170713 e!3170714)))

(declare-fun res!2164140 () Bool)

(assert (=> b!5083469 (= res!2164140 (not ((_ is Leaf!25881) (left!42846 (right!43176 (left!42846 ys!41))))))))

(assert (=> b!5083469 (=> res!2164140 e!3170714)))

(declare-fun b!5083470 () Bool)

(assert (=> b!5083470 (= e!3170714 (inv!77668 (left!42846 (right!43176 (left!42846 ys!41)))))))

(assert (= (and d!1644377 c!873389) b!5083468))

(assert (= (and d!1644377 (not c!873389)) b!5083469))

(assert (= (and b!5083469 (not res!2164140)) b!5083470))

(declare-fun m!6138608 () Bool)

(assert (=> b!5083468 m!6138608))

(declare-fun m!6138610 () Bool)

(assert (=> b!5083470 m!6138610))

(assert (=> b!5083265 d!1644377))

(declare-fun d!1644379 () Bool)

(declare-fun c!873390 () Bool)

(assert (=> d!1644379 (= c!873390 ((_ is Node!15584) (right!43176 (right!43176 (left!42846 ys!41)))))))

(declare-fun e!3170715 () Bool)

(assert (=> d!1644379 (= (inv!77665 (right!43176 (right!43176 (left!42846 ys!41)))) e!3170715)))

(declare-fun b!5083471 () Bool)

(assert (=> b!5083471 (= e!3170715 (inv!77667 (right!43176 (right!43176 (left!42846 ys!41)))))))

(declare-fun b!5083472 () Bool)

(declare-fun e!3170716 () Bool)

(assert (=> b!5083472 (= e!3170715 e!3170716)))

(declare-fun res!2164141 () Bool)

(assert (=> b!5083472 (= res!2164141 (not ((_ is Leaf!25881) (right!43176 (right!43176 (left!42846 ys!41))))))))

(assert (=> b!5083472 (=> res!2164141 e!3170716)))

(declare-fun b!5083473 () Bool)

(assert (=> b!5083473 (= e!3170716 (inv!77668 (right!43176 (right!43176 (left!42846 ys!41)))))))

(assert (= (and d!1644379 c!873390) b!5083471))

(assert (= (and d!1644379 (not c!873390)) b!5083472))

(assert (= (and b!5083472 (not res!2164141)) b!5083473))

(declare-fun m!6138612 () Bool)

(assert (=> b!5083471 m!6138612))

(declare-fun m!6138614 () Bool)

(assert (=> b!5083473 m!6138614))

(assert (=> b!5083265 d!1644379))

(declare-fun d!1644381 () Bool)

(assert (=> d!1644381 (= (inv!77666 (xs!18962 (left!42846 (right!43176 xs!286)))) (<= (size!39114 (innerList!15672 (xs!18962 (left!42846 (right!43176 xs!286))))) 2147483647))))

(declare-fun bs!1190778 () Bool)

(assert (= bs!1190778 d!1644381))

(declare-fun m!6138616 () Bool)

(assert (=> bs!1190778 m!6138616))

(assert (=> b!5083235 d!1644381))

(assert (=> b!5083171 d!1644293))

(assert (=> b!5083171 d!1644295))

(declare-fun d!1644383 () Bool)

(declare-fun lt!2091309 () Int)

(assert (=> d!1644383 (>= lt!2091309 0)))

(declare-fun e!3170717 () Int)

(assert (=> d!1644383 (= lt!2091309 e!3170717)))

(declare-fun c!873391 () Bool)

(assert (=> d!1644383 (= c!873391 ((_ is Nil!58454) (list!19030 (xs!18962 ys!41))))))

(assert (=> d!1644383 (= (size!39114 (list!19030 (xs!18962 ys!41))) lt!2091309)))

(declare-fun b!5083474 () Bool)

(assert (=> b!5083474 (= e!3170717 0)))

(declare-fun b!5083475 () Bool)

(assert (=> b!5083475 (= e!3170717 (+ 1 (size!39114 (t!371405 (list!19030 (xs!18962 ys!41))))))))

(assert (= (and d!1644383 c!873391) b!5083474))

(assert (= (and d!1644383 (not c!873391)) b!5083475))

(declare-fun m!6138618 () Bool)

(assert (=> b!5083475 m!6138618))

(assert (=> b!5083180 d!1644383))

(declare-fun d!1644385 () Bool)

(assert (=> d!1644385 (= (list!19030 (xs!18962 ys!41)) (innerList!15672 (xs!18962 ys!41)))))

(assert (=> b!5083180 d!1644385))

(declare-fun d!1644387 () Bool)

(declare-fun lt!2091310 () Bool)

(assert (=> d!1644387 (= lt!2091310 (isEmpty!31672 (list!19028 (left!42846 (left!42846 xs!286)))))))

(assert (=> d!1644387 (= lt!2091310 (= (size!39116 (left!42846 (left!42846 xs!286))) 0))))

(assert (=> d!1644387 (= (isEmpty!31670 (left!42846 (left!42846 xs!286))) lt!2091310)))

(declare-fun bs!1190779 () Bool)

(assert (= bs!1190779 d!1644387))

(assert (=> bs!1190779 m!6138508))

(assert (=> bs!1190779 m!6138508))

(declare-fun m!6138620 () Bool)

(assert (=> bs!1190779 m!6138620))

(assert (=> bs!1190779 m!6138056))

(assert (=> b!5083169 d!1644387))

(declare-fun d!1644389 () Bool)

(declare-fun lt!2091311 () Bool)

(assert (=> d!1644389 (= lt!2091311 (isEmpty!31672 (list!19028 (right!43176 (right!43176 xs!286)))))))

(assert (=> d!1644389 (= lt!2091311 (= (size!39116 (right!43176 (right!43176 xs!286))) 0))))

(assert (=> d!1644389 (= (isEmpty!31670 (right!43176 (right!43176 xs!286))) lt!2091311)))

(declare-fun bs!1190780 () Bool)

(assert (= bs!1190780 d!1644389))

(assert (=> bs!1190780 m!6138558))

(assert (=> bs!1190780 m!6138558))

(declare-fun m!6138622 () Bool)

(assert (=> bs!1190780 m!6138622))

(assert (=> bs!1190780 m!6138100))

(assert (=> b!5083145 d!1644389))

(declare-fun d!1644391 () Bool)

(declare-fun res!2164142 () Bool)

(declare-fun e!3170718 () Bool)

(assert (=> d!1644391 (=> (not res!2164142) (not e!3170718))))

(assert (=> d!1644391 (= res!2164142 (<= (size!39114 (list!19030 (xs!18962 (left!42846 (left!42846 ys!41))))) 512))))

(assert (=> d!1644391 (= (inv!77668 (left!42846 (left!42846 ys!41))) e!3170718)))

(declare-fun b!5083476 () Bool)

(declare-fun res!2164143 () Bool)

(assert (=> b!5083476 (=> (not res!2164143) (not e!3170718))))

(assert (=> b!5083476 (= res!2164143 (= (csize!31399 (left!42846 (left!42846 ys!41))) (size!39114 (list!19030 (xs!18962 (left!42846 (left!42846 ys!41)))))))))

(declare-fun b!5083477 () Bool)

(assert (=> b!5083477 (= e!3170718 (and (> (csize!31399 (left!42846 (left!42846 ys!41))) 0) (<= (csize!31399 (left!42846 (left!42846 ys!41))) 512)))))

(assert (= (and d!1644391 res!2164142) b!5083476))

(assert (= (and b!5083476 res!2164143) b!5083477))

(declare-fun m!6138624 () Bool)

(assert (=> d!1644391 m!6138624))

(assert (=> d!1644391 m!6138624))

(declare-fun m!6138626 () Bool)

(assert (=> d!1644391 m!6138626))

(assert (=> b!5083476 m!6138624))

(assert (=> b!5083476 m!6138624))

(assert (=> b!5083476 m!6138626))

(assert (=> b!5083176 d!1644391))

(declare-fun d!1644393 () Bool)

(declare-fun c!873392 () Bool)

(assert (=> d!1644393 (= c!873392 ((_ is Node!15584) (left!42846 (left!42846 (left!42846 ys!41)))))))

(declare-fun e!3170719 () Bool)

(assert (=> d!1644393 (= (inv!77665 (left!42846 (left!42846 (left!42846 ys!41)))) e!3170719)))

(declare-fun b!5083478 () Bool)

(assert (=> b!5083478 (= e!3170719 (inv!77667 (left!42846 (left!42846 (left!42846 ys!41)))))))

(declare-fun b!5083479 () Bool)

(declare-fun e!3170720 () Bool)

(assert (=> b!5083479 (= e!3170719 e!3170720)))

(declare-fun res!2164144 () Bool)

(assert (=> b!5083479 (= res!2164144 (not ((_ is Leaf!25881) (left!42846 (left!42846 (left!42846 ys!41))))))))

(assert (=> b!5083479 (=> res!2164144 e!3170720)))

(declare-fun b!5083480 () Bool)

(assert (=> b!5083480 (= e!3170720 (inv!77668 (left!42846 (left!42846 (left!42846 ys!41)))))))

(assert (= (and d!1644393 c!873392) b!5083478))

(assert (= (and d!1644393 (not c!873392)) b!5083479))

(assert (= (and b!5083479 (not res!2164144)) b!5083480))

(declare-fun m!6138628 () Bool)

(assert (=> b!5083478 m!6138628))

(declare-fun m!6138630 () Bool)

(assert (=> b!5083480 m!6138630))

(assert (=> b!5083262 d!1644393))

(declare-fun d!1644395 () Bool)

(declare-fun c!873393 () Bool)

(assert (=> d!1644395 (= c!873393 ((_ is Node!15584) (right!43176 (left!42846 (left!42846 ys!41)))))))

(declare-fun e!3170721 () Bool)

(assert (=> d!1644395 (= (inv!77665 (right!43176 (left!42846 (left!42846 ys!41)))) e!3170721)))

(declare-fun b!5083481 () Bool)

(assert (=> b!5083481 (= e!3170721 (inv!77667 (right!43176 (left!42846 (left!42846 ys!41)))))))

(declare-fun b!5083482 () Bool)

(declare-fun e!3170722 () Bool)

(assert (=> b!5083482 (= e!3170721 e!3170722)))

(declare-fun res!2164145 () Bool)

(assert (=> b!5083482 (= res!2164145 (not ((_ is Leaf!25881) (right!43176 (left!42846 (left!42846 ys!41))))))))

(assert (=> b!5083482 (=> res!2164145 e!3170722)))

(declare-fun b!5083483 () Bool)

(assert (=> b!5083483 (= e!3170722 (inv!77668 (right!43176 (left!42846 (left!42846 ys!41)))))))

(assert (= (and d!1644395 c!873393) b!5083481))

(assert (= (and d!1644395 (not c!873393)) b!5083482))

(assert (= (and b!5083482 (not res!2164145)) b!5083483))

(declare-fun m!6138632 () Bool)

(assert (=> b!5083481 m!6138632))

(declare-fun m!6138634 () Bool)

(assert (=> b!5083483 m!6138634))

(assert (=> b!5083262 d!1644395))

(declare-fun d!1644397 () Bool)

(declare-fun c!873394 () Bool)

(assert (=> d!1644397 (= c!873394 ((_ is Node!15584) (left!42846 (right!43176 (right!43176 ys!41)))))))

(declare-fun e!3170723 () Bool)

(assert (=> d!1644397 (= (inv!77665 (left!42846 (right!43176 (right!43176 ys!41)))) e!3170723)))

(declare-fun b!5083484 () Bool)

(assert (=> b!5083484 (= e!3170723 (inv!77667 (left!42846 (right!43176 (right!43176 ys!41)))))))

(declare-fun b!5083485 () Bool)

(declare-fun e!3170724 () Bool)

(assert (=> b!5083485 (= e!3170723 e!3170724)))

(declare-fun res!2164146 () Bool)

(assert (=> b!5083485 (= res!2164146 (not ((_ is Leaf!25881) (left!42846 (right!43176 (right!43176 ys!41))))))))

(assert (=> b!5083485 (=> res!2164146 e!3170724)))

(declare-fun b!5083486 () Bool)

(assert (=> b!5083486 (= e!3170724 (inv!77668 (left!42846 (right!43176 (right!43176 ys!41)))))))

(assert (= (and d!1644397 c!873394) b!5083484))

(assert (= (and d!1644397 (not c!873394)) b!5083485))

(assert (= (and b!5083485 (not res!2164146)) b!5083486))

(declare-fun m!6138636 () Bool)

(assert (=> b!5083484 m!6138636))

(declare-fun m!6138638 () Bool)

(assert (=> b!5083486 m!6138638))

(assert (=> b!5083256 d!1644397))

(declare-fun d!1644399 () Bool)

(declare-fun c!873395 () Bool)

(assert (=> d!1644399 (= c!873395 ((_ is Node!15584) (right!43176 (right!43176 (right!43176 ys!41)))))))

(declare-fun e!3170725 () Bool)

(assert (=> d!1644399 (= (inv!77665 (right!43176 (right!43176 (right!43176 ys!41)))) e!3170725)))

(declare-fun b!5083487 () Bool)

(assert (=> b!5083487 (= e!3170725 (inv!77667 (right!43176 (right!43176 (right!43176 ys!41)))))))

(declare-fun b!5083488 () Bool)

(declare-fun e!3170726 () Bool)

(assert (=> b!5083488 (= e!3170725 e!3170726)))

(declare-fun res!2164147 () Bool)

(assert (=> b!5083488 (= res!2164147 (not ((_ is Leaf!25881) (right!43176 (right!43176 (right!43176 ys!41))))))))

(assert (=> b!5083488 (=> res!2164147 e!3170726)))

(declare-fun b!5083489 () Bool)

(assert (=> b!5083489 (= e!3170726 (inv!77668 (right!43176 (right!43176 (right!43176 ys!41)))))))

(assert (= (and d!1644399 c!873395) b!5083487))

(assert (= (and d!1644399 (not c!873395)) b!5083488))

(assert (= (and b!5083488 (not res!2164147)) b!5083489))

(declare-fun m!6138640 () Bool)

(assert (=> b!5083487 m!6138640))

(declare-fun m!6138642 () Bool)

(assert (=> b!5083489 m!6138642))

(assert (=> b!5083256 d!1644399))

(declare-fun b!5083490 () Bool)

(declare-fun e!3170728 () Bool)

(declare-fun e!3170727 () Bool)

(assert (=> b!5083490 (= e!3170728 e!3170727)))

(declare-fun res!2164150 () Bool)

(assert (=> b!5083490 (=> (not res!2164150) (not e!3170727))))

(assert (=> b!5083490 (= res!2164150 (<= (- 1) (- (height!2161 (left!42846 (right!43176 (right!43176 xs!286)))) (height!2161 (right!43176 (right!43176 (right!43176 xs!286)))))))))

(declare-fun b!5083491 () Bool)

(declare-fun res!2164148 () Bool)

(assert (=> b!5083491 (=> (not res!2164148) (not e!3170727))))

(assert (=> b!5083491 (= res!2164148 (not (isEmpty!31670 (left!42846 (right!43176 (right!43176 xs!286))))))))

(declare-fun b!5083492 () Bool)

(declare-fun res!2164152 () Bool)

(assert (=> b!5083492 (=> (not res!2164152) (not e!3170727))))

(assert (=> b!5083492 (= res!2164152 (isBalanced!4446 (right!43176 (right!43176 (right!43176 xs!286)))))))

(declare-fun b!5083493 () Bool)

(declare-fun res!2164153 () Bool)

(assert (=> b!5083493 (=> (not res!2164153) (not e!3170727))))

(assert (=> b!5083493 (= res!2164153 (<= (- (height!2161 (left!42846 (right!43176 (right!43176 xs!286)))) (height!2161 (right!43176 (right!43176 (right!43176 xs!286))))) 1))))

(declare-fun b!5083494 () Bool)

(assert (=> b!5083494 (= e!3170727 (not (isEmpty!31670 (right!43176 (right!43176 (right!43176 xs!286))))))))

(declare-fun b!5083495 () Bool)

(declare-fun res!2164151 () Bool)

(assert (=> b!5083495 (=> (not res!2164151) (not e!3170727))))

(assert (=> b!5083495 (= res!2164151 (isBalanced!4446 (left!42846 (right!43176 (right!43176 xs!286)))))))

(declare-fun d!1644401 () Bool)

(declare-fun res!2164149 () Bool)

(assert (=> d!1644401 (=> res!2164149 e!3170728)))

(assert (=> d!1644401 (= res!2164149 (not ((_ is Node!15584) (right!43176 (right!43176 xs!286)))))))

(assert (=> d!1644401 (= (isBalanced!4446 (right!43176 (right!43176 xs!286))) e!3170728)))

(assert (= (and d!1644401 (not res!2164149)) b!5083490))

(assert (= (and b!5083490 res!2164150) b!5083493))

(assert (= (and b!5083493 res!2164153) b!5083495))

(assert (= (and b!5083495 res!2164151) b!5083492))

(assert (= (and b!5083492 res!2164152) b!5083491))

(assert (= (and b!5083491 res!2164148) b!5083494))

(declare-fun m!6138644 () Bool)

(assert (=> b!5083491 m!6138644))

(assert (=> b!5083493 m!6138568))

(assert (=> b!5083493 m!6138570))

(declare-fun m!6138646 () Bool)

(assert (=> b!5083492 m!6138646))

(declare-fun m!6138648 () Bool)

(assert (=> b!5083495 m!6138648))

(assert (=> b!5083490 m!6138568))

(assert (=> b!5083490 m!6138570))

(declare-fun m!6138650 () Bool)

(assert (=> b!5083494 m!6138650))

(assert (=> b!5083143 d!1644401))

(assert (=> d!1644161 d!1644383))

(assert (=> d!1644161 d!1644385))

(declare-fun d!1644403 () Bool)

(declare-fun res!2164154 () Bool)

(declare-fun e!3170729 () Bool)

(assert (=> d!1644403 (=> (not res!2164154) (not e!3170729))))

(assert (=> d!1644403 (= res!2164154 (= (csize!31398 (left!42846 (left!42846 ys!41))) (+ (size!39116 (left!42846 (left!42846 (left!42846 ys!41)))) (size!39116 (right!43176 (left!42846 (left!42846 ys!41)))))))))

(assert (=> d!1644403 (= (inv!77667 (left!42846 (left!42846 ys!41))) e!3170729)))

(declare-fun b!5083496 () Bool)

(declare-fun res!2164155 () Bool)

(assert (=> b!5083496 (=> (not res!2164155) (not e!3170729))))

(assert (=> b!5083496 (= res!2164155 (and (not (= (left!42846 (left!42846 (left!42846 ys!41))) Empty!15584)) (not (= (right!43176 (left!42846 (left!42846 ys!41))) Empty!15584))))))

(declare-fun b!5083497 () Bool)

(declare-fun res!2164156 () Bool)

(assert (=> b!5083497 (=> (not res!2164156) (not e!3170729))))

(assert (=> b!5083497 (= res!2164156 (= (cheight!15795 (left!42846 (left!42846 ys!41))) (+ (max!0 (height!2161 (left!42846 (left!42846 (left!42846 ys!41)))) (height!2161 (right!43176 (left!42846 (left!42846 ys!41))))) 1)))))

(declare-fun b!5083498 () Bool)

(assert (=> b!5083498 (= e!3170729 (<= 0 (cheight!15795 (left!42846 (left!42846 ys!41)))))))

(assert (= (and d!1644403 res!2164154) b!5083496))

(assert (= (and b!5083496 res!2164155) b!5083497))

(assert (= (and b!5083497 res!2164156) b!5083498))

(declare-fun m!6138652 () Bool)

(assert (=> d!1644403 m!6138652))

(declare-fun m!6138654 () Bool)

(assert (=> d!1644403 m!6138654))

(declare-fun m!6138656 () Bool)

(assert (=> b!5083497 m!6138656))

(declare-fun m!6138658 () Bool)

(assert (=> b!5083497 m!6138658))

(assert (=> b!5083497 m!6138656))

(assert (=> b!5083497 m!6138658))

(declare-fun m!6138660 () Bool)

(assert (=> b!5083497 m!6138660))

(assert (=> b!5083174 d!1644403))

(declare-fun d!1644405 () Bool)

(declare-fun c!873396 () Bool)

(assert (=> d!1644405 (= c!873396 ((_ is Node!15584) (left!42846 (left!42846 (left!42846 xs!286)))))))

(declare-fun e!3170730 () Bool)

(assert (=> d!1644405 (= (inv!77665 (left!42846 (left!42846 (left!42846 xs!286)))) e!3170730)))

(declare-fun b!5083499 () Bool)

(assert (=> b!5083499 (= e!3170730 (inv!77667 (left!42846 (left!42846 (left!42846 xs!286)))))))

(declare-fun b!5083500 () Bool)

(declare-fun e!3170731 () Bool)

(assert (=> b!5083500 (= e!3170730 e!3170731)))

(declare-fun res!2164157 () Bool)

(assert (=> b!5083500 (= res!2164157 (not ((_ is Leaf!25881) (left!42846 (left!42846 (left!42846 xs!286))))))))

(assert (=> b!5083500 (=> res!2164157 e!3170731)))

(declare-fun b!5083501 () Bool)

(assert (=> b!5083501 (= e!3170731 (inv!77668 (left!42846 (left!42846 (left!42846 xs!286)))))))

(assert (= (and d!1644405 c!873396) b!5083499))

(assert (= (and d!1644405 (not c!873396)) b!5083500))

(assert (= (and b!5083500 (not res!2164157)) b!5083501))

(declare-fun m!6138662 () Bool)

(assert (=> b!5083499 m!6138662))

(declare-fun m!6138664 () Bool)

(assert (=> b!5083501 m!6138664))

(assert (=> b!5083243 d!1644405))

(declare-fun d!1644407 () Bool)

(declare-fun c!873397 () Bool)

(assert (=> d!1644407 (= c!873397 ((_ is Node!15584) (right!43176 (left!42846 (left!42846 xs!286)))))))

(declare-fun e!3170732 () Bool)

(assert (=> d!1644407 (= (inv!77665 (right!43176 (left!42846 (left!42846 xs!286)))) e!3170732)))

(declare-fun b!5083502 () Bool)

(assert (=> b!5083502 (= e!3170732 (inv!77667 (right!43176 (left!42846 (left!42846 xs!286)))))))

(declare-fun b!5083503 () Bool)

(declare-fun e!3170733 () Bool)

(assert (=> b!5083503 (= e!3170732 e!3170733)))

(declare-fun res!2164158 () Bool)

(assert (=> b!5083503 (= res!2164158 (not ((_ is Leaf!25881) (right!43176 (left!42846 (left!42846 xs!286))))))))

(assert (=> b!5083503 (=> res!2164158 e!3170733)))

(declare-fun b!5083504 () Bool)

(assert (=> b!5083504 (= e!3170733 (inv!77668 (right!43176 (left!42846 (left!42846 xs!286)))))))

(assert (= (and d!1644407 c!873397) b!5083502))

(assert (= (and d!1644407 (not c!873397)) b!5083503))

(assert (= (and b!5083503 (not res!2164158)) b!5083504))

(declare-fun m!6138666 () Bool)

(assert (=> b!5083502 m!6138666))

(declare-fun m!6138668 () Bool)

(assert (=> b!5083504 m!6138668))

(assert (=> b!5083243 d!1644407))

(declare-fun d!1644409 () Bool)

(declare-fun lt!2091312 () Bool)

(assert (=> d!1644409 (= lt!2091312 (isEmpty!31672 (list!19028 (right!43176 (left!42846 ys!41)))))))

(assert (=> d!1644409 (= lt!2091312 (= (size!39116 (right!43176 (left!42846 ys!41))) 0))))

(assert (=> d!1644409 (= (isEmpty!31670 (right!43176 (left!42846 ys!41))) lt!2091312)))

(declare-fun bs!1190781 () Bool)

(assert (= bs!1190781 d!1644409))

(declare-fun m!6138670 () Bool)

(assert (=> bs!1190781 m!6138670))

(assert (=> bs!1190781 m!6138670))

(declare-fun m!6138672 () Bool)

(assert (=> bs!1190781 m!6138672))

(assert (=> bs!1190781 m!6138036))

(assert (=> b!5083230 d!1644409))

(declare-fun b!5083505 () Bool)

(declare-fun e!3170735 () Bool)

(declare-fun e!3170734 () Bool)

(assert (=> b!5083505 (= e!3170735 e!3170734)))

(declare-fun res!2164161 () Bool)

(assert (=> b!5083505 (=> (not res!2164161) (not e!3170734))))

(assert (=> b!5083505 (= res!2164161 (<= (- 1) (- (height!2161 (left!42846 (right!43176 (left!42846 ys!41)))) (height!2161 (right!43176 (right!43176 (left!42846 ys!41)))))))))

(declare-fun b!5083506 () Bool)

(declare-fun res!2164159 () Bool)

(assert (=> b!5083506 (=> (not res!2164159) (not e!3170734))))

(assert (=> b!5083506 (= res!2164159 (not (isEmpty!31670 (left!42846 (right!43176 (left!42846 ys!41))))))))

(declare-fun b!5083507 () Bool)

(declare-fun res!2164163 () Bool)

(assert (=> b!5083507 (=> (not res!2164163) (not e!3170734))))

(assert (=> b!5083507 (= res!2164163 (isBalanced!4446 (right!43176 (right!43176 (left!42846 ys!41)))))))

(declare-fun b!5083508 () Bool)

(declare-fun res!2164164 () Bool)

(assert (=> b!5083508 (=> (not res!2164164) (not e!3170734))))

(assert (=> b!5083508 (= res!2164164 (<= (- (height!2161 (left!42846 (right!43176 (left!42846 ys!41)))) (height!2161 (right!43176 (right!43176 (left!42846 ys!41))))) 1))))

(declare-fun b!5083509 () Bool)

(assert (=> b!5083509 (= e!3170734 (not (isEmpty!31670 (right!43176 (right!43176 (left!42846 ys!41))))))))

(declare-fun b!5083510 () Bool)

(declare-fun res!2164162 () Bool)

(assert (=> b!5083510 (=> (not res!2164162) (not e!3170734))))

(assert (=> b!5083510 (= res!2164162 (isBalanced!4446 (left!42846 (right!43176 (left!42846 ys!41)))))))

(declare-fun d!1644411 () Bool)

(declare-fun res!2164160 () Bool)

(assert (=> d!1644411 (=> res!2164160 e!3170735)))

(assert (=> d!1644411 (= res!2164160 (not ((_ is Node!15584) (right!43176 (left!42846 ys!41)))))))

(assert (=> d!1644411 (= (isBalanced!4446 (right!43176 (left!42846 ys!41))) e!3170735)))

(assert (= (and d!1644411 (not res!2164160)) b!5083505))

(assert (= (and b!5083505 res!2164161) b!5083508))

(assert (= (and b!5083508 res!2164164) b!5083510))

(assert (= (and b!5083510 res!2164162) b!5083507))

(assert (= (and b!5083507 res!2164163) b!5083506))

(assert (= (and b!5083506 res!2164159) b!5083509))

(declare-fun m!6138674 () Bool)

(assert (=> b!5083506 m!6138674))

(declare-fun m!6138676 () Bool)

(assert (=> b!5083508 m!6138676))

(declare-fun m!6138678 () Bool)

(assert (=> b!5083508 m!6138678))

(declare-fun m!6138680 () Bool)

(assert (=> b!5083507 m!6138680))

(declare-fun m!6138682 () Bool)

(assert (=> b!5083510 m!6138682))

(assert (=> b!5083505 m!6138676))

(assert (=> b!5083505 m!6138678))

(declare-fun m!6138684 () Bool)

(assert (=> b!5083509 m!6138684))

(assert (=> b!5083228 d!1644411))

(assert (=> d!1644171 d!1644355))

(assert (=> d!1644171 d!1644357))

(declare-fun d!1644413 () Bool)

(declare-fun lt!2091313 () Int)

(assert (=> d!1644413 (>= lt!2091313 0)))

(declare-fun e!3170736 () Int)

(assert (=> d!1644413 (= lt!2091313 e!3170736)))

(declare-fun c!873398 () Bool)

(assert (=> d!1644413 (= c!873398 ((_ is Nil!58454) (innerList!15672 (xs!18962 (left!42846 ys!41)))))))

(assert (=> d!1644413 (= (size!39114 (innerList!15672 (xs!18962 (left!42846 ys!41)))) lt!2091313)))

(declare-fun b!5083511 () Bool)

(assert (=> b!5083511 (= e!3170736 0)))

(declare-fun b!5083512 () Bool)

(assert (=> b!5083512 (= e!3170736 (+ 1 (size!39114 (t!371405 (innerList!15672 (xs!18962 (left!42846 ys!41)))))))))

(assert (= (and d!1644413 c!873398) b!5083511))

(assert (= (and d!1644413 (not c!873398)) b!5083512))

(declare-fun m!6138686 () Bool)

(assert (=> b!5083512 m!6138686))

(assert (=> d!1644153 d!1644413))

(declare-fun d!1644415 () Bool)

(assert (=> d!1644415 (= (inv!77666 (xs!18962 (left!42846 (right!43176 ys!41)))) (<= (size!39114 (innerList!15672 (xs!18962 (left!42846 (right!43176 ys!41))))) 2147483647))))

(declare-fun bs!1190782 () Bool)

(assert (= bs!1190782 d!1644415))

(declare-fun m!6138688 () Bool)

(assert (=> bs!1190782 m!6138688))

(assert (=> b!5083254 d!1644415))

(assert (=> b!5083116 d!1644145))

(assert (=> b!5083116 d!1644147))

(declare-fun b!5083513 () Bool)

(declare-fun e!3170738 () Bool)

(declare-fun e!3170737 () Bool)

(assert (=> b!5083513 (= e!3170738 e!3170737)))

(declare-fun res!2164167 () Bool)

(assert (=> b!5083513 (=> (not res!2164167) (not e!3170737))))

(assert (=> b!5083513 (= res!2164167 (<= (- 1) (- (height!2161 (left!42846 (left!42846 (left!42846 xs!286)))) (height!2161 (right!43176 (left!42846 (left!42846 xs!286)))))))))

(declare-fun b!5083514 () Bool)

(declare-fun res!2164165 () Bool)

(assert (=> b!5083514 (=> (not res!2164165) (not e!3170737))))

(assert (=> b!5083514 (= res!2164165 (not (isEmpty!31670 (left!42846 (left!42846 (left!42846 xs!286))))))))

(declare-fun b!5083515 () Bool)

(declare-fun res!2164169 () Bool)

(assert (=> b!5083515 (=> (not res!2164169) (not e!3170737))))

(assert (=> b!5083515 (= res!2164169 (isBalanced!4446 (right!43176 (left!42846 (left!42846 xs!286)))))))

(declare-fun b!5083516 () Bool)

(declare-fun res!2164170 () Bool)

(assert (=> b!5083516 (=> (not res!2164170) (not e!3170737))))

(assert (=> b!5083516 (= res!2164170 (<= (- (height!2161 (left!42846 (left!42846 (left!42846 xs!286)))) (height!2161 (right!43176 (left!42846 (left!42846 xs!286))))) 1))))

(declare-fun b!5083517 () Bool)

(assert (=> b!5083517 (= e!3170737 (not (isEmpty!31670 (right!43176 (left!42846 (left!42846 xs!286))))))))

(declare-fun b!5083518 () Bool)

(declare-fun res!2164168 () Bool)

(assert (=> b!5083518 (=> (not res!2164168) (not e!3170737))))

(assert (=> b!5083518 (= res!2164168 (isBalanced!4446 (left!42846 (left!42846 (left!42846 xs!286)))))))

(declare-fun d!1644417 () Bool)

(declare-fun res!2164166 () Bool)

(assert (=> d!1644417 (=> res!2164166 e!3170738)))

(assert (=> d!1644417 (= res!2164166 (not ((_ is Node!15584) (left!42846 (left!42846 xs!286)))))))

(assert (=> d!1644417 (= (isBalanced!4446 (left!42846 (left!42846 xs!286))) e!3170738)))

(assert (= (and d!1644417 (not res!2164166)) b!5083513))

(assert (= (and b!5083513 res!2164167) b!5083516))

(assert (= (and b!5083516 res!2164170) b!5083518))

(assert (= (and b!5083518 res!2164168) b!5083515))

(assert (= (and b!5083515 res!2164169) b!5083514))

(assert (= (and b!5083514 res!2164165) b!5083517))

(declare-fun m!6138690 () Bool)

(assert (=> b!5083514 m!6138690))

(assert (=> b!5083516 m!6138530))

(assert (=> b!5083516 m!6138532))

(declare-fun m!6138692 () Bool)

(assert (=> b!5083515 m!6138692))

(declare-fun m!6138694 () Bool)

(assert (=> b!5083518 m!6138694))

(assert (=> b!5083513 m!6138530))

(assert (=> b!5083513 m!6138532))

(declare-fun m!6138696 () Bool)

(assert (=> b!5083517 m!6138696))

(assert (=> b!5083173 d!1644417))

(declare-fun d!1644419 () Bool)

(declare-fun lt!2091314 () Int)

(assert (=> d!1644419 (>= lt!2091314 0)))

(declare-fun e!3170739 () Int)

(assert (=> d!1644419 (= lt!2091314 e!3170739)))

(declare-fun c!873399 () Bool)

(assert (=> d!1644419 (= c!873399 ((_ is Nil!58454) (innerList!15672 (xs!18962 (right!43176 xs!286)))))))

(assert (=> d!1644419 (= (size!39114 (innerList!15672 (xs!18962 (right!43176 xs!286)))) lt!2091314)))

(declare-fun b!5083519 () Bool)

(assert (=> b!5083519 (= e!3170739 0)))

(declare-fun b!5083520 () Bool)

(assert (=> b!5083520 (= e!3170739 (+ 1 (size!39114 (t!371405 (innerList!15672 (xs!18962 (right!43176 xs!286)))))))))

(assert (= (and d!1644419 c!873399) b!5083519))

(assert (= (and d!1644419 (not c!873399)) b!5083520))

(declare-fun m!6138698 () Bool)

(assert (=> b!5083520 m!6138698))

(assert (=> d!1644137 d!1644419))

(declare-fun d!1644421 () Bool)

(declare-fun c!873400 () Bool)

(assert (=> d!1644421 (= c!873400 ((_ is Node!15584) (left!42846 (right!43176 (right!43176 xs!286)))))))

(declare-fun e!3170740 () Bool)

(assert (=> d!1644421 (= (inv!77665 (left!42846 (right!43176 (right!43176 xs!286)))) e!3170740)))

(declare-fun b!5083521 () Bool)

(assert (=> b!5083521 (= e!3170740 (inv!77667 (left!42846 (right!43176 (right!43176 xs!286)))))))

(declare-fun b!5083522 () Bool)

(declare-fun e!3170741 () Bool)

(assert (=> b!5083522 (= e!3170740 e!3170741)))

(declare-fun res!2164171 () Bool)

(assert (=> b!5083522 (= res!2164171 (not ((_ is Leaf!25881) (left!42846 (right!43176 (right!43176 xs!286))))))))

(assert (=> b!5083522 (=> res!2164171 e!3170741)))

(declare-fun b!5083523 () Bool)

(assert (=> b!5083523 (= e!3170741 (inv!77668 (left!42846 (right!43176 (right!43176 xs!286)))))))

(assert (= (and d!1644421 c!873400) b!5083521))

(assert (= (and d!1644421 (not c!873400)) b!5083522))

(assert (= (and b!5083522 (not res!2164171)) b!5083523))

(declare-fun m!6138700 () Bool)

(assert (=> b!5083521 m!6138700))

(declare-fun m!6138702 () Bool)

(assert (=> b!5083523 m!6138702))

(assert (=> b!5083237 d!1644421))

(declare-fun d!1644423 () Bool)

(declare-fun c!873401 () Bool)

(assert (=> d!1644423 (= c!873401 ((_ is Node!15584) (right!43176 (right!43176 (right!43176 xs!286)))))))

(declare-fun e!3170742 () Bool)

(assert (=> d!1644423 (= (inv!77665 (right!43176 (right!43176 (right!43176 xs!286)))) e!3170742)))

(declare-fun b!5083524 () Bool)

(assert (=> b!5083524 (= e!3170742 (inv!77667 (right!43176 (right!43176 (right!43176 xs!286)))))))

(declare-fun b!5083525 () Bool)

(declare-fun e!3170743 () Bool)

(assert (=> b!5083525 (= e!3170742 e!3170743)))

(declare-fun res!2164172 () Bool)

(assert (=> b!5083525 (= res!2164172 (not ((_ is Leaf!25881) (right!43176 (right!43176 (right!43176 xs!286))))))))

(assert (=> b!5083525 (=> res!2164172 e!3170743)))

(declare-fun b!5083526 () Bool)

(assert (=> b!5083526 (= e!3170743 (inv!77668 (right!43176 (right!43176 (right!43176 xs!286)))))))

(assert (= (and d!1644423 c!873401) b!5083524))

(assert (= (and d!1644423 (not c!873401)) b!5083525))

(assert (= (and b!5083525 (not res!2164172)) b!5083526))

(declare-fun m!6138704 () Bool)

(assert (=> b!5083524 m!6138704))

(declare-fun m!6138706 () Bool)

(assert (=> b!5083526 m!6138706))

(assert (=> b!5083237 d!1644423))

(assert (=> b!5083226 d!1644309))

(assert (=> b!5083226 d!1644311))

(declare-fun d!1644425 () Bool)

(assert (=> d!1644425 (= (max!0 (height!2161 (left!42846 (right!43176 xs!286))) (height!2161 (right!43176 (right!43176 xs!286)))) (ite (< (height!2161 (left!42846 (right!43176 xs!286))) (height!2161 (right!43176 (right!43176 xs!286)))) (height!2161 (right!43176 (right!43176 xs!286))) (height!2161 (left!42846 (right!43176 xs!286)))))))

(assert (=> b!5083183 d!1644425))

(assert (=> b!5083183 d!1644285))

(assert (=> b!5083183 d!1644287))

(assert (=> b!5083112 d!1644157))

(assert (=> b!5083112 d!1644159))

(declare-fun d!1644427 () Bool)

(declare-fun res!2164173 () Bool)

(declare-fun e!3170744 () Bool)

(assert (=> d!1644427 (=> (not res!2164173) (not e!3170744))))

(assert (=> d!1644427 (= res!2164173 (<= (size!39114 (list!19030 (xs!18962 (right!43176 (left!42846 ys!41))))) 512))))

(assert (=> d!1644427 (= (inv!77668 (right!43176 (left!42846 ys!41))) e!3170744)))

(declare-fun b!5083527 () Bool)

(declare-fun res!2164174 () Bool)

(assert (=> b!5083527 (=> (not res!2164174) (not e!3170744))))

(assert (=> b!5083527 (= res!2164174 (= (csize!31399 (right!43176 (left!42846 ys!41))) (size!39114 (list!19030 (xs!18962 (right!43176 (left!42846 ys!41)))))))))

(declare-fun b!5083528 () Bool)

(assert (=> b!5083528 (= e!3170744 (and (> (csize!31399 (right!43176 (left!42846 ys!41))) 0) (<= (csize!31399 (right!43176 (left!42846 ys!41))) 512)))))

(assert (= (and d!1644427 res!2164173) b!5083527))

(assert (= (and b!5083527 res!2164174) b!5083528))

(declare-fun m!6138708 () Bool)

(assert (=> d!1644427 m!6138708))

(assert (=> d!1644427 m!6138708))

(declare-fun m!6138710 () Bool)

(assert (=> d!1644427 m!6138710))

(assert (=> b!5083527 m!6138708))

(assert (=> b!5083527 m!6138708))

(assert (=> b!5083527 m!6138710))

(assert (=> b!5083179 d!1644427))

(declare-fun d!1644429 () Bool)

(assert (=> d!1644429 (= (max!0 (height!2161 (left!42846 xs!286)) (height!2161 (right!43176 xs!286))) (ite (< (height!2161 (left!42846 xs!286)) (height!2161 (right!43176 xs!286))) (height!2161 (right!43176 xs!286)) (height!2161 (left!42846 xs!286))))))

(assert (=> b!5083151 d!1644429))

(assert (=> b!5083151 d!1644129))

(assert (=> b!5083151 d!1644131))

(declare-fun d!1644431 () Bool)

(declare-fun c!873402 () Bool)

(assert (=> d!1644431 (= c!873402 ((_ is Node!15584) (left!42846 (left!42846 (right!43176 xs!286)))))))

(declare-fun e!3170745 () Bool)

(assert (=> d!1644431 (= (inv!77665 (left!42846 (left!42846 (right!43176 xs!286)))) e!3170745)))

(declare-fun b!5083529 () Bool)

(assert (=> b!5083529 (= e!3170745 (inv!77667 (left!42846 (left!42846 (right!43176 xs!286)))))))

(declare-fun b!5083530 () Bool)

(declare-fun e!3170746 () Bool)

(assert (=> b!5083530 (= e!3170745 e!3170746)))

(declare-fun res!2164175 () Bool)

(assert (=> b!5083530 (= res!2164175 (not ((_ is Leaf!25881) (left!42846 (left!42846 (right!43176 xs!286))))))))

(assert (=> b!5083530 (=> res!2164175 e!3170746)))

(declare-fun b!5083531 () Bool)

(assert (=> b!5083531 (= e!3170746 (inv!77668 (left!42846 (left!42846 (right!43176 xs!286)))))))

(assert (= (and d!1644431 c!873402) b!5083529))

(assert (= (and d!1644431 (not c!873402)) b!5083530))

(assert (= (and b!5083530 (not res!2164175)) b!5083531))

(declare-fun m!6138712 () Bool)

(assert (=> b!5083529 m!6138712))

(declare-fun m!6138714 () Bool)

(assert (=> b!5083531 m!6138714))

(assert (=> b!5083234 d!1644431))

(declare-fun d!1644433 () Bool)

(declare-fun c!873403 () Bool)

(assert (=> d!1644433 (= c!873403 ((_ is Node!15584) (right!43176 (left!42846 (right!43176 xs!286)))))))

(declare-fun e!3170747 () Bool)

(assert (=> d!1644433 (= (inv!77665 (right!43176 (left!42846 (right!43176 xs!286)))) e!3170747)))

(declare-fun b!5083532 () Bool)

(assert (=> b!5083532 (= e!3170747 (inv!77667 (right!43176 (left!42846 (right!43176 xs!286)))))))

(declare-fun b!5083533 () Bool)

(declare-fun e!3170748 () Bool)

(assert (=> b!5083533 (= e!3170747 e!3170748)))

(declare-fun res!2164176 () Bool)

(assert (=> b!5083533 (= res!2164176 (not ((_ is Leaf!25881) (right!43176 (left!42846 (right!43176 xs!286))))))))

(assert (=> b!5083533 (=> res!2164176 e!3170748)))

(declare-fun b!5083534 () Bool)

(assert (=> b!5083534 (= e!3170748 (inv!77668 (right!43176 (left!42846 (right!43176 xs!286)))))))

(assert (= (and d!1644433 c!873403) b!5083532))

(assert (= (and d!1644433 (not c!873403)) b!5083533))

(assert (= (and b!5083533 (not res!2164176)) b!5083534))

(declare-fun m!6138716 () Bool)

(assert (=> b!5083532 m!6138716))

(declare-fun m!6138718 () Bool)

(assert (=> b!5083534 m!6138718))

(assert (=> b!5083234 d!1644433))

(declare-fun d!1644435 () Bool)

(declare-fun lt!2091315 () Int)

(assert (=> d!1644435 (= lt!2091315 (size!39114 (list!19028 (left!42846 ys!41))))))

(assert (=> d!1644435 (= lt!2091315 (ite ((_ is Empty!15584) (left!42846 ys!41)) 0 (ite ((_ is Leaf!25881) (left!42846 ys!41)) (csize!31399 (left!42846 ys!41)) (csize!31398 (left!42846 ys!41)))))))

(assert (=> d!1644435 (= (size!39116 (left!42846 ys!41)) lt!2091315)))

(declare-fun bs!1190783 () Bool)

(assert (= bs!1190783 d!1644435))

(assert (=> bs!1190783 m!6138120))

(assert (=> bs!1190783 m!6138120))

(declare-fun m!6138720 () Bool)

(assert (=> bs!1190783 m!6138720))

(assert (=> d!1644167 d!1644435))

(declare-fun d!1644437 () Bool)

(declare-fun lt!2091316 () Int)

(assert (=> d!1644437 (= lt!2091316 (size!39114 (list!19028 (right!43176 ys!41))))))

(assert (=> d!1644437 (= lt!2091316 (ite ((_ is Empty!15584) (right!43176 ys!41)) 0 (ite ((_ is Leaf!25881) (right!43176 ys!41)) (csize!31399 (right!43176 ys!41)) (csize!31398 (right!43176 ys!41)))))))

(assert (=> d!1644437 (= (size!39116 (right!43176 ys!41)) lt!2091316)))

(declare-fun bs!1190784 () Bool)

(assert (= bs!1190784 d!1644437))

(assert (=> bs!1190784 m!6138092))

(assert (=> bs!1190784 m!6138092))

(declare-fun m!6138722 () Bool)

(assert (=> bs!1190784 m!6138722))

(assert (=> d!1644167 d!1644437))

(declare-fun d!1644439 () Bool)

(assert (=> d!1644439 (= (max!0 (height!2161 (left!42846 (left!42846 xs!286))) (height!2161 (right!43176 (left!42846 xs!286)))) (ite (< (height!2161 (left!42846 (left!42846 xs!286))) (height!2161 (right!43176 (left!42846 xs!286)))) (height!2161 (right!43176 (left!42846 xs!286))) (height!2161 (left!42846 (left!42846 xs!286)))))))

(assert (=> b!5083160 d!1644439))

(assert (=> b!5083160 d!1644293))

(assert (=> b!5083160 d!1644295))

(declare-fun d!1644441 () Bool)

(declare-fun lt!2091317 () Int)

(assert (=> d!1644441 (>= lt!2091317 0)))

(declare-fun e!3170749 () Int)

(assert (=> d!1644441 (= lt!2091317 e!3170749)))

(declare-fun c!873404 () Bool)

(assert (=> d!1644441 (= c!873404 ((_ is Nil!58454) (list!19030 (xs!18962 xs!286))))))

(assert (=> d!1644441 (= (size!39114 (list!19030 (xs!18962 xs!286))) lt!2091317)))

(declare-fun b!5083535 () Bool)

(assert (=> b!5083535 (= e!3170749 0)))

(declare-fun b!5083536 () Bool)

(assert (=> b!5083536 (= e!3170749 (+ 1 (size!39114 (t!371405 (list!19030 (xs!18962 xs!286))))))))

(assert (= (and d!1644441 c!873404) b!5083535))

(assert (= (and d!1644441 (not c!873404)) b!5083536))

(declare-fun m!6138724 () Bool)

(assert (=> b!5083536 m!6138724))

(assert (=> d!1644183 d!1644441))

(declare-fun d!1644443 () Bool)

(assert (=> d!1644443 (= (list!19030 (xs!18962 xs!286)) (innerList!15672 (xs!18962 xs!286)))))

(assert (=> d!1644183 d!1644443))

(declare-fun d!1644445 () Bool)

(declare-fun res!2164177 () Bool)

(declare-fun e!3170750 () Bool)

(assert (=> d!1644445 (=> (not res!2164177) (not e!3170750))))

(assert (=> d!1644445 (= res!2164177 (= (csize!31398 (right!43176 (left!42846 ys!41))) (+ (size!39116 (left!42846 (right!43176 (left!42846 ys!41)))) (size!39116 (right!43176 (right!43176 (left!42846 ys!41)))))))))

(assert (=> d!1644445 (= (inv!77667 (right!43176 (left!42846 ys!41))) e!3170750)))

(declare-fun b!5083537 () Bool)

(declare-fun res!2164178 () Bool)

(assert (=> b!5083537 (=> (not res!2164178) (not e!3170750))))

(assert (=> b!5083537 (= res!2164178 (and (not (= (left!42846 (right!43176 (left!42846 ys!41))) Empty!15584)) (not (= (right!43176 (right!43176 (left!42846 ys!41))) Empty!15584))))))

(declare-fun b!5083538 () Bool)

(declare-fun res!2164179 () Bool)

(assert (=> b!5083538 (=> (not res!2164179) (not e!3170750))))

(assert (=> b!5083538 (= res!2164179 (= (cheight!15795 (right!43176 (left!42846 ys!41))) (+ (max!0 (height!2161 (left!42846 (right!43176 (left!42846 ys!41)))) (height!2161 (right!43176 (right!43176 (left!42846 ys!41))))) 1)))))

(declare-fun b!5083539 () Bool)

(assert (=> b!5083539 (= e!3170750 (<= 0 (cheight!15795 (right!43176 (left!42846 ys!41)))))))

(assert (= (and d!1644445 res!2164177) b!5083537))

(assert (= (and b!5083537 res!2164178) b!5083538))

(assert (= (and b!5083538 res!2164179) b!5083539))

(declare-fun m!6138726 () Bool)

(assert (=> d!1644445 m!6138726))

(declare-fun m!6138728 () Bool)

(assert (=> d!1644445 m!6138728))

(assert (=> b!5083538 m!6138676))

(assert (=> b!5083538 m!6138678))

(assert (=> b!5083538 m!6138676))

(assert (=> b!5083538 m!6138678))

(declare-fun m!6138730 () Bool)

(assert (=> b!5083538 m!6138730))

(assert (=> b!5083177 d!1644445))

(declare-fun d!1644447 () Bool)

(assert (=> d!1644447 (= (inv!77666 (xs!18962 (right!43176 (left!42846 xs!286)))) (<= (size!39114 (innerList!15672 (xs!18962 (right!43176 (left!42846 xs!286))))) 2147483647))))

(declare-fun bs!1190785 () Bool)

(assert (= bs!1190785 d!1644447))

(declare-fun m!6138732 () Bool)

(assert (=> bs!1190785 m!6138732))

(assert (=> b!5083249 d!1644447))

(declare-fun d!1644449 () Bool)

(declare-fun lt!2091318 () Int)

(assert (=> d!1644449 (= lt!2091318 (size!39114 (list!19028 (left!42846 (left!42846 ys!41)))))))

(assert (=> d!1644449 (= lt!2091318 (ite ((_ is Empty!15584) (left!42846 (left!42846 ys!41))) 0 (ite ((_ is Leaf!25881) (left!42846 (left!42846 ys!41))) (csize!31399 (left!42846 (left!42846 ys!41))) (csize!31398 (left!42846 (left!42846 ys!41))))))))

(assert (=> d!1644449 (= (size!39116 (left!42846 (left!42846 ys!41))) lt!2091318)))

(declare-fun bs!1190786 () Bool)

(assert (= bs!1190786 d!1644449))

(assert (=> bs!1190786 m!6138548))

(assert (=> bs!1190786 m!6138548))

(declare-fun m!6138734 () Bool)

(assert (=> bs!1190786 m!6138734))

(assert (=> d!1644139 d!1644449))

(declare-fun d!1644451 () Bool)

(declare-fun lt!2091319 () Int)

(assert (=> d!1644451 (= lt!2091319 (size!39114 (list!19028 (right!43176 (left!42846 ys!41)))))))

(assert (=> d!1644451 (= lt!2091319 (ite ((_ is Empty!15584) (right!43176 (left!42846 ys!41))) 0 (ite ((_ is Leaf!25881) (right!43176 (left!42846 ys!41))) (csize!31399 (right!43176 (left!42846 ys!41))) (csize!31398 (right!43176 (left!42846 ys!41))))))))

(assert (=> d!1644451 (= (size!39116 (right!43176 (left!42846 ys!41))) lt!2091319)))

(declare-fun bs!1190787 () Bool)

(assert (= bs!1190787 d!1644451))

(assert (=> bs!1190787 m!6138670))

(assert (=> bs!1190787 m!6138670))

(declare-fun m!6138736 () Bool)

(assert (=> bs!1190787 m!6138736))

(assert (=> d!1644139 d!1644451))

(declare-fun d!1644453 () Bool)

(declare-fun lt!2091320 () Int)

(assert (=> d!1644453 (>= lt!2091320 0)))

(declare-fun e!3170751 () Int)

(assert (=> d!1644453 (= lt!2091320 e!3170751)))

(declare-fun c!873405 () Bool)

(assert (=> d!1644453 (= c!873405 ((_ is Nil!58454) (t!371405 (innerList!15672 (xs!18962 xs!286)))))))

(assert (=> d!1644453 (= (size!39114 (t!371405 (innerList!15672 (xs!18962 xs!286)))) lt!2091320)))

(declare-fun b!5083540 () Bool)

(assert (=> b!5083540 (= e!3170751 0)))

(declare-fun b!5083541 () Bool)

(assert (=> b!5083541 (= e!3170751 (+ 1 (size!39114 (t!371405 (t!371405 (innerList!15672 (xs!18962 xs!286)))))))))

(assert (= (and d!1644453 c!873405) b!5083540))

(assert (= (and d!1644453 (not c!873405)) b!5083541))

(declare-fun m!6138738 () Bool)

(assert (=> b!5083541 m!6138738))

(assert (=> b!5083211 d!1644453))

(assert (=> b!5083224 d!1644337))

(assert (=> b!5083224 d!1644339))

(declare-fun d!1644455 () Bool)

(assert (=> d!1644455 (= (isEmpty!31672 (list!19028 (right!43176 ys!41))) ((_ is Nil!58454) (list!19028 (right!43176 ys!41))))))

(assert (=> d!1644163 d!1644455))

(declare-fun b!5083544 () Bool)

(declare-fun e!3170753 () List!58578)

(assert (=> b!5083544 (= e!3170753 (list!19030 (xs!18962 (right!43176 ys!41))))))

(declare-fun b!5083543 () Bool)

(declare-fun e!3170752 () List!58578)

(assert (=> b!5083543 (= e!3170752 e!3170753)))

(declare-fun c!873407 () Bool)

(assert (=> b!5083543 (= c!873407 ((_ is Leaf!25881) (right!43176 ys!41)))))

(declare-fun b!5083545 () Bool)

(assert (=> b!5083545 (= e!3170753 (++!12812 (list!19028 (left!42846 (right!43176 ys!41))) (list!19028 (right!43176 (right!43176 ys!41)))))))

(declare-fun b!5083542 () Bool)

(assert (=> b!5083542 (= e!3170752 Nil!58454)))

(declare-fun d!1644457 () Bool)

(declare-fun c!873406 () Bool)

(assert (=> d!1644457 (= c!873406 ((_ is Empty!15584) (right!43176 ys!41)))))

(assert (=> d!1644457 (= (list!19028 (right!43176 ys!41)) e!3170752)))

(assert (= (and d!1644457 c!873406) b!5083542))

(assert (= (and d!1644457 (not c!873406)) b!5083543))

(assert (= (and b!5083543 c!873407) b!5083544))

(assert (= (and b!5083543 (not c!873407)) b!5083545))

(assert (=> b!5083544 m!6138066))

(assert (=> b!5083545 m!6138582))

(assert (=> b!5083545 m!6138586))

(assert (=> b!5083545 m!6138582))

(assert (=> b!5083545 m!6138586))

(declare-fun m!6138740 () Bool)

(assert (=> b!5083545 m!6138740))

(assert (=> d!1644163 d!1644457))

(assert (=> d!1644163 d!1644437))

(declare-fun d!1644459 () Bool)

(declare-fun res!2164180 () Bool)

(declare-fun e!3170754 () Bool)

(assert (=> d!1644459 (=> (not res!2164180) (not e!3170754))))

(assert (=> d!1644459 (= res!2164180 (<= (size!39114 (list!19030 (xs!18962 (left!42846 (right!43176 ys!41))))) 512))))

(assert (=> d!1644459 (= (inv!77668 (left!42846 (right!43176 ys!41))) e!3170754)))

(declare-fun b!5083546 () Bool)

(declare-fun res!2164181 () Bool)

(assert (=> b!5083546 (=> (not res!2164181) (not e!3170754))))

(assert (=> b!5083546 (= res!2164181 (= (csize!31399 (left!42846 (right!43176 ys!41))) (size!39114 (list!19030 (xs!18962 (left!42846 (right!43176 ys!41)))))))))

(declare-fun b!5083547 () Bool)

(assert (=> b!5083547 (= e!3170754 (and (> (csize!31399 (left!42846 (right!43176 ys!41))) 0) (<= (csize!31399 (left!42846 (right!43176 ys!41))) 512)))))

(assert (= (and d!1644459 res!2164180) b!5083546))

(assert (= (and b!5083546 res!2164181) b!5083547))

(declare-fun m!6138742 () Bool)

(assert (=> d!1644459 m!6138742))

(assert (=> d!1644459 m!6138742))

(declare-fun m!6138744 () Bool)

(assert (=> d!1644459 m!6138744))

(assert (=> b!5083546 m!6138742))

(assert (=> b!5083546 m!6138742))

(assert (=> b!5083546 m!6138744))

(assert (=> b!5083155 d!1644459))

(declare-fun b!5083548 () Bool)

(declare-fun e!3170756 () Bool)

(declare-fun e!3170755 () Bool)

(assert (=> b!5083548 (= e!3170756 e!3170755)))

(declare-fun res!2164184 () Bool)

(assert (=> b!5083548 (=> (not res!2164184) (not e!3170755))))

(assert (=> b!5083548 (= res!2164184 (<= (- 1) (- (height!2161 (left!42846 (left!42846 (left!42846 ys!41)))) (height!2161 (right!43176 (left!42846 (left!42846 ys!41)))))))))

(declare-fun b!5083549 () Bool)

(declare-fun res!2164182 () Bool)

(assert (=> b!5083549 (=> (not res!2164182) (not e!3170755))))

(assert (=> b!5083549 (= res!2164182 (not (isEmpty!31670 (left!42846 (left!42846 (left!42846 ys!41))))))))

(declare-fun b!5083550 () Bool)

(declare-fun res!2164186 () Bool)

(assert (=> b!5083550 (=> (not res!2164186) (not e!3170755))))

(assert (=> b!5083550 (= res!2164186 (isBalanced!4446 (right!43176 (left!42846 (left!42846 ys!41)))))))

(declare-fun b!5083551 () Bool)

(declare-fun res!2164187 () Bool)

(assert (=> b!5083551 (=> (not res!2164187) (not e!3170755))))

(assert (=> b!5083551 (= res!2164187 (<= (- (height!2161 (left!42846 (left!42846 (left!42846 ys!41)))) (height!2161 (right!43176 (left!42846 (left!42846 ys!41))))) 1))))

(declare-fun b!5083552 () Bool)

(assert (=> b!5083552 (= e!3170755 (not (isEmpty!31670 (right!43176 (left!42846 (left!42846 ys!41))))))))

(declare-fun b!5083553 () Bool)

(declare-fun res!2164185 () Bool)

(assert (=> b!5083553 (=> (not res!2164185) (not e!3170755))))

(assert (=> b!5083553 (= res!2164185 (isBalanced!4446 (left!42846 (left!42846 (left!42846 ys!41)))))))

(declare-fun d!1644461 () Bool)

(declare-fun res!2164183 () Bool)

(assert (=> d!1644461 (=> res!2164183 e!3170756)))

(assert (=> d!1644461 (= res!2164183 (not ((_ is Node!15584) (left!42846 (left!42846 ys!41)))))))

(assert (=> d!1644461 (= (isBalanced!4446 (left!42846 (left!42846 ys!41))) e!3170756)))

(assert (= (and d!1644461 (not res!2164183)) b!5083548))

(assert (= (and b!5083548 res!2164184) b!5083551))

(assert (= (and b!5083551 res!2164187) b!5083553))

(assert (= (and b!5083553 res!2164185) b!5083550))

(assert (= (and b!5083550 res!2164186) b!5083549))

(assert (= (and b!5083549 res!2164182) b!5083552))

(declare-fun m!6138746 () Bool)

(assert (=> b!5083549 m!6138746))

(assert (=> b!5083551 m!6138656))

(assert (=> b!5083551 m!6138658))

(declare-fun m!6138748 () Bool)

(assert (=> b!5083550 m!6138748))

(declare-fun m!6138750 () Bool)

(assert (=> b!5083553 m!6138750))

(assert (=> b!5083548 m!6138656))

(assert (=> b!5083548 m!6138658))

(declare-fun m!6138752 () Bool)

(assert (=> b!5083552 m!6138752))

(assert (=> b!5083231 d!1644461))

(declare-fun d!1644463 () Bool)

(assert (=> d!1644463 (= (max!0 (height!2161 (left!42846 ys!41)) (height!2161 (right!43176 ys!41))) (ite (< (height!2161 (left!42846 ys!41)) (height!2161 (right!43176 ys!41))) (height!2161 (right!43176 ys!41)) (height!2161 (left!42846 ys!41))))))

(assert (=> b!5083186 d!1644463))

(assert (=> b!5083186 d!1644093))

(assert (=> b!5083186 d!1644091))

(declare-fun d!1644465 () Bool)

(declare-fun lt!2091321 () Int)

(assert (=> d!1644465 (= lt!2091321 (size!39114 (list!19028 (left!42846 (right!43176 xs!286)))))))

(assert (=> d!1644465 (= lt!2091321 (ite ((_ is Empty!15584) (left!42846 (right!43176 xs!286))) 0 (ite ((_ is Leaf!25881) (left!42846 (right!43176 xs!286))) (csize!31399 (left!42846 (right!43176 xs!286))) (csize!31398 (left!42846 (right!43176 xs!286))))))))

(assert (=> d!1644465 (= (size!39116 (left!42846 (right!43176 xs!286))) lt!2091321)))

(declare-fun bs!1190788 () Bool)

(assert (= bs!1190788 d!1644465))

(assert (=> bs!1190788 m!6138484))

(assert (=> bs!1190788 m!6138484))

(declare-fun m!6138754 () Bool)

(assert (=> bs!1190788 m!6138754))

(assert (=> d!1644165 d!1644465))

(declare-fun d!1644467 () Bool)

(declare-fun lt!2091322 () Int)

(assert (=> d!1644467 (= lt!2091322 (size!39114 (list!19028 (right!43176 (right!43176 xs!286)))))))

(assert (=> d!1644467 (= lt!2091322 (ite ((_ is Empty!15584) (right!43176 (right!43176 xs!286))) 0 (ite ((_ is Leaf!25881) (right!43176 (right!43176 xs!286))) (csize!31399 (right!43176 (right!43176 xs!286))) (csize!31398 (right!43176 (right!43176 xs!286))))))))

(assert (=> d!1644467 (= (size!39116 (right!43176 (right!43176 xs!286))) lt!2091322)))

(declare-fun bs!1190789 () Bool)

(assert (= bs!1190789 d!1644467))

(assert (=> bs!1190789 m!6138558))

(assert (=> bs!1190789 m!6138558))

(declare-fun m!6138756 () Bool)

(assert (=> bs!1190789 m!6138756))

(assert (=> d!1644165 d!1644467))

(declare-fun d!1644469 () Bool)

(assert (=> d!1644469 (= (isEmpty!31672 (list!19028 (left!42846 ys!41))) ((_ is Nil!58454) (list!19028 (left!42846 ys!41))))))

(assert (=> d!1644173 d!1644469))

(declare-fun b!5083556 () Bool)

(declare-fun e!3170758 () List!58578)

(assert (=> b!5083556 (= e!3170758 (list!19030 (xs!18962 (left!42846 ys!41))))))

(declare-fun b!5083555 () Bool)

(declare-fun e!3170757 () List!58578)

(assert (=> b!5083555 (= e!3170757 e!3170758)))

(declare-fun c!873409 () Bool)

(assert (=> b!5083555 (= c!873409 ((_ is Leaf!25881) (left!42846 ys!41)))))

(declare-fun b!5083557 () Bool)

(assert (=> b!5083557 (= e!3170758 (++!12812 (list!19028 (left!42846 (left!42846 ys!41))) (list!19028 (right!43176 (left!42846 ys!41)))))))

(declare-fun b!5083554 () Bool)

(assert (=> b!5083554 (= e!3170757 Nil!58454)))

(declare-fun d!1644471 () Bool)

(declare-fun c!873408 () Bool)

(assert (=> d!1644471 (= c!873408 ((_ is Empty!15584) (left!42846 ys!41)))))

(assert (=> d!1644471 (= (list!19028 (left!42846 ys!41)) e!3170757)))

(assert (= (and d!1644471 c!873408) b!5083554))

(assert (= (and d!1644471 (not c!873408)) b!5083555))

(assert (= (and b!5083555 c!873409) b!5083556))

(assert (= (and b!5083555 (not c!873409)) b!5083557))

(assert (=> b!5083556 m!6138116))

(assert (=> b!5083557 m!6138548))

(assert (=> b!5083557 m!6138670))

(assert (=> b!5083557 m!6138548))

(assert (=> b!5083557 m!6138670))

(declare-fun m!6138758 () Bool)

(assert (=> b!5083557 m!6138758))

(assert (=> d!1644173 d!1644471))

(assert (=> d!1644173 d!1644435))

(declare-fun b!5083558 () Bool)

(declare-fun e!3170760 () Bool)

(declare-fun e!3170759 () Bool)

(assert (=> b!5083558 (= e!3170760 e!3170759)))

(declare-fun res!2164190 () Bool)

(assert (=> b!5083558 (=> (not res!2164190) (not e!3170759))))

(assert (=> b!5083558 (= res!2164190 (<= (- 1) (- (height!2161 (left!42846 (left!42846 (right!43176 ys!41)))) (height!2161 (right!43176 (left!42846 (right!43176 ys!41)))))))))

(declare-fun b!5083559 () Bool)

(declare-fun res!2164188 () Bool)

(assert (=> b!5083559 (=> (not res!2164188) (not e!3170759))))

(assert (=> b!5083559 (= res!2164188 (not (isEmpty!31670 (left!42846 (left!42846 (right!43176 ys!41))))))))

(declare-fun b!5083560 () Bool)

(declare-fun res!2164192 () Bool)

(assert (=> b!5083560 (=> (not res!2164192) (not e!3170759))))

(assert (=> b!5083560 (= res!2164192 (isBalanced!4446 (right!43176 (left!42846 (right!43176 ys!41)))))))

(declare-fun b!5083561 () Bool)

(declare-fun res!2164193 () Bool)

(assert (=> b!5083561 (=> (not res!2164193) (not e!3170759))))

(assert (=> b!5083561 (= res!2164193 (<= (- (height!2161 (left!42846 (left!42846 (right!43176 ys!41)))) (height!2161 (right!43176 (left!42846 (right!43176 ys!41))))) 1))))

(declare-fun b!5083562 () Bool)

(assert (=> b!5083562 (= e!3170759 (not (isEmpty!31670 (right!43176 (left!42846 (right!43176 ys!41))))))))

(declare-fun b!5083563 () Bool)

(declare-fun res!2164191 () Bool)

(assert (=> b!5083563 (=> (not res!2164191) (not e!3170759))))

(assert (=> b!5083563 (= res!2164191 (isBalanced!4446 (left!42846 (left!42846 (right!43176 ys!41)))))))

(declare-fun d!1644473 () Bool)

(declare-fun res!2164189 () Bool)

(assert (=> d!1644473 (=> res!2164189 e!3170760)))

(assert (=> d!1644473 (= res!2164189 (not ((_ is Node!15584) (left!42846 (right!43176 ys!41)))))))

(assert (=> d!1644473 (= (isBalanced!4446 (left!42846 (right!43176 ys!41))) e!3170760)))

(assert (= (and d!1644473 (not res!2164189)) b!5083558))

(assert (= (and b!5083558 res!2164190) b!5083561))

(assert (= (and b!5083561 res!2164193) b!5083563))

(assert (= (and b!5083563 res!2164191) b!5083560))

(assert (= (and b!5083560 res!2164192) b!5083559))

(assert (= (and b!5083559 res!2164188) b!5083562))

(declare-fun m!6138760 () Bool)

(assert (=> b!5083559 m!6138760))

(assert (=> b!5083561 m!6138520))

(assert (=> b!5083561 m!6138522))

(declare-fun m!6138762 () Bool)

(assert (=> b!5083560 m!6138762))

(declare-fun m!6138764 () Bool)

(assert (=> b!5083563 m!6138764))

(assert (=> b!5083558 m!6138520))

(assert (=> b!5083558 m!6138522))

(declare-fun m!6138766 () Bool)

(assert (=> b!5083562 m!6138766))

(assert (=> b!5083193 d!1644473))

(assert (=> b!5083141 d!1644285))

(assert (=> b!5083141 d!1644287))

(declare-fun d!1644475 () Bool)

(assert (=> d!1644475 (= (isEmpty!31672 (list!19028 (left!42846 xs!286))) ((_ is Nil!58454) (list!19028 (left!42846 xs!286))))))

(assert (=> d!1644135 d!1644475))

(declare-fun b!5083566 () Bool)

(declare-fun e!3170762 () List!58578)

(assert (=> b!5083566 (= e!3170762 (list!19030 (xs!18962 (left!42846 xs!286))))))

(declare-fun b!5083565 () Bool)

(declare-fun e!3170761 () List!58578)

(assert (=> b!5083565 (= e!3170761 e!3170762)))

(declare-fun c!873411 () Bool)

(assert (=> b!5083565 (= c!873411 ((_ is Leaf!25881) (left!42846 xs!286)))))

(declare-fun b!5083567 () Bool)

(assert (=> b!5083567 (= e!3170762 (++!12812 (list!19028 (left!42846 (left!42846 xs!286))) (list!19028 (right!43176 (left!42846 xs!286)))))))

(declare-fun b!5083564 () Bool)

(assert (=> b!5083564 (= e!3170761 Nil!58454)))

(declare-fun d!1644477 () Bool)

(declare-fun c!873410 () Bool)

(assert (=> d!1644477 (= c!873410 ((_ is Empty!15584) (left!42846 xs!286)))))

(assert (=> d!1644477 (= (list!19028 (left!42846 xs!286)) e!3170761)))

(assert (= (and d!1644477 c!873410) b!5083564))

(assert (= (and d!1644477 (not c!873410)) b!5083565))

(assert (= (and b!5083565 c!873411) b!5083566))

(assert (= (and b!5083565 (not c!873411)) b!5083567))

(assert (=> b!5083566 m!6138130))

(assert (=> b!5083567 m!6138508))

(assert (=> b!5083567 m!6138512))

(assert (=> b!5083567 m!6138508))

(assert (=> b!5083567 m!6138512))

(declare-fun m!6138768 () Bool)

(assert (=> b!5083567 m!6138768))

(assert (=> d!1644135 d!1644477))

(assert (=> d!1644135 d!1644315))

(assert (=> b!5083191 d!1644301))

(assert (=> b!5083191 d!1644303))

(assert (=> b!5083202 d!1644441))

(assert (=> b!5083202 d!1644443))

(declare-fun d!1644479 () Bool)

(assert (=> d!1644479 (= (max!0 (height!2161 (left!42846 (left!42846 ys!41))) (height!2161 (right!43176 (left!42846 ys!41)))) (ite (< (height!2161 (left!42846 (left!42846 ys!41))) (height!2161 (right!43176 (left!42846 ys!41)))) (height!2161 (right!43176 (left!42846 ys!41))) (height!2161 (left!42846 (left!42846 ys!41)))))))

(assert (=> b!5083148 d!1644479))

(assert (=> b!5083148 d!1644309))

(assert (=> b!5083148 d!1644311))

(declare-fun d!1644481 () Bool)

(assert (=> d!1644481 (= (inv!77666 (xs!18962 (right!43176 (left!42846 ys!41)))) (<= (size!39114 (innerList!15672 (xs!18962 (right!43176 (left!42846 ys!41))))) 2147483647))))

(declare-fun bs!1190790 () Bool)

(assert (= bs!1190790 d!1644481))

(declare-fun m!6138770 () Bool)

(assert (=> bs!1190790 m!6138770))

(assert (=> b!5083266 d!1644481))

(declare-fun d!1644483 () Bool)

(declare-fun lt!2091323 () Bool)

(assert (=> d!1644483 (= lt!2091323 (isEmpty!31672 (list!19028 (left!42846 (right!43176 ys!41)))))))

(assert (=> d!1644483 (= lt!2091323 (= (size!39116 (left!42846 (right!43176 ys!41))) 0))))

(assert (=> d!1644483 (= (isEmpty!31670 (left!42846 (right!43176 ys!41))) lt!2091323)))

(declare-fun bs!1190791 () Bool)

(assert (= bs!1190791 d!1644483))

(assert (=> bs!1190791 m!6138582))

(assert (=> bs!1190791 m!6138582))

(declare-fun m!6138772 () Bool)

(assert (=> bs!1190791 m!6138772))

(assert (=> bs!1190791 m!6137998))

(assert (=> b!5083189 d!1644483))

(declare-fun b!5083568 () Bool)

(declare-fun e!3170763 () Bool)

(declare-fun tp!1417413 () Bool)

(declare-fun tp!1417412 () Bool)

(assert (=> b!5083568 (= e!3170763 (and (inv!77665 (left!42846 (left!42846 (left!42846 (right!43176 xs!286))))) tp!1417413 (inv!77665 (right!43176 (left!42846 (left!42846 (right!43176 xs!286))))) tp!1417412))))

(declare-fun b!5083570 () Bool)

(declare-fun e!3170764 () Bool)

(declare-fun tp!1417414 () Bool)

(assert (=> b!5083570 (= e!3170764 tp!1417414)))

(declare-fun b!5083569 () Bool)

(assert (=> b!5083569 (= e!3170763 (and (inv!77666 (xs!18962 (left!42846 (left!42846 (right!43176 xs!286))))) e!3170764))))

(assert (=> b!5083234 (= tp!1417353 (and (inv!77665 (left!42846 (left!42846 (right!43176 xs!286)))) e!3170763))))

(assert (= (and b!5083234 ((_ is Node!15584) (left!42846 (left!42846 (right!43176 xs!286))))) b!5083568))

(assert (= b!5083569 b!5083570))

(assert (= (and b!5083234 ((_ is Leaf!25881) (left!42846 (left!42846 (right!43176 xs!286))))) b!5083569))

(declare-fun m!6138774 () Bool)

(assert (=> b!5083568 m!6138774))

(declare-fun m!6138776 () Bool)

(assert (=> b!5083568 m!6138776))

(declare-fun m!6138778 () Bool)

(assert (=> b!5083569 m!6138778))

(assert (=> b!5083234 m!6138170))

(declare-fun tp!1417416 () Bool)

(declare-fun tp!1417415 () Bool)

(declare-fun e!3170765 () Bool)

(declare-fun b!5083571 () Bool)

(assert (=> b!5083571 (= e!3170765 (and (inv!77665 (left!42846 (right!43176 (left!42846 (right!43176 xs!286))))) tp!1417416 (inv!77665 (right!43176 (right!43176 (left!42846 (right!43176 xs!286))))) tp!1417415))))

(declare-fun b!5083573 () Bool)

(declare-fun e!3170766 () Bool)

(declare-fun tp!1417417 () Bool)

(assert (=> b!5083573 (= e!3170766 tp!1417417)))

(declare-fun b!5083572 () Bool)

(assert (=> b!5083572 (= e!3170765 (and (inv!77666 (xs!18962 (right!43176 (left!42846 (right!43176 xs!286))))) e!3170766))))

(assert (=> b!5083234 (= tp!1417352 (and (inv!77665 (right!43176 (left!42846 (right!43176 xs!286)))) e!3170765))))

(assert (= (and b!5083234 ((_ is Node!15584) (right!43176 (left!42846 (right!43176 xs!286))))) b!5083571))

(assert (= b!5083572 b!5083573))

(assert (= (and b!5083234 ((_ is Leaf!25881) (right!43176 (left!42846 (right!43176 xs!286))))) b!5083572))

(declare-fun m!6138780 () Bool)

(assert (=> b!5083571 m!6138780))

(declare-fun m!6138782 () Bool)

(assert (=> b!5083571 m!6138782))

(declare-fun m!6138784 () Bool)

(assert (=> b!5083572 m!6138784))

(assert (=> b!5083234 m!6138172))

(declare-fun b!5083574 () Bool)

(declare-fun e!3170767 () Bool)

(declare-fun tp!1417418 () Bool)

(assert (=> b!5083574 (= e!3170767 (and tp_is_empty!37091 tp!1417418))))

(assert (=> b!5083264 (= tp!1417378 e!3170767)))

(assert (= (and b!5083264 ((_ is Cons!58454) (innerList!15672 (xs!18962 (left!42846 (left!42846 ys!41)))))) b!5083574))

(declare-fun b!5083575 () Bool)

(declare-fun e!3170768 () Bool)

(declare-fun tp!1417419 () Bool)

(assert (=> b!5083575 (= e!3170768 (and tp_is_empty!37091 tp!1417419))))

(assert (=> b!5083260 (= tp!1417374 e!3170768)))

(assert (= (and b!5083260 ((_ is Cons!58454) (t!371405 (innerList!15672 (xs!18962 (right!43176 xs!286)))))) b!5083575))

(declare-fun b!5083576 () Bool)

(declare-fun e!3170769 () Bool)

(declare-fun tp!1417420 () Bool)

(assert (=> b!5083576 (= e!3170769 (and tp_is_empty!37091 tp!1417420))))

(assert (=> b!5083242 (= tp!1417360 e!3170769)))

(assert (= (and b!5083242 ((_ is Cons!58454) (t!371405 (t!371405 (innerList!15672 (xs!18962 xs!286)))))) b!5083576))

(declare-fun b!5083577 () Bool)

(declare-fun e!3170770 () Bool)

(declare-fun tp!1417421 () Bool)

(assert (=> b!5083577 (= e!3170770 (and tp_is_empty!37091 tp!1417421))))

(assert (=> b!5083251 (= tp!1417366 e!3170770)))

(assert (= (and b!5083251 ((_ is Cons!58454) (innerList!15672 (xs!18962 (right!43176 (left!42846 xs!286)))))) b!5083577))

(declare-fun b!5083578 () Bool)

(declare-fun e!3170771 () Bool)

(declare-fun tp!1417422 () Bool)

(assert (=> b!5083578 (= e!3170771 (and tp_is_empty!37091 tp!1417422))))

(assert (=> b!5083258 (= tp!1417372 e!3170771)))

(assert (= (and b!5083258 ((_ is Cons!58454) (innerList!15672 (xs!18962 (right!43176 (right!43176 ys!41)))))) b!5083578))

(declare-fun tp!1417423 () Bool)

(declare-fun tp!1417424 () Bool)

(declare-fun b!5083579 () Bool)

(declare-fun e!3170772 () Bool)

(assert (=> b!5083579 (= e!3170772 (and (inv!77665 (left!42846 (left!42846 (left!42846 (left!42846 ys!41))))) tp!1417424 (inv!77665 (right!43176 (left!42846 (left!42846 (left!42846 ys!41))))) tp!1417423))))

(declare-fun b!5083581 () Bool)

(declare-fun e!3170773 () Bool)

(declare-fun tp!1417425 () Bool)

(assert (=> b!5083581 (= e!3170773 tp!1417425)))

(declare-fun b!5083580 () Bool)

(assert (=> b!5083580 (= e!3170772 (and (inv!77666 (xs!18962 (left!42846 (left!42846 (left!42846 ys!41))))) e!3170773))))

(assert (=> b!5083262 (= tp!1417377 (and (inv!77665 (left!42846 (left!42846 (left!42846 ys!41)))) e!3170772))))

(assert (= (and b!5083262 ((_ is Node!15584) (left!42846 (left!42846 (left!42846 ys!41))))) b!5083579))

(assert (= b!5083580 b!5083581))

(assert (= (and b!5083262 ((_ is Leaf!25881) (left!42846 (left!42846 (left!42846 ys!41))))) b!5083580))

(declare-fun m!6138786 () Bool)

(assert (=> b!5083579 m!6138786))

(declare-fun m!6138788 () Bool)

(assert (=> b!5083579 m!6138788))

(declare-fun m!6138790 () Bool)

(assert (=> b!5083580 m!6138790))

(assert (=> b!5083262 m!6138206))

(declare-fun e!3170774 () Bool)

(declare-fun tp!1417426 () Bool)

(declare-fun b!5083582 () Bool)

(declare-fun tp!1417427 () Bool)

(assert (=> b!5083582 (= e!3170774 (and (inv!77665 (left!42846 (right!43176 (left!42846 (left!42846 ys!41))))) tp!1417427 (inv!77665 (right!43176 (right!43176 (left!42846 (left!42846 ys!41))))) tp!1417426))))

(declare-fun b!5083584 () Bool)

(declare-fun e!3170775 () Bool)

(declare-fun tp!1417428 () Bool)

(assert (=> b!5083584 (= e!3170775 tp!1417428)))

(declare-fun b!5083583 () Bool)

(assert (=> b!5083583 (= e!3170774 (and (inv!77666 (xs!18962 (right!43176 (left!42846 (left!42846 ys!41))))) e!3170775))))

(assert (=> b!5083262 (= tp!1417376 (and (inv!77665 (right!43176 (left!42846 (left!42846 ys!41)))) e!3170774))))

(assert (= (and b!5083262 ((_ is Node!15584) (right!43176 (left!42846 (left!42846 ys!41))))) b!5083582))

(assert (= b!5083583 b!5083584))

(assert (= (and b!5083262 ((_ is Leaf!25881) (right!43176 (left!42846 (left!42846 ys!41))))) b!5083583))

(declare-fun m!6138792 () Bool)

(assert (=> b!5083582 m!6138792))

(declare-fun m!6138794 () Bool)

(assert (=> b!5083582 m!6138794))

(declare-fun m!6138796 () Bool)

(assert (=> b!5083583 m!6138796))

(assert (=> b!5083262 m!6138208))

(declare-fun e!3170776 () Bool)

(declare-fun tp!1417429 () Bool)

(declare-fun tp!1417430 () Bool)

(declare-fun b!5083585 () Bool)

(assert (=> b!5083585 (= e!3170776 (and (inv!77665 (left!42846 (left!42846 (right!43176 (right!43176 ys!41))))) tp!1417430 (inv!77665 (right!43176 (left!42846 (right!43176 (right!43176 ys!41))))) tp!1417429))))

(declare-fun b!5083587 () Bool)

(declare-fun e!3170777 () Bool)

(declare-fun tp!1417431 () Bool)

(assert (=> b!5083587 (= e!3170777 tp!1417431)))

(declare-fun b!5083586 () Bool)

(assert (=> b!5083586 (= e!3170776 (and (inv!77666 (xs!18962 (left!42846 (right!43176 (right!43176 ys!41))))) e!3170777))))

(assert (=> b!5083256 (= tp!1417371 (and (inv!77665 (left!42846 (right!43176 (right!43176 ys!41)))) e!3170776))))

(assert (= (and b!5083256 ((_ is Node!15584) (left!42846 (right!43176 (right!43176 ys!41))))) b!5083585))

(assert (= b!5083586 b!5083587))

(assert (= (and b!5083256 ((_ is Leaf!25881) (left!42846 (right!43176 (right!43176 ys!41))))) b!5083586))

(declare-fun m!6138798 () Bool)

(assert (=> b!5083585 m!6138798))

(declare-fun m!6138800 () Bool)

(assert (=> b!5083585 m!6138800))

(declare-fun m!6138802 () Bool)

(assert (=> b!5083586 m!6138802))

(assert (=> b!5083256 m!6138200))

(declare-fun tp!1417432 () Bool)

(declare-fun e!3170778 () Bool)

(declare-fun tp!1417433 () Bool)

(declare-fun b!5083588 () Bool)

(assert (=> b!5083588 (= e!3170778 (and (inv!77665 (left!42846 (right!43176 (right!43176 (right!43176 ys!41))))) tp!1417433 (inv!77665 (right!43176 (right!43176 (right!43176 (right!43176 ys!41))))) tp!1417432))))

(declare-fun b!5083590 () Bool)

(declare-fun e!3170779 () Bool)

(declare-fun tp!1417434 () Bool)

(assert (=> b!5083590 (= e!3170779 tp!1417434)))

(declare-fun b!5083589 () Bool)

(assert (=> b!5083589 (= e!3170778 (and (inv!77666 (xs!18962 (right!43176 (right!43176 (right!43176 ys!41))))) e!3170779))))

(assert (=> b!5083256 (= tp!1417370 (and (inv!77665 (right!43176 (right!43176 (right!43176 ys!41)))) e!3170778))))

(assert (= (and b!5083256 ((_ is Node!15584) (right!43176 (right!43176 (right!43176 ys!41))))) b!5083588))

(assert (= b!5083589 b!5083590))

(assert (= (and b!5083256 ((_ is Leaf!25881) (right!43176 (right!43176 (right!43176 ys!41))))) b!5083589))

(declare-fun m!6138804 () Bool)

(assert (=> b!5083588 m!6138804))

(declare-fun m!6138806 () Bool)

(assert (=> b!5083588 m!6138806))

(declare-fun m!6138808 () Bool)

(assert (=> b!5083589 m!6138808))

(assert (=> b!5083256 m!6138202))

(declare-fun b!5083591 () Bool)

(declare-fun e!3170780 () Bool)

(declare-fun tp!1417435 () Bool)

(assert (=> b!5083591 (= e!3170780 (and tp_is_empty!37091 tp!1417435))))

(assert (=> b!5083241 (= tp!1417359 e!3170780)))

(assert (= (and b!5083241 ((_ is Cons!58454) (t!371405 (innerList!15672 (xs!18962 (right!43176 ys!41)))))) b!5083591))

(declare-fun b!5083592 () Bool)

(declare-fun e!3170781 () Bool)

(declare-fun tp!1417436 () Bool)

(assert (=> b!5083592 (= e!3170781 (and tp_is_empty!37091 tp!1417436))))

(assert (=> b!5083259 (= tp!1417373 e!3170781)))

(assert (= (and b!5083259 ((_ is Cons!58454) (t!371405 (innerList!15672 (xs!18962 (left!42846 ys!41)))))) b!5083592))

(declare-fun b!5083593 () Bool)

(declare-fun e!3170782 () Bool)

(declare-fun tp!1417437 () Bool)

(assert (=> b!5083593 (= e!3170782 (and tp_is_empty!37091 tp!1417437))))

(assert (=> b!5083245 (= tp!1417363 e!3170782)))

(assert (= (and b!5083245 ((_ is Cons!58454) (innerList!15672 (xs!18962 (left!42846 (left!42846 xs!286)))))) b!5083593))

(declare-fun b!5083594 () Bool)

(declare-fun e!3170783 () Bool)

(declare-fun tp!1417438 () Bool)

(assert (=> b!5083594 (= e!3170783 (and tp_is_empty!37091 tp!1417438))))

(assert (=> b!5083239 (= tp!1417357 e!3170783)))

(assert (= (and b!5083239 ((_ is Cons!58454) (innerList!15672 (xs!18962 (right!43176 (right!43176 xs!286)))))) b!5083594))

(declare-fun b!5083595 () Bool)

(declare-fun e!3170784 () Bool)

(declare-fun tp!1417439 () Bool)

(assert (=> b!5083595 (= e!3170784 (and tp_is_empty!37091 tp!1417439))))

(assert (=> b!5083255 (= tp!1417369 e!3170784)))

(assert (= (and b!5083255 ((_ is Cons!58454) (innerList!15672 (xs!18962 (left!42846 (right!43176 ys!41)))))) b!5083595))

(declare-fun tp!1417440 () Bool)

(declare-fun e!3170785 () Bool)

(declare-fun b!5083596 () Bool)

(declare-fun tp!1417441 () Bool)

(assert (=> b!5083596 (= e!3170785 (and (inv!77665 (left!42846 (left!42846 (left!42846 (left!42846 xs!286))))) tp!1417441 (inv!77665 (right!43176 (left!42846 (left!42846 (left!42846 xs!286))))) tp!1417440))))

(declare-fun b!5083598 () Bool)

(declare-fun e!3170786 () Bool)

(declare-fun tp!1417442 () Bool)

(assert (=> b!5083598 (= e!3170786 tp!1417442)))

(declare-fun b!5083597 () Bool)

(assert (=> b!5083597 (= e!3170785 (and (inv!77666 (xs!18962 (left!42846 (left!42846 (left!42846 xs!286))))) e!3170786))))

(assert (=> b!5083243 (= tp!1417362 (and (inv!77665 (left!42846 (left!42846 (left!42846 xs!286)))) e!3170785))))

(assert (= (and b!5083243 ((_ is Node!15584) (left!42846 (left!42846 (left!42846 xs!286))))) b!5083596))

(assert (= b!5083597 b!5083598))

(assert (= (and b!5083243 ((_ is Leaf!25881) (left!42846 (left!42846 (left!42846 xs!286))))) b!5083597))

(declare-fun m!6138810 () Bool)

(assert (=> b!5083596 m!6138810))

(declare-fun m!6138812 () Bool)

(assert (=> b!5083596 m!6138812))

(declare-fun m!6138814 () Bool)

(assert (=> b!5083597 m!6138814))

(assert (=> b!5083243 m!6138182))

(declare-fun e!3170787 () Bool)

(declare-fun tp!1417444 () Bool)

(declare-fun b!5083599 () Bool)

(declare-fun tp!1417443 () Bool)

(assert (=> b!5083599 (= e!3170787 (and (inv!77665 (left!42846 (right!43176 (left!42846 (left!42846 xs!286))))) tp!1417444 (inv!77665 (right!43176 (right!43176 (left!42846 (left!42846 xs!286))))) tp!1417443))))

(declare-fun b!5083601 () Bool)

(declare-fun e!3170788 () Bool)

(declare-fun tp!1417445 () Bool)

(assert (=> b!5083601 (= e!3170788 tp!1417445)))

(declare-fun b!5083600 () Bool)

(assert (=> b!5083600 (= e!3170787 (and (inv!77666 (xs!18962 (right!43176 (left!42846 (left!42846 xs!286))))) e!3170788))))

(assert (=> b!5083243 (= tp!1417361 (and (inv!77665 (right!43176 (left!42846 (left!42846 xs!286)))) e!3170787))))

(assert (= (and b!5083243 ((_ is Node!15584) (right!43176 (left!42846 (left!42846 xs!286))))) b!5083599))

(assert (= b!5083600 b!5083601))

(assert (= (and b!5083243 ((_ is Leaf!25881) (right!43176 (left!42846 (left!42846 xs!286))))) b!5083600))

(declare-fun m!6138816 () Bool)

(assert (=> b!5083599 m!6138816))

(declare-fun m!6138818 () Bool)

(assert (=> b!5083599 m!6138818))

(declare-fun m!6138820 () Bool)

(assert (=> b!5083600 m!6138820))

(assert (=> b!5083243 m!6138184))

(declare-fun tp!1417446 () Bool)

(declare-fun b!5083602 () Bool)

(declare-fun e!3170789 () Bool)

(declare-fun tp!1417447 () Bool)

(assert (=> b!5083602 (= e!3170789 (and (inv!77665 (left!42846 (left!42846 (right!43176 (left!42846 xs!286))))) tp!1417447 (inv!77665 (right!43176 (left!42846 (right!43176 (left!42846 xs!286))))) tp!1417446))))

(declare-fun b!5083604 () Bool)

(declare-fun e!3170790 () Bool)

(declare-fun tp!1417448 () Bool)

(assert (=> b!5083604 (= e!3170790 tp!1417448)))

(declare-fun b!5083603 () Bool)

(assert (=> b!5083603 (= e!3170789 (and (inv!77666 (xs!18962 (left!42846 (right!43176 (left!42846 xs!286))))) e!3170790))))

(assert (=> b!5083248 (= tp!1417365 (and (inv!77665 (left!42846 (right!43176 (left!42846 xs!286)))) e!3170789))))

(assert (= (and b!5083248 ((_ is Node!15584) (left!42846 (right!43176 (left!42846 xs!286))))) b!5083602))

(assert (= b!5083603 b!5083604))

(assert (= (and b!5083248 ((_ is Leaf!25881) (left!42846 (right!43176 (left!42846 xs!286))))) b!5083603))

(declare-fun m!6138822 () Bool)

(assert (=> b!5083602 m!6138822))

(declare-fun m!6138824 () Bool)

(assert (=> b!5083602 m!6138824))

(declare-fun m!6138826 () Bool)

(assert (=> b!5083603 m!6138826))

(assert (=> b!5083248 m!6138188))

(declare-fun tp!1417449 () Bool)

(declare-fun e!3170791 () Bool)

(declare-fun b!5083605 () Bool)

(declare-fun tp!1417450 () Bool)

(assert (=> b!5083605 (= e!3170791 (and (inv!77665 (left!42846 (right!43176 (right!43176 (left!42846 xs!286))))) tp!1417450 (inv!77665 (right!43176 (right!43176 (right!43176 (left!42846 xs!286))))) tp!1417449))))

(declare-fun b!5083607 () Bool)

(declare-fun e!3170792 () Bool)

(declare-fun tp!1417451 () Bool)

(assert (=> b!5083607 (= e!3170792 tp!1417451)))

(declare-fun b!5083606 () Bool)

(assert (=> b!5083606 (= e!3170791 (and (inv!77666 (xs!18962 (right!43176 (right!43176 (left!42846 xs!286))))) e!3170792))))

(assert (=> b!5083248 (= tp!1417364 (and (inv!77665 (right!43176 (right!43176 (left!42846 xs!286)))) e!3170791))))

(assert (= (and b!5083248 ((_ is Node!15584) (right!43176 (right!43176 (left!42846 xs!286))))) b!5083605))

(assert (= b!5083606 b!5083607))

(assert (= (and b!5083248 ((_ is Leaf!25881) (right!43176 (right!43176 (left!42846 xs!286))))) b!5083606))

(declare-fun m!6138828 () Bool)

(assert (=> b!5083605 m!6138828))

(declare-fun m!6138830 () Bool)

(assert (=> b!5083605 m!6138830))

(declare-fun m!6138832 () Bool)

(assert (=> b!5083606 m!6138832))

(assert (=> b!5083248 m!6138190))

(declare-fun b!5083608 () Bool)

(declare-fun e!3170793 () Bool)

(declare-fun tp!1417452 () Bool)

(assert (=> b!5083608 (= e!3170793 (and tp_is_empty!37091 tp!1417452))))

(assert (=> b!5083240 (= tp!1417358 e!3170793)))

(assert (= (and b!5083240 ((_ is Cons!58454) (t!371405 (t!371405 (innerList!15672 (xs!18962 ys!41)))))) b!5083608))

(declare-fun b!5083609 () Bool)

(declare-fun e!3170794 () Bool)

(declare-fun tp!1417453 () Bool)

(assert (=> b!5083609 (= e!3170794 (and tp_is_empty!37091 tp!1417453))))

(assert (=> b!5083261 (= tp!1417375 e!3170794)))

(assert (= (and b!5083261 ((_ is Cons!58454) (t!371405 (innerList!15672 (xs!18962 (left!42846 xs!286)))))) b!5083609))

(declare-fun tp!1417454 () Bool)

(declare-fun b!5083610 () Bool)

(declare-fun tp!1417455 () Bool)

(declare-fun e!3170795 () Bool)

(assert (=> b!5083610 (= e!3170795 (and (inv!77665 (left!42846 (left!42846 (right!43176 (right!43176 xs!286))))) tp!1417455 (inv!77665 (right!43176 (left!42846 (right!43176 (right!43176 xs!286))))) tp!1417454))))

(declare-fun b!5083612 () Bool)

(declare-fun e!3170796 () Bool)

(declare-fun tp!1417456 () Bool)

(assert (=> b!5083612 (= e!3170796 tp!1417456)))

(declare-fun b!5083611 () Bool)

(assert (=> b!5083611 (= e!3170795 (and (inv!77666 (xs!18962 (left!42846 (right!43176 (right!43176 xs!286))))) e!3170796))))

(assert (=> b!5083237 (= tp!1417356 (and (inv!77665 (left!42846 (right!43176 (right!43176 xs!286)))) e!3170795))))

(assert (= (and b!5083237 ((_ is Node!15584) (left!42846 (right!43176 (right!43176 xs!286))))) b!5083610))

(assert (= b!5083611 b!5083612))

(assert (= (and b!5083237 ((_ is Leaf!25881) (left!42846 (right!43176 (right!43176 xs!286))))) b!5083611))

(declare-fun m!6138834 () Bool)

(assert (=> b!5083610 m!6138834))

(declare-fun m!6138836 () Bool)

(assert (=> b!5083610 m!6138836))

(declare-fun m!6138838 () Bool)

(assert (=> b!5083611 m!6138838))

(assert (=> b!5083237 m!6138176))

(declare-fun tp!1417457 () Bool)

(declare-fun tp!1417458 () Bool)

(declare-fun b!5083613 () Bool)

(declare-fun e!3170797 () Bool)

(assert (=> b!5083613 (= e!3170797 (and (inv!77665 (left!42846 (right!43176 (right!43176 (right!43176 xs!286))))) tp!1417458 (inv!77665 (right!43176 (right!43176 (right!43176 (right!43176 xs!286))))) tp!1417457))))

(declare-fun b!5083615 () Bool)

(declare-fun e!3170798 () Bool)

(declare-fun tp!1417459 () Bool)

(assert (=> b!5083615 (= e!3170798 tp!1417459)))

(declare-fun b!5083614 () Bool)

(assert (=> b!5083614 (= e!3170797 (and (inv!77666 (xs!18962 (right!43176 (right!43176 (right!43176 xs!286))))) e!3170798))))

(assert (=> b!5083237 (= tp!1417355 (and (inv!77665 (right!43176 (right!43176 (right!43176 xs!286)))) e!3170797))))

(assert (= (and b!5083237 ((_ is Node!15584) (right!43176 (right!43176 (right!43176 xs!286))))) b!5083613))

(assert (= b!5083614 b!5083615))

(assert (= (and b!5083237 ((_ is Leaf!25881) (right!43176 (right!43176 (right!43176 xs!286))))) b!5083614))

(declare-fun m!6138840 () Bool)

(assert (=> b!5083613 m!6138840))

(declare-fun m!6138842 () Bool)

(assert (=> b!5083613 m!6138842))

(declare-fun m!6138844 () Bool)

(assert (=> b!5083614 m!6138844))

(assert (=> b!5083237 m!6138178))

(declare-fun tp!1417460 () Bool)

(declare-fun b!5083616 () Bool)

(declare-fun e!3170799 () Bool)

(declare-fun tp!1417461 () Bool)

(assert (=> b!5083616 (= e!3170799 (and (inv!77665 (left!42846 (left!42846 (left!42846 (right!43176 ys!41))))) tp!1417461 (inv!77665 (right!43176 (left!42846 (left!42846 (right!43176 ys!41))))) tp!1417460))))

(declare-fun b!5083618 () Bool)

(declare-fun e!3170800 () Bool)

(declare-fun tp!1417462 () Bool)

(assert (=> b!5083618 (= e!3170800 tp!1417462)))

(declare-fun b!5083617 () Bool)

(assert (=> b!5083617 (= e!3170799 (and (inv!77666 (xs!18962 (left!42846 (left!42846 (right!43176 ys!41))))) e!3170800))))

(assert (=> b!5083253 (= tp!1417368 (and (inv!77665 (left!42846 (left!42846 (right!43176 ys!41)))) e!3170799))))

(assert (= (and b!5083253 ((_ is Node!15584) (left!42846 (left!42846 (right!43176 ys!41))))) b!5083616))

(assert (= b!5083617 b!5083618))

(assert (= (and b!5083253 ((_ is Leaf!25881) (left!42846 (left!42846 (right!43176 ys!41))))) b!5083617))

(declare-fun m!6138846 () Bool)

(assert (=> b!5083616 m!6138846))

(declare-fun m!6138848 () Bool)

(assert (=> b!5083616 m!6138848))

(declare-fun m!6138850 () Bool)

(assert (=> b!5083617 m!6138850))

(assert (=> b!5083253 m!6138194))

(declare-fun b!5083619 () Bool)

(declare-fun tp!1417464 () Bool)

(declare-fun e!3170801 () Bool)

(declare-fun tp!1417463 () Bool)

(assert (=> b!5083619 (= e!3170801 (and (inv!77665 (left!42846 (right!43176 (left!42846 (right!43176 ys!41))))) tp!1417464 (inv!77665 (right!43176 (right!43176 (left!42846 (right!43176 ys!41))))) tp!1417463))))

(declare-fun b!5083621 () Bool)

(declare-fun e!3170802 () Bool)

(declare-fun tp!1417465 () Bool)

(assert (=> b!5083621 (= e!3170802 tp!1417465)))

(declare-fun b!5083620 () Bool)

(assert (=> b!5083620 (= e!3170801 (and (inv!77666 (xs!18962 (right!43176 (left!42846 (right!43176 ys!41))))) e!3170802))))

(assert (=> b!5083253 (= tp!1417367 (and (inv!77665 (right!43176 (left!42846 (right!43176 ys!41)))) e!3170801))))

(assert (= (and b!5083253 ((_ is Node!15584) (right!43176 (left!42846 (right!43176 ys!41))))) b!5083619))

(assert (= b!5083620 b!5083621))

(assert (= (and b!5083253 ((_ is Leaf!25881) (right!43176 (left!42846 (right!43176 ys!41))))) b!5083620))

(declare-fun m!6138852 () Bool)

(assert (=> b!5083619 m!6138852))

(declare-fun m!6138854 () Bool)

(assert (=> b!5083619 m!6138854))

(declare-fun m!6138856 () Bool)

(assert (=> b!5083620 m!6138856))

(assert (=> b!5083253 m!6138196))

(declare-fun b!5083622 () Bool)

(declare-fun e!3170803 () Bool)

(declare-fun tp!1417466 () Bool)

(assert (=> b!5083622 (= e!3170803 (and tp_is_empty!37091 tp!1417466))))

(assert (=> b!5083267 (= tp!1417381 e!3170803)))

(assert (= (and b!5083267 ((_ is Cons!58454) (innerList!15672 (xs!18962 (right!43176 (left!42846 ys!41)))))) b!5083622))

(declare-fun tp!1417467 () Bool)

(declare-fun e!3170804 () Bool)

(declare-fun tp!1417468 () Bool)

(declare-fun b!5083623 () Bool)

(assert (=> b!5083623 (= e!3170804 (and (inv!77665 (left!42846 (left!42846 (right!43176 (left!42846 ys!41))))) tp!1417468 (inv!77665 (right!43176 (left!42846 (right!43176 (left!42846 ys!41))))) tp!1417467))))

(declare-fun b!5083625 () Bool)

(declare-fun e!3170805 () Bool)

(declare-fun tp!1417469 () Bool)

(assert (=> b!5083625 (= e!3170805 tp!1417469)))

(declare-fun b!5083624 () Bool)

(assert (=> b!5083624 (= e!3170804 (and (inv!77666 (xs!18962 (left!42846 (right!43176 (left!42846 ys!41))))) e!3170805))))

(assert (=> b!5083265 (= tp!1417380 (and (inv!77665 (left!42846 (right!43176 (left!42846 ys!41)))) e!3170804))))

(assert (= (and b!5083265 ((_ is Node!15584) (left!42846 (right!43176 (left!42846 ys!41))))) b!5083623))

(assert (= b!5083624 b!5083625))

(assert (= (and b!5083265 ((_ is Leaf!25881) (left!42846 (right!43176 (left!42846 ys!41))))) b!5083624))

(declare-fun m!6138858 () Bool)

(assert (=> b!5083623 m!6138858))

(declare-fun m!6138860 () Bool)

(assert (=> b!5083623 m!6138860))

(declare-fun m!6138862 () Bool)

(assert (=> b!5083624 m!6138862))

(assert (=> b!5083265 m!6138212))

(declare-fun b!5083626 () Bool)

(declare-fun e!3170806 () Bool)

(declare-fun tp!1417471 () Bool)

(declare-fun tp!1417470 () Bool)

(assert (=> b!5083626 (= e!3170806 (and (inv!77665 (left!42846 (right!43176 (right!43176 (left!42846 ys!41))))) tp!1417471 (inv!77665 (right!43176 (right!43176 (right!43176 (left!42846 ys!41))))) tp!1417470))))

(declare-fun b!5083628 () Bool)

(declare-fun e!3170807 () Bool)

(declare-fun tp!1417472 () Bool)

(assert (=> b!5083628 (= e!3170807 tp!1417472)))

(declare-fun b!5083627 () Bool)

(assert (=> b!5083627 (= e!3170806 (and (inv!77666 (xs!18962 (right!43176 (right!43176 (left!42846 ys!41))))) e!3170807))))

(assert (=> b!5083265 (= tp!1417379 (and (inv!77665 (right!43176 (right!43176 (left!42846 ys!41)))) e!3170806))))

(assert (= (and b!5083265 ((_ is Node!15584) (right!43176 (right!43176 (left!42846 ys!41))))) b!5083626))

(assert (= b!5083627 b!5083628))

(assert (= (and b!5083265 ((_ is Leaf!25881) (right!43176 (right!43176 (left!42846 ys!41))))) b!5083627))

(declare-fun m!6138864 () Bool)

(assert (=> b!5083626 m!6138864))

(declare-fun m!6138866 () Bool)

(assert (=> b!5083626 m!6138866))

(declare-fun m!6138868 () Bool)

(assert (=> b!5083627 m!6138868))

(assert (=> b!5083265 m!6138214))

(declare-fun b!5083629 () Bool)

(declare-fun e!3170808 () Bool)

(declare-fun tp!1417473 () Bool)

(assert (=> b!5083629 (= e!3170808 (and tp_is_empty!37091 tp!1417473))))

(assert (=> b!5083236 (= tp!1417354 e!3170808)))

(assert (= (and b!5083236 ((_ is Cons!58454) (innerList!15672 (xs!18962 (left!42846 (right!43176 xs!286)))))) b!5083629))

(check-sat (not d!1644305) (not b!5083493) (not b!5083385) (not b!5083514) (not b!5083388) (not b!5083545) (not d!1644481) (not b!5083610) (not b!5083609) (not d!1644369) (not b!5083234) (not b!5083627) (not b!5083523) (not b!5083456) (not b!5083466) (not b!5083480) (not d!1644389) (not b!5083529) (not b!5083606) (not b!5083398) (not b!5083430) (not b!5083541) (not b!5083586) (not b!5083402) (not b!5083478) (not b!5083253) (not b!5083616) (not b!5083521) (not d!1644465) (not b!5083544) (not b!5083589) (not b!5083486) (not b!5083432) (not b!5083619) (not b!5083410) (not b!5083623) (not d!1644329) (not d!1644483) (not b!5083562) (not b!5083556) (not b!5083569) (not b!5083620) (not b!5083429) (not b!5083576) (not b!5083475) (not b!5083489) (not d!1644467) (not b!5083462) (not b!5083612) (not b!5083499) (not b!5083573) (not d!1644271) (not b!5083596) (not d!1644459) (not b!5083476) (not b!5083494) (not b!5083507) (not d!1644435) (not b!5083557) (not b!5083538) (not b!5083526) (not d!1644447) (not d!1644391) (not b!5083491) (not b!5083396) (not b!5083603) (not b!5083420) (not b!5083597) (not b!5083595) (not b!5083510) (not b!5083483) (not b!5083577) (not d!1644381) (not b!5083613) (not b!5083593) (not b!5083549) (not b!5083516) (not b!5083487) (not b!5083509) (not d!1644403) (not b!5083591) (not b!5083617) (not b!5083622) (not b!5083626) (not b!5083585) (not b!5083481) (not b!5083559) (not d!1644291) (not d!1644315) (not b!5083504) (not d!1644445) (not b!5083536) (not b!5083599) (not b!5083571) (not b!5083453) (not b!5083513) (not b!5083389) (not b!5083262) (not d!1644335) (not b!5083605) (not b!5083465) (not d!1644317) (not b!5083407) (not b!5083467) (not b!5083546) (not b!5083445) (not b!5083621) (not d!1644349) (not b!5083581) (not b!5083395) (not b!5083561) (not b!5083243) (not b!5083602) (not b!5083515) (not b!5083560) (not d!1644409) (not b!5083552) (not b!5083518) (not b!5083492) (not b!5083611) (not b!5083567) (not b!5083450) (not b!5083548) (not d!1644415) (not d!1644297) (not b!5083615) (not b!5083497) (not b!5083532) (not b!5083590) (not d!1644427) (not b!5083534) (not b!5083512) (not d!1644361) (not b!5083484) (not b!5083386) (not b!5083501) (not b!5083614) (not d!1644345) (not b!5083575) (not b!5083629) (not b!5083423) (not b!5083579) (not b!5083628) (not b!5083433) (not b!5083256) (not b!5083558) (not b!5083517) (not b!5083568) (not b!5083384) (not b!5083594) (not b!5083464) (not d!1644451) (not b!5083265) (not b!5083490) (not b!5083563) (not b!5083584) (not b!5083426) (not d!1644371) (not b!5083551) (not d!1644359) (not b!5083391) (not d!1644367) (not b!5083248) tp_is_empty!37091 (not b!5083414) (not b!5083397) (not b!5083598) (not b!5083592) (not b!5083580) (not b!5083570) (not d!1644347) (not b!5083392) (not b!5083446) (not b!5083524) (not b!5083600) (not b!5083393) (not d!1644319) (not d!1644437) (not b!5083413) (not b!5083582) (not b!5083411) (not d!1644387) (not d!1644365) (not b!5083461) (not d!1644289) (not b!5083587) (not b!5083401) (not b!5083502) (not b!5083448) (not b!5083601) (not b!5083468) (not b!5083495) (not d!1644279) (not b!5083578) (not b!5083624) (not b!5083553) (not b!5083618) (not b!5083508) (not b!5083463) (not b!5083550) (not b!5083473) (not b!5083405) (not b!5083506) (not b!5083608) (not b!5083604) (not b!5083505) (not d!1644325) (not b!5083625) (not b!5083427) (not b!5083588) (not b!5083607) (not b!5083527) (not b!5083417) (not b!5083574) (not d!1644327) (not b!5083237) (not b!5083531) (not d!1644449) (not b!5083520) (not b!5083394) (not b!5083471) (not b!5083572) (not d!1644307) (not b!5083470) (not b!5083566) (not b!5083458) (not b!5083387) (not b!5083416) (not d!1644331) (not b!5083583) (not d!1644333))
(check-sat)
