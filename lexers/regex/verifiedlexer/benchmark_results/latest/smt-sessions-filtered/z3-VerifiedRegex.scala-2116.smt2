; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107124 () Bool)

(assert start!107124)

(declare-fun b!1203097 () Bool)

(declare-fun e!771885 () Bool)

(declare-fun tp!341463 () Bool)

(assert (=> b!1203097 (= e!771885 tp!341463)))

(declare-datatypes ((T!21838 0))(
  ( (T!21839 (val!3896 Int)) )
))
(declare-datatypes ((List!12075 0))(
  ( (Nil!12051) (Cons!12051 (h!17452 T!21838) (t!112481 List!12075)) )
))
(declare-datatypes ((IArray!7973 0))(
  ( (IArray!7974 (innerList!4044 List!12075)) )
))
(declare-datatypes ((Conc!3984 0))(
  ( (Node!3984 (left!10524 Conc!3984) (right!10854 Conc!3984) (csize!8198 Int) (cheight!4195 Int)) (Leaf!6101 (xs!6695 IArray!7973) (csize!8199 Int)) (Empty!3984) )
))
(declare-fun t!4115 () Conc!3984)

(declare-fun from!553 () Int)

(declare-fun b!1203098 () Bool)

(declare-fun until!31 () Int)

(declare-fun e!771884 () Bool)

(get-info :version)

(assert (=> b!1203098 (= e!771884 (and (not (= from!553 until!31)) (not ((_ is Leaf!6101) t!4115)) (not ((_ is Node!3984) t!4115))))))

(declare-fun b!1203099 () Bool)

(declare-fun e!771886 () Bool)

(declare-fun inv!16159 (IArray!7973) Bool)

(assert (=> b!1203099 (= e!771886 (and (inv!16159 (xs!6695 t!4115)) e!771885))))

(declare-fun b!1203100 () Bool)

(declare-fun res!541957 () Bool)

(assert (=> b!1203100 (=> (not res!541957) (not e!771884))))

(declare-fun isBalanced!1169 (Conc!3984) Bool)

(assert (=> b!1203100 (= res!541957 (isBalanced!1169 t!4115))))

(declare-fun b!1203101 () Bool)

(declare-fun res!541956 () Bool)

(assert (=> b!1203101 (=> (not res!541956) (not e!771884))))

(declare-fun size!9587 (Conc!3984) Int)

(assert (=> b!1203101 (= res!541956 (<= until!31 (size!9587 t!4115)))))

(declare-fun res!541958 () Bool)

(assert (=> start!107124 (=> (not res!541958) (not e!771884))))

(assert (=> start!107124 (= res!541958 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!107124 e!771884))

(assert (=> start!107124 true))

(declare-fun inv!16160 (Conc!3984) Bool)

(assert (=> start!107124 (and (inv!16160 t!4115) e!771886)))

(declare-fun b!1203102 () Bool)

(declare-fun tp!341462 () Bool)

(declare-fun tp!341461 () Bool)

(assert (=> b!1203102 (= e!771886 (and (inv!16160 (left!10524 t!4115)) tp!341461 (inv!16160 (right!10854 t!4115)) tp!341462))))

(assert (= (and start!107124 res!541958) b!1203101))

(assert (= (and b!1203101 res!541956) b!1203100))

(assert (= (and b!1203100 res!541957) b!1203098))

(assert (= (and start!107124 ((_ is Node!3984) t!4115)) b!1203102))

(assert (= b!1203099 b!1203097))

(assert (= (and start!107124 ((_ is Leaf!6101) t!4115)) b!1203099))

(declare-fun m!1378873 () Bool)

(assert (=> b!1203099 m!1378873))

(declare-fun m!1378875 () Bool)

(assert (=> b!1203102 m!1378875))

(declare-fun m!1378877 () Bool)

(assert (=> b!1203102 m!1378877))

(declare-fun m!1378879 () Bool)

(assert (=> start!107124 m!1378879))

(declare-fun m!1378881 () Bool)

(assert (=> b!1203101 m!1378881))

(declare-fun m!1378883 () Bool)

(assert (=> b!1203100 m!1378883))

(check-sat (not b!1203100) (not start!107124) (not b!1203097) (not b!1203099) (not b!1203102) (not b!1203101))
(check-sat)
(get-model)

(declare-fun d!344051 () Bool)

(declare-fun lt!411343 () Int)

(declare-fun size!9588 (List!12075) Int)

(declare-fun list!4500 (Conc!3984) List!12075)

(assert (=> d!344051 (= lt!411343 (size!9588 (list!4500 t!4115)))))

(assert (=> d!344051 (= lt!411343 (ite ((_ is Empty!3984) t!4115) 0 (ite ((_ is Leaf!6101) t!4115) (csize!8199 t!4115) (csize!8198 t!4115))))))

(assert (=> d!344051 (= (size!9587 t!4115) lt!411343)))

(declare-fun bs!288349 () Bool)

(assert (= bs!288349 d!344051))

(declare-fun m!1378885 () Bool)

(assert (=> bs!288349 m!1378885))

(assert (=> bs!288349 m!1378885))

(declare-fun m!1378887 () Bool)

(assert (=> bs!288349 m!1378887))

(assert (=> b!1203101 d!344051))

(declare-fun b!1203115 () Bool)

(declare-fun res!541975 () Bool)

(declare-fun e!771892 () Bool)

(assert (=> b!1203115 (=> (not res!541975) (not e!771892))))

(assert (=> b!1203115 (= res!541975 (isBalanced!1169 (left!10524 t!4115)))))

(declare-fun b!1203116 () Bool)

(declare-fun res!541972 () Bool)

(assert (=> b!1203116 (=> (not res!541972) (not e!771892))))

(declare-fun height!577 (Conc!3984) Int)

(assert (=> b!1203116 (= res!541972 (<= (- (height!577 (left!10524 t!4115)) (height!577 (right!10854 t!4115))) 1))))

(declare-fun b!1203117 () Bool)

(declare-fun res!541976 () Bool)

(assert (=> b!1203117 (=> (not res!541976) (not e!771892))))

(declare-fun isEmpty!7274 (Conc!3984) Bool)

(assert (=> b!1203117 (= res!541976 (not (isEmpty!7274 (left!10524 t!4115))))))

(declare-fun b!1203118 () Bool)

(declare-fun res!541971 () Bool)

(assert (=> b!1203118 (=> (not res!541971) (not e!771892))))

(assert (=> b!1203118 (= res!541971 (isBalanced!1169 (right!10854 t!4115)))))

(declare-fun b!1203119 () Bool)

(assert (=> b!1203119 (= e!771892 (not (isEmpty!7274 (right!10854 t!4115))))))

(declare-fun d!344053 () Bool)

(declare-fun res!541973 () Bool)

(declare-fun e!771891 () Bool)

(assert (=> d!344053 (=> res!541973 e!771891)))

(assert (=> d!344053 (= res!541973 (not ((_ is Node!3984) t!4115)))))

(assert (=> d!344053 (= (isBalanced!1169 t!4115) e!771891)))

(declare-fun b!1203120 () Bool)

(assert (=> b!1203120 (= e!771891 e!771892)))

(declare-fun res!541974 () Bool)

(assert (=> b!1203120 (=> (not res!541974) (not e!771892))))

(assert (=> b!1203120 (= res!541974 (<= (- 1) (- (height!577 (left!10524 t!4115)) (height!577 (right!10854 t!4115)))))))

(assert (= (and d!344053 (not res!541973)) b!1203120))

(assert (= (and b!1203120 res!541974) b!1203116))

(assert (= (and b!1203116 res!541972) b!1203115))

(assert (= (and b!1203115 res!541975) b!1203118))

(assert (= (and b!1203118 res!541971) b!1203117))

(assert (= (and b!1203117 res!541976) b!1203119))

(declare-fun m!1378889 () Bool)

(assert (=> b!1203120 m!1378889))

(declare-fun m!1378891 () Bool)

(assert (=> b!1203120 m!1378891))

(declare-fun m!1378893 () Bool)

(assert (=> b!1203117 m!1378893))

(declare-fun m!1378895 () Bool)

(assert (=> b!1203119 m!1378895))

(assert (=> b!1203116 m!1378889))

(assert (=> b!1203116 m!1378891))

(declare-fun m!1378897 () Bool)

(assert (=> b!1203115 m!1378897))

(declare-fun m!1378899 () Bool)

(assert (=> b!1203118 m!1378899))

(assert (=> b!1203100 d!344053))

(declare-fun d!344057 () Bool)

(declare-fun c!200854 () Bool)

(assert (=> d!344057 (= c!200854 ((_ is Node!3984) t!4115))))

(declare-fun e!771903 () Bool)

(assert (=> d!344057 (= (inv!16160 t!4115) e!771903)))

(declare-fun b!1203136 () Bool)

(declare-fun inv!16162 (Conc!3984) Bool)

(assert (=> b!1203136 (= e!771903 (inv!16162 t!4115))))

(declare-fun b!1203137 () Bool)

(declare-fun e!771904 () Bool)

(assert (=> b!1203137 (= e!771903 e!771904)))

(declare-fun res!541982 () Bool)

(assert (=> b!1203137 (= res!541982 (not ((_ is Leaf!6101) t!4115)))))

(assert (=> b!1203137 (=> res!541982 e!771904)))

(declare-fun b!1203138 () Bool)

(declare-fun inv!16164 (Conc!3984) Bool)

(assert (=> b!1203138 (= e!771904 (inv!16164 t!4115))))

(assert (= (and d!344057 c!200854) b!1203136))

(assert (= (and d!344057 (not c!200854)) b!1203137))

(assert (= (and b!1203137 (not res!541982)) b!1203138))

(declare-fun m!1378907 () Bool)

(assert (=> b!1203136 m!1378907))

(declare-fun m!1378909 () Bool)

(assert (=> b!1203138 m!1378909))

(assert (=> start!107124 d!344057))

(declare-fun d!344063 () Bool)

(assert (=> d!344063 (= (inv!16159 (xs!6695 t!4115)) (<= (size!9588 (innerList!4044 (xs!6695 t!4115))) 2147483647))))

(declare-fun bs!288351 () Bool)

(assert (= bs!288351 d!344063))

(declare-fun m!1378911 () Bool)

(assert (=> bs!288351 m!1378911))

(assert (=> b!1203099 d!344063))

(declare-fun d!344065 () Bool)

(declare-fun c!200855 () Bool)

(assert (=> d!344065 (= c!200855 ((_ is Node!3984) (left!10524 t!4115)))))

(declare-fun e!771905 () Bool)

(assert (=> d!344065 (= (inv!16160 (left!10524 t!4115)) e!771905)))

(declare-fun b!1203139 () Bool)

(assert (=> b!1203139 (= e!771905 (inv!16162 (left!10524 t!4115)))))

(declare-fun b!1203140 () Bool)

(declare-fun e!771906 () Bool)

(assert (=> b!1203140 (= e!771905 e!771906)))

(declare-fun res!541983 () Bool)

(assert (=> b!1203140 (= res!541983 (not ((_ is Leaf!6101) (left!10524 t!4115))))))

(assert (=> b!1203140 (=> res!541983 e!771906)))

(declare-fun b!1203141 () Bool)

(assert (=> b!1203141 (= e!771906 (inv!16164 (left!10524 t!4115)))))

(assert (= (and d!344065 c!200855) b!1203139))

(assert (= (and d!344065 (not c!200855)) b!1203140))

(assert (= (and b!1203140 (not res!541983)) b!1203141))

(declare-fun m!1378913 () Bool)

(assert (=> b!1203139 m!1378913))

(declare-fun m!1378915 () Bool)

(assert (=> b!1203141 m!1378915))

(assert (=> b!1203102 d!344065))

(declare-fun d!344067 () Bool)

(declare-fun c!200856 () Bool)

(assert (=> d!344067 (= c!200856 ((_ is Node!3984) (right!10854 t!4115)))))

(declare-fun e!771907 () Bool)

(assert (=> d!344067 (= (inv!16160 (right!10854 t!4115)) e!771907)))

(declare-fun b!1203142 () Bool)

(assert (=> b!1203142 (= e!771907 (inv!16162 (right!10854 t!4115)))))

(declare-fun b!1203143 () Bool)

(declare-fun e!771908 () Bool)

(assert (=> b!1203143 (= e!771907 e!771908)))

(declare-fun res!541984 () Bool)

(assert (=> b!1203143 (= res!541984 (not ((_ is Leaf!6101) (right!10854 t!4115))))))

(assert (=> b!1203143 (=> res!541984 e!771908)))

(declare-fun b!1203144 () Bool)

(assert (=> b!1203144 (= e!771908 (inv!16164 (right!10854 t!4115)))))

(assert (= (and d!344067 c!200856) b!1203142))

(assert (= (and d!344067 (not c!200856)) b!1203143))

(assert (= (and b!1203143 (not res!541984)) b!1203144))

(declare-fun m!1378921 () Bool)

(assert (=> b!1203142 m!1378921))

(declare-fun m!1378923 () Bool)

(assert (=> b!1203144 m!1378923))

(assert (=> b!1203102 d!344067))

(declare-fun b!1203155 () Bool)

(declare-fun e!771915 () Bool)

(declare-fun tp_is_empty!5993 () Bool)

(declare-fun tp!341466 () Bool)

(assert (=> b!1203155 (= e!771915 (and tp_is_empty!5993 tp!341466))))

(assert (=> b!1203097 (= tp!341463 e!771915)))

(assert (= (and b!1203097 ((_ is Cons!12051) (innerList!4044 (xs!6695 t!4115)))) b!1203155))

(declare-fun e!771920 () Bool)

(declare-fun tp!341475 () Bool)

(declare-fun tp!341474 () Bool)

(declare-fun b!1203164 () Bool)

(assert (=> b!1203164 (= e!771920 (and (inv!16160 (left!10524 (left!10524 t!4115))) tp!341475 (inv!16160 (right!10854 (left!10524 t!4115))) tp!341474))))

(declare-fun b!1203166 () Bool)

(declare-fun e!771921 () Bool)

(declare-fun tp!341473 () Bool)

(assert (=> b!1203166 (= e!771921 tp!341473)))

(declare-fun b!1203165 () Bool)

(assert (=> b!1203165 (= e!771920 (and (inv!16159 (xs!6695 (left!10524 t!4115))) e!771921))))

(assert (=> b!1203102 (= tp!341461 (and (inv!16160 (left!10524 t!4115)) e!771920))))

(assert (= (and b!1203102 ((_ is Node!3984) (left!10524 t!4115))) b!1203164))

(assert (= b!1203165 b!1203166))

(assert (= (and b!1203102 ((_ is Leaf!6101) (left!10524 t!4115))) b!1203165))

(declare-fun m!1378933 () Bool)

(assert (=> b!1203164 m!1378933))

(declare-fun m!1378935 () Bool)

(assert (=> b!1203164 m!1378935))

(declare-fun m!1378937 () Bool)

(assert (=> b!1203165 m!1378937))

(assert (=> b!1203102 m!1378875))

(declare-fun tp!341477 () Bool)

(declare-fun tp!341478 () Bool)

(declare-fun e!771922 () Bool)

(declare-fun b!1203167 () Bool)

(assert (=> b!1203167 (= e!771922 (and (inv!16160 (left!10524 (right!10854 t!4115))) tp!341478 (inv!16160 (right!10854 (right!10854 t!4115))) tp!341477))))

(declare-fun b!1203169 () Bool)

(declare-fun e!771923 () Bool)

(declare-fun tp!341476 () Bool)

(assert (=> b!1203169 (= e!771923 tp!341476)))

(declare-fun b!1203168 () Bool)

(assert (=> b!1203168 (= e!771922 (and (inv!16159 (xs!6695 (right!10854 t!4115))) e!771923))))

(assert (=> b!1203102 (= tp!341462 (and (inv!16160 (right!10854 t!4115)) e!771922))))

(assert (= (and b!1203102 ((_ is Node!3984) (right!10854 t!4115))) b!1203167))

(assert (= b!1203168 b!1203169))

(assert (= (and b!1203102 ((_ is Leaf!6101) (right!10854 t!4115))) b!1203168))

(declare-fun m!1378939 () Bool)

(assert (=> b!1203167 m!1378939))

(declare-fun m!1378941 () Bool)

(assert (=> b!1203167 m!1378941))

(declare-fun m!1378943 () Bool)

(assert (=> b!1203168 m!1378943))

(assert (=> b!1203102 m!1378877))

(check-sat (not b!1203165) (not b!1203118) (not b!1203142) (not b!1203166) (not b!1203117) (not b!1203167) (not b!1203136) (not b!1203102) tp_is_empty!5993 (not b!1203155) (not b!1203164) (not d!344063) (not b!1203115) (not b!1203169) (not b!1203119) (not b!1203120) (not b!1203144) (not b!1203139) (not b!1203168) (not b!1203138) (not b!1203116) (not b!1203141) (not d!344051))
(check-sat)
