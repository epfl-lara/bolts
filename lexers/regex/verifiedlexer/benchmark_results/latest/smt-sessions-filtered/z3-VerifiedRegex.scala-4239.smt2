; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228910 () Bool)

(assert start!228910)

(declare-fun b!2319555 () Bool)

(declare-fun e!1486816 () Bool)

(declare-fun tp!736169 () Bool)

(assert (=> b!2319555 (= e!1486816 tp!736169)))

(declare-fun b!2319556 () Bool)

(declare-fun e!1486819 () Bool)

(declare-datatypes ((T!43824 0))(
  ( (T!43825 (val!7968 Int)) )
))
(declare-datatypes ((List!27754 0))(
  ( (Nil!27656) (Cons!27656 (h!33057 T!43824) (t!207394 List!27754)) )
))
(declare-datatypes ((IArray!18127 0))(
  ( (IArray!18128 (innerList!9121 List!27754)) )
))
(declare-fun arr!18 () IArray!18127)

(declare-fun size!21900 (IArray!18127) Int)

(assert (=> b!2319556 (= e!1486819 (< (size!21900 arr!18) 0))))

(declare-fun b!2319557 () Bool)

(declare-fun e!1486818 () Bool)

(declare-datatypes ((Conc!9061 0))(
  ( (Node!9061 (left!20988 Conc!9061) (right!21318 Conc!9061) (csize!18352 Int) (cheight!9272 Int)) (Leaf!13301 (xs!12021 IArray!18127) (csize!18353 Int)) (Empty!9061) )
))
(declare-fun acc!252 () Conc!9061)

(declare-fun e!1486817 () Bool)

(declare-fun inv!37577 (IArray!18127) Bool)

(assert (=> b!2319557 (= e!1486818 (and (inv!37577 (xs!12021 acc!252)) e!1486817))))

(declare-fun b!2319558 () Bool)

(declare-fun tp!736170 () Bool)

(assert (=> b!2319558 (= e!1486817 tp!736170)))

(declare-fun res!990918 () Bool)

(assert (=> start!228910 (=> (not res!990918) (not e!1486819))))

(declare-fun isBalanced!2755 (Conc!9061) Bool)

(assert (=> start!228910 (= res!990918 (isBalanced!2755 acc!252))))

(assert (=> start!228910 e!1486819))

(declare-fun inv!37578 (Conc!9061) Bool)

(assert (=> start!228910 (and (inv!37578 acc!252) e!1486818)))

(assert (=> start!228910 (and (inv!37577 arr!18) e!1486816)))

(declare-fun tp!736171 () Bool)

(declare-fun b!2319559 () Bool)

(declare-fun tp!736168 () Bool)

(assert (=> b!2319559 (= e!1486818 (and (inv!37578 (left!20988 acc!252)) tp!736171 (inv!37578 (right!21318 acc!252)) tp!736168))))

(assert (= (and start!228910 res!990918) b!2319556))

(get-info :version)

(assert (= (and start!228910 ((_ is Node!9061) acc!252)) b!2319559))

(assert (= b!2319557 b!2319558))

(assert (= (and start!228910 ((_ is Leaf!13301) acc!252)) b!2319557))

(assert (= start!228910 b!2319555))

(declare-fun m!2748133 () Bool)

(assert (=> b!2319556 m!2748133))

(declare-fun m!2748135 () Bool)

(assert (=> b!2319557 m!2748135))

(declare-fun m!2748137 () Bool)

(assert (=> start!228910 m!2748137))

(declare-fun m!2748139 () Bool)

(assert (=> start!228910 m!2748139))

(declare-fun m!2748141 () Bool)

(assert (=> start!228910 m!2748141))

(declare-fun m!2748143 () Bool)

(assert (=> b!2319559 m!2748143))

(declare-fun m!2748145 () Bool)

(assert (=> b!2319559 m!2748145))

(check-sat (not b!2319557) (not b!2319559) (not b!2319558) (not start!228910) (not b!2319556) (not b!2319555))
(check-sat)
(get-model)

(declare-fun d!685790 () Bool)

(declare-fun res!990935 () Bool)

(declare-fun e!1486832 () Bool)

(assert (=> d!685790 (=> res!990935 e!1486832)))

(assert (=> d!685790 (= res!990935 (not ((_ is Node!9061) acc!252)))))

(assert (=> d!685790 (= (isBalanced!2755 acc!252) e!1486832)))

(declare-fun b!2319584 () Bool)

(declare-fun res!990937 () Bool)

(declare-fun e!1486833 () Bool)

(assert (=> b!2319584 (=> (not res!990937) (not e!1486833))))

(assert (=> b!2319584 (= res!990937 (isBalanced!2755 (left!20988 acc!252)))))

(declare-fun b!2319585 () Bool)

(declare-fun res!990936 () Bool)

(assert (=> b!2319585 (=> (not res!990936) (not e!1486833))))

(declare-fun height!1321 (Conc!9061) Int)

(assert (=> b!2319585 (= res!990936 (<= (- (height!1321 (left!20988 acc!252)) (height!1321 (right!21318 acc!252))) 1))))

(declare-fun b!2319586 () Bool)

(declare-fun res!990940 () Bool)

(assert (=> b!2319586 (=> (not res!990940) (not e!1486833))))

(declare-fun isEmpty!15777 (Conc!9061) Bool)

(assert (=> b!2319586 (= res!990940 (not (isEmpty!15777 (left!20988 acc!252))))))

(declare-fun b!2319587 () Bool)

(assert (=> b!2319587 (= e!1486832 e!1486833)))

(declare-fun res!990938 () Bool)

(assert (=> b!2319587 (=> (not res!990938) (not e!1486833))))

(assert (=> b!2319587 (= res!990938 (<= (- 1) (- (height!1321 (left!20988 acc!252)) (height!1321 (right!21318 acc!252)))))))

(declare-fun b!2319588 () Bool)

(declare-fun res!990939 () Bool)

(assert (=> b!2319588 (=> (not res!990939) (not e!1486833))))

(assert (=> b!2319588 (= res!990939 (isBalanced!2755 (right!21318 acc!252)))))

(declare-fun b!2319589 () Bool)

(assert (=> b!2319589 (= e!1486833 (not (isEmpty!15777 (right!21318 acc!252))))))

(assert (= (and d!685790 (not res!990935)) b!2319587))

(assert (= (and b!2319587 res!990938) b!2319585))

(assert (= (and b!2319585 res!990936) b!2319584))

(assert (= (and b!2319584 res!990937) b!2319588))

(assert (= (and b!2319588 res!990939) b!2319586))

(assert (= (and b!2319586 res!990940) b!2319589))

(declare-fun m!2748163 () Bool)

(assert (=> b!2319586 m!2748163))

(declare-fun m!2748165 () Bool)

(assert (=> b!2319585 m!2748165))

(declare-fun m!2748167 () Bool)

(assert (=> b!2319585 m!2748167))

(declare-fun m!2748169 () Bool)

(assert (=> b!2319584 m!2748169))

(assert (=> b!2319587 m!2748165))

(assert (=> b!2319587 m!2748167))

(declare-fun m!2748171 () Bool)

(assert (=> b!2319588 m!2748171))

(declare-fun m!2748173 () Bool)

(assert (=> b!2319589 m!2748173))

(assert (=> start!228910 d!685790))

(declare-fun d!685800 () Bool)

(declare-fun c!367894 () Bool)

(assert (=> d!685800 (= c!367894 ((_ is Node!9061) acc!252))))

(declare-fun e!1486842 () Bool)

(assert (=> d!685800 (= (inv!37578 acc!252) e!1486842)))

(declare-fun b!2319608 () Bool)

(declare-fun inv!37581 (Conc!9061) Bool)

(assert (=> b!2319608 (= e!1486842 (inv!37581 acc!252))))

(declare-fun b!2319609 () Bool)

(declare-fun e!1486843 () Bool)

(assert (=> b!2319609 (= e!1486842 e!1486843)))

(declare-fun res!990955 () Bool)

(assert (=> b!2319609 (= res!990955 (not ((_ is Leaf!13301) acc!252)))))

(assert (=> b!2319609 (=> res!990955 e!1486843)))

(declare-fun b!2319610 () Bool)

(declare-fun inv!37582 (Conc!9061) Bool)

(assert (=> b!2319610 (= e!1486843 (inv!37582 acc!252))))

(assert (= (and d!685800 c!367894) b!2319608))

(assert (= (and d!685800 (not c!367894)) b!2319609))

(assert (= (and b!2319609 (not res!990955)) b!2319610))

(declare-fun m!2748175 () Bool)

(assert (=> b!2319608 m!2748175))

(declare-fun m!2748177 () Bool)

(assert (=> b!2319610 m!2748177))

(assert (=> start!228910 d!685800))

(declare-fun d!685802 () Bool)

(declare-fun size!21902 (List!27754) Int)

(assert (=> d!685802 (= (inv!37577 arr!18) (<= (size!21902 (innerList!9121 arr!18)) 2147483647))))

(declare-fun bs!458954 () Bool)

(assert (= bs!458954 d!685802))

(declare-fun m!2748179 () Bool)

(assert (=> bs!458954 m!2748179))

(assert (=> start!228910 d!685802))

(declare-fun d!685804 () Bool)

(declare-fun c!367895 () Bool)

(assert (=> d!685804 (= c!367895 ((_ is Node!9061) (left!20988 acc!252)))))

(declare-fun e!1486846 () Bool)

(assert (=> d!685804 (= (inv!37578 (left!20988 acc!252)) e!1486846)))

(declare-fun b!2319617 () Bool)

(assert (=> b!2319617 (= e!1486846 (inv!37581 (left!20988 acc!252)))))

(declare-fun b!2319618 () Bool)

(declare-fun e!1486847 () Bool)

(assert (=> b!2319618 (= e!1486846 e!1486847)))

(declare-fun res!990962 () Bool)

(assert (=> b!2319618 (= res!990962 (not ((_ is Leaf!13301) (left!20988 acc!252))))))

(assert (=> b!2319618 (=> res!990962 e!1486847)))

(declare-fun b!2319619 () Bool)

(assert (=> b!2319619 (= e!1486847 (inv!37582 (left!20988 acc!252)))))

(assert (= (and d!685804 c!367895) b!2319617))

(assert (= (and d!685804 (not c!367895)) b!2319618))

(assert (= (and b!2319618 (not res!990962)) b!2319619))

(declare-fun m!2748181 () Bool)

(assert (=> b!2319617 m!2748181))

(declare-fun m!2748185 () Bool)

(assert (=> b!2319619 m!2748185))

(assert (=> b!2319559 d!685804))

(declare-fun d!685806 () Bool)

(declare-fun c!367896 () Bool)

(assert (=> d!685806 (= c!367896 ((_ is Node!9061) (right!21318 acc!252)))))

(declare-fun e!1486848 () Bool)

(assert (=> d!685806 (= (inv!37578 (right!21318 acc!252)) e!1486848)))

(declare-fun b!2319620 () Bool)

(assert (=> b!2319620 (= e!1486848 (inv!37581 (right!21318 acc!252)))))

(declare-fun b!2319621 () Bool)

(declare-fun e!1486849 () Bool)

(assert (=> b!2319621 (= e!1486848 e!1486849)))

(declare-fun res!990963 () Bool)

(assert (=> b!2319621 (= res!990963 (not ((_ is Leaf!13301) (right!21318 acc!252))))))

(assert (=> b!2319621 (=> res!990963 e!1486849)))

(declare-fun b!2319622 () Bool)

(assert (=> b!2319622 (= e!1486849 (inv!37582 (right!21318 acc!252)))))

(assert (= (and d!685806 c!367896) b!2319620))

(assert (= (and d!685806 (not c!367896)) b!2319621))

(assert (= (and b!2319621 (not res!990963)) b!2319622))

(declare-fun m!2748197 () Bool)

(assert (=> b!2319620 m!2748197))

(declare-fun m!2748199 () Bool)

(assert (=> b!2319622 m!2748199))

(assert (=> b!2319559 d!685806))

(declare-fun d!685810 () Bool)

(assert (=> d!685810 (= (inv!37577 (xs!12021 acc!252)) (<= (size!21902 (innerList!9121 (xs!12021 acc!252))) 2147483647))))

(declare-fun bs!458955 () Bool)

(assert (= bs!458955 d!685810))

(declare-fun m!2748201 () Bool)

(assert (=> bs!458955 m!2748201))

(assert (=> b!2319557 d!685810))

(declare-fun d!685812 () Bool)

(declare-fun lt!860203 () Int)

(declare-fun list!10991 (IArray!18127) List!27754)

(assert (=> d!685812 (= lt!860203 (size!21902 (list!10991 arr!18)))))

(declare-fun choose!13586 (IArray!18127) Int)

(assert (=> d!685812 (= lt!860203 (choose!13586 arr!18))))

(assert (=> d!685812 (= (size!21900 arr!18) lt!860203)))

(declare-fun bs!458957 () Bool)

(assert (= bs!458957 d!685812))

(declare-fun m!2748209 () Bool)

(assert (=> bs!458957 m!2748209))

(assert (=> bs!458957 m!2748209))

(declare-fun m!2748211 () Bool)

(assert (=> bs!458957 m!2748211))

(declare-fun m!2748213 () Bool)

(assert (=> bs!458957 m!2748213))

(assert (=> b!2319556 d!685812))

(declare-fun b!2319643 () Bool)

(declare-fun e!1486861 () Bool)

(declare-fun tp_is_empty!10809 () Bool)

(declare-fun tp!736183 () Bool)

(assert (=> b!2319643 (= e!1486861 (and tp_is_empty!10809 tp!736183))))

(assert (=> b!2319555 (= tp!736169 e!1486861)))

(assert (= (and b!2319555 ((_ is Cons!27656) (innerList!9121 arr!18))) b!2319643))

(declare-fun tp!736198 () Bool)

(declare-fun e!1486872 () Bool)

(declare-fun tp!736197 () Bool)

(declare-fun b!2319659 () Bool)

(assert (=> b!2319659 (= e!1486872 (and (inv!37578 (left!20988 (left!20988 acc!252))) tp!736197 (inv!37578 (right!21318 (left!20988 acc!252))) tp!736198))))

(declare-fun b!2319661 () Bool)

(declare-fun e!1486871 () Bool)

(declare-fun tp!736199 () Bool)

(assert (=> b!2319661 (= e!1486871 tp!736199)))

(declare-fun b!2319660 () Bool)

(assert (=> b!2319660 (= e!1486872 (and (inv!37577 (xs!12021 (left!20988 acc!252))) e!1486871))))

(assert (=> b!2319559 (= tp!736171 (and (inv!37578 (left!20988 acc!252)) e!1486872))))

(assert (= (and b!2319559 ((_ is Node!9061) (left!20988 acc!252))) b!2319659))

(assert (= b!2319660 b!2319661))

(assert (= (and b!2319559 ((_ is Leaf!13301) (left!20988 acc!252))) b!2319660))

(declare-fun m!2748227 () Bool)

(assert (=> b!2319659 m!2748227))

(declare-fun m!2748229 () Bool)

(assert (=> b!2319659 m!2748229))

(declare-fun m!2748231 () Bool)

(assert (=> b!2319660 m!2748231))

(assert (=> b!2319559 m!2748143))

(declare-fun tp!736201 () Bool)

(declare-fun e!1486874 () Bool)

(declare-fun b!2319662 () Bool)

(declare-fun tp!736200 () Bool)

(assert (=> b!2319662 (= e!1486874 (and (inv!37578 (left!20988 (right!21318 acc!252))) tp!736200 (inv!37578 (right!21318 (right!21318 acc!252))) tp!736201))))

(declare-fun b!2319664 () Bool)

(declare-fun e!1486873 () Bool)

(declare-fun tp!736202 () Bool)

(assert (=> b!2319664 (= e!1486873 tp!736202)))

(declare-fun b!2319663 () Bool)

(assert (=> b!2319663 (= e!1486874 (and (inv!37577 (xs!12021 (right!21318 acc!252))) e!1486873))))

(assert (=> b!2319559 (= tp!736168 (and (inv!37578 (right!21318 acc!252)) e!1486874))))

(assert (= (and b!2319559 ((_ is Node!9061) (right!21318 acc!252))) b!2319662))

(assert (= b!2319663 b!2319664))

(assert (= (and b!2319559 ((_ is Leaf!13301) (right!21318 acc!252))) b!2319663))

(declare-fun m!2748233 () Bool)

(assert (=> b!2319662 m!2748233))

(declare-fun m!2748235 () Bool)

(assert (=> b!2319662 m!2748235))

(declare-fun m!2748237 () Bool)

(assert (=> b!2319663 m!2748237))

(assert (=> b!2319559 m!2748145))

(declare-fun b!2319665 () Bool)

(declare-fun e!1486875 () Bool)

(declare-fun tp!736203 () Bool)

(assert (=> b!2319665 (= e!1486875 (and tp_is_empty!10809 tp!736203))))

(assert (=> b!2319558 (= tp!736170 e!1486875)))

(assert (= (and b!2319558 ((_ is Cons!27656) (innerList!9121 (xs!12021 acc!252)))) b!2319665))

(check-sat (not b!2319617) (not b!2319589) (not b!2319588) (not b!2319619) (not b!2319586) (not b!2319585) (not b!2319664) (not b!2319584) (not b!2319663) (not b!2319610) (not b!2319587) (not d!685810) tp_is_empty!10809 (not b!2319559) (not b!2319665) (not b!2319661) (not d!685812) (not b!2319660) (not b!2319662) (not b!2319622) (not b!2319620) (not b!2319643) (not d!685802) (not b!2319608) (not b!2319659))
(check-sat)
(get-model)

(declare-fun d!685816 () Bool)

(declare-fun lt!860206 () Bool)

(declare-fun isEmpty!15779 (List!27754) Bool)

(declare-fun list!10992 (Conc!9061) List!27754)

(assert (=> d!685816 (= lt!860206 (isEmpty!15779 (list!10992 (right!21318 acc!252))))))

(declare-fun size!21903 (Conc!9061) Int)

(assert (=> d!685816 (= lt!860206 (= (size!21903 (right!21318 acc!252)) 0))))

(assert (=> d!685816 (= (isEmpty!15777 (right!21318 acc!252)) lt!860206)))

(declare-fun bs!458958 () Bool)

(assert (= bs!458958 d!685816))

(declare-fun m!2748239 () Bool)

(assert (=> bs!458958 m!2748239))

(assert (=> bs!458958 m!2748239))

(declare-fun m!2748241 () Bool)

(assert (=> bs!458958 m!2748241))

(declare-fun m!2748243 () Bool)

(assert (=> bs!458958 m!2748243))

(assert (=> b!2319589 d!685816))

(declare-fun d!685818 () Bool)

(declare-fun c!367898 () Bool)

(assert (=> d!685818 (= c!367898 ((_ is Node!9061) (left!20988 (right!21318 acc!252))))))

(declare-fun e!1486876 () Bool)

(assert (=> d!685818 (= (inv!37578 (left!20988 (right!21318 acc!252))) e!1486876)))

(declare-fun b!2319666 () Bool)

(assert (=> b!2319666 (= e!1486876 (inv!37581 (left!20988 (right!21318 acc!252))))))

(declare-fun b!2319667 () Bool)

(declare-fun e!1486877 () Bool)

(assert (=> b!2319667 (= e!1486876 e!1486877)))

(declare-fun res!990965 () Bool)

(assert (=> b!2319667 (= res!990965 (not ((_ is Leaf!13301) (left!20988 (right!21318 acc!252)))))))

(assert (=> b!2319667 (=> res!990965 e!1486877)))

(declare-fun b!2319668 () Bool)

(assert (=> b!2319668 (= e!1486877 (inv!37582 (left!20988 (right!21318 acc!252))))))

(assert (= (and d!685818 c!367898) b!2319666))

(assert (= (and d!685818 (not c!367898)) b!2319667))

(assert (= (and b!2319667 (not res!990965)) b!2319668))

(declare-fun m!2748245 () Bool)

(assert (=> b!2319666 m!2748245))

(declare-fun m!2748247 () Bool)

(assert (=> b!2319668 m!2748247))

(assert (=> b!2319662 d!685818))

(declare-fun d!685820 () Bool)

(declare-fun c!367899 () Bool)

(assert (=> d!685820 (= c!367899 ((_ is Node!9061) (right!21318 (right!21318 acc!252))))))

(declare-fun e!1486878 () Bool)

(assert (=> d!685820 (= (inv!37578 (right!21318 (right!21318 acc!252))) e!1486878)))

(declare-fun b!2319669 () Bool)

(assert (=> b!2319669 (= e!1486878 (inv!37581 (right!21318 (right!21318 acc!252))))))

(declare-fun b!2319670 () Bool)

(declare-fun e!1486879 () Bool)

(assert (=> b!2319670 (= e!1486878 e!1486879)))

(declare-fun res!990966 () Bool)

(assert (=> b!2319670 (= res!990966 (not ((_ is Leaf!13301) (right!21318 (right!21318 acc!252)))))))

(assert (=> b!2319670 (=> res!990966 e!1486879)))

(declare-fun b!2319671 () Bool)

(assert (=> b!2319671 (= e!1486879 (inv!37582 (right!21318 (right!21318 acc!252))))))

(assert (= (and d!685820 c!367899) b!2319669))

(assert (= (and d!685820 (not c!367899)) b!2319670))

(assert (= (and b!2319670 (not res!990966)) b!2319671))

(declare-fun m!2748249 () Bool)

(assert (=> b!2319669 m!2748249))

(declare-fun m!2748251 () Bool)

(assert (=> b!2319671 m!2748251))

(assert (=> b!2319662 d!685820))

(declare-fun d!685822 () Bool)

(assert (=> d!685822 (= (inv!37577 (xs!12021 (left!20988 acc!252))) (<= (size!21902 (innerList!9121 (xs!12021 (left!20988 acc!252)))) 2147483647))))

(declare-fun bs!458959 () Bool)

(assert (= bs!458959 d!685822))

(declare-fun m!2748253 () Bool)

(assert (=> bs!458959 m!2748253))

(assert (=> b!2319660 d!685822))

(declare-fun d!685824 () Bool)

(declare-fun lt!860209 () Int)

(assert (=> d!685824 (>= lt!860209 0)))

(declare-fun e!1486882 () Int)

(assert (=> d!685824 (= lt!860209 e!1486882)))

(declare-fun c!367902 () Bool)

(assert (=> d!685824 (= c!367902 ((_ is Nil!27656) (innerList!9121 arr!18)))))

(assert (=> d!685824 (= (size!21902 (innerList!9121 arr!18)) lt!860209)))

(declare-fun b!2319676 () Bool)

(assert (=> b!2319676 (= e!1486882 0)))

(declare-fun b!2319677 () Bool)

(assert (=> b!2319677 (= e!1486882 (+ 1 (size!21902 (t!207394 (innerList!9121 arr!18)))))))

(assert (= (and d!685824 c!367902) b!2319676))

(assert (= (and d!685824 (not c!367902)) b!2319677))

(declare-fun m!2748255 () Bool)

(assert (=> b!2319677 m!2748255))

(assert (=> d!685802 d!685824))

(declare-fun d!685826 () Bool)

(declare-fun res!990967 () Bool)

(declare-fun e!1486883 () Bool)

(assert (=> d!685826 (=> res!990967 e!1486883)))

(assert (=> d!685826 (= res!990967 (not ((_ is Node!9061) (right!21318 acc!252))))))

(assert (=> d!685826 (= (isBalanced!2755 (right!21318 acc!252)) e!1486883)))

(declare-fun b!2319678 () Bool)

(declare-fun res!990969 () Bool)

(declare-fun e!1486884 () Bool)

(assert (=> b!2319678 (=> (not res!990969) (not e!1486884))))

(assert (=> b!2319678 (= res!990969 (isBalanced!2755 (left!20988 (right!21318 acc!252))))))

(declare-fun b!2319679 () Bool)

(declare-fun res!990968 () Bool)

(assert (=> b!2319679 (=> (not res!990968) (not e!1486884))))

(assert (=> b!2319679 (= res!990968 (<= (- (height!1321 (left!20988 (right!21318 acc!252))) (height!1321 (right!21318 (right!21318 acc!252)))) 1))))

(declare-fun b!2319680 () Bool)

(declare-fun res!990972 () Bool)

(assert (=> b!2319680 (=> (not res!990972) (not e!1486884))))

(assert (=> b!2319680 (= res!990972 (not (isEmpty!15777 (left!20988 (right!21318 acc!252)))))))

(declare-fun b!2319681 () Bool)

(assert (=> b!2319681 (= e!1486883 e!1486884)))

(declare-fun res!990970 () Bool)

(assert (=> b!2319681 (=> (not res!990970) (not e!1486884))))

(assert (=> b!2319681 (= res!990970 (<= (- 1) (- (height!1321 (left!20988 (right!21318 acc!252))) (height!1321 (right!21318 (right!21318 acc!252))))))))

(declare-fun b!2319682 () Bool)

(declare-fun res!990971 () Bool)

(assert (=> b!2319682 (=> (not res!990971) (not e!1486884))))

(assert (=> b!2319682 (= res!990971 (isBalanced!2755 (right!21318 (right!21318 acc!252))))))

(declare-fun b!2319683 () Bool)

(assert (=> b!2319683 (= e!1486884 (not (isEmpty!15777 (right!21318 (right!21318 acc!252)))))))

(assert (= (and d!685826 (not res!990967)) b!2319681))

(assert (= (and b!2319681 res!990970) b!2319679))

(assert (= (and b!2319679 res!990968) b!2319678))

(assert (= (and b!2319678 res!990969) b!2319682))

(assert (= (and b!2319682 res!990971) b!2319680))

(assert (= (and b!2319680 res!990972) b!2319683))

(declare-fun m!2748257 () Bool)

(assert (=> b!2319680 m!2748257))

(declare-fun m!2748259 () Bool)

(assert (=> b!2319679 m!2748259))

(declare-fun m!2748261 () Bool)

(assert (=> b!2319679 m!2748261))

(declare-fun m!2748263 () Bool)

(assert (=> b!2319678 m!2748263))

(assert (=> b!2319681 m!2748259))

(assert (=> b!2319681 m!2748261))

(declare-fun m!2748265 () Bool)

(assert (=> b!2319682 m!2748265))

(declare-fun m!2748267 () Bool)

(assert (=> b!2319683 m!2748267))

(assert (=> b!2319588 d!685826))

(declare-fun d!685828 () Bool)

(declare-fun res!990977 () Bool)

(declare-fun e!1486887 () Bool)

(assert (=> d!685828 (=> (not res!990977) (not e!1486887))))

(assert (=> d!685828 (= res!990977 (<= (size!21902 (list!10991 (xs!12021 acc!252))) 512))))

(assert (=> d!685828 (= (inv!37582 acc!252) e!1486887)))

(declare-fun b!2319688 () Bool)

(declare-fun res!990978 () Bool)

(assert (=> b!2319688 (=> (not res!990978) (not e!1486887))))

(assert (=> b!2319688 (= res!990978 (= (csize!18353 acc!252) (size!21902 (list!10991 (xs!12021 acc!252)))))))

(declare-fun b!2319689 () Bool)

(assert (=> b!2319689 (= e!1486887 (and (> (csize!18353 acc!252) 0) (<= (csize!18353 acc!252) 512)))))

(assert (= (and d!685828 res!990977) b!2319688))

(assert (= (and b!2319688 res!990978) b!2319689))

(declare-fun m!2748269 () Bool)

(assert (=> d!685828 m!2748269))

(assert (=> d!685828 m!2748269))

(declare-fun m!2748271 () Bool)

(assert (=> d!685828 m!2748271))

(assert (=> b!2319688 m!2748269))

(assert (=> b!2319688 m!2748269))

(assert (=> b!2319688 m!2748271))

(assert (=> b!2319610 d!685828))

(declare-fun d!685830 () Bool)

(declare-fun res!990985 () Bool)

(declare-fun e!1486890 () Bool)

(assert (=> d!685830 (=> (not res!990985) (not e!1486890))))

(assert (=> d!685830 (= res!990985 (= (csize!18352 acc!252) (+ (size!21903 (left!20988 acc!252)) (size!21903 (right!21318 acc!252)))))))

(assert (=> d!685830 (= (inv!37581 acc!252) e!1486890)))

(declare-fun b!2319696 () Bool)

(declare-fun res!990986 () Bool)

(assert (=> b!2319696 (=> (not res!990986) (not e!1486890))))

(assert (=> b!2319696 (= res!990986 (and (not (= (left!20988 acc!252) Empty!9061)) (not (= (right!21318 acc!252) Empty!9061))))))

(declare-fun b!2319697 () Bool)

(declare-fun res!990987 () Bool)

(assert (=> b!2319697 (=> (not res!990987) (not e!1486890))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2319697 (= res!990987 (= (cheight!9272 acc!252) (+ (max!0 (height!1321 (left!20988 acc!252)) (height!1321 (right!21318 acc!252))) 1)))))

(declare-fun b!2319698 () Bool)

(assert (=> b!2319698 (= e!1486890 (<= 0 (cheight!9272 acc!252)))))

(assert (= (and d!685830 res!990985) b!2319696))

(assert (= (and b!2319696 res!990986) b!2319697))

(assert (= (and b!2319697 res!990987) b!2319698))

(declare-fun m!2748273 () Bool)

(assert (=> d!685830 m!2748273))

(assert (=> d!685830 m!2748243))

(assert (=> b!2319697 m!2748165))

(assert (=> b!2319697 m!2748167))

(assert (=> b!2319697 m!2748165))

(assert (=> b!2319697 m!2748167))

(declare-fun m!2748275 () Bool)

(assert (=> b!2319697 m!2748275))

(assert (=> b!2319608 d!685830))

(declare-fun d!685832 () Bool)

(assert (=> d!685832 (= (inv!37577 (xs!12021 (right!21318 acc!252))) (<= (size!21902 (innerList!9121 (xs!12021 (right!21318 acc!252)))) 2147483647))))

(declare-fun bs!458960 () Bool)

(assert (= bs!458960 d!685832))

(declare-fun m!2748277 () Bool)

(assert (=> bs!458960 m!2748277))

(assert (=> b!2319663 d!685832))

(declare-fun d!685834 () Bool)

(declare-fun res!990988 () Bool)

(declare-fun e!1486891 () Bool)

(assert (=> d!685834 (=> (not res!990988) (not e!1486891))))

(assert (=> d!685834 (= res!990988 (= (csize!18352 (right!21318 acc!252)) (+ (size!21903 (left!20988 (right!21318 acc!252))) (size!21903 (right!21318 (right!21318 acc!252))))))))

(assert (=> d!685834 (= (inv!37581 (right!21318 acc!252)) e!1486891)))

(declare-fun b!2319699 () Bool)

(declare-fun res!990989 () Bool)

(assert (=> b!2319699 (=> (not res!990989) (not e!1486891))))

(assert (=> b!2319699 (= res!990989 (and (not (= (left!20988 (right!21318 acc!252)) Empty!9061)) (not (= (right!21318 (right!21318 acc!252)) Empty!9061))))))

(declare-fun b!2319700 () Bool)

(declare-fun res!990990 () Bool)

(assert (=> b!2319700 (=> (not res!990990) (not e!1486891))))

(assert (=> b!2319700 (= res!990990 (= (cheight!9272 (right!21318 acc!252)) (+ (max!0 (height!1321 (left!20988 (right!21318 acc!252))) (height!1321 (right!21318 (right!21318 acc!252)))) 1)))))

(declare-fun b!2319701 () Bool)

(assert (=> b!2319701 (= e!1486891 (<= 0 (cheight!9272 (right!21318 acc!252))))))

(assert (= (and d!685834 res!990988) b!2319699))

(assert (= (and b!2319699 res!990989) b!2319700))

(assert (= (and b!2319700 res!990990) b!2319701))

(declare-fun m!2748279 () Bool)

(assert (=> d!685834 m!2748279))

(declare-fun m!2748281 () Bool)

(assert (=> d!685834 m!2748281))

(assert (=> b!2319700 m!2748259))

(assert (=> b!2319700 m!2748261))

(assert (=> b!2319700 m!2748259))

(assert (=> b!2319700 m!2748261))

(declare-fun m!2748283 () Bool)

(assert (=> b!2319700 m!2748283))

(assert (=> b!2319620 d!685834))

(declare-fun d!685836 () Bool)

(declare-fun res!990991 () Bool)

(declare-fun e!1486892 () Bool)

(assert (=> d!685836 (=> res!990991 e!1486892)))

(assert (=> d!685836 (= res!990991 (not ((_ is Node!9061) (left!20988 acc!252))))))

(assert (=> d!685836 (= (isBalanced!2755 (left!20988 acc!252)) e!1486892)))

(declare-fun b!2319702 () Bool)

(declare-fun res!990993 () Bool)

(declare-fun e!1486893 () Bool)

(assert (=> b!2319702 (=> (not res!990993) (not e!1486893))))

(assert (=> b!2319702 (= res!990993 (isBalanced!2755 (left!20988 (left!20988 acc!252))))))

(declare-fun b!2319703 () Bool)

(declare-fun res!990992 () Bool)

(assert (=> b!2319703 (=> (not res!990992) (not e!1486893))))

(assert (=> b!2319703 (= res!990992 (<= (- (height!1321 (left!20988 (left!20988 acc!252))) (height!1321 (right!21318 (left!20988 acc!252)))) 1))))

(declare-fun b!2319704 () Bool)

(declare-fun res!990996 () Bool)

(assert (=> b!2319704 (=> (not res!990996) (not e!1486893))))

(assert (=> b!2319704 (= res!990996 (not (isEmpty!15777 (left!20988 (left!20988 acc!252)))))))

(declare-fun b!2319705 () Bool)

(assert (=> b!2319705 (= e!1486892 e!1486893)))

(declare-fun res!990994 () Bool)

(assert (=> b!2319705 (=> (not res!990994) (not e!1486893))))

(assert (=> b!2319705 (= res!990994 (<= (- 1) (- (height!1321 (left!20988 (left!20988 acc!252))) (height!1321 (right!21318 (left!20988 acc!252))))))))

(declare-fun b!2319706 () Bool)

(declare-fun res!990995 () Bool)

(assert (=> b!2319706 (=> (not res!990995) (not e!1486893))))

(assert (=> b!2319706 (= res!990995 (isBalanced!2755 (right!21318 (left!20988 acc!252))))))

(declare-fun b!2319707 () Bool)

(assert (=> b!2319707 (= e!1486893 (not (isEmpty!15777 (right!21318 (left!20988 acc!252)))))))

(assert (= (and d!685836 (not res!990991)) b!2319705))

(assert (= (and b!2319705 res!990994) b!2319703))

(assert (= (and b!2319703 res!990992) b!2319702))

(assert (= (and b!2319702 res!990993) b!2319706))

(assert (= (and b!2319706 res!990995) b!2319704))

(assert (= (and b!2319704 res!990996) b!2319707))

(declare-fun m!2748285 () Bool)

(assert (=> b!2319704 m!2748285))

(declare-fun m!2748287 () Bool)

(assert (=> b!2319703 m!2748287))

(declare-fun m!2748289 () Bool)

(assert (=> b!2319703 m!2748289))

(declare-fun m!2748291 () Bool)

(assert (=> b!2319702 m!2748291))

(assert (=> b!2319705 m!2748287))

(assert (=> b!2319705 m!2748289))

(declare-fun m!2748293 () Bool)

(assert (=> b!2319706 m!2748293))

(declare-fun m!2748295 () Bool)

(assert (=> b!2319707 m!2748295))

(assert (=> b!2319584 d!685836))

(declare-fun d!685838 () Bool)

(declare-fun lt!860210 () Int)

(assert (=> d!685838 (>= lt!860210 0)))

(declare-fun e!1486894 () Int)

(assert (=> d!685838 (= lt!860210 e!1486894)))

(declare-fun c!367903 () Bool)

(assert (=> d!685838 (= c!367903 ((_ is Nil!27656) (innerList!9121 (xs!12021 acc!252))))))

(assert (=> d!685838 (= (size!21902 (innerList!9121 (xs!12021 acc!252))) lt!860210)))

(declare-fun b!2319708 () Bool)

(assert (=> b!2319708 (= e!1486894 0)))

(declare-fun b!2319709 () Bool)

(assert (=> b!2319709 (= e!1486894 (+ 1 (size!21902 (t!207394 (innerList!9121 (xs!12021 acc!252))))))))

(assert (= (and d!685838 c!367903) b!2319708))

(assert (= (and d!685838 (not c!367903)) b!2319709))

(declare-fun m!2748297 () Bool)

(assert (=> b!2319709 m!2748297))

(assert (=> d!685810 d!685838))

(declare-fun d!685840 () Bool)

(declare-fun res!990997 () Bool)

(declare-fun e!1486895 () Bool)

(assert (=> d!685840 (=> (not res!990997) (not e!1486895))))

(assert (=> d!685840 (= res!990997 (<= (size!21902 (list!10991 (xs!12021 (right!21318 acc!252)))) 512))))

(assert (=> d!685840 (= (inv!37582 (right!21318 acc!252)) e!1486895)))

(declare-fun b!2319710 () Bool)

(declare-fun res!990998 () Bool)

(assert (=> b!2319710 (=> (not res!990998) (not e!1486895))))

(assert (=> b!2319710 (= res!990998 (= (csize!18353 (right!21318 acc!252)) (size!21902 (list!10991 (xs!12021 (right!21318 acc!252))))))))

(declare-fun b!2319711 () Bool)

(assert (=> b!2319711 (= e!1486895 (and (> (csize!18353 (right!21318 acc!252)) 0) (<= (csize!18353 (right!21318 acc!252)) 512)))))

(assert (= (and d!685840 res!990997) b!2319710))

(assert (= (and b!2319710 res!990998) b!2319711))

(declare-fun m!2748299 () Bool)

(assert (=> d!685840 m!2748299))

(assert (=> d!685840 m!2748299))

(declare-fun m!2748301 () Bool)

(assert (=> d!685840 m!2748301))

(assert (=> b!2319710 m!2748299))

(assert (=> b!2319710 m!2748299))

(assert (=> b!2319710 m!2748301))

(assert (=> b!2319622 d!685840))

(declare-fun d!685842 () Bool)

(declare-fun res!990999 () Bool)

(declare-fun e!1486896 () Bool)

(assert (=> d!685842 (=> (not res!990999) (not e!1486896))))

(assert (=> d!685842 (= res!990999 (= (csize!18352 (left!20988 acc!252)) (+ (size!21903 (left!20988 (left!20988 acc!252))) (size!21903 (right!21318 (left!20988 acc!252))))))))

(assert (=> d!685842 (= (inv!37581 (left!20988 acc!252)) e!1486896)))

(declare-fun b!2319712 () Bool)

(declare-fun res!991000 () Bool)

(assert (=> b!2319712 (=> (not res!991000) (not e!1486896))))

(assert (=> b!2319712 (= res!991000 (and (not (= (left!20988 (left!20988 acc!252)) Empty!9061)) (not (= (right!21318 (left!20988 acc!252)) Empty!9061))))))

(declare-fun b!2319713 () Bool)

(declare-fun res!991001 () Bool)

(assert (=> b!2319713 (=> (not res!991001) (not e!1486896))))

(assert (=> b!2319713 (= res!991001 (= (cheight!9272 (left!20988 acc!252)) (+ (max!0 (height!1321 (left!20988 (left!20988 acc!252))) (height!1321 (right!21318 (left!20988 acc!252)))) 1)))))

(declare-fun b!2319714 () Bool)

(assert (=> b!2319714 (= e!1486896 (<= 0 (cheight!9272 (left!20988 acc!252))))))

(assert (= (and d!685842 res!990999) b!2319712))

(assert (= (and b!2319712 res!991000) b!2319713))

(assert (= (and b!2319713 res!991001) b!2319714))

(declare-fun m!2748303 () Bool)

(assert (=> d!685842 m!2748303))

(declare-fun m!2748305 () Bool)

(assert (=> d!685842 m!2748305))

(assert (=> b!2319713 m!2748287))

(assert (=> b!2319713 m!2748289))

(assert (=> b!2319713 m!2748287))

(assert (=> b!2319713 m!2748289))

(declare-fun m!2748307 () Bool)

(assert (=> b!2319713 m!2748307))

(assert (=> b!2319617 d!685842))

(assert (=> b!2319559 d!685804))

(assert (=> b!2319559 d!685806))

(declare-fun d!685844 () Bool)

(declare-fun lt!860211 () Bool)

(assert (=> d!685844 (= lt!860211 (isEmpty!15779 (list!10992 (left!20988 acc!252))))))

(assert (=> d!685844 (= lt!860211 (= (size!21903 (left!20988 acc!252)) 0))))

(assert (=> d!685844 (= (isEmpty!15777 (left!20988 acc!252)) lt!860211)))

(declare-fun bs!458961 () Bool)

(assert (= bs!458961 d!685844))

(declare-fun m!2748309 () Bool)

(assert (=> bs!458961 m!2748309))

(assert (=> bs!458961 m!2748309))

(declare-fun m!2748311 () Bool)

(assert (=> bs!458961 m!2748311))

(assert (=> bs!458961 m!2748273))

(assert (=> b!2319586 d!685844))

(declare-fun d!685846 () Bool)

(declare-fun c!367904 () Bool)

(assert (=> d!685846 (= c!367904 ((_ is Node!9061) (left!20988 (left!20988 acc!252))))))

(declare-fun e!1486897 () Bool)

(assert (=> d!685846 (= (inv!37578 (left!20988 (left!20988 acc!252))) e!1486897)))

(declare-fun b!2319715 () Bool)

(assert (=> b!2319715 (= e!1486897 (inv!37581 (left!20988 (left!20988 acc!252))))))

(declare-fun b!2319716 () Bool)

(declare-fun e!1486898 () Bool)

(assert (=> b!2319716 (= e!1486897 e!1486898)))

(declare-fun res!991002 () Bool)

(assert (=> b!2319716 (= res!991002 (not ((_ is Leaf!13301) (left!20988 (left!20988 acc!252)))))))

(assert (=> b!2319716 (=> res!991002 e!1486898)))

(declare-fun b!2319717 () Bool)

(assert (=> b!2319717 (= e!1486898 (inv!37582 (left!20988 (left!20988 acc!252))))))

(assert (= (and d!685846 c!367904) b!2319715))

(assert (= (and d!685846 (not c!367904)) b!2319716))

(assert (= (and b!2319716 (not res!991002)) b!2319717))

(declare-fun m!2748313 () Bool)

(assert (=> b!2319715 m!2748313))

(declare-fun m!2748315 () Bool)

(assert (=> b!2319717 m!2748315))

(assert (=> b!2319659 d!685846))

(declare-fun d!685848 () Bool)

(declare-fun c!367905 () Bool)

(assert (=> d!685848 (= c!367905 ((_ is Node!9061) (right!21318 (left!20988 acc!252))))))

(declare-fun e!1486899 () Bool)

(assert (=> d!685848 (= (inv!37578 (right!21318 (left!20988 acc!252))) e!1486899)))

(declare-fun b!2319718 () Bool)

(assert (=> b!2319718 (= e!1486899 (inv!37581 (right!21318 (left!20988 acc!252))))))

(declare-fun b!2319719 () Bool)

(declare-fun e!1486900 () Bool)

(assert (=> b!2319719 (= e!1486899 e!1486900)))

(declare-fun res!991003 () Bool)

(assert (=> b!2319719 (= res!991003 (not ((_ is Leaf!13301) (right!21318 (left!20988 acc!252)))))))

(assert (=> b!2319719 (=> res!991003 e!1486900)))

(declare-fun b!2319720 () Bool)

(assert (=> b!2319720 (= e!1486900 (inv!37582 (right!21318 (left!20988 acc!252))))))

(assert (= (and d!685848 c!367905) b!2319718))

(assert (= (and d!685848 (not c!367905)) b!2319719))

(assert (= (and b!2319719 (not res!991003)) b!2319720))

(declare-fun m!2748319 () Bool)

(assert (=> b!2319718 m!2748319))

(declare-fun m!2748321 () Bool)

(assert (=> b!2319720 m!2748321))

(assert (=> b!2319659 d!685848))

(declare-fun d!685852 () Bool)

(assert (=> d!685852 (= (height!1321 (left!20988 acc!252)) (ite ((_ is Empty!9061) (left!20988 acc!252)) 0 (ite ((_ is Leaf!13301) (left!20988 acc!252)) 1 (cheight!9272 (left!20988 acc!252)))))))

(assert (=> b!2319587 d!685852))

(declare-fun d!685858 () Bool)

(assert (=> d!685858 (= (height!1321 (right!21318 acc!252)) (ite ((_ is Empty!9061) (right!21318 acc!252)) 0 (ite ((_ is Leaf!13301) (right!21318 acc!252)) 1 (cheight!9272 (right!21318 acc!252)))))))

(assert (=> b!2319587 d!685858))

(declare-fun d!685860 () Bool)

(declare-fun lt!860212 () Int)

(assert (=> d!685860 (>= lt!860212 0)))

(declare-fun e!1486905 () Int)

(assert (=> d!685860 (= lt!860212 e!1486905)))

(declare-fun c!367907 () Bool)

(assert (=> d!685860 (= c!367907 ((_ is Nil!27656) (list!10991 arr!18)))))

(assert (=> d!685860 (= (size!21902 (list!10991 arr!18)) lt!860212)))

(declare-fun b!2319730 () Bool)

(assert (=> b!2319730 (= e!1486905 0)))

(declare-fun b!2319731 () Bool)

(assert (=> b!2319731 (= e!1486905 (+ 1 (size!21902 (t!207394 (list!10991 arr!18)))))))

(assert (= (and d!685860 c!367907) b!2319730))

(assert (= (and d!685860 (not c!367907)) b!2319731))

(declare-fun m!2748339 () Bool)

(assert (=> b!2319731 m!2748339))

(assert (=> d!685812 d!685860))

(declare-fun d!685864 () Bool)

(assert (=> d!685864 (= (list!10991 arr!18) (innerList!9121 arr!18))))

(assert (=> d!685812 d!685864))

(declare-fun d!685868 () Bool)

(declare-fun _$1!10189 () Int)

(assert (=> d!685868 (= _$1!10189 (size!21902 (list!10991 arr!18)))))

(assert (=> d!685868 true))

(assert (=> d!685868 (= (choose!13586 arr!18) _$1!10189)))

(declare-fun bs!458963 () Bool)

(assert (= bs!458963 d!685868))

(assert (=> bs!458963 m!2748209))

(assert (=> bs!458963 m!2748209))

(assert (=> bs!458963 m!2748211))

(assert (=> d!685812 d!685868))

(declare-fun d!685870 () Bool)

(declare-fun res!991012 () Bool)

(declare-fun e!1486908 () Bool)

(assert (=> d!685870 (=> (not res!991012) (not e!1486908))))

(assert (=> d!685870 (= res!991012 (<= (size!21902 (list!10991 (xs!12021 (left!20988 acc!252)))) 512))))

(assert (=> d!685870 (= (inv!37582 (left!20988 acc!252)) e!1486908)))

(declare-fun b!2319735 () Bool)

(declare-fun res!991013 () Bool)

(assert (=> b!2319735 (=> (not res!991013) (not e!1486908))))

(assert (=> b!2319735 (= res!991013 (= (csize!18353 (left!20988 acc!252)) (size!21902 (list!10991 (xs!12021 (left!20988 acc!252))))))))

(declare-fun b!2319736 () Bool)

(assert (=> b!2319736 (= e!1486908 (and (> (csize!18353 (left!20988 acc!252)) 0) (<= (csize!18353 (left!20988 acc!252)) 512)))))

(assert (= (and d!685870 res!991012) b!2319735))

(assert (= (and b!2319735 res!991013) b!2319736))

(declare-fun m!2748345 () Bool)

(assert (=> d!685870 m!2748345))

(assert (=> d!685870 m!2748345))

(declare-fun m!2748347 () Bool)

(assert (=> d!685870 m!2748347))

(assert (=> b!2319735 m!2748345))

(assert (=> b!2319735 m!2748345))

(assert (=> b!2319735 m!2748347))

(assert (=> b!2319619 d!685870))

(assert (=> b!2319585 d!685852))

(assert (=> b!2319585 d!685858))

(declare-fun e!1486912 () Bool)

(declare-fun tp!736204 () Bool)

(declare-fun b!2319741 () Bool)

(declare-fun tp!736205 () Bool)

(assert (=> b!2319741 (= e!1486912 (and (inv!37578 (left!20988 (left!20988 (right!21318 acc!252)))) tp!736204 (inv!37578 (right!21318 (left!20988 (right!21318 acc!252)))) tp!736205))))

(declare-fun b!2319743 () Bool)

(declare-fun e!1486911 () Bool)

(declare-fun tp!736206 () Bool)

(assert (=> b!2319743 (= e!1486911 tp!736206)))

(declare-fun b!2319742 () Bool)

(assert (=> b!2319742 (= e!1486912 (and (inv!37577 (xs!12021 (left!20988 (right!21318 acc!252)))) e!1486911))))

(assert (=> b!2319662 (= tp!736200 (and (inv!37578 (left!20988 (right!21318 acc!252))) e!1486912))))

(assert (= (and b!2319662 ((_ is Node!9061) (left!20988 (right!21318 acc!252)))) b!2319741))

(assert (= b!2319742 b!2319743))

(assert (= (and b!2319662 ((_ is Leaf!13301) (left!20988 (right!21318 acc!252)))) b!2319742))

(declare-fun m!2748349 () Bool)

(assert (=> b!2319741 m!2748349))

(declare-fun m!2748351 () Bool)

(assert (=> b!2319741 m!2748351))

(declare-fun m!2748353 () Bool)

(assert (=> b!2319742 m!2748353))

(assert (=> b!2319662 m!2748233))

(declare-fun tp!736207 () Bool)

(declare-fun e!1486914 () Bool)

(declare-fun tp!736208 () Bool)

(declare-fun b!2319744 () Bool)

(assert (=> b!2319744 (= e!1486914 (and (inv!37578 (left!20988 (right!21318 (right!21318 acc!252)))) tp!736207 (inv!37578 (right!21318 (right!21318 (right!21318 acc!252)))) tp!736208))))

(declare-fun b!2319746 () Bool)

(declare-fun e!1486913 () Bool)

(declare-fun tp!736209 () Bool)

(assert (=> b!2319746 (= e!1486913 tp!736209)))

(declare-fun b!2319745 () Bool)

(assert (=> b!2319745 (= e!1486914 (and (inv!37577 (xs!12021 (right!21318 (right!21318 acc!252)))) e!1486913))))

(assert (=> b!2319662 (= tp!736201 (and (inv!37578 (right!21318 (right!21318 acc!252))) e!1486914))))

(assert (= (and b!2319662 ((_ is Node!9061) (right!21318 (right!21318 acc!252)))) b!2319744))

(assert (= b!2319745 b!2319746))

(assert (= (and b!2319662 ((_ is Leaf!13301) (right!21318 (right!21318 acc!252)))) b!2319745))

(declare-fun m!2748355 () Bool)

(assert (=> b!2319744 m!2748355))

(declare-fun m!2748357 () Bool)

(assert (=> b!2319744 m!2748357))

(declare-fun m!2748359 () Bool)

(assert (=> b!2319745 m!2748359))

(assert (=> b!2319662 m!2748235))

(declare-fun b!2319747 () Bool)

(declare-fun e!1486915 () Bool)

(declare-fun tp!736210 () Bool)

(assert (=> b!2319747 (= e!1486915 (and tp_is_empty!10809 tp!736210))))

(assert (=> b!2319661 (= tp!736199 e!1486915)))

(assert (= (and b!2319661 ((_ is Cons!27656) (innerList!9121 (xs!12021 (left!20988 acc!252))))) b!2319747))

(declare-fun tp!736212 () Bool)

(declare-fun b!2319750 () Bool)

(declare-fun e!1486918 () Bool)

(declare-fun tp!736211 () Bool)

(assert (=> b!2319750 (= e!1486918 (and (inv!37578 (left!20988 (left!20988 (left!20988 acc!252)))) tp!736211 (inv!37578 (right!21318 (left!20988 (left!20988 acc!252)))) tp!736212))))

(declare-fun b!2319752 () Bool)

(declare-fun e!1486917 () Bool)

(declare-fun tp!736213 () Bool)

(assert (=> b!2319752 (= e!1486917 tp!736213)))

(declare-fun b!2319751 () Bool)

(assert (=> b!2319751 (= e!1486918 (and (inv!37577 (xs!12021 (left!20988 (left!20988 acc!252)))) e!1486917))))

(assert (=> b!2319659 (= tp!736197 (and (inv!37578 (left!20988 (left!20988 acc!252))) e!1486918))))

(assert (= (and b!2319659 ((_ is Node!9061) (left!20988 (left!20988 acc!252)))) b!2319750))

(assert (= b!2319751 b!2319752))

(assert (= (and b!2319659 ((_ is Leaf!13301) (left!20988 (left!20988 acc!252)))) b!2319751))

(declare-fun m!2748363 () Bool)

(assert (=> b!2319750 m!2748363))

(declare-fun m!2748365 () Bool)

(assert (=> b!2319750 m!2748365))

(declare-fun m!2748367 () Bool)

(assert (=> b!2319751 m!2748367))

(assert (=> b!2319659 m!2748227))

(declare-fun tp!736215 () Bool)

(declare-fun b!2319753 () Bool)

(declare-fun e!1486920 () Bool)

(declare-fun tp!736214 () Bool)

(assert (=> b!2319753 (= e!1486920 (and (inv!37578 (left!20988 (right!21318 (left!20988 acc!252)))) tp!736214 (inv!37578 (right!21318 (right!21318 (left!20988 acc!252)))) tp!736215))))

(declare-fun b!2319755 () Bool)

(declare-fun e!1486919 () Bool)

(declare-fun tp!736216 () Bool)

(assert (=> b!2319755 (= e!1486919 tp!736216)))

(declare-fun b!2319754 () Bool)

(assert (=> b!2319754 (= e!1486920 (and (inv!37577 (xs!12021 (right!21318 (left!20988 acc!252)))) e!1486919))))

(assert (=> b!2319659 (= tp!736198 (and (inv!37578 (right!21318 (left!20988 acc!252))) e!1486920))))

(assert (= (and b!2319659 ((_ is Node!9061) (right!21318 (left!20988 acc!252)))) b!2319753))

(assert (= b!2319754 b!2319755))

(assert (= (and b!2319659 ((_ is Leaf!13301) (right!21318 (left!20988 acc!252)))) b!2319754))

(declare-fun m!2748369 () Bool)

(assert (=> b!2319753 m!2748369))

(declare-fun m!2748371 () Bool)

(assert (=> b!2319753 m!2748371))

(declare-fun m!2748373 () Bool)

(assert (=> b!2319754 m!2748373))

(assert (=> b!2319659 m!2748229))

(declare-fun b!2319756 () Bool)

(declare-fun e!1486921 () Bool)

(declare-fun tp!736217 () Bool)

(assert (=> b!2319756 (= e!1486921 (and tp_is_empty!10809 tp!736217))))

(assert (=> b!2319664 (= tp!736202 e!1486921)))

(assert (= (and b!2319664 ((_ is Cons!27656) (innerList!9121 (xs!12021 (right!21318 acc!252))))) b!2319756))

(declare-fun b!2319757 () Bool)

(declare-fun e!1486922 () Bool)

(declare-fun tp!736218 () Bool)

(assert (=> b!2319757 (= e!1486922 (and tp_is_empty!10809 tp!736218))))

(assert (=> b!2319665 (= tp!736203 e!1486922)))

(assert (= (and b!2319665 ((_ is Cons!27656) (t!207394 (innerList!9121 (xs!12021 acc!252))))) b!2319757))

(declare-fun b!2319758 () Bool)

(declare-fun e!1486923 () Bool)

(declare-fun tp!736219 () Bool)

(assert (=> b!2319758 (= e!1486923 (and tp_is_empty!10809 tp!736219))))

(assert (=> b!2319643 (= tp!736183 e!1486923)))

(assert (= (and b!2319643 ((_ is Cons!27656) (t!207394 (innerList!9121 arr!18)))) b!2319758))

(check-sat (not d!685830) (not b!2319746) (not b!2319718) (not b!2319662) (not b!2319741) (not b!2319753) (not b!2319681) (not b!2319679) (not b!2319720) (not b!2319745) (not d!685870) (not b!2319742) (not b!2319750) (not b!2319710) (not d!685834) (not b!2319735) (not b!2319754) (not d!685832) (not b!2319752) (not d!685816) (not b!2319666) (not b!2319758) (not b!2319682) (not b!2319755) (not d!685844) (not d!685840) (not b!2319757) (not b!2319703) (not b!2319744) (not b!2319743) (not d!685822) (not b!2319715) (not b!2319747) (not b!2319680) (not b!2319706) (not b!2319705) (not b!2319669) (not b!2319697) (not b!2319709) (not b!2319751) (not b!2319700) (not d!685868) (not d!685842) (not b!2319731) (not b!2319688) (not b!2319683) (not b!2319671) (not b!2319704) (not b!2319668) (not b!2319717) (not b!2319707) tp_is_empty!10809 (not b!2319677) (not b!2319678) (not b!2319659) (not d!685828) (not b!2319702) (not b!2319713) (not b!2319756))
(check-sat)
