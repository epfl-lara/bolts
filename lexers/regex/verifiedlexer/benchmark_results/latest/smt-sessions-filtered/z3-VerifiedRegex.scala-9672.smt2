; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507258 () Bool)

(assert start!507258)

(declare-fun b!4855930 () Bool)

(declare-fun e!3035976 () Bool)

(declare-datatypes ((T!98546 0))(
  ( (T!98547 (val!22392 Int)) )
))
(declare-datatypes ((List!55860 0))(
  ( (Nil!55736) (Cons!55736 (h!62184 T!98546) (t!363400 List!55860)) )
))
(declare-datatypes ((IArray!29093 0))(
  ( (IArray!29094 (innerList!14604 List!55860)) )
))
(declare-datatypes ((Conc!14516 0))(
  ( (Node!14516 (left!40494 Conc!14516) (right!40824 Conc!14516) (csize!29262 Int) (cheight!14727 Int)) (Leaf!24189 (xs!17822 IArray!29093) (csize!29263 Int)) (Empty!14516) )
))
(declare-fun t!4677 () Conc!14516)

(declare-fun e!3035974 () Bool)

(declare-fun inv!71512 (IArray!29093) Bool)

(assert (=> b!4855930 (= e!3035976 (and (inv!71512 (xs!17822 t!4677)) e!3035974))))

(declare-fun b!4855931 () Bool)

(declare-fun tp!1366227 () Bool)

(declare-fun tp!1366229 () Bool)

(declare-fun inv!71513 (Conc!14516) Bool)

(assert (=> b!4855931 (= e!3035976 (and (inv!71513 (left!40494 t!4677)) tp!1366227 (inv!71513 (right!40824 t!4677)) tp!1366229))))

(declare-fun b!4855932 () Bool)

(declare-fun res!2072967 () Bool)

(declare-fun e!3035975 () Bool)

(assert (=> b!4855932 (=> (not res!2072967) (not e!3035975))))

(declare-fun isEmpty!29806 (Conc!14516) Bool)

(assert (=> b!4855932 (= res!2072967 (not (isEmpty!29806 t!4677)))))

(declare-fun b!4855933 () Bool)

(declare-fun res!2072965 () Bool)

(assert (=> b!4855933 (=> (not res!2072965) (not e!3035975))))

(get-info :version)

(assert (=> b!4855933 (= res!2072965 ((_ is Leaf!24189) t!4677))))

(declare-fun res!2072966 () Bool)

(assert (=> start!507258 (=> (not res!2072966) (not e!3035975))))

(declare-fun isBalanced!3922 (Conc!14516) Bool)

(assert (=> start!507258 (= res!2072966 (isBalanced!3922 t!4677))))

(assert (=> start!507258 e!3035975))

(assert (=> start!507258 (and (inv!71513 t!4677) e!3035976)))

(declare-fun b!4855934 () Bool)

(declare-fun tp!1366228 () Bool)

(assert (=> b!4855934 (= e!3035974 tp!1366228)))

(declare-fun b!4855935 () Bool)

(declare-fun isEmpty!29807 (List!55860) Bool)

(declare-fun list!17394 (Conc!14516) List!55860)

(assert (=> b!4855935 (= e!3035975 (isEmpty!29807 (list!17394 t!4677)))))

(declare-fun lt!1991363 () T!98546)

(declare-fun last!384 (IArray!29093) T!98546)

(assert (=> b!4855935 (= lt!1991363 (last!384 (xs!17822 t!4677)))))

(assert (= (and start!507258 res!2072966) b!4855932))

(assert (= (and b!4855932 res!2072967) b!4855933))

(assert (= (and b!4855933 res!2072965) b!4855935))

(assert (= (and start!507258 ((_ is Node!14516) t!4677)) b!4855931))

(assert (= b!4855930 b!4855934))

(assert (= (and start!507258 ((_ is Leaf!24189) t!4677)) b!4855930))

(declare-fun m!5853732 () Bool)

(assert (=> b!4855935 m!5853732))

(assert (=> b!4855935 m!5853732))

(declare-fun m!5853734 () Bool)

(assert (=> b!4855935 m!5853734))

(declare-fun m!5853736 () Bool)

(assert (=> b!4855935 m!5853736))

(declare-fun m!5853738 () Bool)

(assert (=> b!4855930 m!5853738))

(declare-fun m!5853740 () Bool)

(assert (=> b!4855932 m!5853740))

(declare-fun m!5853742 () Bool)

(assert (=> b!4855931 m!5853742))

(declare-fun m!5853744 () Bool)

(assert (=> b!4855931 m!5853744))

(declare-fun m!5853746 () Bool)

(assert (=> start!507258 m!5853746))

(declare-fun m!5853748 () Bool)

(assert (=> start!507258 m!5853748))

(check-sat (not start!507258) (not b!4855931) (not b!4855934) (not b!4855930) (not b!4855932) (not b!4855935))
(check-sat)
(get-model)

(declare-fun d!1558689 () Bool)

(declare-fun size!36700 (List!55860) Int)

(assert (=> d!1558689 (= (inv!71512 (xs!17822 t!4677)) (<= (size!36700 (innerList!14604 (xs!17822 t!4677))) 2147483647))))

(declare-fun bs!1173732 () Bool)

(assert (= bs!1173732 d!1558689))

(declare-fun m!5853750 () Bool)

(assert (=> bs!1173732 m!5853750))

(assert (=> b!4855930 d!1558689))

(declare-fun d!1558691 () Bool)

(declare-fun c!826074 () Bool)

(assert (=> d!1558691 (= c!826074 ((_ is Node!14516) (left!40494 t!4677)))))

(declare-fun e!3035987 () Bool)

(assert (=> d!1558691 (= (inv!71513 (left!40494 t!4677)) e!3035987)))

(declare-fun b!4855954 () Bool)

(declare-fun inv!71514 (Conc!14516) Bool)

(assert (=> b!4855954 (= e!3035987 (inv!71514 (left!40494 t!4677)))))

(declare-fun b!4855955 () Bool)

(declare-fun e!3035988 () Bool)

(assert (=> b!4855955 (= e!3035987 e!3035988)))

(declare-fun res!2072970 () Bool)

(assert (=> b!4855955 (= res!2072970 (not ((_ is Leaf!24189) (left!40494 t!4677))))))

(assert (=> b!4855955 (=> res!2072970 e!3035988)))

(declare-fun b!4855956 () Bool)

(declare-fun inv!71515 (Conc!14516) Bool)

(assert (=> b!4855956 (= e!3035988 (inv!71515 (left!40494 t!4677)))))

(assert (= (and d!1558691 c!826074) b!4855954))

(assert (= (and d!1558691 (not c!826074)) b!4855955))

(assert (= (and b!4855955 (not res!2072970)) b!4855956))

(declare-fun m!5853760 () Bool)

(assert (=> b!4855954 m!5853760))

(declare-fun m!5853762 () Bool)

(assert (=> b!4855956 m!5853762))

(assert (=> b!4855931 d!1558691))

(declare-fun d!1558695 () Bool)

(declare-fun c!826075 () Bool)

(assert (=> d!1558695 (= c!826075 ((_ is Node!14516) (right!40824 t!4677)))))

(declare-fun e!3035989 () Bool)

(assert (=> d!1558695 (= (inv!71513 (right!40824 t!4677)) e!3035989)))

(declare-fun b!4855957 () Bool)

(assert (=> b!4855957 (= e!3035989 (inv!71514 (right!40824 t!4677)))))

(declare-fun b!4855958 () Bool)

(declare-fun e!3035990 () Bool)

(assert (=> b!4855958 (= e!3035989 e!3035990)))

(declare-fun res!2072971 () Bool)

(assert (=> b!4855958 (= res!2072971 (not ((_ is Leaf!24189) (right!40824 t!4677))))))

(assert (=> b!4855958 (=> res!2072971 e!3035990)))

(declare-fun b!4855959 () Bool)

(assert (=> b!4855959 (= e!3035990 (inv!71515 (right!40824 t!4677)))))

(assert (= (and d!1558695 c!826075) b!4855957))

(assert (= (and d!1558695 (not c!826075)) b!4855958))

(assert (= (and b!4855958 (not res!2072971)) b!4855959))

(declare-fun m!5853764 () Bool)

(assert (=> b!4855957 m!5853764))

(declare-fun m!5853766 () Bool)

(assert (=> b!4855959 m!5853766))

(assert (=> b!4855931 d!1558695))

(declare-fun d!1558697 () Bool)

(declare-fun lt!1991369 () Bool)

(assert (=> d!1558697 (= lt!1991369 (isEmpty!29807 (list!17394 t!4677)))))

(declare-fun size!36704 (Conc!14516) Int)

(assert (=> d!1558697 (= lt!1991369 (= (size!36704 t!4677) 0))))

(assert (=> d!1558697 (= (isEmpty!29806 t!4677) lt!1991369)))

(declare-fun bs!1173735 () Bool)

(assert (= bs!1173735 d!1558697))

(assert (=> bs!1173735 m!5853732))

(assert (=> bs!1173735 m!5853732))

(assert (=> bs!1173735 m!5853734))

(declare-fun m!5853776 () Bool)

(assert (=> bs!1173735 m!5853776))

(assert (=> b!4855932 d!1558697))

(declare-fun b!4855984 () Bool)

(declare-fun res!2072993 () Bool)

(declare-fun e!3036004 () Bool)

(assert (=> b!4855984 (=> (not res!2072993) (not e!3036004))))

(assert (=> b!4855984 (= res!2072993 (not (isEmpty!29806 (left!40494 t!4677))))))

(declare-fun d!1558703 () Bool)

(declare-fun res!2072991 () Bool)

(declare-fun e!3036003 () Bool)

(assert (=> d!1558703 (=> res!2072991 e!3036003)))

(assert (=> d!1558703 (= res!2072991 (not ((_ is Node!14516) t!4677)))))

(assert (=> d!1558703 (= (isBalanced!3922 t!4677) e!3036003)))

(declare-fun b!4855985 () Bool)

(declare-fun res!2072988 () Bool)

(assert (=> b!4855985 (=> (not res!2072988) (not e!3036004))))

(assert (=> b!4855985 (= res!2072988 (isBalanced!3922 (right!40824 t!4677)))))

(declare-fun b!4855986 () Bool)

(assert (=> b!4855986 (= e!3036004 (not (isEmpty!29806 (right!40824 t!4677))))))

(declare-fun b!4855987 () Bool)

(declare-fun res!2072992 () Bool)

(assert (=> b!4855987 (=> (not res!2072992) (not e!3036004))))

(assert (=> b!4855987 (= res!2072992 (isBalanced!3922 (left!40494 t!4677)))))

(declare-fun b!4855988 () Bool)

(declare-fun res!2072989 () Bool)

(assert (=> b!4855988 (=> (not res!2072989) (not e!3036004))))

(declare-fun height!1896 (Conc!14516) Int)

(assert (=> b!4855988 (= res!2072989 (<= (- (height!1896 (left!40494 t!4677)) (height!1896 (right!40824 t!4677))) 1))))

(declare-fun b!4855989 () Bool)

(assert (=> b!4855989 (= e!3036003 e!3036004)))

(declare-fun res!2072990 () Bool)

(assert (=> b!4855989 (=> (not res!2072990) (not e!3036004))))

(assert (=> b!4855989 (= res!2072990 (<= (- 1) (- (height!1896 (left!40494 t!4677)) (height!1896 (right!40824 t!4677)))))))

(assert (= (and d!1558703 (not res!2072991)) b!4855989))

(assert (= (and b!4855989 res!2072990) b!4855988))

(assert (= (and b!4855988 res!2072989) b!4855987))

(assert (= (and b!4855987 res!2072992) b!4855985))

(assert (= (and b!4855985 res!2072988) b!4855984))

(assert (= (and b!4855984 res!2072993) b!4855986))

(declare-fun m!5853788 () Bool)

(assert (=> b!4855989 m!5853788))

(declare-fun m!5853790 () Bool)

(assert (=> b!4855989 m!5853790))

(declare-fun m!5853792 () Bool)

(assert (=> b!4855987 m!5853792))

(declare-fun m!5853794 () Bool)

(assert (=> b!4855984 m!5853794))

(assert (=> b!4855988 m!5853788))

(assert (=> b!4855988 m!5853790))

(declare-fun m!5853796 () Bool)

(assert (=> b!4855986 m!5853796))

(declare-fun m!5853798 () Bool)

(assert (=> b!4855985 m!5853798))

(assert (=> start!507258 d!1558703))

(declare-fun d!1558711 () Bool)

(declare-fun c!826080 () Bool)

(assert (=> d!1558711 (= c!826080 ((_ is Node!14516) t!4677))))

(declare-fun e!3036005 () Bool)

(assert (=> d!1558711 (= (inv!71513 t!4677) e!3036005)))

(declare-fun b!4855990 () Bool)

(assert (=> b!4855990 (= e!3036005 (inv!71514 t!4677))))

(declare-fun b!4855991 () Bool)

(declare-fun e!3036006 () Bool)

(assert (=> b!4855991 (= e!3036005 e!3036006)))

(declare-fun res!2072994 () Bool)

(assert (=> b!4855991 (= res!2072994 (not ((_ is Leaf!24189) t!4677)))))

(assert (=> b!4855991 (=> res!2072994 e!3036006)))

(declare-fun b!4855992 () Bool)

(assert (=> b!4855992 (= e!3036006 (inv!71515 t!4677))))

(assert (= (and d!1558711 c!826080) b!4855990))

(assert (= (and d!1558711 (not c!826080)) b!4855991))

(assert (= (and b!4855991 (not res!2072994)) b!4855992))

(declare-fun m!5853800 () Bool)

(assert (=> b!4855990 m!5853800))

(declare-fun m!5853802 () Bool)

(assert (=> b!4855992 m!5853802))

(assert (=> start!507258 d!1558711))

(declare-fun d!1558713 () Bool)

(assert (=> d!1558713 (= (isEmpty!29807 (list!17394 t!4677)) ((_ is Nil!55736) (list!17394 t!4677)))))

(assert (=> b!4855935 d!1558713))

(declare-fun b!4856015 () Bool)

(declare-fun e!3036017 () List!55860)

(declare-fun e!3036018 () List!55860)

(assert (=> b!4856015 (= e!3036017 e!3036018)))

(declare-fun c!826086 () Bool)

(assert (=> b!4856015 (= c!826086 ((_ is Leaf!24189) t!4677))))

(declare-fun b!4856017 () Bool)

(declare-fun list!17396 (IArray!29093) List!55860)

(assert (=> b!4856017 (= e!3036018 (list!17396 (xs!17822 t!4677)))))

(declare-fun d!1558715 () Bool)

(declare-fun c!826085 () Bool)

(assert (=> d!1558715 (= c!826085 ((_ is Empty!14516) t!4677))))

(assert (=> d!1558715 (= (list!17394 t!4677) e!3036017)))

(declare-fun b!4856013 () Bool)

(assert (=> b!4856013 (= e!3036017 Nil!55736)))

(declare-fun b!4856019 () Bool)

(declare-fun ++!12121 (List!55860 List!55860) List!55860)

(assert (=> b!4856019 (= e!3036018 (++!12121 (list!17394 (left!40494 t!4677)) (list!17394 (right!40824 t!4677))))))

(assert (= (and d!1558715 c!826085) b!4856013))

(assert (= (and d!1558715 (not c!826085)) b!4856015))

(assert (= (and b!4856015 c!826086) b!4856017))

(assert (= (and b!4856015 (not c!826086)) b!4856019))

(declare-fun m!5853804 () Bool)

(assert (=> b!4856017 m!5853804))

(declare-fun m!5853806 () Bool)

(assert (=> b!4856019 m!5853806))

(declare-fun m!5853808 () Bool)

(assert (=> b!4856019 m!5853808))

(assert (=> b!4856019 m!5853806))

(assert (=> b!4856019 m!5853808))

(declare-fun m!5853810 () Bool)

(assert (=> b!4856019 m!5853810))

(assert (=> b!4855935 d!1558715))

(declare-fun d!1558717 () Bool)

(declare-fun lt!1991375 () T!98546)

(declare-fun last!386 (List!55860) T!98546)

(assert (=> d!1558717 (= lt!1991375 (last!386 (list!17396 (xs!17822 t!4677))))))

(declare-fun choose!35552 (IArray!29093) T!98546)

(assert (=> d!1558717 (= lt!1991375 (choose!35552 (xs!17822 t!4677)))))

(declare-fun size!36705 (IArray!29093) Int)

(assert (=> d!1558717 (> (size!36705 (xs!17822 t!4677)) 0)))

(assert (=> d!1558717 (= (last!384 (xs!17822 t!4677)) lt!1991375)))

(declare-fun bs!1173737 () Bool)

(assert (= bs!1173737 d!1558717))

(assert (=> bs!1173737 m!5853804))

(assert (=> bs!1173737 m!5853804))

(declare-fun m!5853840 () Bool)

(assert (=> bs!1173737 m!5853840))

(declare-fun m!5853842 () Bool)

(assert (=> bs!1173737 m!5853842))

(declare-fun m!5853844 () Bool)

(assert (=> bs!1173737 m!5853844))

(assert (=> b!4855935 d!1558717))

(declare-fun tp!1366252 () Bool)

(declare-fun tp!1366251 () Bool)

(declare-fun e!3036036 () Bool)

(declare-fun b!4856053 () Bool)

(assert (=> b!4856053 (= e!3036036 (and (inv!71513 (left!40494 (left!40494 t!4677))) tp!1366251 (inv!71513 (right!40824 (left!40494 t!4677))) tp!1366252))))

(declare-fun b!4856055 () Bool)

(declare-fun e!3036037 () Bool)

(declare-fun tp!1366253 () Bool)

(assert (=> b!4856055 (= e!3036037 tp!1366253)))

(declare-fun b!4856054 () Bool)

(assert (=> b!4856054 (= e!3036036 (and (inv!71512 (xs!17822 (left!40494 t!4677))) e!3036037))))

(assert (=> b!4855931 (= tp!1366227 (and (inv!71513 (left!40494 t!4677)) e!3036036))))

(assert (= (and b!4855931 ((_ is Node!14516) (left!40494 t!4677))) b!4856053))

(assert (= b!4856054 b!4856055))

(assert (= (and b!4855931 ((_ is Leaf!24189) (left!40494 t!4677))) b!4856054))

(declare-fun m!5853846 () Bool)

(assert (=> b!4856053 m!5853846))

(declare-fun m!5853848 () Bool)

(assert (=> b!4856053 m!5853848))

(declare-fun m!5853850 () Bool)

(assert (=> b!4856054 m!5853850))

(assert (=> b!4855931 m!5853742))

(declare-fun b!4856056 () Bool)

(declare-fun tp!1366255 () Bool)

(declare-fun e!3036038 () Bool)

(declare-fun tp!1366254 () Bool)

(assert (=> b!4856056 (= e!3036038 (and (inv!71513 (left!40494 (right!40824 t!4677))) tp!1366254 (inv!71513 (right!40824 (right!40824 t!4677))) tp!1366255))))

(declare-fun b!4856058 () Bool)

(declare-fun e!3036039 () Bool)

(declare-fun tp!1366256 () Bool)

(assert (=> b!4856058 (= e!3036039 tp!1366256)))

(declare-fun b!4856057 () Bool)

(assert (=> b!4856057 (= e!3036038 (and (inv!71512 (xs!17822 (right!40824 t!4677))) e!3036039))))

(assert (=> b!4855931 (= tp!1366229 (and (inv!71513 (right!40824 t!4677)) e!3036038))))

(assert (= (and b!4855931 ((_ is Node!14516) (right!40824 t!4677))) b!4856056))

(assert (= b!4856057 b!4856058))

(assert (= (and b!4855931 ((_ is Leaf!24189) (right!40824 t!4677))) b!4856057))

(declare-fun m!5853852 () Bool)

(assert (=> b!4856056 m!5853852))

(declare-fun m!5853854 () Bool)

(assert (=> b!4856056 m!5853854))

(declare-fun m!5853856 () Bool)

(assert (=> b!4856057 m!5853856))

(assert (=> b!4855931 m!5853744))

(declare-fun b!4856063 () Bool)

(declare-fun e!3036042 () Bool)

(declare-fun tp_is_empty!35495 () Bool)

(declare-fun tp!1366259 () Bool)

(assert (=> b!4856063 (= e!3036042 (and tp_is_empty!35495 tp!1366259))))

(assert (=> b!4855934 (= tp!1366228 e!3036042)))

(assert (= (and b!4855934 ((_ is Cons!55736) (innerList!14604 (xs!17822 t!4677)))) b!4856063))

(check-sat (not d!1558697) (not b!4855931) (not b!4855957) (not b!4856057) (not b!4856054) (not b!4855987) (not b!4855984) (not b!4855959) (not b!4855990) (not b!4855985) (not b!4855992) tp_is_empty!35495 (not d!1558689) (not b!4855989) (not b!4856058) (not b!4856063) (not b!4855988) (not b!4855986) (not b!4856053) (not b!4856056) (not b!4855956) (not b!4856055) (not b!4856019) (not b!4856017) (not d!1558717) (not b!4855954))
(check-sat)
