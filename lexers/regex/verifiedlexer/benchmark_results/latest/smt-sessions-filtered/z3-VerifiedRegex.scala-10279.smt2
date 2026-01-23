; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534654 () Bool)

(assert start!534654)

(declare-fun b!5055877 () Bool)

(declare-fun e!3156140 () Bool)

(declare-datatypes ((T!105020 0))(
  ( (T!105021 (val!23634 Int)) )
))
(declare-datatypes ((List!58544 0))(
  ( (Nil!58420) (Cons!58420 (h!64868 T!105020) (t!371217 List!58544)) )
))
(declare-datatypes ((IArray!31161 0))(
  ( (IArray!31162 (innerList!15638 List!58544)) )
))
(declare-datatypes ((Conc!15550 0))(
  ( (Node!15550 (left!42795 Conc!15550) (right!43125 Conc!15550) (csize!31330 Int) (cheight!15761 Int)) (Leaf!25830 (xs!18882 IArray!31161) (csize!31331 Int)) (Empty!15550) )
))
(declare-fun xs!286 () Conc!15550)

(declare-fun e!3156137 () Bool)

(declare-fun inv!77478 (IArray!31161) Bool)

(assert (=> b!5055877 (= e!3156140 (and (inv!77478 (xs!18882 xs!286)) e!3156137))))

(declare-fun res!2152880 () Bool)

(declare-fun e!3156138 () Bool)

(assert (=> start!534654 (=> (not res!2152880) (not e!3156138))))

(declare-fun isBalanced!4412 (Conc!15550) Bool)

(assert (=> start!534654 (= res!2152880 (isBalanced!4412 xs!286))))

(assert (=> start!534654 e!3156138))

(declare-fun inv!77479 (Conc!15550) Bool)

(assert (=> start!534654 (and (inv!77479 xs!286) e!3156140)))

(declare-fun ys!41 () Conc!15550)

(declare-fun e!3156139 () Bool)

(assert (=> start!534654 (and (inv!77479 ys!41) e!3156139)))

(declare-fun b!5055878 () Bool)

(declare-fun e!3156136 () Bool)

(assert (=> b!5055878 (= e!3156139 (and (inv!77478 (xs!18882 ys!41)) e!3156136))))

(declare-fun b!5055879 () Bool)

(declare-fun res!2152881 () Bool)

(assert (=> b!5055879 (=> (not res!2152881) (not e!3156138))))

(assert (=> b!5055879 (= res!2152881 (not (= xs!286 Empty!15550)))))

(declare-fun b!5055880 () Bool)

(assert (=> b!5055880 (= e!3156138 (not (inv!77479 Empty!15550)))))

(declare-fun tp!1413185 () Bool)

(declare-fun tp!1413187 () Bool)

(declare-fun b!5055881 () Bool)

(assert (=> b!5055881 (= e!3156140 (and (inv!77479 (left!42795 xs!286)) tp!1413187 (inv!77479 (right!43125 xs!286)) tp!1413185))))

(declare-fun tp!1413188 () Bool)

(declare-fun tp!1413184 () Bool)

(declare-fun b!5055882 () Bool)

(assert (=> b!5055882 (= e!3156139 (and (inv!77479 (left!42795 ys!41)) tp!1413184 (inv!77479 (right!43125 ys!41)) tp!1413188))))

(declare-fun b!5055883 () Bool)

(declare-fun tp!1413189 () Bool)

(assert (=> b!5055883 (= e!3156136 tp!1413189)))

(declare-fun b!5055884 () Bool)

(declare-fun res!2152879 () Bool)

(assert (=> b!5055884 (=> (not res!2152879) (not e!3156138))))

(assert (=> b!5055884 (= res!2152879 (isBalanced!4412 ys!41))))

(declare-fun b!5055885 () Bool)

(declare-fun tp!1413186 () Bool)

(assert (=> b!5055885 (= e!3156137 tp!1413186)))

(assert (= (and start!534654 res!2152880) b!5055884))

(assert (= (and b!5055884 res!2152879) b!5055879))

(assert (= (and b!5055879 res!2152881) b!5055880))

(get-info :version)

(assert (= (and start!534654 ((_ is Node!15550) xs!286)) b!5055881))

(assert (= b!5055877 b!5055885))

(assert (= (and start!534654 ((_ is Leaf!25830) xs!286)) b!5055877))

(assert (= (and start!534654 ((_ is Node!15550) ys!41)) b!5055882))

(assert (= b!5055878 b!5055883))

(assert (= (and start!534654 ((_ is Leaf!25830) ys!41)) b!5055878))

(declare-fun m!6090704 () Bool)

(assert (=> b!5055884 m!6090704))

(declare-fun m!6090706 () Bool)

(assert (=> b!5055881 m!6090706))

(declare-fun m!6090708 () Bool)

(assert (=> b!5055881 m!6090708))

(declare-fun m!6090710 () Bool)

(assert (=> b!5055877 m!6090710))

(declare-fun m!6090712 () Bool)

(assert (=> b!5055878 m!6090712))

(declare-fun m!6090714 () Bool)

(assert (=> b!5055882 m!6090714))

(declare-fun m!6090716 () Bool)

(assert (=> b!5055882 m!6090716))

(declare-fun m!6090718 () Bool)

(assert (=> start!534654 m!6090718))

(declare-fun m!6090720 () Bool)

(assert (=> start!534654 m!6090720))

(declare-fun m!6090722 () Bool)

(assert (=> start!534654 m!6090722))

(declare-fun m!6090724 () Bool)

(assert (=> b!5055880 m!6090724))

(check-sat (not b!5055877) (not start!534654) (not b!5055880) (not b!5055883) (not b!5055884) (not b!5055885) (not b!5055878) (not b!5055882) (not b!5055881))
(check-sat)
(get-model)

(declare-fun b!5055910 () Bool)

(declare-fun res!2152902 () Bool)

(declare-fun e!3156153 () Bool)

(assert (=> b!5055910 (=> (not res!2152902) (not e!3156153))))

(declare-fun height!2126 (Conc!15550) Int)

(assert (=> b!5055910 (= res!2152902 (<= (- (height!2126 (left!42795 ys!41)) (height!2126 (right!43125 ys!41))) 1))))

(declare-fun b!5055911 () Bool)

(declare-fun res!2152899 () Bool)

(assert (=> b!5055911 (=> (not res!2152899) (not e!3156153))))

(assert (=> b!5055911 (= res!2152899 (isBalanced!4412 (left!42795 ys!41)))))

(declare-fun d!1627072 () Bool)

(declare-fun res!2152900 () Bool)

(declare-fun e!3156154 () Bool)

(assert (=> d!1627072 (=> res!2152900 e!3156154)))

(assert (=> d!1627072 (= res!2152900 (not ((_ is Node!15550) ys!41)))))

(assert (=> d!1627072 (= (isBalanced!4412 ys!41) e!3156154)))

(declare-fun b!5055912 () Bool)

(declare-fun res!2152901 () Bool)

(assert (=> b!5055912 (=> (not res!2152901) (not e!3156153))))

(assert (=> b!5055912 (= res!2152901 (isBalanced!4412 (right!43125 ys!41)))))

(declare-fun b!5055913 () Bool)

(assert (=> b!5055913 (= e!3156154 e!3156153)))

(declare-fun res!2152903 () Bool)

(assert (=> b!5055913 (=> (not res!2152903) (not e!3156153))))

(assert (=> b!5055913 (= res!2152903 (<= (- 1) (- (height!2126 (left!42795 ys!41)) (height!2126 (right!43125 ys!41)))))))

(declare-fun b!5055914 () Bool)

(declare-fun res!2152898 () Bool)

(assert (=> b!5055914 (=> (not res!2152898) (not e!3156153))))

(declare-fun isEmpty!31604 (Conc!15550) Bool)

(assert (=> b!5055914 (= res!2152898 (not (isEmpty!31604 (left!42795 ys!41))))))

(declare-fun b!5055915 () Bool)

(assert (=> b!5055915 (= e!3156153 (not (isEmpty!31604 (right!43125 ys!41))))))

(assert (= (and d!1627072 (not res!2152900)) b!5055913))

(assert (= (and b!5055913 res!2152903) b!5055910))

(assert (= (and b!5055910 res!2152902) b!5055911))

(assert (= (and b!5055911 res!2152899) b!5055912))

(assert (= (and b!5055912 res!2152901) b!5055914))

(assert (= (and b!5055914 res!2152898) b!5055915))

(declare-fun m!6090740 () Bool)

(assert (=> b!5055911 m!6090740))

(declare-fun m!6090744 () Bool)

(assert (=> b!5055915 m!6090744))

(declare-fun m!6090746 () Bool)

(assert (=> b!5055914 m!6090746))

(declare-fun m!6090748 () Bool)

(assert (=> b!5055913 m!6090748))

(declare-fun m!6090750 () Bool)

(assert (=> b!5055913 m!6090750))

(declare-fun m!6090752 () Bool)

(assert (=> b!5055912 m!6090752))

(assert (=> b!5055910 m!6090748))

(assert (=> b!5055910 m!6090750))

(assert (=> b!5055884 d!1627072))

(declare-fun d!1627084 () Bool)

(declare-fun c!867419 () Bool)

(assert (=> d!1627084 (= c!867419 ((_ is Node!15550) Empty!15550))))

(declare-fun e!3156165 () Bool)

(assert (=> d!1627084 (= (inv!77479 Empty!15550) e!3156165)))

(declare-fun b!5055931 () Bool)

(declare-fun inv!77482 (Conc!15550) Bool)

(assert (=> b!5055931 (= e!3156165 (inv!77482 Empty!15550))))

(declare-fun b!5055932 () Bool)

(declare-fun e!3156166 () Bool)

(assert (=> b!5055932 (= e!3156165 e!3156166)))

(declare-fun res!2152909 () Bool)

(assert (=> b!5055932 (= res!2152909 (not ((_ is Leaf!25830) Empty!15550)))))

(assert (=> b!5055932 (=> res!2152909 e!3156166)))

(declare-fun b!5055933 () Bool)

(declare-fun inv!77483 (Conc!15550) Bool)

(assert (=> b!5055933 (= e!3156166 (inv!77483 Empty!15550))))

(assert (= (and d!1627084 c!867419) b!5055931))

(assert (= (and d!1627084 (not c!867419)) b!5055932))

(assert (= (and b!5055932 (not res!2152909)) b!5055933))

(declare-fun m!6090760 () Bool)

(assert (=> b!5055931 m!6090760))

(declare-fun m!6090762 () Bool)

(assert (=> b!5055933 m!6090762))

(assert (=> b!5055880 d!1627084))

(declare-fun b!5055934 () Bool)

(declare-fun res!2152914 () Bool)

(declare-fun e!3156167 () Bool)

(assert (=> b!5055934 (=> (not res!2152914) (not e!3156167))))

(assert (=> b!5055934 (= res!2152914 (<= (- (height!2126 (left!42795 xs!286)) (height!2126 (right!43125 xs!286))) 1))))

(declare-fun b!5055935 () Bool)

(declare-fun res!2152911 () Bool)

(assert (=> b!5055935 (=> (not res!2152911) (not e!3156167))))

(assert (=> b!5055935 (= res!2152911 (isBalanced!4412 (left!42795 xs!286)))))

(declare-fun d!1627090 () Bool)

(declare-fun res!2152912 () Bool)

(declare-fun e!3156168 () Bool)

(assert (=> d!1627090 (=> res!2152912 e!3156168)))

(assert (=> d!1627090 (= res!2152912 (not ((_ is Node!15550) xs!286)))))

(assert (=> d!1627090 (= (isBalanced!4412 xs!286) e!3156168)))

(declare-fun b!5055936 () Bool)

(declare-fun res!2152913 () Bool)

(assert (=> b!5055936 (=> (not res!2152913) (not e!3156167))))

(assert (=> b!5055936 (= res!2152913 (isBalanced!4412 (right!43125 xs!286)))))

(declare-fun b!5055937 () Bool)

(assert (=> b!5055937 (= e!3156168 e!3156167)))

(declare-fun res!2152915 () Bool)

(assert (=> b!5055937 (=> (not res!2152915) (not e!3156167))))

(assert (=> b!5055937 (= res!2152915 (<= (- 1) (- (height!2126 (left!42795 xs!286)) (height!2126 (right!43125 xs!286)))))))

(declare-fun b!5055938 () Bool)

(declare-fun res!2152910 () Bool)

(assert (=> b!5055938 (=> (not res!2152910) (not e!3156167))))

(assert (=> b!5055938 (= res!2152910 (not (isEmpty!31604 (left!42795 xs!286))))))

(declare-fun b!5055939 () Bool)

(assert (=> b!5055939 (= e!3156167 (not (isEmpty!31604 (right!43125 xs!286))))))

(assert (= (and d!1627090 (not res!2152912)) b!5055937))

(assert (= (and b!5055937 res!2152915) b!5055934))

(assert (= (and b!5055934 res!2152914) b!5055935))

(assert (= (and b!5055935 res!2152911) b!5055936))

(assert (= (and b!5055936 res!2152913) b!5055938))

(assert (= (and b!5055938 res!2152910) b!5055939))

(declare-fun m!6090764 () Bool)

(assert (=> b!5055935 m!6090764))

(declare-fun m!6090766 () Bool)

(assert (=> b!5055939 m!6090766))

(declare-fun m!6090768 () Bool)

(assert (=> b!5055938 m!6090768))

(declare-fun m!6090770 () Bool)

(assert (=> b!5055937 m!6090770))

(declare-fun m!6090772 () Bool)

(assert (=> b!5055937 m!6090772))

(declare-fun m!6090774 () Bool)

(assert (=> b!5055936 m!6090774))

(assert (=> b!5055934 m!6090770))

(assert (=> b!5055934 m!6090772))

(assert (=> start!534654 d!1627090))

(declare-fun d!1627092 () Bool)

(declare-fun c!867420 () Bool)

(assert (=> d!1627092 (= c!867420 ((_ is Node!15550) xs!286))))

(declare-fun e!3156173 () Bool)

(assert (=> d!1627092 (= (inv!77479 xs!286) e!3156173)))

(declare-fun b!5055950 () Bool)

(assert (=> b!5055950 (= e!3156173 (inv!77482 xs!286))))

(declare-fun b!5055951 () Bool)

(declare-fun e!3156174 () Bool)

(assert (=> b!5055951 (= e!3156173 e!3156174)))

(declare-fun res!2152926 () Bool)

(assert (=> b!5055951 (= res!2152926 (not ((_ is Leaf!25830) xs!286)))))

(assert (=> b!5055951 (=> res!2152926 e!3156174)))

(declare-fun b!5055952 () Bool)

(assert (=> b!5055952 (= e!3156174 (inv!77483 xs!286))))

(assert (= (and d!1627092 c!867420) b!5055950))

(assert (= (and d!1627092 (not c!867420)) b!5055951))

(assert (= (and b!5055951 (not res!2152926)) b!5055952))

(declare-fun m!6090776 () Bool)

(assert (=> b!5055950 m!6090776))

(declare-fun m!6090778 () Bool)

(assert (=> b!5055952 m!6090778))

(assert (=> start!534654 d!1627092))

(declare-fun d!1627094 () Bool)

(declare-fun c!867421 () Bool)

(assert (=> d!1627094 (= c!867421 ((_ is Node!15550) ys!41))))

(declare-fun e!3156175 () Bool)

(assert (=> d!1627094 (= (inv!77479 ys!41) e!3156175)))

(declare-fun b!5055955 () Bool)

(assert (=> b!5055955 (= e!3156175 (inv!77482 ys!41))))

(declare-fun b!5055956 () Bool)

(declare-fun e!3156176 () Bool)

(assert (=> b!5055956 (= e!3156175 e!3156176)))

(declare-fun res!2152929 () Bool)

(assert (=> b!5055956 (= res!2152929 (not ((_ is Leaf!25830) ys!41)))))

(assert (=> b!5055956 (=> res!2152929 e!3156176)))

(declare-fun b!5055957 () Bool)

(assert (=> b!5055957 (= e!3156176 (inv!77483 ys!41))))

(assert (= (and d!1627094 c!867421) b!5055955))

(assert (= (and d!1627094 (not c!867421)) b!5055956))

(assert (= (and b!5055956 (not res!2152929)) b!5055957))

(declare-fun m!6090780 () Bool)

(assert (=> b!5055955 m!6090780))

(declare-fun m!6090782 () Bool)

(assert (=> b!5055957 m!6090782))

(assert (=> start!534654 d!1627094))

(declare-fun d!1627096 () Bool)

(declare-fun c!867422 () Bool)

(assert (=> d!1627096 (= c!867422 ((_ is Node!15550) (left!42795 ys!41)))))

(declare-fun e!3156177 () Bool)

(assert (=> d!1627096 (= (inv!77479 (left!42795 ys!41)) e!3156177)))

(declare-fun b!5055958 () Bool)

(assert (=> b!5055958 (= e!3156177 (inv!77482 (left!42795 ys!41)))))

(declare-fun b!5055959 () Bool)

(declare-fun e!3156178 () Bool)

(assert (=> b!5055959 (= e!3156177 e!3156178)))

(declare-fun res!2152930 () Bool)

(assert (=> b!5055959 (= res!2152930 (not ((_ is Leaf!25830) (left!42795 ys!41))))))

(assert (=> b!5055959 (=> res!2152930 e!3156178)))

(declare-fun b!5055960 () Bool)

(assert (=> b!5055960 (= e!3156178 (inv!77483 (left!42795 ys!41)))))

(assert (= (and d!1627096 c!867422) b!5055958))

(assert (= (and d!1627096 (not c!867422)) b!5055959))

(assert (= (and b!5055959 (not res!2152930)) b!5055960))

(declare-fun m!6090784 () Bool)

(assert (=> b!5055958 m!6090784))

(declare-fun m!6090786 () Bool)

(assert (=> b!5055960 m!6090786))

(assert (=> b!5055882 d!1627096))

(declare-fun d!1627098 () Bool)

(declare-fun c!867423 () Bool)

(assert (=> d!1627098 (= c!867423 ((_ is Node!15550) (right!43125 ys!41)))))

(declare-fun e!3156179 () Bool)

(assert (=> d!1627098 (= (inv!77479 (right!43125 ys!41)) e!3156179)))

(declare-fun b!5055961 () Bool)

(assert (=> b!5055961 (= e!3156179 (inv!77482 (right!43125 ys!41)))))

(declare-fun b!5055962 () Bool)

(declare-fun e!3156180 () Bool)

(assert (=> b!5055962 (= e!3156179 e!3156180)))

(declare-fun res!2152931 () Bool)

(assert (=> b!5055962 (= res!2152931 (not ((_ is Leaf!25830) (right!43125 ys!41))))))

(assert (=> b!5055962 (=> res!2152931 e!3156180)))

(declare-fun b!5055963 () Bool)

(assert (=> b!5055963 (= e!3156180 (inv!77483 (right!43125 ys!41)))))

(assert (= (and d!1627098 c!867423) b!5055961))

(assert (= (and d!1627098 (not c!867423)) b!5055962))

(assert (= (and b!5055962 (not res!2152931)) b!5055963))

(declare-fun m!6090788 () Bool)

(assert (=> b!5055961 m!6090788))

(declare-fun m!6090790 () Bool)

(assert (=> b!5055963 m!6090790))

(assert (=> b!5055882 d!1627098))

(declare-fun d!1627100 () Bool)

(declare-fun c!867424 () Bool)

(assert (=> d!1627100 (= c!867424 ((_ is Node!15550) (left!42795 xs!286)))))

(declare-fun e!3156181 () Bool)

(assert (=> d!1627100 (= (inv!77479 (left!42795 xs!286)) e!3156181)))

(declare-fun b!5055964 () Bool)

(assert (=> b!5055964 (= e!3156181 (inv!77482 (left!42795 xs!286)))))

(declare-fun b!5055965 () Bool)

(declare-fun e!3156182 () Bool)

(assert (=> b!5055965 (= e!3156181 e!3156182)))

(declare-fun res!2152932 () Bool)

(assert (=> b!5055965 (= res!2152932 (not ((_ is Leaf!25830) (left!42795 xs!286))))))

(assert (=> b!5055965 (=> res!2152932 e!3156182)))

(declare-fun b!5055966 () Bool)

(assert (=> b!5055966 (= e!3156182 (inv!77483 (left!42795 xs!286)))))

(assert (= (and d!1627100 c!867424) b!5055964))

(assert (= (and d!1627100 (not c!867424)) b!5055965))

(assert (= (and b!5055965 (not res!2152932)) b!5055966))

(declare-fun m!6090792 () Bool)

(assert (=> b!5055964 m!6090792))

(declare-fun m!6090794 () Bool)

(assert (=> b!5055966 m!6090794))

(assert (=> b!5055881 d!1627100))

(declare-fun d!1627102 () Bool)

(declare-fun c!867425 () Bool)

(assert (=> d!1627102 (= c!867425 ((_ is Node!15550) (right!43125 xs!286)))))

(declare-fun e!3156183 () Bool)

(assert (=> d!1627102 (= (inv!77479 (right!43125 xs!286)) e!3156183)))

(declare-fun b!5055967 () Bool)

(assert (=> b!5055967 (= e!3156183 (inv!77482 (right!43125 xs!286)))))

(declare-fun b!5055968 () Bool)

(declare-fun e!3156184 () Bool)

(assert (=> b!5055968 (= e!3156183 e!3156184)))

(declare-fun res!2152933 () Bool)

(assert (=> b!5055968 (= res!2152933 (not ((_ is Leaf!25830) (right!43125 xs!286))))))

(assert (=> b!5055968 (=> res!2152933 e!3156184)))

(declare-fun b!5055969 () Bool)

(assert (=> b!5055969 (= e!3156184 (inv!77483 (right!43125 xs!286)))))

(assert (= (and d!1627102 c!867425) b!5055967))

(assert (= (and d!1627102 (not c!867425)) b!5055968))

(assert (= (and b!5055968 (not res!2152933)) b!5055969))

(declare-fun m!6090796 () Bool)

(assert (=> b!5055967 m!6090796))

(declare-fun m!6090798 () Bool)

(assert (=> b!5055969 m!6090798))

(assert (=> b!5055881 d!1627102))

(declare-fun d!1627104 () Bool)

(declare-fun size!39049 (List!58544) Int)

(assert (=> d!1627104 (= (inv!77478 (xs!18882 ys!41)) (<= (size!39049 (innerList!15638 (xs!18882 ys!41))) 2147483647))))

(declare-fun bs!1189383 () Bool)

(assert (= bs!1189383 d!1627104))

(declare-fun m!6090800 () Bool)

(assert (=> bs!1189383 m!6090800))

(assert (=> b!5055878 d!1627104))

(declare-fun d!1627106 () Bool)

(assert (=> d!1627106 (= (inv!77478 (xs!18882 xs!286)) (<= (size!39049 (innerList!15638 (xs!18882 xs!286))) 2147483647))))

(declare-fun bs!1189384 () Bool)

(assert (= bs!1189384 d!1627106))

(declare-fun m!6090802 () Bool)

(assert (=> bs!1189384 m!6090802))

(assert (=> b!5055877 d!1627106))

(declare-fun b!5055983 () Bool)

(declare-fun e!3156191 () Bool)

(declare-fun tp_is_empty!37021 () Bool)

(declare-fun tp!1413192 () Bool)

(assert (=> b!5055983 (= e!3156191 (and tp_is_empty!37021 tp!1413192))))

(assert (=> b!5055885 (= tp!1413186 e!3156191)))

(assert (= (and b!5055885 ((_ is Cons!58420) (innerList!15638 (xs!18882 xs!286)))) b!5055983))

(declare-fun e!3156203 () Bool)

(declare-fun tp!1413205 () Bool)

(declare-fun b!5056005 () Bool)

(declare-fun tp!1413204 () Bool)

(assert (=> b!5056005 (= e!3156203 (and (inv!77479 (left!42795 (left!42795 ys!41))) tp!1413204 (inv!77479 (right!43125 (left!42795 ys!41))) tp!1413205))))

(declare-fun b!5056007 () Bool)

(declare-fun e!3156202 () Bool)

(declare-fun tp!1413203 () Bool)

(assert (=> b!5056007 (= e!3156202 tp!1413203)))

(declare-fun b!5056006 () Bool)

(assert (=> b!5056006 (= e!3156203 (and (inv!77478 (xs!18882 (left!42795 ys!41))) e!3156202))))

(assert (=> b!5055882 (= tp!1413184 (and (inv!77479 (left!42795 ys!41)) e!3156203))))

(assert (= (and b!5055882 ((_ is Node!15550) (left!42795 ys!41))) b!5056005))

(assert (= b!5056006 b!5056007))

(assert (= (and b!5055882 ((_ is Leaf!25830) (left!42795 ys!41))) b!5056006))

(declare-fun m!6090838 () Bool)

(assert (=> b!5056005 m!6090838))

(declare-fun m!6090840 () Bool)

(assert (=> b!5056005 m!6090840))

(declare-fun m!6090842 () Bool)

(assert (=> b!5056006 m!6090842))

(assert (=> b!5055882 m!6090714))

(declare-fun tp!1413210 () Bool)

(declare-fun tp!1413209 () Bool)

(declare-fun b!5056012 () Bool)

(declare-fun e!3156207 () Bool)

(assert (=> b!5056012 (= e!3156207 (and (inv!77479 (left!42795 (right!43125 ys!41))) tp!1413209 (inv!77479 (right!43125 (right!43125 ys!41))) tp!1413210))))

(declare-fun b!5056014 () Bool)

(declare-fun e!3156206 () Bool)

(declare-fun tp!1413208 () Bool)

(assert (=> b!5056014 (= e!3156206 tp!1413208)))

(declare-fun b!5056013 () Bool)

(assert (=> b!5056013 (= e!3156207 (and (inv!77478 (xs!18882 (right!43125 ys!41))) e!3156206))))

(assert (=> b!5055882 (= tp!1413188 (and (inv!77479 (right!43125 ys!41)) e!3156207))))

(assert (= (and b!5055882 ((_ is Node!15550) (right!43125 ys!41))) b!5056012))

(assert (= b!5056013 b!5056014))

(assert (= (and b!5055882 ((_ is Leaf!25830) (right!43125 ys!41))) b!5056013))

(declare-fun m!6090844 () Bool)

(assert (=> b!5056012 m!6090844))

(declare-fun m!6090846 () Bool)

(assert (=> b!5056012 m!6090846))

(declare-fun m!6090848 () Bool)

(assert (=> b!5056013 m!6090848))

(assert (=> b!5055882 m!6090716))

(declare-fun b!5056015 () Bool)

(declare-fun tp!1413213 () Bool)

(declare-fun tp!1413212 () Bool)

(declare-fun e!3156209 () Bool)

(assert (=> b!5056015 (= e!3156209 (and (inv!77479 (left!42795 (left!42795 xs!286))) tp!1413212 (inv!77479 (right!43125 (left!42795 xs!286))) tp!1413213))))

(declare-fun b!5056017 () Bool)

(declare-fun e!3156208 () Bool)

(declare-fun tp!1413211 () Bool)

(assert (=> b!5056017 (= e!3156208 tp!1413211)))

(declare-fun b!5056016 () Bool)

(assert (=> b!5056016 (= e!3156209 (and (inv!77478 (xs!18882 (left!42795 xs!286))) e!3156208))))

(assert (=> b!5055881 (= tp!1413187 (and (inv!77479 (left!42795 xs!286)) e!3156209))))

(assert (= (and b!5055881 ((_ is Node!15550) (left!42795 xs!286))) b!5056015))

(assert (= b!5056016 b!5056017))

(assert (= (and b!5055881 ((_ is Leaf!25830) (left!42795 xs!286))) b!5056016))

(declare-fun m!6090850 () Bool)

(assert (=> b!5056015 m!6090850))

(declare-fun m!6090852 () Bool)

(assert (=> b!5056015 m!6090852))

(declare-fun m!6090854 () Bool)

(assert (=> b!5056016 m!6090854))

(assert (=> b!5055881 m!6090706))

(declare-fun tp!1413216 () Bool)

(declare-fun tp!1413215 () Bool)

(declare-fun e!3156211 () Bool)

(declare-fun b!5056018 () Bool)

(assert (=> b!5056018 (= e!3156211 (and (inv!77479 (left!42795 (right!43125 xs!286))) tp!1413215 (inv!77479 (right!43125 (right!43125 xs!286))) tp!1413216))))

(declare-fun b!5056020 () Bool)

(declare-fun e!3156210 () Bool)

(declare-fun tp!1413214 () Bool)

(assert (=> b!5056020 (= e!3156210 tp!1413214)))

(declare-fun b!5056019 () Bool)

(assert (=> b!5056019 (= e!3156211 (and (inv!77478 (xs!18882 (right!43125 xs!286))) e!3156210))))

(assert (=> b!5055881 (= tp!1413185 (and (inv!77479 (right!43125 xs!286)) e!3156211))))

(assert (= (and b!5055881 ((_ is Node!15550) (right!43125 xs!286))) b!5056018))

(assert (= b!5056019 b!5056020))

(assert (= (and b!5055881 ((_ is Leaf!25830) (right!43125 xs!286))) b!5056019))

(declare-fun m!6090856 () Bool)

(assert (=> b!5056018 m!6090856))

(declare-fun m!6090858 () Bool)

(assert (=> b!5056018 m!6090858))

(declare-fun m!6090860 () Bool)

(assert (=> b!5056019 m!6090860))

(assert (=> b!5055881 m!6090708))

(declare-fun b!5056024 () Bool)

(declare-fun e!3156214 () Bool)

(declare-fun tp!1413220 () Bool)

(assert (=> b!5056024 (= e!3156214 (and tp_is_empty!37021 tp!1413220))))

(assert (=> b!5055883 (= tp!1413189 e!3156214)))

(assert (= (and b!5055883 ((_ is Cons!58420) (innerList!15638 (xs!18882 ys!41)))) b!5056024))

(check-sat (not b!5055915) (not b!5056005) (not b!5055964) (not b!5056019) (not b!5056024) (not b!5055937) (not b!5055958) (not b!5055967) (not b!5056007) tp_is_empty!37021 (not b!5055957) (not b!5055934) (not b!5056015) (not b!5055983) (not b!5055882) (not b!5055881) (not b!5055960) (not b!5055931) (not b!5055966) (not b!5055963) (not b!5055961) (not b!5055912) (not b!5055955) (not b!5055969) (not b!5056018) (not b!5055913) (not b!5055914) (not b!5056014) (not b!5055933) (not b!5055950) (not b!5056017) (not b!5055910) (not b!5055938) (not b!5056012) (not b!5056006) (not b!5055936) (not d!1627104) (not b!5055911) (not b!5056016) (not b!5056013) (not b!5055952) (not d!1627106) (not b!5055935) (not b!5056020) (not b!5055939))
(check-sat)
