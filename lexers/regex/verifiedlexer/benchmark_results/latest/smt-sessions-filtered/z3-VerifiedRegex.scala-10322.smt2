; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536450 () Bool)

(assert start!536450)

(declare-fun b!5090946 () Bool)

(declare-fun e!3174954 () Bool)

(declare-fun tp!1419252 () Bool)

(assert (=> b!5090946 (= e!3174954 tp!1419252)))

(declare-fun b!5090947 () Bool)

(declare-fun e!3174953 () Bool)

(declare-datatypes ((T!105594 0))(
  ( (T!105595 (val!23720 Int)) )
))
(declare-datatypes ((List!58645 0))(
  ( (Nil!58521) (Cons!58521 (h!64969 T!105594) (t!371556 List!58645)) )
))
(declare-datatypes ((IArray!31333 0))(
  ( (IArray!31334 (innerList!15724 List!58645)) )
))
(declare-datatypes ((Conc!15636 0))(
  ( (Node!15636 (left!42926 Conc!15636) (right!43256 Conc!15636) (csize!31502 Int) (cheight!15847 Int)) (Leaf!25959 (xs!19018 IArray!31333) (csize!31503 Int)) (Empty!15636) )
))
(declare-fun t!3643 () Conc!15636)

(declare-fun inv!77938 (IArray!31333) Bool)

(assert (=> b!5090947 (= e!3174953 (and (inv!77938 (xs!19018 t!3643)) e!3174954))))

(declare-fun b!5090948 () Bool)

(declare-fun res!2166825 () Bool)

(declare-fun e!3174952 () Bool)

(assert (=> b!5090948 (=> (not res!2166825) (not e!3174952))))

(declare-fun i!607 () Int)

(declare-fun size!39214 (Conc!15636) Int)

(assert (=> b!5090948 (= res!2166825 (< i!607 (size!39214 t!3643)))))

(declare-fun b!5090949 () Bool)

(declare-fun res!2166826 () Bool)

(assert (=> b!5090949 (=> (not res!2166826) (not e!3174952))))

(declare-fun size!39215 (List!58645) Int)

(declare-fun list!19101 (IArray!31333) List!58645)

(assert (=> b!5090949 (= res!2166826 (<= (size!39215 (list!19101 (xs!19018 t!3643))) 512))))

(declare-fun b!5090950 () Bool)

(declare-fun res!2166824 () Bool)

(assert (=> b!5090950 (=> (not res!2166824) (not e!3174952))))

(get-info :version)

(assert (=> b!5090950 (= res!2166824 (and ((_ is Leaf!25959) t!3643) (>= i!607 0) (< i!607 (csize!31503 t!3643))))))

(declare-fun res!2166823 () Bool)

(assert (=> start!536450 (=> (not res!2166823) (not e!3174952))))

(assert (=> start!536450 (= res!2166823 (<= 0 i!607))))

(assert (=> start!536450 e!3174952))

(assert (=> start!536450 true))

(declare-fun inv!77939 (Conc!15636) Bool)

(assert (=> start!536450 (and (inv!77939 t!3643) e!3174953)))

(declare-fun tp!1419251 () Bool)

(declare-fun b!5090951 () Bool)

(declare-fun tp!1419253 () Bool)

(assert (=> b!5090951 (= e!3174953 (and (inv!77939 (left!42926 t!3643)) tp!1419253 (inv!77939 (right!43256 t!3643)) tp!1419251))))

(declare-fun b!5090952 () Bool)

(declare-fun apply!14264 (IArray!31333 Int) T!105594)

(declare-fun apply!14265 (List!58645 Int) T!105594)

(declare-fun list!19102 (Conc!15636) List!58645)

(assert (=> b!5090952 (= e!3174952 (not (= (apply!14264 (xs!19018 t!3643) i!607) (apply!14265 (list!19102 t!3643) i!607))))))

(assert (= (and start!536450 res!2166823) b!5090948))

(assert (= (and b!5090948 res!2166825) b!5090950))

(assert (= (and b!5090950 res!2166824) b!5090949))

(assert (= (and b!5090949 res!2166826) b!5090952))

(assert (= (and start!536450 ((_ is Node!15636) t!3643)) b!5090951))

(assert (= b!5090947 b!5090946))

(assert (= (and start!536450 ((_ is Leaf!25959) t!3643)) b!5090947))

(declare-fun m!6149030 () Bool)

(assert (=> b!5090952 m!6149030))

(declare-fun m!6149032 () Bool)

(assert (=> b!5090952 m!6149032))

(assert (=> b!5090952 m!6149032))

(declare-fun m!6149034 () Bool)

(assert (=> b!5090952 m!6149034))

(declare-fun m!6149036 () Bool)

(assert (=> start!536450 m!6149036))

(declare-fun m!6149038 () Bool)

(assert (=> b!5090951 m!6149038))

(declare-fun m!6149040 () Bool)

(assert (=> b!5090951 m!6149040))

(declare-fun m!6149042 () Bool)

(assert (=> b!5090947 m!6149042))

(declare-fun m!6149044 () Bool)

(assert (=> b!5090948 m!6149044))

(declare-fun m!6149046 () Bool)

(assert (=> b!5090949 m!6149046))

(assert (=> b!5090949 m!6149046))

(declare-fun m!6149048 () Bool)

(assert (=> b!5090949 m!6149048))

(check-sat (not b!5090947) (not b!5090951) (not start!536450) (not b!5090949) (not b!5090946) (not b!5090948) (not b!5090952))
(check-sat)
(get-model)

(declare-fun d!1647923 () Bool)

(declare-fun c!874879 () Bool)

(assert (=> d!1647923 (= c!874879 ((_ is Node!15636) (left!42926 t!3643)))))

(declare-fun e!3174959 () Bool)

(assert (=> d!1647923 (= (inv!77939 (left!42926 t!3643)) e!3174959)))

(declare-fun b!5090959 () Bool)

(declare-fun inv!77940 (Conc!15636) Bool)

(assert (=> b!5090959 (= e!3174959 (inv!77940 (left!42926 t!3643)))))

(declare-fun b!5090960 () Bool)

(declare-fun e!3174960 () Bool)

(assert (=> b!5090960 (= e!3174959 e!3174960)))

(declare-fun res!2166829 () Bool)

(assert (=> b!5090960 (= res!2166829 (not ((_ is Leaf!25959) (left!42926 t!3643))))))

(assert (=> b!5090960 (=> res!2166829 e!3174960)))

(declare-fun b!5090961 () Bool)

(declare-fun inv!77941 (Conc!15636) Bool)

(assert (=> b!5090961 (= e!3174960 (inv!77941 (left!42926 t!3643)))))

(assert (= (and d!1647923 c!874879) b!5090959))

(assert (= (and d!1647923 (not c!874879)) b!5090960))

(assert (= (and b!5090960 (not res!2166829)) b!5090961))

(declare-fun m!6149050 () Bool)

(assert (=> b!5090959 m!6149050))

(declare-fun m!6149052 () Bool)

(assert (=> b!5090961 m!6149052))

(assert (=> b!5090951 d!1647923))

(declare-fun d!1647927 () Bool)

(declare-fun c!874880 () Bool)

(assert (=> d!1647927 (= c!874880 ((_ is Node!15636) (right!43256 t!3643)))))

(declare-fun e!3174961 () Bool)

(assert (=> d!1647927 (= (inv!77939 (right!43256 t!3643)) e!3174961)))

(declare-fun b!5090962 () Bool)

(assert (=> b!5090962 (= e!3174961 (inv!77940 (right!43256 t!3643)))))

(declare-fun b!5090963 () Bool)

(declare-fun e!3174962 () Bool)

(assert (=> b!5090963 (= e!3174961 e!3174962)))

(declare-fun res!2166830 () Bool)

(assert (=> b!5090963 (= res!2166830 (not ((_ is Leaf!25959) (right!43256 t!3643))))))

(assert (=> b!5090963 (=> res!2166830 e!3174962)))

(declare-fun b!5090964 () Bool)

(assert (=> b!5090964 (= e!3174962 (inv!77941 (right!43256 t!3643)))))

(assert (= (and d!1647927 c!874880) b!5090962))

(assert (= (and d!1647927 (not c!874880)) b!5090963))

(assert (= (and b!5090963 (not res!2166830)) b!5090964))

(declare-fun m!6149054 () Bool)

(assert (=> b!5090962 m!6149054))

(declare-fun m!6149056 () Bool)

(assert (=> b!5090964 m!6149056))

(assert (=> b!5090951 d!1647927))

(declare-fun d!1647929 () Bool)

(declare-fun lt!2092423 () T!105594)

(assert (=> d!1647929 (= lt!2092423 (apply!14265 (list!19101 (xs!19018 t!3643)) i!607))))

(declare-fun choose!37292 (IArray!31333 Int) T!105594)

(assert (=> d!1647929 (= lt!2092423 (choose!37292 (xs!19018 t!3643) i!607))))

(declare-fun e!3174973 () Bool)

(assert (=> d!1647929 e!3174973))

(declare-fun res!2166837 () Bool)

(assert (=> d!1647929 (=> (not res!2166837) (not e!3174973))))

(assert (=> d!1647929 (= res!2166837 (<= 0 i!607))))

(assert (=> d!1647929 (= (apply!14264 (xs!19018 t!3643) i!607) lt!2092423)))

(declare-fun b!5090979 () Bool)

(declare-fun size!39216 (IArray!31333) Int)

(assert (=> b!5090979 (= e!3174973 (< i!607 (size!39216 (xs!19018 t!3643))))))

(assert (= (and d!1647929 res!2166837) b!5090979))

(assert (=> d!1647929 m!6149046))

(assert (=> d!1647929 m!6149046))

(declare-fun m!6149066 () Bool)

(assert (=> d!1647929 m!6149066))

(declare-fun m!6149068 () Bool)

(assert (=> d!1647929 m!6149068))

(declare-fun m!6149070 () Bool)

(assert (=> b!5090979 m!6149070))

(assert (=> b!5090952 d!1647929))

(declare-fun d!1647935 () Bool)

(declare-fun lt!2092429 () T!105594)

(declare-fun contains!19587 (List!58645 T!105594) Bool)

(assert (=> d!1647935 (contains!19587 (list!19102 t!3643) lt!2092429)))

(declare-fun e!3174980 () T!105594)

(assert (=> d!1647935 (= lt!2092429 e!3174980)))

(declare-fun c!874888 () Bool)

(assert (=> d!1647935 (= c!874888 (= i!607 0))))

(declare-fun e!3174981 () Bool)

(assert (=> d!1647935 e!3174981))

(declare-fun res!2166841 () Bool)

(assert (=> d!1647935 (=> (not res!2166841) (not e!3174981))))

(assert (=> d!1647935 (= res!2166841 (<= 0 i!607))))

(assert (=> d!1647935 (= (apply!14265 (list!19102 t!3643) i!607) lt!2092429)))

(declare-fun b!5090989 () Bool)

(assert (=> b!5090989 (= e!3174981 (< i!607 (size!39215 (list!19102 t!3643))))))

(declare-fun b!5090990 () Bool)

(declare-fun head!10798 (List!58645) T!105594)

(assert (=> b!5090990 (= e!3174980 (head!10798 (list!19102 t!3643)))))

(declare-fun b!5090991 () Bool)

(declare-fun tail!9953 (List!58645) List!58645)

(assert (=> b!5090991 (= e!3174980 (apply!14265 (tail!9953 (list!19102 t!3643)) (- i!607 1)))))

(assert (= (and d!1647935 res!2166841) b!5090989))

(assert (= (and d!1647935 c!874888) b!5090990))

(assert (= (and d!1647935 (not c!874888)) b!5090991))

(assert (=> d!1647935 m!6149032))

(declare-fun m!6149080 () Bool)

(assert (=> d!1647935 m!6149080))

(assert (=> b!5090989 m!6149032))

(declare-fun m!6149082 () Bool)

(assert (=> b!5090989 m!6149082))

(assert (=> b!5090990 m!6149032))

(declare-fun m!6149084 () Bool)

(assert (=> b!5090990 m!6149084))

(assert (=> b!5090991 m!6149032))

(declare-fun m!6149086 () Bool)

(assert (=> b!5090991 m!6149086))

(assert (=> b!5090991 m!6149086))

(declare-fun m!6149088 () Bool)

(assert (=> b!5090991 m!6149088))

(assert (=> b!5090952 d!1647935))

(declare-fun b!5091003 () Bool)

(declare-fun e!3174989 () List!58645)

(assert (=> b!5091003 (= e!3174989 Nil!58521)))

(declare-fun d!1647943 () Bool)

(declare-fun c!874893 () Bool)

(assert (=> d!1647943 (= c!874893 ((_ is Empty!15636) t!3643))))

(assert (=> d!1647943 (= (list!19102 t!3643) e!3174989)))

(declare-fun b!5091005 () Bool)

(declare-fun e!3174990 () List!58645)

(assert (=> b!5091005 (= e!3174990 (list!19101 (xs!19018 t!3643)))))

(declare-fun b!5091004 () Bool)

(assert (=> b!5091004 (= e!3174989 e!3174990)))

(declare-fun c!874894 () Bool)

(assert (=> b!5091004 (= c!874894 ((_ is Leaf!25959) t!3643))))

(declare-fun b!5091006 () Bool)

(declare-fun ++!12835 (List!58645 List!58645) List!58645)

(assert (=> b!5091006 (= e!3174990 (++!12835 (list!19102 (left!42926 t!3643)) (list!19102 (right!43256 t!3643))))))

(assert (= (and d!1647943 c!874893) b!5091003))

(assert (= (and d!1647943 (not c!874893)) b!5091004))

(assert (= (and b!5091004 c!874894) b!5091005))

(assert (= (and b!5091004 (not c!874894)) b!5091006))

(assert (=> b!5091005 m!6149046))

(declare-fun m!6149096 () Bool)

(assert (=> b!5091006 m!6149096))

(declare-fun m!6149098 () Bool)

(assert (=> b!5091006 m!6149098))

(assert (=> b!5091006 m!6149096))

(assert (=> b!5091006 m!6149098))

(declare-fun m!6149100 () Bool)

(assert (=> b!5091006 m!6149100))

(assert (=> b!5090952 d!1647943))

(declare-fun d!1647947 () Bool)

(assert (=> d!1647947 (= (inv!77938 (xs!19018 t!3643)) (<= (size!39215 (innerList!15724 (xs!19018 t!3643))) 2147483647))))

(declare-fun bs!1191158 () Bool)

(assert (= bs!1191158 d!1647947))

(declare-fun m!6149102 () Bool)

(assert (=> bs!1191158 m!6149102))

(assert (=> b!5090947 d!1647947))

(declare-fun d!1647949 () Bool)

(declare-fun lt!2092438 () Int)

(assert (=> d!1647949 (= lt!2092438 (size!39215 (list!19102 t!3643)))))

(assert (=> d!1647949 (= lt!2092438 (ite ((_ is Empty!15636) t!3643) 0 (ite ((_ is Leaf!25959) t!3643) (csize!31503 t!3643) (csize!31502 t!3643))))))

(assert (=> d!1647949 (= (size!39214 t!3643) lt!2092438)))

(declare-fun bs!1191159 () Bool)

(assert (= bs!1191159 d!1647949))

(assert (=> bs!1191159 m!6149032))

(assert (=> bs!1191159 m!6149032))

(assert (=> bs!1191159 m!6149082))

(assert (=> b!5090948 d!1647949))

(declare-fun d!1647953 () Bool)

(declare-fun lt!2092441 () Int)

(assert (=> d!1647953 (>= lt!2092441 0)))

(declare-fun e!3175003 () Int)

(assert (=> d!1647953 (= lt!2092441 e!3175003)))

(declare-fun c!874904 () Bool)

(assert (=> d!1647953 (= c!874904 ((_ is Nil!58521) (list!19101 (xs!19018 t!3643))))))

(assert (=> d!1647953 (= (size!39215 (list!19101 (xs!19018 t!3643))) lt!2092441)))

(declare-fun b!5091028 () Bool)

(assert (=> b!5091028 (= e!3175003 0)))

(declare-fun b!5091029 () Bool)

(assert (=> b!5091029 (= e!3175003 (+ 1 (size!39215 (t!371556 (list!19101 (xs!19018 t!3643))))))))

(assert (= (and d!1647953 c!874904) b!5091028))

(assert (= (and d!1647953 (not c!874904)) b!5091029))

(declare-fun m!6149112 () Bool)

(assert (=> b!5091029 m!6149112))

(assert (=> b!5090949 d!1647953))

(declare-fun d!1647955 () Bool)

(assert (=> d!1647955 (= (list!19101 (xs!19018 t!3643)) (innerList!15724 (xs!19018 t!3643)))))

(assert (=> b!5090949 d!1647955))

(declare-fun d!1647957 () Bool)

(declare-fun c!874905 () Bool)

(assert (=> d!1647957 (= c!874905 ((_ is Node!15636) t!3643))))

(declare-fun e!3175004 () Bool)

(assert (=> d!1647957 (= (inv!77939 t!3643) e!3175004)))

(declare-fun b!5091030 () Bool)

(assert (=> b!5091030 (= e!3175004 (inv!77940 t!3643))))

(declare-fun b!5091031 () Bool)

(declare-fun e!3175005 () Bool)

(assert (=> b!5091031 (= e!3175004 e!3175005)))

(declare-fun res!2166848 () Bool)

(assert (=> b!5091031 (= res!2166848 (not ((_ is Leaf!25959) t!3643)))))

(assert (=> b!5091031 (=> res!2166848 e!3175005)))

(declare-fun b!5091032 () Bool)

(assert (=> b!5091032 (= e!3175005 (inv!77941 t!3643))))

(assert (= (and d!1647957 c!874905) b!5091030))

(assert (= (and d!1647957 (not c!874905)) b!5091031))

(assert (= (and b!5091031 (not res!2166848)) b!5091032))

(declare-fun m!6149114 () Bool)

(assert (=> b!5091030 m!6149114))

(declare-fun m!6149116 () Bool)

(assert (=> b!5091032 m!6149116))

(assert (=> start!536450 d!1647957))

(declare-fun tp!1419261 () Bool)

(declare-fun b!5091045 () Bool)

(declare-fun e!3175012 () Bool)

(declare-fun tp!1419260 () Bool)

(assert (=> b!5091045 (= e!3175012 (and (inv!77939 (left!42926 (left!42926 t!3643))) tp!1419261 (inv!77939 (right!43256 (left!42926 t!3643))) tp!1419260))))

(declare-fun b!5091047 () Bool)

(declare-fun e!3175013 () Bool)

(declare-fun tp!1419262 () Bool)

(assert (=> b!5091047 (= e!3175013 tp!1419262)))

(declare-fun b!5091046 () Bool)

(assert (=> b!5091046 (= e!3175012 (and (inv!77938 (xs!19018 (left!42926 t!3643))) e!3175013))))

(assert (=> b!5090951 (= tp!1419253 (and (inv!77939 (left!42926 t!3643)) e!3175012))))

(assert (= (and b!5090951 ((_ is Node!15636) (left!42926 t!3643))) b!5091045))

(assert (= b!5091046 b!5091047))

(assert (= (and b!5090951 ((_ is Leaf!25959) (left!42926 t!3643))) b!5091046))

(declare-fun m!6149124 () Bool)

(assert (=> b!5091045 m!6149124))

(declare-fun m!6149126 () Bool)

(assert (=> b!5091045 m!6149126))

(declare-fun m!6149128 () Bool)

(assert (=> b!5091046 m!6149128))

(assert (=> b!5090951 m!6149038))

(declare-fun e!3175016 () Bool)

(declare-fun b!5091052 () Bool)

(declare-fun tp!1419263 () Bool)

(declare-fun tp!1419264 () Bool)

(assert (=> b!5091052 (= e!3175016 (and (inv!77939 (left!42926 (right!43256 t!3643))) tp!1419264 (inv!77939 (right!43256 (right!43256 t!3643))) tp!1419263))))

(declare-fun b!5091054 () Bool)

(declare-fun e!3175017 () Bool)

(declare-fun tp!1419265 () Bool)

(assert (=> b!5091054 (= e!3175017 tp!1419265)))

(declare-fun b!5091053 () Bool)

(assert (=> b!5091053 (= e!3175016 (and (inv!77938 (xs!19018 (right!43256 t!3643))) e!3175017))))

(assert (=> b!5090951 (= tp!1419251 (and (inv!77939 (right!43256 t!3643)) e!3175016))))

(assert (= (and b!5090951 ((_ is Node!15636) (right!43256 t!3643))) b!5091052))

(assert (= b!5091053 b!5091054))

(assert (= (and b!5090951 ((_ is Leaf!25959) (right!43256 t!3643))) b!5091053))

(declare-fun m!6149130 () Bool)

(assert (=> b!5091052 m!6149130))

(declare-fun m!6149132 () Bool)

(assert (=> b!5091052 m!6149132))

(declare-fun m!6149134 () Bool)

(assert (=> b!5091053 m!6149134))

(assert (=> b!5090951 m!6149040))

(declare-fun b!5091059 () Bool)

(declare-fun e!3175020 () Bool)

(declare-fun tp_is_empty!37149 () Bool)

(declare-fun tp!1419268 () Bool)

(assert (=> b!5091059 (= e!3175020 (and tp_is_empty!37149 tp!1419268))))

(assert (=> b!5090946 (= tp!1419252 e!3175020)))

(assert (= (and b!5090946 ((_ is Cons!58521) (innerList!15724 (xs!19018 t!3643)))) b!5091059))

(check-sat (not b!5090979) (not b!5090951) (not b!5091032) (not b!5091053) (not b!5090990) (not b!5091046) (not d!1647935) (not b!5090962) (not b!5091059) (not b!5090961) (not b!5090959) (not b!5090991) (not b!5091030) tp_is_empty!37149 (not b!5091045) (not b!5091054) (not d!1647949) (not b!5091006) (not d!1647929) (not b!5090964) (not d!1647947) (not b!5091005) (not b!5091029) (not b!5091047) (not b!5091052) (not b!5090989))
(check-sat)
