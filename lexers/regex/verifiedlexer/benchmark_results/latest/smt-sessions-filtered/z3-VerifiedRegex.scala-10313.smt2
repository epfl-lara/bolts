; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536210 () Bool)

(assert start!536210)

(declare-fun b!5088919 () Bool)

(declare-fun tp!1418729 () Bool)

(declare-fun tp!1418727 () Bool)

(declare-fun e!3173805 () Bool)

(declare-datatypes ((T!105468 0))(
  ( (T!105469 (val!23702 Int)) )
))
(declare-datatypes ((List!58627 0))(
  ( (Nil!58503) (Cons!58503 (h!64951 T!105468) (t!371504 List!58627)) )
))
(declare-datatypes ((IArray!31297 0))(
  ( (IArray!31298 (innerList!15706 List!58627)) )
))
(declare-datatypes ((Conc!15618 0))(
  ( (Node!15618 (left!42899 Conc!15618) (right!43229 Conc!15618) (csize!31466 Int) (cheight!15829 Int)) (Leaf!25932 (xs!19000 IArray!31297) (csize!31467 Int)) (Empty!15618) )
))
(declare-fun t!3643 () Conc!15618)

(declare-fun inv!77844 (Conc!15618) Bool)

(assert (=> b!5088919 (= e!3173805 (and (inv!77844 (left!42899 t!3643)) tp!1418727 (inv!77844 (right!43229 t!3643)) tp!1418729))))

(declare-fun b!5088920 () Bool)

(declare-fun res!2166302 () Bool)

(declare-fun e!3173804 () Bool)

(assert (=> b!5088920 (=> (not res!2166302) (not e!3173804))))

(declare-fun i!607 () Int)

(declare-fun size!39180 (Conc!15618) Int)

(assert (=> b!5088920 (= res!2166302 (< i!607 (size!39180 t!3643)))))

(declare-fun b!5088921 () Bool)

(declare-fun e!3173806 () Bool)

(declare-fun tp!1418728 () Bool)

(assert (=> b!5088921 (= e!3173806 tp!1418728)))

(declare-fun res!2166300 () Bool)

(assert (=> start!536210 (=> (not res!2166300) (not e!3173804))))

(assert (=> start!536210 (= res!2166300 (<= 0 i!607))))

(assert (=> start!536210 e!3173804))

(assert (=> start!536210 true))

(assert (=> start!536210 (and (inv!77844 t!3643) e!3173805)))

(declare-fun b!5088922 () Bool)

(declare-fun inv!77845 (IArray!31297) Bool)

(assert (=> b!5088922 (= e!3173805 (and (inv!77845 (xs!19000 t!3643)) e!3173806))))

(declare-fun b!5088923 () Bool)

(declare-fun res!2166301 () Bool)

(assert (=> b!5088923 (=> (not res!2166301) (not e!3173804))))

(get-info :version)

(assert (=> b!5088923 (= res!2166301 (and (not ((_ is Leaf!25932) t!3643)) ((_ is Node!15618) t!3643)))))

(declare-fun b!5088924 () Bool)

(declare-fun size!39181 (List!58627) Int)

(declare-fun list!19070 (Conc!15618) List!58627)

(assert (=> b!5088924 (= e!3173804 (>= i!607 (+ (size!39181 (list!19070 (left!42899 t!3643))) (size!39181 (list!19070 (right!43229 t!3643))))))))

(assert (= (and start!536210 res!2166300) b!5088920))

(assert (= (and b!5088920 res!2166302) b!5088923))

(assert (= (and b!5088923 res!2166301) b!5088924))

(assert (= (and start!536210 ((_ is Node!15618) t!3643)) b!5088919))

(assert (= b!5088922 b!5088921))

(assert (= (and start!536210 ((_ is Leaf!25932) t!3643)) b!5088922))

(declare-fun m!6146796 () Bool)

(assert (=> b!5088919 m!6146796))

(declare-fun m!6146798 () Bool)

(assert (=> b!5088919 m!6146798))

(declare-fun m!6146800 () Bool)

(assert (=> b!5088922 m!6146800))

(declare-fun m!6146802 () Bool)

(assert (=> start!536210 m!6146802))

(declare-fun m!6146804 () Bool)

(assert (=> b!5088924 m!6146804))

(assert (=> b!5088924 m!6146804))

(declare-fun m!6146806 () Bool)

(assert (=> b!5088924 m!6146806))

(declare-fun m!6146808 () Bool)

(assert (=> b!5088924 m!6146808))

(assert (=> b!5088924 m!6146808))

(declare-fun m!6146810 () Bool)

(assert (=> b!5088924 m!6146810))

(declare-fun m!6146812 () Bool)

(assert (=> b!5088920 m!6146812))

(check-sat (not b!5088924) (not start!536210) (not b!5088922) (not b!5088919) (not b!5088921) (not b!5088920))
(check-sat)
(get-model)

(declare-fun d!1647174 () Bool)

(declare-fun lt!2092152 () Int)

(assert (=> d!1647174 (>= lt!2092152 0)))

(declare-fun e!3173809 () Int)

(assert (=> d!1647174 (= lt!2092152 e!3173809)))

(declare-fun c!874421 () Bool)

(assert (=> d!1647174 (= c!874421 ((_ is Nil!58503) (list!19070 (left!42899 t!3643))))))

(assert (=> d!1647174 (= (size!39181 (list!19070 (left!42899 t!3643))) lt!2092152)))

(declare-fun b!5088929 () Bool)

(assert (=> b!5088929 (= e!3173809 0)))

(declare-fun b!5088930 () Bool)

(assert (=> b!5088930 (= e!3173809 (+ 1 (size!39181 (t!371504 (list!19070 (left!42899 t!3643))))))))

(assert (= (and d!1647174 c!874421) b!5088929))

(assert (= (and d!1647174 (not c!874421)) b!5088930))

(declare-fun m!6146820 () Bool)

(assert (=> b!5088930 m!6146820))

(assert (=> b!5088924 d!1647174))

(declare-fun b!5088973 () Bool)

(declare-fun e!3173833 () List!58627)

(declare-fun e!3173834 () List!58627)

(assert (=> b!5088973 (= e!3173833 e!3173834)))

(declare-fun c!874441 () Bool)

(assert (=> b!5088973 (= c!874441 ((_ is Leaf!25932) (left!42899 t!3643)))))

(declare-fun b!5088974 () Bool)

(declare-fun list!19072 (IArray!31297) List!58627)

(assert (=> b!5088974 (= e!3173834 (list!19072 (xs!19000 (left!42899 t!3643))))))

(declare-fun b!5088972 () Bool)

(assert (=> b!5088972 (= e!3173833 Nil!58503)))

(declare-fun b!5088975 () Bool)

(declare-fun ++!12825 (List!58627 List!58627) List!58627)

(assert (=> b!5088975 (= e!3173834 (++!12825 (list!19070 (left!42899 (left!42899 t!3643))) (list!19070 (right!43229 (left!42899 t!3643)))))))

(declare-fun d!1647182 () Bool)

(declare-fun c!874440 () Bool)

(assert (=> d!1647182 (= c!874440 ((_ is Empty!15618) (left!42899 t!3643)))))

(assert (=> d!1647182 (= (list!19070 (left!42899 t!3643)) e!3173833)))

(assert (= (and d!1647182 c!874440) b!5088972))

(assert (= (and d!1647182 (not c!874440)) b!5088973))

(assert (= (and b!5088973 c!874441) b!5088974))

(assert (= (and b!5088973 (not c!874441)) b!5088975))

(declare-fun m!6146846 () Bool)

(assert (=> b!5088974 m!6146846))

(declare-fun m!6146848 () Bool)

(assert (=> b!5088975 m!6146848))

(declare-fun m!6146850 () Bool)

(assert (=> b!5088975 m!6146850))

(assert (=> b!5088975 m!6146848))

(assert (=> b!5088975 m!6146850))

(declare-fun m!6146858 () Bool)

(assert (=> b!5088975 m!6146858))

(assert (=> b!5088924 d!1647182))

(declare-fun d!1647196 () Bool)

(declare-fun lt!2092157 () Int)

(assert (=> d!1647196 (>= lt!2092157 0)))

(declare-fun e!3173840 () Int)

(assert (=> d!1647196 (= lt!2092157 e!3173840)))

(declare-fun c!874445 () Bool)

(assert (=> d!1647196 (= c!874445 ((_ is Nil!58503) (list!19070 (right!43229 t!3643))))))

(assert (=> d!1647196 (= (size!39181 (list!19070 (right!43229 t!3643))) lt!2092157)))

(declare-fun b!5088986 () Bool)

(assert (=> b!5088986 (= e!3173840 0)))

(declare-fun b!5088987 () Bool)

(assert (=> b!5088987 (= e!3173840 (+ 1 (size!39181 (t!371504 (list!19070 (right!43229 t!3643))))))))

(assert (= (and d!1647196 c!874445) b!5088986))

(assert (= (and d!1647196 (not c!874445)) b!5088987))

(declare-fun m!6146862 () Bool)

(assert (=> b!5088987 m!6146862))

(assert (=> b!5088924 d!1647196))

(declare-fun b!5088993 () Bool)

(declare-fun e!3173843 () List!58627)

(declare-fun e!3173844 () List!58627)

(assert (=> b!5088993 (= e!3173843 e!3173844)))

(declare-fun c!874447 () Bool)

(assert (=> b!5088993 (= c!874447 ((_ is Leaf!25932) (right!43229 t!3643)))))

(declare-fun b!5088994 () Bool)

(assert (=> b!5088994 (= e!3173844 (list!19072 (xs!19000 (right!43229 t!3643))))))

(declare-fun b!5088992 () Bool)

(assert (=> b!5088992 (= e!3173843 Nil!58503)))

(declare-fun b!5088995 () Bool)

(assert (=> b!5088995 (= e!3173844 (++!12825 (list!19070 (left!42899 (right!43229 t!3643))) (list!19070 (right!43229 (right!43229 t!3643)))))))

(declare-fun d!1647198 () Bool)

(declare-fun c!874446 () Bool)

(assert (=> d!1647198 (= c!874446 ((_ is Empty!15618) (right!43229 t!3643)))))

(assert (=> d!1647198 (= (list!19070 (right!43229 t!3643)) e!3173843)))

(assert (= (and d!1647198 c!874446) b!5088992))

(assert (= (and d!1647198 (not c!874446)) b!5088993))

(assert (= (and b!5088993 c!874447) b!5088994))

(assert (= (and b!5088993 (not c!874447)) b!5088995))

(declare-fun m!6146864 () Bool)

(assert (=> b!5088994 m!6146864))

(declare-fun m!6146866 () Bool)

(assert (=> b!5088995 m!6146866))

(declare-fun m!6146868 () Bool)

(assert (=> b!5088995 m!6146868))

(assert (=> b!5088995 m!6146866))

(assert (=> b!5088995 m!6146868))

(declare-fun m!6146870 () Bool)

(assert (=> b!5088995 m!6146870))

(assert (=> b!5088924 d!1647198))

(declare-fun d!1647200 () Bool)

(declare-fun c!874450 () Bool)

(assert (=> d!1647200 (= c!874450 ((_ is Node!15618) (left!42899 t!3643)))))

(declare-fun e!3173856 () Bool)

(assert (=> d!1647200 (= (inv!77844 (left!42899 t!3643)) e!3173856)))

(declare-fun b!5089013 () Bool)

(declare-fun inv!77848 (Conc!15618) Bool)

(assert (=> b!5089013 (= e!3173856 (inv!77848 (left!42899 t!3643)))))

(declare-fun b!5089014 () Bool)

(declare-fun e!3173857 () Bool)

(assert (=> b!5089014 (= e!3173856 e!3173857)))

(declare-fun res!2166310 () Bool)

(assert (=> b!5089014 (= res!2166310 (not ((_ is Leaf!25932) (left!42899 t!3643))))))

(assert (=> b!5089014 (=> res!2166310 e!3173857)))

(declare-fun b!5089015 () Bool)

(declare-fun inv!77849 (Conc!15618) Bool)

(assert (=> b!5089015 (= e!3173857 (inv!77849 (left!42899 t!3643)))))

(assert (= (and d!1647200 c!874450) b!5089013))

(assert (= (and d!1647200 (not c!874450)) b!5089014))

(assert (= (and b!5089014 (not res!2166310)) b!5089015))

(declare-fun m!6146884 () Bool)

(assert (=> b!5089013 m!6146884))

(declare-fun m!6146886 () Bool)

(assert (=> b!5089015 m!6146886))

(assert (=> b!5088919 d!1647200))

(declare-fun d!1647202 () Bool)

(declare-fun c!874451 () Bool)

(assert (=> d!1647202 (= c!874451 ((_ is Node!15618) (right!43229 t!3643)))))

(declare-fun e!3173858 () Bool)

(assert (=> d!1647202 (= (inv!77844 (right!43229 t!3643)) e!3173858)))

(declare-fun b!5089016 () Bool)

(assert (=> b!5089016 (= e!3173858 (inv!77848 (right!43229 t!3643)))))

(declare-fun b!5089017 () Bool)

(declare-fun e!3173859 () Bool)

(assert (=> b!5089017 (= e!3173858 e!3173859)))

(declare-fun res!2166311 () Bool)

(assert (=> b!5089017 (= res!2166311 (not ((_ is Leaf!25932) (right!43229 t!3643))))))

(assert (=> b!5089017 (=> res!2166311 e!3173859)))

(declare-fun b!5089018 () Bool)

(assert (=> b!5089018 (= e!3173859 (inv!77849 (right!43229 t!3643)))))

(assert (= (and d!1647202 c!874451) b!5089016))

(assert (= (and d!1647202 (not c!874451)) b!5089017))

(assert (= (and b!5089017 (not res!2166311)) b!5089018))

(declare-fun m!6146888 () Bool)

(assert (=> b!5089016 m!6146888))

(declare-fun m!6146890 () Bool)

(assert (=> b!5089018 m!6146890))

(assert (=> b!5088919 d!1647202))

(declare-fun d!1647204 () Bool)

(declare-fun lt!2092160 () Int)

(assert (=> d!1647204 (= lt!2092160 (size!39181 (list!19070 t!3643)))))

(assert (=> d!1647204 (= lt!2092160 (ite ((_ is Empty!15618) t!3643) 0 (ite ((_ is Leaf!25932) t!3643) (csize!31467 t!3643) (csize!31466 t!3643))))))

(assert (=> d!1647204 (= (size!39180 t!3643) lt!2092160)))

(declare-fun bs!1191072 () Bool)

(assert (= bs!1191072 d!1647204))

(declare-fun m!6146892 () Bool)

(assert (=> bs!1191072 m!6146892))

(assert (=> bs!1191072 m!6146892))

(declare-fun m!6146894 () Bool)

(assert (=> bs!1191072 m!6146894))

(assert (=> b!5088920 d!1647204))

(declare-fun d!1647206 () Bool)

(assert (=> d!1647206 (= (inv!77845 (xs!19000 t!3643)) (<= (size!39181 (innerList!15706 (xs!19000 t!3643))) 2147483647))))

(declare-fun bs!1191073 () Bool)

(assert (= bs!1191073 d!1647206))

(declare-fun m!6146896 () Bool)

(assert (=> bs!1191073 m!6146896))

(assert (=> b!5088922 d!1647206))

(declare-fun d!1647208 () Bool)

(declare-fun c!874452 () Bool)

(assert (=> d!1647208 (= c!874452 ((_ is Node!15618) t!3643))))

(declare-fun e!3173860 () Bool)

(assert (=> d!1647208 (= (inv!77844 t!3643) e!3173860)))

(declare-fun b!5089019 () Bool)

(assert (=> b!5089019 (= e!3173860 (inv!77848 t!3643))))

(declare-fun b!5089020 () Bool)

(declare-fun e!3173861 () Bool)

(assert (=> b!5089020 (= e!3173860 e!3173861)))

(declare-fun res!2166312 () Bool)

(assert (=> b!5089020 (= res!2166312 (not ((_ is Leaf!25932) t!3643)))))

(assert (=> b!5089020 (=> res!2166312 e!3173861)))

(declare-fun b!5089021 () Bool)

(assert (=> b!5089021 (= e!3173861 (inv!77849 t!3643))))

(assert (= (and d!1647208 c!874452) b!5089019))

(assert (= (and d!1647208 (not c!874452)) b!5089020))

(assert (= (and b!5089020 (not res!2166312)) b!5089021))

(declare-fun m!6146898 () Bool)

(assert (=> b!5089019 m!6146898))

(declare-fun m!6146900 () Bool)

(assert (=> b!5089021 m!6146900))

(assert (=> start!536210 d!1647208))

(declare-fun tp!1418752 () Bool)

(declare-fun b!5089030 () Bool)

(declare-fun tp!1418751 () Bool)

(declare-fun e!3173867 () Bool)

(assert (=> b!5089030 (= e!3173867 (and (inv!77844 (left!42899 (left!42899 t!3643))) tp!1418752 (inv!77844 (right!43229 (left!42899 t!3643))) tp!1418751))))

(declare-fun b!5089032 () Bool)

(declare-fun e!3173866 () Bool)

(declare-fun tp!1418753 () Bool)

(assert (=> b!5089032 (= e!3173866 tp!1418753)))

(declare-fun b!5089031 () Bool)

(assert (=> b!5089031 (= e!3173867 (and (inv!77845 (xs!19000 (left!42899 t!3643))) e!3173866))))

(assert (=> b!5088919 (= tp!1418727 (and (inv!77844 (left!42899 t!3643)) e!3173867))))

(assert (= (and b!5088919 ((_ is Node!15618) (left!42899 t!3643))) b!5089030))

(assert (= b!5089031 b!5089032))

(assert (= (and b!5088919 ((_ is Leaf!25932) (left!42899 t!3643))) b!5089031))

(declare-fun m!6146902 () Bool)

(assert (=> b!5089030 m!6146902))

(declare-fun m!6146904 () Bool)

(assert (=> b!5089030 m!6146904))

(declare-fun m!6146906 () Bool)

(assert (=> b!5089031 m!6146906))

(assert (=> b!5088919 m!6146796))

(declare-fun b!5089033 () Bool)

(declare-fun e!3173869 () Bool)

(declare-fun tp!1418754 () Bool)

(declare-fun tp!1418755 () Bool)

(assert (=> b!5089033 (= e!3173869 (and (inv!77844 (left!42899 (right!43229 t!3643))) tp!1418755 (inv!77844 (right!43229 (right!43229 t!3643))) tp!1418754))))

(declare-fun b!5089035 () Bool)

(declare-fun e!3173868 () Bool)

(declare-fun tp!1418756 () Bool)

(assert (=> b!5089035 (= e!3173868 tp!1418756)))

(declare-fun b!5089034 () Bool)

(assert (=> b!5089034 (= e!3173869 (and (inv!77845 (xs!19000 (right!43229 t!3643))) e!3173868))))

(assert (=> b!5088919 (= tp!1418729 (and (inv!77844 (right!43229 t!3643)) e!3173869))))

(assert (= (and b!5088919 ((_ is Node!15618) (right!43229 t!3643))) b!5089033))

(assert (= b!5089034 b!5089035))

(assert (= (and b!5088919 ((_ is Leaf!25932) (right!43229 t!3643))) b!5089034))

(declare-fun m!6146908 () Bool)

(assert (=> b!5089033 m!6146908))

(declare-fun m!6146910 () Bool)

(assert (=> b!5089033 m!6146910))

(declare-fun m!6146912 () Bool)

(assert (=> b!5089034 m!6146912))

(assert (=> b!5088919 m!6146798))

(declare-fun b!5089040 () Bool)

(declare-fun e!3173872 () Bool)

(declare-fun tp_is_empty!37119 () Bool)

(declare-fun tp!1418759 () Bool)

(assert (=> b!5089040 (= e!3173872 (and tp_is_empty!37119 tp!1418759))))

(assert (=> b!5088921 (= tp!1418728 e!3173872)))

(assert (= (and b!5088921 ((_ is Cons!58503) (innerList!15706 (xs!19000 t!3643)))) b!5089040))

(check-sat (not b!5089021) (not b!5088987) (not b!5089013) (not b!5089032) (not b!5088919) (not b!5089035) (not b!5088930) (not b!5089040) (not b!5089018) (not b!5089030) tp_is_empty!37119 (not b!5089016) (not b!5089034) (not d!1647206) (not b!5089015) (not b!5089031) (not d!1647204) (not b!5089033) (not b!5088975) (not b!5088974) (not b!5089019) (not b!5088995) (not b!5088994))
(check-sat)
(get-model)

(assert (=> b!5088919 d!1647200))

(assert (=> b!5088919 d!1647202))

(declare-fun d!1647210 () Bool)

(declare-fun res!2166317 () Bool)

(declare-fun e!3173875 () Bool)

(assert (=> d!1647210 (=> (not res!2166317) (not e!3173875))))

(assert (=> d!1647210 (= res!2166317 (<= (size!39181 (list!19072 (xs!19000 (right!43229 t!3643)))) 512))))

(assert (=> d!1647210 (= (inv!77849 (right!43229 t!3643)) e!3173875)))

(declare-fun b!5089045 () Bool)

(declare-fun res!2166318 () Bool)

(assert (=> b!5089045 (=> (not res!2166318) (not e!3173875))))

(assert (=> b!5089045 (= res!2166318 (= (csize!31467 (right!43229 t!3643)) (size!39181 (list!19072 (xs!19000 (right!43229 t!3643))))))))

(declare-fun b!5089046 () Bool)

(assert (=> b!5089046 (= e!3173875 (and (> (csize!31467 (right!43229 t!3643)) 0) (<= (csize!31467 (right!43229 t!3643)) 512)))))

(assert (= (and d!1647210 res!2166317) b!5089045))

(assert (= (and b!5089045 res!2166318) b!5089046))

(assert (=> d!1647210 m!6146864))

(assert (=> d!1647210 m!6146864))

(declare-fun m!6146914 () Bool)

(assert (=> d!1647210 m!6146914))

(assert (=> b!5089045 m!6146864))

(assert (=> b!5089045 m!6146864))

(assert (=> b!5089045 m!6146914))

(assert (=> b!5089018 d!1647210))

(declare-fun d!1647212 () Bool)

(declare-fun res!2166325 () Bool)

(declare-fun e!3173878 () Bool)

(assert (=> d!1647212 (=> (not res!2166325) (not e!3173878))))

(assert (=> d!1647212 (= res!2166325 (= (csize!31466 t!3643) (+ (size!39180 (left!42899 t!3643)) (size!39180 (right!43229 t!3643)))))))

(assert (=> d!1647212 (= (inv!77848 t!3643) e!3173878)))

(declare-fun b!5089053 () Bool)

(declare-fun res!2166326 () Bool)

(assert (=> b!5089053 (=> (not res!2166326) (not e!3173878))))

(assert (=> b!5089053 (= res!2166326 (and (not (= (left!42899 t!3643) Empty!15618)) (not (= (right!43229 t!3643) Empty!15618))))))

(declare-fun b!5089054 () Bool)

(declare-fun res!2166327 () Bool)

(assert (=> b!5089054 (=> (not res!2166327) (not e!3173878))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2170 (Conc!15618) Int)

(assert (=> b!5089054 (= res!2166327 (= (cheight!15829 t!3643) (+ (max!0 (height!2170 (left!42899 t!3643)) (height!2170 (right!43229 t!3643))) 1)))))

(declare-fun b!5089055 () Bool)

(assert (=> b!5089055 (= e!3173878 (<= 0 (cheight!15829 t!3643)))))

(assert (= (and d!1647212 res!2166325) b!5089053))

(assert (= (and b!5089053 res!2166326) b!5089054))

(assert (= (and b!5089054 res!2166327) b!5089055))

(declare-fun m!6146916 () Bool)

(assert (=> d!1647212 m!6146916))

(declare-fun m!6146918 () Bool)

(assert (=> d!1647212 m!6146918))

(declare-fun m!6146920 () Bool)

(assert (=> b!5089054 m!6146920))

(declare-fun m!6146922 () Bool)

(assert (=> b!5089054 m!6146922))

(assert (=> b!5089054 m!6146920))

(assert (=> b!5089054 m!6146922))

(declare-fun m!6146924 () Bool)

(assert (=> b!5089054 m!6146924))

(assert (=> b!5089019 d!1647212))

(declare-fun d!1647214 () Bool)

(assert (=> d!1647214 (= (list!19072 (xs!19000 (right!43229 t!3643))) (innerList!15706 (xs!19000 (right!43229 t!3643))))))

(assert (=> b!5088994 d!1647214))

(declare-fun d!1647216 () Bool)

(declare-fun lt!2092161 () Int)

(assert (=> d!1647216 (>= lt!2092161 0)))

(declare-fun e!3173879 () Int)

(assert (=> d!1647216 (= lt!2092161 e!3173879)))

(declare-fun c!874453 () Bool)

(assert (=> d!1647216 (= c!874453 ((_ is Nil!58503) (t!371504 (list!19070 (right!43229 t!3643)))))))

(assert (=> d!1647216 (= (size!39181 (t!371504 (list!19070 (right!43229 t!3643)))) lt!2092161)))

(declare-fun b!5089056 () Bool)

(assert (=> b!5089056 (= e!3173879 0)))

(declare-fun b!5089057 () Bool)

(assert (=> b!5089057 (= e!3173879 (+ 1 (size!39181 (t!371504 (t!371504 (list!19070 (right!43229 t!3643)))))))))

(assert (= (and d!1647216 c!874453) b!5089056))

(assert (= (and d!1647216 (not c!874453)) b!5089057))

(declare-fun m!6146926 () Bool)

(assert (=> b!5089057 m!6146926))

(assert (=> b!5088987 d!1647216))

(declare-fun d!1647218 () Bool)

(assert (=> d!1647218 (= (list!19072 (xs!19000 (left!42899 t!3643))) (innerList!15706 (xs!19000 (left!42899 t!3643))))))

(assert (=> b!5088974 d!1647218))

(declare-fun d!1647220 () Bool)

(declare-fun res!2166328 () Bool)

(declare-fun e!3173880 () Bool)

(assert (=> d!1647220 (=> (not res!2166328) (not e!3173880))))

(assert (=> d!1647220 (= res!2166328 (<= (size!39181 (list!19072 (xs!19000 t!3643))) 512))))

(assert (=> d!1647220 (= (inv!77849 t!3643) e!3173880)))

(declare-fun b!5089058 () Bool)

(declare-fun res!2166329 () Bool)

(assert (=> b!5089058 (=> (not res!2166329) (not e!3173880))))

(assert (=> b!5089058 (= res!2166329 (= (csize!31467 t!3643) (size!39181 (list!19072 (xs!19000 t!3643)))))))

(declare-fun b!5089059 () Bool)

(assert (=> b!5089059 (= e!3173880 (and (> (csize!31467 t!3643) 0) (<= (csize!31467 t!3643) 512)))))

(assert (= (and d!1647220 res!2166328) b!5089058))

(assert (= (and b!5089058 res!2166329) b!5089059))

(declare-fun m!6146928 () Bool)

(assert (=> d!1647220 m!6146928))

(assert (=> d!1647220 m!6146928))

(declare-fun m!6146930 () Bool)

(assert (=> d!1647220 m!6146930))

(assert (=> b!5089058 m!6146928))

(assert (=> b!5089058 m!6146928))

(assert (=> b!5089058 m!6146930))

(assert (=> b!5089021 d!1647220))

(declare-fun d!1647222 () Bool)

(declare-fun c!874454 () Bool)

(assert (=> d!1647222 (= c!874454 ((_ is Node!15618) (left!42899 (left!42899 t!3643))))))

(declare-fun e!3173881 () Bool)

(assert (=> d!1647222 (= (inv!77844 (left!42899 (left!42899 t!3643))) e!3173881)))

(declare-fun b!5089060 () Bool)

(assert (=> b!5089060 (= e!3173881 (inv!77848 (left!42899 (left!42899 t!3643))))))

(declare-fun b!5089061 () Bool)

(declare-fun e!3173882 () Bool)

(assert (=> b!5089061 (= e!3173881 e!3173882)))

(declare-fun res!2166330 () Bool)

(assert (=> b!5089061 (= res!2166330 (not ((_ is Leaf!25932) (left!42899 (left!42899 t!3643)))))))

(assert (=> b!5089061 (=> res!2166330 e!3173882)))

(declare-fun b!5089062 () Bool)

(assert (=> b!5089062 (= e!3173882 (inv!77849 (left!42899 (left!42899 t!3643))))))

(assert (= (and d!1647222 c!874454) b!5089060))

(assert (= (and d!1647222 (not c!874454)) b!5089061))

(assert (= (and b!5089061 (not res!2166330)) b!5089062))

(declare-fun m!6146932 () Bool)

(assert (=> b!5089060 m!6146932))

(declare-fun m!6146934 () Bool)

(assert (=> b!5089062 m!6146934))

(assert (=> b!5089030 d!1647222))

(declare-fun d!1647226 () Bool)

(declare-fun c!874455 () Bool)

(assert (=> d!1647226 (= c!874455 ((_ is Node!15618) (right!43229 (left!42899 t!3643))))))

(declare-fun e!3173883 () Bool)

(assert (=> d!1647226 (= (inv!77844 (right!43229 (left!42899 t!3643))) e!3173883)))

(declare-fun b!5089063 () Bool)

(assert (=> b!5089063 (= e!3173883 (inv!77848 (right!43229 (left!42899 t!3643))))))

(declare-fun b!5089064 () Bool)

(declare-fun e!3173884 () Bool)

(assert (=> b!5089064 (= e!3173883 e!3173884)))

(declare-fun res!2166331 () Bool)

(assert (=> b!5089064 (= res!2166331 (not ((_ is Leaf!25932) (right!43229 (left!42899 t!3643)))))))

(assert (=> b!5089064 (=> res!2166331 e!3173884)))

(declare-fun b!5089065 () Bool)

(assert (=> b!5089065 (= e!3173884 (inv!77849 (right!43229 (left!42899 t!3643))))))

(assert (= (and d!1647226 c!874455) b!5089063))

(assert (= (and d!1647226 (not c!874455)) b!5089064))

(assert (= (and b!5089064 (not res!2166331)) b!5089065))

(declare-fun m!6146936 () Bool)

(assert (=> b!5089063 m!6146936))

(declare-fun m!6146938 () Bool)

(assert (=> b!5089065 m!6146938))

(assert (=> b!5089030 d!1647226))

(declare-fun b!5089091 () Bool)

(declare-fun e!3173899 () List!58627)

(assert (=> b!5089091 (= e!3173899 (Cons!58503 (h!64951 (list!19070 (left!42899 (right!43229 t!3643)))) (++!12825 (t!371504 (list!19070 (left!42899 (right!43229 t!3643)))) (list!19070 (right!43229 (right!43229 t!3643))))))))

(declare-fun b!5089092 () Bool)

(declare-fun res!2166339 () Bool)

(declare-fun e!3173898 () Bool)

(assert (=> b!5089092 (=> (not res!2166339) (not e!3173898))))

(declare-fun lt!2092167 () List!58627)

(assert (=> b!5089092 (= res!2166339 (= (size!39181 lt!2092167) (+ (size!39181 (list!19070 (left!42899 (right!43229 t!3643)))) (size!39181 (list!19070 (right!43229 (right!43229 t!3643)))))))))

(declare-fun d!1647228 () Bool)

(assert (=> d!1647228 e!3173898))

(declare-fun res!2166338 () Bool)

(assert (=> d!1647228 (=> (not res!2166338) (not e!3173898))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10435 (List!58627) (InoxSet T!105468))

(assert (=> d!1647228 (= res!2166338 (= (content!10435 lt!2092167) ((_ map or) (content!10435 (list!19070 (left!42899 (right!43229 t!3643)))) (content!10435 (list!19070 (right!43229 (right!43229 t!3643)))))))))

(assert (=> d!1647228 (= lt!2092167 e!3173899)))

(declare-fun c!874465 () Bool)

(assert (=> d!1647228 (= c!874465 ((_ is Nil!58503) (list!19070 (left!42899 (right!43229 t!3643)))))))

(assert (=> d!1647228 (= (++!12825 (list!19070 (left!42899 (right!43229 t!3643))) (list!19070 (right!43229 (right!43229 t!3643)))) lt!2092167)))

(declare-fun b!5089090 () Bool)

(assert (=> b!5089090 (= e!3173899 (list!19070 (right!43229 (right!43229 t!3643))))))

(declare-fun b!5089093 () Bool)

(assert (=> b!5089093 (= e!3173898 (or (not (= (list!19070 (right!43229 (right!43229 t!3643))) Nil!58503)) (= lt!2092167 (list!19070 (left!42899 (right!43229 t!3643))))))))

(assert (= (and d!1647228 c!874465) b!5089090))

(assert (= (and d!1647228 (not c!874465)) b!5089091))

(assert (= (and d!1647228 res!2166338) b!5089092))

(assert (= (and b!5089092 res!2166339) b!5089093))

(assert (=> b!5089091 m!6146868))

(declare-fun m!6146958 () Bool)

(assert (=> b!5089091 m!6146958))

(declare-fun m!6146960 () Bool)

(assert (=> b!5089092 m!6146960))

(assert (=> b!5089092 m!6146866))

(declare-fun m!6146962 () Bool)

(assert (=> b!5089092 m!6146962))

(assert (=> b!5089092 m!6146868))

(declare-fun m!6146964 () Bool)

(assert (=> b!5089092 m!6146964))

(declare-fun m!6146966 () Bool)

(assert (=> d!1647228 m!6146966))

(assert (=> d!1647228 m!6146866))

(declare-fun m!6146968 () Bool)

(assert (=> d!1647228 m!6146968))

(assert (=> d!1647228 m!6146868))

(declare-fun m!6146970 () Bool)

(assert (=> d!1647228 m!6146970))

(assert (=> b!5088995 d!1647228))

(declare-fun b!5089101 () Bool)

(declare-fun e!3173902 () List!58627)

(declare-fun e!3173903 () List!58627)

(assert (=> b!5089101 (= e!3173902 e!3173903)))

(declare-fun c!874467 () Bool)

(assert (=> b!5089101 (= c!874467 ((_ is Leaf!25932) (left!42899 (right!43229 t!3643))))))

(declare-fun b!5089102 () Bool)

(assert (=> b!5089102 (= e!3173903 (list!19072 (xs!19000 (left!42899 (right!43229 t!3643)))))))

(declare-fun b!5089100 () Bool)

(assert (=> b!5089100 (= e!3173902 Nil!58503)))

(declare-fun b!5089103 () Bool)

(assert (=> b!5089103 (= e!3173903 (++!12825 (list!19070 (left!42899 (left!42899 (right!43229 t!3643)))) (list!19070 (right!43229 (left!42899 (right!43229 t!3643))))))))

(declare-fun d!1647242 () Bool)

(declare-fun c!874466 () Bool)

(assert (=> d!1647242 (= c!874466 ((_ is Empty!15618) (left!42899 (right!43229 t!3643))))))

(assert (=> d!1647242 (= (list!19070 (left!42899 (right!43229 t!3643))) e!3173902)))

(assert (= (and d!1647242 c!874466) b!5089100))

(assert (= (and d!1647242 (not c!874466)) b!5089101))

(assert (= (and b!5089101 c!874467) b!5089102))

(assert (= (and b!5089101 (not c!874467)) b!5089103))

(declare-fun m!6146972 () Bool)

(assert (=> b!5089102 m!6146972))

(declare-fun m!6146974 () Bool)

(assert (=> b!5089103 m!6146974))

(declare-fun m!6146976 () Bool)

(assert (=> b!5089103 m!6146976))

(assert (=> b!5089103 m!6146974))

(assert (=> b!5089103 m!6146976))

(declare-fun m!6146978 () Bool)

(assert (=> b!5089103 m!6146978))

(assert (=> b!5088995 d!1647242))

(declare-fun b!5089105 () Bool)

(declare-fun e!3173904 () List!58627)

(declare-fun e!3173905 () List!58627)

(assert (=> b!5089105 (= e!3173904 e!3173905)))

(declare-fun c!874469 () Bool)

(assert (=> b!5089105 (= c!874469 ((_ is Leaf!25932) (right!43229 (right!43229 t!3643))))))

(declare-fun b!5089106 () Bool)

(assert (=> b!5089106 (= e!3173905 (list!19072 (xs!19000 (right!43229 (right!43229 t!3643)))))))

(declare-fun b!5089104 () Bool)

(assert (=> b!5089104 (= e!3173904 Nil!58503)))

(declare-fun b!5089107 () Bool)

(assert (=> b!5089107 (= e!3173905 (++!12825 (list!19070 (left!42899 (right!43229 (right!43229 t!3643)))) (list!19070 (right!43229 (right!43229 (right!43229 t!3643))))))))

(declare-fun d!1647244 () Bool)

(declare-fun c!874468 () Bool)

(assert (=> d!1647244 (= c!874468 ((_ is Empty!15618) (right!43229 (right!43229 t!3643))))))

(assert (=> d!1647244 (= (list!19070 (right!43229 (right!43229 t!3643))) e!3173904)))

(assert (= (and d!1647244 c!874468) b!5089104))

(assert (= (and d!1647244 (not c!874468)) b!5089105))

(assert (= (and b!5089105 c!874469) b!5089106))

(assert (= (and b!5089105 (not c!874469)) b!5089107))

(declare-fun m!6146980 () Bool)

(assert (=> b!5089106 m!6146980))

(declare-fun m!6146982 () Bool)

(assert (=> b!5089107 m!6146982))

(declare-fun m!6146984 () Bool)

(assert (=> b!5089107 m!6146984))

(assert (=> b!5089107 m!6146982))

(assert (=> b!5089107 m!6146984))

(declare-fun m!6146986 () Bool)

(assert (=> b!5089107 m!6146986))

(assert (=> b!5088995 d!1647244))

(declare-fun d!1647246 () Bool)

(assert (=> d!1647246 (= (inv!77845 (xs!19000 (left!42899 t!3643))) (<= (size!39181 (innerList!15706 (xs!19000 (left!42899 t!3643)))) 2147483647))))

(declare-fun bs!1191074 () Bool)

(assert (= bs!1191074 d!1647246))

(declare-fun m!6146988 () Bool)

(assert (=> bs!1191074 m!6146988))

(assert (=> b!5089031 d!1647246))

(declare-fun b!5089109 () Bool)

(declare-fun e!3173907 () List!58627)

(assert (=> b!5089109 (= e!3173907 (Cons!58503 (h!64951 (list!19070 (left!42899 (left!42899 t!3643)))) (++!12825 (t!371504 (list!19070 (left!42899 (left!42899 t!3643)))) (list!19070 (right!43229 (left!42899 t!3643))))))))

(declare-fun b!5089110 () Bool)

(declare-fun res!2166347 () Bool)

(declare-fun e!3173906 () Bool)

(assert (=> b!5089110 (=> (not res!2166347) (not e!3173906))))

(declare-fun lt!2092168 () List!58627)

(assert (=> b!5089110 (= res!2166347 (= (size!39181 lt!2092168) (+ (size!39181 (list!19070 (left!42899 (left!42899 t!3643)))) (size!39181 (list!19070 (right!43229 (left!42899 t!3643)))))))))

(declare-fun d!1647248 () Bool)

(assert (=> d!1647248 e!3173906))

(declare-fun res!2166346 () Bool)

(assert (=> d!1647248 (=> (not res!2166346) (not e!3173906))))

(assert (=> d!1647248 (= res!2166346 (= (content!10435 lt!2092168) ((_ map or) (content!10435 (list!19070 (left!42899 (left!42899 t!3643)))) (content!10435 (list!19070 (right!43229 (left!42899 t!3643)))))))))

(assert (=> d!1647248 (= lt!2092168 e!3173907)))

(declare-fun c!874470 () Bool)

(assert (=> d!1647248 (= c!874470 ((_ is Nil!58503) (list!19070 (left!42899 (left!42899 t!3643)))))))

(assert (=> d!1647248 (= (++!12825 (list!19070 (left!42899 (left!42899 t!3643))) (list!19070 (right!43229 (left!42899 t!3643)))) lt!2092168)))

(declare-fun b!5089108 () Bool)

(assert (=> b!5089108 (= e!3173907 (list!19070 (right!43229 (left!42899 t!3643))))))

(declare-fun b!5089111 () Bool)

(assert (=> b!5089111 (= e!3173906 (or (not (= (list!19070 (right!43229 (left!42899 t!3643))) Nil!58503)) (= lt!2092168 (list!19070 (left!42899 (left!42899 t!3643))))))))

(assert (= (and d!1647248 c!874470) b!5089108))

(assert (= (and d!1647248 (not c!874470)) b!5089109))

(assert (= (and d!1647248 res!2166346) b!5089110))

(assert (= (and b!5089110 res!2166347) b!5089111))

(assert (=> b!5089109 m!6146850))

(declare-fun m!6146990 () Bool)

(assert (=> b!5089109 m!6146990))

(declare-fun m!6146992 () Bool)

(assert (=> b!5089110 m!6146992))

(assert (=> b!5089110 m!6146848))

(declare-fun m!6146994 () Bool)

(assert (=> b!5089110 m!6146994))

(assert (=> b!5089110 m!6146850))

(declare-fun m!6146996 () Bool)

(assert (=> b!5089110 m!6146996))

(declare-fun m!6146998 () Bool)

(assert (=> d!1647248 m!6146998))

(assert (=> d!1647248 m!6146848))

(declare-fun m!6147000 () Bool)

(assert (=> d!1647248 m!6147000))

(assert (=> d!1647248 m!6146850))

(declare-fun m!6147002 () Bool)

(assert (=> d!1647248 m!6147002))

(assert (=> b!5088975 d!1647248))

(declare-fun b!5089116 () Bool)

(declare-fun e!3173909 () List!58627)

(declare-fun e!3173910 () List!58627)

(assert (=> b!5089116 (= e!3173909 e!3173910)))

(declare-fun c!874472 () Bool)

(assert (=> b!5089116 (= c!874472 ((_ is Leaf!25932) (left!42899 (left!42899 t!3643))))))

(declare-fun b!5089117 () Bool)

(assert (=> b!5089117 (= e!3173910 (list!19072 (xs!19000 (left!42899 (left!42899 t!3643)))))))

(declare-fun b!5089115 () Bool)

(assert (=> b!5089115 (= e!3173909 Nil!58503)))

(declare-fun b!5089118 () Bool)

(assert (=> b!5089118 (= e!3173910 (++!12825 (list!19070 (left!42899 (left!42899 (left!42899 t!3643)))) (list!19070 (right!43229 (left!42899 (left!42899 t!3643))))))))

(declare-fun d!1647250 () Bool)

(declare-fun c!874471 () Bool)

(assert (=> d!1647250 (= c!874471 ((_ is Empty!15618) (left!42899 (left!42899 t!3643))))))

(assert (=> d!1647250 (= (list!19070 (left!42899 (left!42899 t!3643))) e!3173909)))

(assert (= (and d!1647250 c!874471) b!5089115))

(assert (= (and d!1647250 (not c!874471)) b!5089116))

(assert (= (and b!5089116 c!874472) b!5089117))

(assert (= (and b!5089116 (not c!874472)) b!5089118))

(declare-fun m!6147004 () Bool)

(assert (=> b!5089117 m!6147004))

(declare-fun m!6147006 () Bool)

(assert (=> b!5089118 m!6147006))

(declare-fun m!6147008 () Bool)

(assert (=> b!5089118 m!6147008))

(assert (=> b!5089118 m!6147006))

(assert (=> b!5089118 m!6147008))

(declare-fun m!6147014 () Bool)

(assert (=> b!5089118 m!6147014))

(assert (=> b!5088975 d!1647250))

(declare-fun b!5089120 () Bool)

(declare-fun e!3173911 () List!58627)

(declare-fun e!3173912 () List!58627)

(assert (=> b!5089120 (= e!3173911 e!3173912)))

(declare-fun c!874474 () Bool)

(assert (=> b!5089120 (= c!874474 ((_ is Leaf!25932) (right!43229 (left!42899 t!3643))))))

(declare-fun b!5089121 () Bool)

(assert (=> b!5089121 (= e!3173912 (list!19072 (xs!19000 (right!43229 (left!42899 t!3643)))))))

(declare-fun b!5089119 () Bool)

(assert (=> b!5089119 (= e!3173911 Nil!58503)))

(declare-fun b!5089122 () Bool)

(assert (=> b!5089122 (= e!3173912 (++!12825 (list!19070 (left!42899 (right!43229 (left!42899 t!3643)))) (list!19070 (right!43229 (right!43229 (left!42899 t!3643))))))))

(declare-fun d!1647252 () Bool)

(declare-fun c!874473 () Bool)

(assert (=> d!1647252 (= c!874473 ((_ is Empty!15618) (right!43229 (left!42899 t!3643))))))

(assert (=> d!1647252 (= (list!19070 (right!43229 (left!42899 t!3643))) e!3173911)))

(assert (= (and d!1647252 c!874473) b!5089119))

(assert (= (and d!1647252 (not c!874473)) b!5089120))

(assert (= (and b!5089120 c!874474) b!5089121))

(assert (= (and b!5089120 (not c!874474)) b!5089122))

(declare-fun m!6147024 () Bool)

(assert (=> b!5089121 m!6147024))

(declare-fun m!6147026 () Bool)

(assert (=> b!5089122 m!6147026))

(declare-fun m!6147028 () Bool)

(assert (=> b!5089122 m!6147028))

(assert (=> b!5089122 m!6147026))

(assert (=> b!5089122 m!6147028))

(declare-fun m!6147030 () Bool)

(assert (=> b!5089122 m!6147030))

(assert (=> b!5088975 d!1647252))

(declare-fun d!1647258 () Bool)

(declare-fun lt!2092169 () Int)

(assert (=> d!1647258 (>= lt!2092169 0)))

(declare-fun e!3173915 () Int)

(assert (=> d!1647258 (= lt!2092169 e!3173915)))

(declare-fun c!874476 () Bool)

(assert (=> d!1647258 (= c!874476 ((_ is Nil!58503) (list!19070 t!3643)))))

(assert (=> d!1647258 (= (size!39181 (list!19070 t!3643)) lt!2092169)))

(declare-fun b!5089126 () Bool)

(assert (=> b!5089126 (= e!3173915 0)))

(declare-fun b!5089127 () Bool)

(assert (=> b!5089127 (= e!3173915 (+ 1 (size!39181 (t!371504 (list!19070 t!3643)))))))

(assert (= (and d!1647258 c!874476) b!5089126))

(assert (= (and d!1647258 (not c!874476)) b!5089127))

(declare-fun m!6147036 () Bool)

(assert (=> b!5089127 m!6147036))

(assert (=> d!1647204 d!1647258))

(declare-fun b!5089131 () Bool)

(declare-fun e!3173917 () List!58627)

(declare-fun e!3173919 () List!58627)

(assert (=> b!5089131 (= e!3173917 e!3173919)))

(declare-fun c!874479 () Bool)

(assert (=> b!5089131 (= c!874479 ((_ is Leaf!25932) t!3643))))

(declare-fun b!5089133 () Bool)

(assert (=> b!5089133 (= e!3173919 (list!19072 (xs!19000 t!3643)))))

(declare-fun b!5089129 () Bool)

(assert (=> b!5089129 (= e!3173917 Nil!58503)))

(declare-fun b!5089134 () Bool)

(assert (=> b!5089134 (= e!3173919 (++!12825 (list!19070 (left!42899 t!3643)) (list!19070 (right!43229 t!3643))))))

(declare-fun d!1647262 () Bool)

(declare-fun c!874478 () Bool)

(assert (=> d!1647262 (= c!874478 ((_ is Empty!15618) t!3643))))

(assert (=> d!1647262 (= (list!19070 t!3643) e!3173917)))

(assert (= (and d!1647262 c!874478) b!5089129))

(assert (= (and d!1647262 (not c!874478)) b!5089131))

(assert (= (and b!5089131 c!874479) b!5089133))

(assert (= (and b!5089131 (not c!874479)) b!5089134))

(assert (=> b!5089133 m!6146928))

(assert (=> b!5089134 m!6146804))

(assert (=> b!5089134 m!6146808))

(assert (=> b!5089134 m!6146804))

(assert (=> b!5089134 m!6146808))

(declare-fun m!6147042 () Bool)

(assert (=> b!5089134 m!6147042))

(assert (=> d!1647204 d!1647262))

(declare-fun d!1647266 () Bool)

(declare-fun lt!2092170 () Int)

(assert (=> d!1647266 (>= lt!2092170 0)))

(declare-fun e!3173921 () Int)

(assert (=> d!1647266 (= lt!2092170 e!3173921)))

(declare-fun c!874480 () Bool)

(assert (=> d!1647266 (= c!874480 ((_ is Nil!58503) (t!371504 (list!19070 (left!42899 t!3643)))))))

(assert (=> d!1647266 (= (size!39181 (t!371504 (list!19070 (left!42899 t!3643)))) lt!2092170)))

(declare-fun b!5089138 () Bool)

(assert (=> b!5089138 (= e!3173921 0)))

(declare-fun b!5089139 () Bool)

(assert (=> b!5089139 (= e!3173921 (+ 1 (size!39181 (t!371504 (t!371504 (list!19070 (left!42899 t!3643)))))))))

(assert (= (and d!1647266 c!874480) b!5089138))

(assert (= (and d!1647266 (not c!874480)) b!5089139))

(declare-fun m!6147044 () Bool)

(assert (=> b!5089139 m!6147044))

(assert (=> b!5088930 d!1647266))

(declare-fun d!1647268 () Bool)

(declare-fun res!2166356 () Bool)

(declare-fun e!3173922 () Bool)

(assert (=> d!1647268 (=> (not res!2166356) (not e!3173922))))

(assert (=> d!1647268 (= res!2166356 (= (csize!31466 (left!42899 t!3643)) (+ (size!39180 (left!42899 (left!42899 t!3643))) (size!39180 (right!43229 (left!42899 t!3643))))))))

(assert (=> d!1647268 (= (inv!77848 (left!42899 t!3643)) e!3173922)))

(declare-fun b!5089140 () Bool)

(declare-fun res!2166357 () Bool)

(assert (=> b!5089140 (=> (not res!2166357) (not e!3173922))))

(assert (=> b!5089140 (= res!2166357 (and (not (= (left!42899 (left!42899 t!3643)) Empty!15618)) (not (= (right!43229 (left!42899 t!3643)) Empty!15618))))))

(declare-fun b!5089141 () Bool)

(declare-fun res!2166358 () Bool)

(assert (=> b!5089141 (=> (not res!2166358) (not e!3173922))))

(assert (=> b!5089141 (= res!2166358 (= (cheight!15829 (left!42899 t!3643)) (+ (max!0 (height!2170 (left!42899 (left!42899 t!3643))) (height!2170 (right!43229 (left!42899 t!3643)))) 1)))))

(declare-fun b!5089142 () Bool)

(assert (=> b!5089142 (= e!3173922 (<= 0 (cheight!15829 (left!42899 t!3643))))))

(assert (= (and d!1647268 res!2166356) b!5089140))

(assert (= (and b!5089140 res!2166357) b!5089141))

(assert (= (and b!5089141 res!2166358) b!5089142))

(declare-fun m!6147056 () Bool)

(assert (=> d!1647268 m!6147056))

(declare-fun m!6147058 () Bool)

(assert (=> d!1647268 m!6147058))

(declare-fun m!6147060 () Bool)

(assert (=> b!5089141 m!6147060))

(declare-fun m!6147062 () Bool)

(assert (=> b!5089141 m!6147062))

(assert (=> b!5089141 m!6147060))

(assert (=> b!5089141 m!6147062))

(declare-fun m!6147064 () Bool)

(assert (=> b!5089141 m!6147064))

(assert (=> b!5089013 d!1647268))

(declare-fun d!1647272 () Bool)

(declare-fun c!874481 () Bool)

(assert (=> d!1647272 (= c!874481 ((_ is Node!15618) (left!42899 (right!43229 t!3643))))))

(declare-fun e!3173923 () Bool)

(assert (=> d!1647272 (= (inv!77844 (left!42899 (right!43229 t!3643))) e!3173923)))

(declare-fun b!5089143 () Bool)

(assert (=> b!5089143 (= e!3173923 (inv!77848 (left!42899 (right!43229 t!3643))))))

(declare-fun b!5089144 () Bool)

(declare-fun e!3173924 () Bool)

(assert (=> b!5089144 (= e!3173923 e!3173924)))

(declare-fun res!2166359 () Bool)

(assert (=> b!5089144 (= res!2166359 (not ((_ is Leaf!25932) (left!42899 (right!43229 t!3643)))))))

(assert (=> b!5089144 (=> res!2166359 e!3173924)))

(declare-fun b!5089145 () Bool)

(assert (=> b!5089145 (= e!3173924 (inv!77849 (left!42899 (right!43229 t!3643))))))

(assert (= (and d!1647272 c!874481) b!5089143))

(assert (= (and d!1647272 (not c!874481)) b!5089144))

(assert (= (and b!5089144 (not res!2166359)) b!5089145))

(declare-fun m!6147066 () Bool)

(assert (=> b!5089143 m!6147066))

(declare-fun m!6147068 () Bool)

(assert (=> b!5089145 m!6147068))

(assert (=> b!5089033 d!1647272))

(declare-fun d!1647274 () Bool)

(declare-fun c!874482 () Bool)

(assert (=> d!1647274 (= c!874482 ((_ is Node!15618) (right!43229 (right!43229 t!3643))))))

(declare-fun e!3173925 () Bool)

(assert (=> d!1647274 (= (inv!77844 (right!43229 (right!43229 t!3643))) e!3173925)))

(declare-fun b!5089146 () Bool)

(assert (=> b!5089146 (= e!3173925 (inv!77848 (right!43229 (right!43229 t!3643))))))

(declare-fun b!5089147 () Bool)

(declare-fun e!3173926 () Bool)

(assert (=> b!5089147 (= e!3173925 e!3173926)))

(declare-fun res!2166360 () Bool)

(assert (=> b!5089147 (= res!2166360 (not ((_ is Leaf!25932) (right!43229 (right!43229 t!3643)))))))

(assert (=> b!5089147 (=> res!2166360 e!3173926)))

(declare-fun b!5089148 () Bool)

(assert (=> b!5089148 (= e!3173926 (inv!77849 (right!43229 (right!43229 t!3643))))))

(assert (= (and d!1647274 c!874482) b!5089146))

(assert (= (and d!1647274 (not c!874482)) b!5089147))

(assert (= (and b!5089147 (not res!2166360)) b!5089148))

(declare-fun m!6147070 () Bool)

(assert (=> b!5089146 m!6147070))

(declare-fun m!6147072 () Bool)

(assert (=> b!5089148 m!6147072))

(assert (=> b!5089033 d!1647274))

(declare-fun d!1647276 () Bool)

(declare-fun res!2166361 () Bool)

(declare-fun e!3173927 () Bool)

(assert (=> d!1647276 (=> (not res!2166361) (not e!3173927))))

(assert (=> d!1647276 (= res!2166361 (<= (size!39181 (list!19072 (xs!19000 (left!42899 t!3643)))) 512))))

(assert (=> d!1647276 (= (inv!77849 (left!42899 t!3643)) e!3173927)))

(declare-fun b!5089149 () Bool)

(declare-fun res!2166362 () Bool)

(assert (=> b!5089149 (=> (not res!2166362) (not e!3173927))))

(assert (=> b!5089149 (= res!2166362 (= (csize!31467 (left!42899 t!3643)) (size!39181 (list!19072 (xs!19000 (left!42899 t!3643))))))))

(declare-fun b!5089150 () Bool)

(assert (=> b!5089150 (= e!3173927 (and (> (csize!31467 (left!42899 t!3643)) 0) (<= (csize!31467 (left!42899 t!3643)) 512)))))

(assert (= (and d!1647276 res!2166361) b!5089149))

(assert (= (and b!5089149 res!2166362) b!5089150))

(assert (=> d!1647276 m!6146846))

(assert (=> d!1647276 m!6146846))

(declare-fun m!6147074 () Bool)

(assert (=> d!1647276 m!6147074))

(assert (=> b!5089149 m!6146846))

(assert (=> b!5089149 m!6146846))

(assert (=> b!5089149 m!6147074))

(assert (=> b!5089015 d!1647276))

(declare-fun d!1647278 () Bool)

(declare-fun lt!2092171 () Int)

(assert (=> d!1647278 (>= lt!2092171 0)))

(declare-fun e!3173928 () Int)

(assert (=> d!1647278 (= lt!2092171 e!3173928)))

(declare-fun c!874483 () Bool)

(assert (=> d!1647278 (= c!874483 ((_ is Nil!58503) (innerList!15706 (xs!19000 t!3643))))))

(assert (=> d!1647278 (= (size!39181 (innerList!15706 (xs!19000 t!3643))) lt!2092171)))

(declare-fun b!5089151 () Bool)

(assert (=> b!5089151 (= e!3173928 0)))

(declare-fun b!5089152 () Bool)

(assert (=> b!5089152 (= e!3173928 (+ 1 (size!39181 (t!371504 (innerList!15706 (xs!19000 t!3643))))))))

(assert (= (and d!1647278 c!874483) b!5089151))

(assert (= (and d!1647278 (not c!874483)) b!5089152))

(declare-fun m!6147076 () Bool)

(assert (=> b!5089152 m!6147076))

(assert (=> d!1647206 d!1647278))

(declare-fun d!1647280 () Bool)

(assert (=> d!1647280 (= (inv!77845 (xs!19000 (right!43229 t!3643))) (<= (size!39181 (innerList!15706 (xs!19000 (right!43229 t!3643)))) 2147483647))))

(declare-fun bs!1191076 () Bool)

(assert (= bs!1191076 d!1647280))

(declare-fun m!6147078 () Bool)

(assert (=> bs!1191076 m!6147078))

(assert (=> b!5089034 d!1647280))

(declare-fun d!1647282 () Bool)

(declare-fun res!2166367 () Bool)

(declare-fun e!3173931 () Bool)

(assert (=> d!1647282 (=> (not res!2166367) (not e!3173931))))

(assert (=> d!1647282 (= res!2166367 (= (csize!31466 (right!43229 t!3643)) (+ (size!39180 (left!42899 (right!43229 t!3643))) (size!39180 (right!43229 (right!43229 t!3643))))))))

(assert (=> d!1647282 (= (inv!77848 (right!43229 t!3643)) e!3173931)))

(declare-fun b!5089157 () Bool)

(declare-fun res!2166368 () Bool)

(assert (=> b!5089157 (=> (not res!2166368) (not e!3173931))))

(assert (=> b!5089157 (= res!2166368 (and (not (= (left!42899 (right!43229 t!3643)) Empty!15618)) (not (= (right!43229 (right!43229 t!3643)) Empty!15618))))))

(declare-fun b!5089158 () Bool)

(declare-fun res!2166369 () Bool)

(assert (=> b!5089158 (=> (not res!2166369) (not e!3173931))))

(assert (=> b!5089158 (= res!2166369 (= (cheight!15829 (right!43229 t!3643)) (+ (max!0 (height!2170 (left!42899 (right!43229 t!3643))) (height!2170 (right!43229 (right!43229 t!3643)))) 1)))))

(declare-fun b!5089159 () Bool)

(assert (=> b!5089159 (= e!3173931 (<= 0 (cheight!15829 (right!43229 t!3643))))))

(assert (= (and d!1647282 res!2166367) b!5089157))

(assert (= (and b!5089157 res!2166368) b!5089158))

(assert (= (and b!5089158 res!2166369) b!5089159))

(declare-fun m!6147080 () Bool)

(assert (=> d!1647282 m!6147080))

(declare-fun m!6147082 () Bool)

(assert (=> d!1647282 m!6147082))

(declare-fun m!6147084 () Bool)

(assert (=> b!5089158 m!6147084))

(declare-fun m!6147086 () Bool)

(assert (=> b!5089158 m!6147086))

(assert (=> b!5089158 m!6147084))

(assert (=> b!5089158 m!6147086))

(declare-fun m!6147088 () Bool)

(assert (=> b!5089158 m!6147088))

(assert (=> b!5089016 d!1647282))

(declare-fun b!5089160 () Bool)

(declare-fun e!3173932 () Bool)

(declare-fun tp!1418760 () Bool)

(assert (=> b!5089160 (= e!3173932 (and tp_is_empty!37119 tp!1418760))))

(assert (=> b!5089035 (= tp!1418756 e!3173932)))

(assert (= (and b!5089035 ((_ is Cons!58503) (innerList!15706 (xs!19000 (right!43229 t!3643))))) b!5089160))

(declare-fun b!5089161 () Bool)

(declare-fun e!3173933 () Bool)

(declare-fun tp!1418761 () Bool)

(assert (=> b!5089161 (= e!3173933 (and tp_is_empty!37119 tp!1418761))))

(assert (=> b!5089032 (= tp!1418753 e!3173933)))

(assert (= (and b!5089032 ((_ is Cons!58503) (innerList!15706 (xs!19000 (left!42899 t!3643))))) b!5089161))

(declare-fun b!5089162 () Bool)

(declare-fun e!3173934 () Bool)

(declare-fun tp!1418762 () Bool)

(assert (=> b!5089162 (= e!3173934 (and tp_is_empty!37119 tp!1418762))))

(assert (=> b!5089040 (= tp!1418759 e!3173934)))

(assert (= (and b!5089040 ((_ is Cons!58503) (t!371504 (innerList!15706 (xs!19000 t!3643))))) b!5089162))

(declare-fun b!5089163 () Bool)

(declare-fun tp!1418763 () Bool)

(declare-fun tp!1418764 () Bool)

(declare-fun e!3173936 () Bool)

(assert (=> b!5089163 (= e!3173936 (and (inv!77844 (left!42899 (left!42899 (right!43229 t!3643)))) tp!1418764 (inv!77844 (right!43229 (left!42899 (right!43229 t!3643)))) tp!1418763))))

(declare-fun b!5089165 () Bool)

(declare-fun e!3173935 () Bool)

(declare-fun tp!1418765 () Bool)

(assert (=> b!5089165 (= e!3173935 tp!1418765)))

(declare-fun b!5089164 () Bool)

(assert (=> b!5089164 (= e!3173936 (and (inv!77845 (xs!19000 (left!42899 (right!43229 t!3643)))) e!3173935))))

(assert (=> b!5089033 (= tp!1418755 (and (inv!77844 (left!42899 (right!43229 t!3643))) e!3173936))))

(assert (= (and b!5089033 ((_ is Node!15618) (left!42899 (right!43229 t!3643)))) b!5089163))

(assert (= b!5089164 b!5089165))

(assert (= (and b!5089033 ((_ is Leaf!25932) (left!42899 (right!43229 t!3643)))) b!5089164))

(declare-fun m!6147090 () Bool)

(assert (=> b!5089163 m!6147090))

(declare-fun m!6147092 () Bool)

(assert (=> b!5089163 m!6147092))

(declare-fun m!6147094 () Bool)

(assert (=> b!5089164 m!6147094))

(assert (=> b!5089033 m!6146908))

(declare-fun e!3173938 () Bool)

(declare-fun tp!1418766 () Bool)

(declare-fun b!5089166 () Bool)

(declare-fun tp!1418767 () Bool)

(assert (=> b!5089166 (= e!3173938 (and (inv!77844 (left!42899 (right!43229 (right!43229 t!3643)))) tp!1418767 (inv!77844 (right!43229 (right!43229 (right!43229 t!3643)))) tp!1418766))))

(declare-fun b!5089168 () Bool)

(declare-fun e!3173937 () Bool)

(declare-fun tp!1418768 () Bool)

(assert (=> b!5089168 (= e!3173937 tp!1418768)))

(declare-fun b!5089167 () Bool)

(assert (=> b!5089167 (= e!3173938 (and (inv!77845 (xs!19000 (right!43229 (right!43229 t!3643)))) e!3173937))))

(assert (=> b!5089033 (= tp!1418754 (and (inv!77844 (right!43229 (right!43229 t!3643))) e!3173938))))

(assert (= (and b!5089033 ((_ is Node!15618) (right!43229 (right!43229 t!3643)))) b!5089166))

(assert (= b!5089167 b!5089168))

(assert (= (and b!5089033 ((_ is Leaf!25932) (right!43229 (right!43229 t!3643)))) b!5089167))

(declare-fun m!6147096 () Bool)

(assert (=> b!5089166 m!6147096))

(declare-fun m!6147098 () Bool)

(assert (=> b!5089166 m!6147098))

(declare-fun m!6147100 () Bool)

(assert (=> b!5089167 m!6147100))

(assert (=> b!5089033 m!6146910))

(declare-fun b!5089171 () Bool)

(declare-fun tp!1418770 () Bool)

(declare-fun tp!1418769 () Bool)

(declare-fun e!3173941 () Bool)

(assert (=> b!5089171 (= e!3173941 (and (inv!77844 (left!42899 (left!42899 (left!42899 t!3643)))) tp!1418770 (inv!77844 (right!43229 (left!42899 (left!42899 t!3643)))) tp!1418769))))

(declare-fun b!5089173 () Bool)

(declare-fun e!3173940 () Bool)

(declare-fun tp!1418771 () Bool)

(assert (=> b!5089173 (= e!3173940 tp!1418771)))

(declare-fun b!5089172 () Bool)

(assert (=> b!5089172 (= e!3173941 (and (inv!77845 (xs!19000 (left!42899 (left!42899 t!3643)))) e!3173940))))

(assert (=> b!5089030 (= tp!1418752 (and (inv!77844 (left!42899 (left!42899 t!3643))) e!3173941))))

(assert (= (and b!5089030 ((_ is Node!15618) (left!42899 (left!42899 t!3643)))) b!5089171))

(assert (= b!5089172 b!5089173))

(assert (= (and b!5089030 ((_ is Leaf!25932) (left!42899 (left!42899 t!3643)))) b!5089172))

(declare-fun m!6147104 () Bool)

(assert (=> b!5089171 m!6147104))

(declare-fun m!6147106 () Bool)

(assert (=> b!5089171 m!6147106))

(declare-fun m!6147108 () Bool)

(assert (=> b!5089172 m!6147108))

(assert (=> b!5089030 m!6146902))

(declare-fun tp!1418773 () Bool)

(declare-fun tp!1418772 () Bool)

(declare-fun b!5089174 () Bool)

(declare-fun e!3173943 () Bool)

(assert (=> b!5089174 (= e!3173943 (and (inv!77844 (left!42899 (right!43229 (left!42899 t!3643)))) tp!1418773 (inv!77844 (right!43229 (right!43229 (left!42899 t!3643)))) tp!1418772))))

(declare-fun b!5089176 () Bool)

(declare-fun e!3173942 () Bool)

(declare-fun tp!1418774 () Bool)

(assert (=> b!5089176 (= e!3173942 tp!1418774)))

(declare-fun b!5089175 () Bool)

(assert (=> b!5089175 (= e!3173943 (and (inv!77845 (xs!19000 (right!43229 (left!42899 t!3643)))) e!3173942))))

(assert (=> b!5089030 (= tp!1418751 (and (inv!77844 (right!43229 (left!42899 t!3643))) e!3173943))))

(assert (= (and b!5089030 ((_ is Node!15618) (right!43229 (left!42899 t!3643)))) b!5089174))

(assert (= b!5089175 b!5089176))

(assert (= (and b!5089030 ((_ is Leaf!25932) (right!43229 (left!42899 t!3643)))) b!5089175))

(declare-fun m!6147112 () Bool)

(assert (=> b!5089174 m!6147112))

(declare-fun m!6147114 () Bool)

(assert (=> b!5089174 m!6147114))

(declare-fun m!6147116 () Bool)

(assert (=> b!5089175 m!6147116))

(assert (=> b!5089030 m!6146904))

(check-sat tp_is_empty!37119 (not b!5089103) (not b!5089107) (not b!5089118) (not d!1647228) (not b!5089165) (not b!5089057) (not b!5089134) (not d!1647220) (not b!5089168) (not b!5089110) (not b!5089141) (not b!5089102) (not b!5089062) (not b!5089054) (not b!5089160) (not d!1647276) (not b!5089152) (not b!5089173) (not b!5089121) (not b!5089162) (not b!5089033) (not b!5089174) (not b!5089149) (not b!5089166) (not d!1647280) (not b!5089106) (not b!5089163) (not b!5089171) (not b!5089146) (not b!5089139) (not b!5089143) (not b!5089092) (not d!1647246) (not b!5089060) (not b!5089117) (not b!5089127) (not d!1647212) (not b!5089175) (not b!5089145) (not b!5089167) (not d!1647268) (not b!5089161) (not d!1647248) (not b!5089172) (not b!5089045) (not b!5089063) (not b!5089164) (not b!5089133) (not b!5089176) (not b!5089158) (not b!5089065) (not b!5089058) (not b!5089122) (not b!5089109) (not b!5089091) (not b!5089030) (not d!1647210) (not b!5089148) (not d!1647282))
(check-sat)
(get-model)

(declare-fun b!5089234 () Bool)

(declare-fun e!3173976 () List!58627)

(assert (=> b!5089234 (= e!3173976 (Cons!58503 (h!64951 (list!19070 (left!42899 (right!43229 (left!42899 t!3643))))) (++!12825 (t!371504 (list!19070 (left!42899 (right!43229 (left!42899 t!3643))))) (list!19070 (right!43229 (right!43229 (left!42899 t!3643)))))))))

(declare-fun b!5089235 () Bool)

(declare-fun res!2166388 () Bool)

(declare-fun e!3173975 () Bool)

(assert (=> b!5089235 (=> (not res!2166388) (not e!3173975))))

(declare-fun lt!2092177 () List!58627)

(assert (=> b!5089235 (= res!2166388 (= (size!39181 lt!2092177) (+ (size!39181 (list!19070 (left!42899 (right!43229 (left!42899 t!3643))))) (size!39181 (list!19070 (right!43229 (right!43229 (left!42899 t!3643))))))))))

(declare-fun d!1647310 () Bool)

(assert (=> d!1647310 e!3173975))

(declare-fun res!2166387 () Bool)

(assert (=> d!1647310 (=> (not res!2166387) (not e!3173975))))

(assert (=> d!1647310 (= res!2166387 (= (content!10435 lt!2092177) ((_ map or) (content!10435 (list!19070 (left!42899 (right!43229 (left!42899 t!3643))))) (content!10435 (list!19070 (right!43229 (right!43229 (left!42899 t!3643))))))))))

(assert (=> d!1647310 (= lt!2092177 e!3173976)))

(declare-fun c!874497 () Bool)

(assert (=> d!1647310 (= c!874497 ((_ is Nil!58503) (list!19070 (left!42899 (right!43229 (left!42899 t!3643))))))))

(assert (=> d!1647310 (= (++!12825 (list!19070 (left!42899 (right!43229 (left!42899 t!3643)))) (list!19070 (right!43229 (right!43229 (left!42899 t!3643))))) lt!2092177)))

(declare-fun b!5089233 () Bool)

(assert (=> b!5089233 (= e!3173976 (list!19070 (right!43229 (right!43229 (left!42899 t!3643)))))))

(declare-fun b!5089236 () Bool)

(assert (=> b!5089236 (= e!3173975 (or (not (= (list!19070 (right!43229 (right!43229 (left!42899 t!3643)))) Nil!58503)) (= lt!2092177 (list!19070 (left!42899 (right!43229 (left!42899 t!3643)))))))))

(assert (= (and d!1647310 c!874497) b!5089233))

(assert (= (and d!1647310 (not c!874497)) b!5089234))

(assert (= (and d!1647310 res!2166387) b!5089235))

(assert (= (and b!5089235 res!2166388) b!5089236))

(assert (=> b!5089234 m!6147028))

(declare-fun m!6147218 () Bool)

(assert (=> b!5089234 m!6147218))

(declare-fun m!6147220 () Bool)

(assert (=> b!5089235 m!6147220))

(assert (=> b!5089235 m!6147026))

(declare-fun m!6147222 () Bool)

(assert (=> b!5089235 m!6147222))

(assert (=> b!5089235 m!6147028))

(declare-fun m!6147224 () Bool)

(assert (=> b!5089235 m!6147224))

(declare-fun m!6147226 () Bool)

(assert (=> d!1647310 m!6147226))

(assert (=> d!1647310 m!6147026))

(declare-fun m!6147228 () Bool)

(assert (=> d!1647310 m!6147228))

(assert (=> d!1647310 m!6147028))

(declare-fun m!6147230 () Bool)

(assert (=> d!1647310 m!6147230))

(assert (=> b!5089122 d!1647310))

(declare-fun b!5089238 () Bool)

(declare-fun e!3173977 () List!58627)

(declare-fun e!3173978 () List!58627)

(assert (=> b!5089238 (= e!3173977 e!3173978)))

(declare-fun c!874499 () Bool)

(assert (=> b!5089238 (= c!874499 ((_ is Leaf!25932) (left!42899 (right!43229 (left!42899 t!3643)))))))

(declare-fun b!5089239 () Bool)

(assert (=> b!5089239 (= e!3173978 (list!19072 (xs!19000 (left!42899 (right!43229 (left!42899 t!3643))))))))

(declare-fun b!5089237 () Bool)

(assert (=> b!5089237 (= e!3173977 Nil!58503)))

(declare-fun b!5089240 () Bool)

(assert (=> b!5089240 (= e!3173978 (++!12825 (list!19070 (left!42899 (left!42899 (right!43229 (left!42899 t!3643))))) (list!19070 (right!43229 (left!42899 (right!43229 (left!42899 t!3643)))))))))

(declare-fun d!1647312 () Bool)

(declare-fun c!874498 () Bool)

(assert (=> d!1647312 (= c!874498 ((_ is Empty!15618) (left!42899 (right!43229 (left!42899 t!3643)))))))

(assert (=> d!1647312 (= (list!19070 (left!42899 (right!43229 (left!42899 t!3643)))) e!3173977)))

(assert (= (and d!1647312 c!874498) b!5089237))

(assert (= (and d!1647312 (not c!874498)) b!5089238))

(assert (= (and b!5089238 c!874499) b!5089239))

(assert (= (and b!5089238 (not c!874499)) b!5089240))

(declare-fun m!6147232 () Bool)

(assert (=> b!5089239 m!6147232))

(declare-fun m!6147234 () Bool)

(assert (=> b!5089240 m!6147234))

(declare-fun m!6147236 () Bool)

(assert (=> b!5089240 m!6147236))

(assert (=> b!5089240 m!6147234))

(assert (=> b!5089240 m!6147236))

(declare-fun m!6147238 () Bool)

(assert (=> b!5089240 m!6147238))

(assert (=> b!5089122 d!1647312))

(declare-fun b!5089242 () Bool)

(declare-fun e!3173979 () List!58627)

(declare-fun e!3173980 () List!58627)

(assert (=> b!5089242 (= e!3173979 e!3173980)))

(declare-fun c!874501 () Bool)

(assert (=> b!5089242 (= c!874501 ((_ is Leaf!25932) (right!43229 (right!43229 (left!42899 t!3643)))))))

(declare-fun b!5089243 () Bool)

(assert (=> b!5089243 (= e!3173980 (list!19072 (xs!19000 (right!43229 (right!43229 (left!42899 t!3643))))))))

(declare-fun b!5089241 () Bool)

(assert (=> b!5089241 (= e!3173979 Nil!58503)))

(declare-fun b!5089244 () Bool)

(assert (=> b!5089244 (= e!3173980 (++!12825 (list!19070 (left!42899 (right!43229 (right!43229 (left!42899 t!3643))))) (list!19070 (right!43229 (right!43229 (right!43229 (left!42899 t!3643)))))))))

(declare-fun d!1647314 () Bool)

(declare-fun c!874500 () Bool)

(assert (=> d!1647314 (= c!874500 ((_ is Empty!15618) (right!43229 (right!43229 (left!42899 t!3643)))))))

(assert (=> d!1647314 (= (list!19070 (right!43229 (right!43229 (left!42899 t!3643)))) e!3173979)))

(assert (= (and d!1647314 c!874500) b!5089241))

(assert (= (and d!1647314 (not c!874500)) b!5089242))

(assert (= (and b!5089242 c!874501) b!5089243))

(assert (= (and b!5089242 (not c!874501)) b!5089244))

(declare-fun m!6147240 () Bool)

(assert (=> b!5089243 m!6147240))

(declare-fun m!6147242 () Bool)

(assert (=> b!5089244 m!6147242))

(declare-fun m!6147244 () Bool)

(assert (=> b!5089244 m!6147244))

(assert (=> b!5089244 m!6147242))

(assert (=> b!5089244 m!6147244))

(declare-fun m!6147246 () Bool)

(assert (=> b!5089244 m!6147246))

(assert (=> b!5089122 d!1647314))

(declare-fun d!1647316 () Bool)

(declare-fun lt!2092178 () Int)

(assert (=> d!1647316 (>= lt!2092178 0)))

(declare-fun e!3173981 () Int)

(assert (=> d!1647316 (= lt!2092178 e!3173981)))

(declare-fun c!874502 () Bool)

(assert (=> d!1647316 (= c!874502 ((_ is Nil!58503) (list!19072 (xs!19000 t!3643))))))

(assert (=> d!1647316 (= (size!39181 (list!19072 (xs!19000 t!3643))) lt!2092178)))

(declare-fun b!5089245 () Bool)

(assert (=> b!5089245 (= e!3173981 0)))

(declare-fun b!5089246 () Bool)

(assert (=> b!5089246 (= e!3173981 (+ 1 (size!39181 (t!371504 (list!19072 (xs!19000 t!3643))))))))

(assert (= (and d!1647316 c!874502) b!5089245))

(assert (= (and d!1647316 (not c!874502)) b!5089246))

(declare-fun m!6147248 () Bool)

(assert (=> b!5089246 m!6147248))

(assert (=> b!5089058 d!1647316))

(declare-fun d!1647318 () Bool)

(assert (=> d!1647318 (= (list!19072 (xs!19000 t!3643)) (innerList!15706 (xs!19000 t!3643)))))

(assert (=> b!5089058 d!1647318))

(declare-fun d!1647320 () Bool)

(declare-fun c!874503 () Bool)

(assert (=> d!1647320 (= c!874503 ((_ is Node!15618) (left!42899 (right!43229 (left!42899 t!3643)))))))

(declare-fun e!3173982 () Bool)

(assert (=> d!1647320 (= (inv!77844 (left!42899 (right!43229 (left!42899 t!3643)))) e!3173982)))

(declare-fun b!5089247 () Bool)

(assert (=> b!5089247 (= e!3173982 (inv!77848 (left!42899 (right!43229 (left!42899 t!3643)))))))

(declare-fun b!5089248 () Bool)

(declare-fun e!3173983 () Bool)

(assert (=> b!5089248 (= e!3173982 e!3173983)))

(declare-fun res!2166389 () Bool)

(assert (=> b!5089248 (= res!2166389 (not ((_ is Leaf!25932) (left!42899 (right!43229 (left!42899 t!3643))))))))

(assert (=> b!5089248 (=> res!2166389 e!3173983)))

(declare-fun b!5089249 () Bool)

(assert (=> b!5089249 (= e!3173983 (inv!77849 (left!42899 (right!43229 (left!42899 t!3643)))))))

(assert (= (and d!1647320 c!874503) b!5089247))

(assert (= (and d!1647320 (not c!874503)) b!5089248))

(assert (= (and b!5089248 (not res!2166389)) b!5089249))

(declare-fun m!6147250 () Bool)

(assert (=> b!5089247 m!6147250))

(declare-fun m!6147252 () Bool)

(assert (=> b!5089249 m!6147252))

(assert (=> b!5089174 d!1647320))

(declare-fun d!1647322 () Bool)

(declare-fun c!874504 () Bool)

(assert (=> d!1647322 (= c!874504 ((_ is Node!15618) (right!43229 (right!43229 (left!42899 t!3643)))))))

(declare-fun e!3173984 () Bool)

(assert (=> d!1647322 (= (inv!77844 (right!43229 (right!43229 (left!42899 t!3643)))) e!3173984)))

(declare-fun b!5089250 () Bool)

(assert (=> b!5089250 (= e!3173984 (inv!77848 (right!43229 (right!43229 (left!42899 t!3643)))))))

(declare-fun b!5089251 () Bool)

(declare-fun e!3173985 () Bool)

(assert (=> b!5089251 (= e!3173984 e!3173985)))

(declare-fun res!2166390 () Bool)

(assert (=> b!5089251 (= res!2166390 (not ((_ is Leaf!25932) (right!43229 (right!43229 (left!42899 t!3643))))))))

(assert (=> b!5089251 (=> res!2166390 e!3173985)))

(declare-fun b!5089252 () Bool)

(assert (=> b!5089252 (= e!3173985 (inv!77849 (right!43229 (right!43229 (left!42899 t!3643)))))))

(assert (= (and d!1647322 c!874504) b!5089250))

(assert (= (and d!1647322 (not c!874504)) b!5089251))

(assert (= (and b!5089251 (not res!2166390)) b!5089252))

(declare-fun m!6147254 () Bool)

(assert (=> b!5089250 m!6147254))

(declare-fun m!6147256 () Bool)

(assert (=> b!5089252 m!6147256))

(assert (=> b!5089174 d!1647322))

(declare-fun d!1647324 () Bool)

(assert (=> d!1647324 (= (max!0 (height!2170 (left!42899 (left!42899 t!3643))) (height!2170 (right!43229 (left!42899 t!3643)))) (ite (< (height!2170 (left!42899 (left!42899 t!3643))) (height!2170 (right!43229 (left!42899 t!3643)))) (height!2170 (right!43229 (left!42899 t!3643))) (height!2170 (left!42899 (left!42899 t!3643)))))))

(assert (=> b!5089141 d!1647324))

(declare-fun d!1647326 () Bool)

(assert (=> d!1647326 (= (height!2170 (left!42899 (left!42899 t!3643))) (ite ((_ is Empty!15618) (left!42899 (left!42899 t!3643))) 0 (ite ((_ is Leaf!25932) (left!42899 (left!42899 t!3643))) 1 (cheight!15829 (left!42899 (left!42899 t!3643))))))))

(assert (=> b!5089141 d!1647326))

(declare-fun d!1647328 () Bool)

(assert (=> d!1647328 (= (height!2170 (right!43229 (left!42899 t!3643))) (ite ((_ is Empty!15618) (right!43229 (left!42899 t!3643))) 0 (ite ((_ is Leaf!25932) (right!43229 (left!42899 t!3643))) 1 (cheight!15829 (right!43229 (left!42899 t!3643))))))))

(assert (=> b!5089141 d!1647328))

(declare-fun d!1647330 () Bool)

(declare-fun lt!2092179 () Int)

(assert (=> d!1647330 (>= lt!2092179 0)))

(declare-fun e!3173986 () Int)

(assert (=> d!1647330 (= lt!2092179 e!3173986)))

(declare-fun c!874505 () Bool)

(assert (=> d!1647330 (= c!874505 ((_ is Nil!58503) (list!19072 (xs!19000 (right!43229 t!3643)))))))

(assert (=> d!1647330 (= (size!39181 (list!19072 (xs!19000 (right!43229 t!3643)))) lt!2092179)))

(declare-fun b!5089253 () Bool)

(assert (=> b!5089253 (= e!3173986 0)))

(declare-fun b!5089254 () Bool)

(assert (=> b!5089254 (= e!3173986 (+ 1 (size!39181 (t!371504 (list!19072 (xs!19000 (right!43229 t!3643)))))))))

(assert (= (and d!1647330 c!874505) b!5089253))

(assert (= (and d!1647330 (not c!874505)) b!5089254))

(declare-fun m!6147258 () Bool)

(assert (=> b!5089254 m!6147258))

(assert (=> b!5089045 d!1647330))

(assert (=> b!5089045 d!1647214))

(declare-fun b!5089256 () Bool)

(declare-fun e!3173988 () List!58627)

(assert (=> b!5089256 (= e!3173988 (Cons!58503 (h!64951 (list!19070 (left!42899 (right!43229 (right!43229 t!3643))))) (++!12825 (t!371504 (list!19070 (left!42899 (right!43229 (right!43229 t!3643))))) (list!19070 (right!43229 (right!43229 (right!43229 t!3643)))))))))

(declare-fun b!5089257 () Bool)

(declare-fun res!2166392 () Bool)

(declare-fun e!3173987 () Bool)

(assert (=> b!5089257 (=> (not res!2166392) (not e!3173987))))

(declare-fun lt!2092180 () List!58627)

(assert (=> b!5089257 (= res!2166392 (= (size!39181 lt!2092180) (+ (size!39181 (list!19070 (left!42899 (right!43229 (right!43229 t!3643))))) (size!39181 (list!19070 (right!43229 (right!43229 (right!43229 t!3643))))))))))

(declare-fun d!1647332 () Bool)

(assert (=> d!1647332 e!3173987))

(declare-fun res!2166391 () Bool)

(assert (=> d!1647332 (=> (not res!2166391) (not e!3173987))))

(assert (=> d!1647332 (= res!2166391 (= (content!10435 lt!2092180) ((_ map or) (content!10435 (list!19070 (left!42899 (right!43229 (right!43229 t!3643))))) (content!10435 (list!19070 (right!43229 (right!43229 (right!43229 t!3643))))))))))

(assert (=> d!1647332 (= lt!2092180 e!3173988)))

(declare-fun c!874506 () Bool)

(assert (=> d!1647332 (= c!874506 ((_ is Nil!58503) (list!19070 (left!42899 (right!43229 (right!43229 t!3643))))))))

(assert (=> d!1647332 (= (++!12825 (list!19070 (left!42899 (right!43229 (right!43229 t!3643)))) (list!19070 (right!43229 (right!43229 (right!43229 t!3643))))) lt!2092180)))

(declare-fun b!5089255 () Bool)

(assert (=> b!5089255 (= e!3173988 (list!19070 (right!43229 (right!43229 (right!43229 t!3643)))))))

(declare-fun b!5089258 () Bool)

(assert (=> b!5089258 (= e!3173987 (or (not (= (list!19070 (right!43229 (right!43229 (right!43229 t!3643)))) Nil!58503)) (= lt!2092180 (list!19070 (left!42899 (right!43229 (right!43229 t!3643)))))))))

(assert (= (and d!1647332 c!874506) b!5089255))

(assert (= (and d!1647332 (not c!874506)) b!5089256))

(assert (= (and d!1647332 res!2166391) b!5089257))

(assert (= (and b!5089257 res!2166392) b!5089258))

(assert (=> b!5089256 m!6146984))

(declare-fun m!6147260 () Bool)

(assert (=> b!5089256 m!6147260))

(declare-fun m!6147262 () Bool)

(assert (=> b!5089257 m!6147262))

(assert (=> b!5089257 m!6146982))

(declare-fun m!6147264 () Bool)

(assert (=> b!5089257 m!6147264))

(assert (=> b!5089257 m!6146984))

(declare-fun m!6147266 () Bool)

(assert (=> b!5089257 m!6147266))

(declare-fun m!6147268 () Bool)

(assert (=> d!1647332 m!6147268))

(assert (=> d!1647332 m!6146982))

(declare-fun m!6147270 () Bool)

(assert (=> d!1647332 m!6147270))

(assert (=> d!1647332 m!6146984))

(declare-fun m!6147272 () Bool)

(assert (=> d!1647332 m!6147272))

(assert (=> b!5089107 d!1647332))

(declare-fun b!5089260 () Bool)

(declare-fun e!3173989 () List!58627)

(declare-fun e!3173990 () List!58627)

(assert (=> b!5089260 (= e!3173989 e!3173990)))

(declare-fun c!874508 () Bool)

(assert (=> b!5089260 (= c!874508 ((_ is Leaf!25932) (left!42899 (right!43229 (right!43229 t!3643)))))))

(declare-fun b!5089261 () Bool)

(assert (=> b!5089261 (= e!3173990 (list!19072 (xs!19000 (left!42899 (right!43229 (right!43229 t!3643))))))))

(declare-fun b!5089259 () Bool)

(assert (=> b!5089259 (= e!3173989 Nil!58503)))

(declare-fun b!5089262 () Bool)

(assert (=> b!5089262 (= e!3173990 (++!12825 (list!19070 (left!42899 (left!42899 (right!43229 (right!43229 t!3643))))) (list!19070 (right!43229 (left!42899 (right!43229 (right!43229 t!3643)))))))))

(declare-fun d!1647334 () Bool)

(declare-fun c!874507 () Bool)

(assert (=> d!1647334 (= c!874507 ((_ is Empty!15618) (left!42899 (right!43229 (right!43229 t!3643)))))))

(assert (=> d!1647334 (= (list!19070 (left!42899 (right!43229 (right!43229 t!3643)))) e!3173989)))

(assert (= (and d!1647334 c!874507) b!5089259))

(assert (= (and d!1647334 (not c!874507)) b!5089260))

(assert (= (and b!5089260 c!874508) b!5089261))

(assert (= (and b!5089260 (not c!874508)) b!5089262))

(declare-fun m!6147274 () Bool)

(assert (=> b!5089261 m!6147274))

(declare-fun m!6147276 () Bool)

(assert (=> b!5089262 m!6147276))

(declare-fun m!6147278 () Bool)

(assert (=> b!5089262 m!6147278))

(assert (=> b!5089262 m!6147276))

(assert (=> b!5089262 m!6147278))

(declare-fun m!6147280 () Bool)

(assert (=> b!5089262 m!6147280))

(assert (=> b!5089107 d!1647334))

(declare-fun b!5089264 () Bool)

(declare-fun e!3173991 () List!58627)

(declare-fun e!3173992 () List!58627)

(assert (=> b!5089264 (= e!3173991 e!3173992)))

(declare-fun c!874510 () Bool)

(assert (=> b!5089264 (= c!874510 ((_ is Leaf!25932) (right!43229 (right!43229 (right!43229 t!3643)))))))

(declare-fun b!5089265 () Bool)

(assert (=> b!5089265 (= e!3173992 (list!19072 (xs!19000 (right!43229 (right!43229 (right!43229 t!3643))))))))

(declare-fun b!5089263 () Bool)

(assert (=> b!5089263 (= e!3173991 Nil!58503)))

(declare-fun b!5089266 () Bool)

(assert (=> b!5089266 (= e!3173992 (++!12825 (list!19070 (left!42899 (right!43229 (right!43229 (right!43229 t!3643))))) (list!19070 (right!43229 (right!43229 (right!43229 (right!43229 t!3643)))))))))

(declare-fun d!1647336 () Bool)

(declare-fun c!874509 () Bool)

(assert (=> d!1647336 (= c!874509 ((_ is Empty!15618) (right!43229 (right!43229 (right!43229 t!3643)))))))

(assert (=> d!1647336 (= (list!19070 (right!43229 (right!43229 (right!43229 t!3643)))) e!3173991)))

(assert (= (and d!1647336 c!874509) b!5089263))

(assert (= (and d!1647336 (not c!874509)) b!5089264))

(assert (= (and b!5089264 c!874510) b!5089265))

(assert (= (and b!5089264 (not c!874510)) b!5089266))

(declare-fun m!6147282 () Bool)

(assert (=> b!5089265 m!6147282))

(declare-fun m!6147284 () Bool)

(assert (=> b!5089266 m!6147284))

(declare-fun m!6147286 () Bool)

(assert (=> b!5089266 m!6147286))

(assert (=> b!5089266 m!6147284))

(assert (=> b!5089266 m!6147286))

(declare-fun m!6147288 () Bool)

(assert (=> b!5089266 m!6147288))

(assert (=> b!5089107 d!1647336))

(declare-fun d!1647338 () Bool)

(declare-fun lt!2092181 () Int)

(assert (=> d!1647338 (>= lt!2092181 0)))

(declare-fun e!3173993 () Int)

(assert (=> d!1647338 (= lt!2092181 e!3173993)))

(declare-fun c!874511 () Bool)

(assert (=> d!1647338 (= c!874511 ((_ is Nil!58503) (t!371504 (innerList!15706 (xs!19000 t!3643)))))))

(assert (=> d!1647338 (= (size!39181 (t!371504 (innerList!15706 (xs!19000 t!3643)))) lt!2092181)))

(declare-fun b!5089267 () Bool)

(assert (=> b!5089267 (= e!3173993 0)))

(declare-fun b!5089268 () Bool)

(assert (=> b!5089268 (= e!3173993 (+ 1 (size!39181 (t!371504 (t!371504 (innerList!15706 (xs!19000 t!3643)))))))))

(assert (= (and d!1647338 c!874511) b!5089267))

(assert (= (and d!1647338 (not c!874511)) b!5089268))

(declare-fun m!6147290 () Bool)

(assert (=> b!5089268 m!6147290))

(assert (=> b!5089152 d!1647338))

(declare-fun b!5089270 () Bool)

(declare-fun e!3173995 () List!58627)

(assert (=> b!5089270 (= e!3173995 (Cons!58503 (h!64951 (t!371504 (list!19070 (left!42899 (left!42899 t!3643))))) (++!12825 (t!371504 (t!371504 (list!19070 (left!42899 (left!42899 t!3643))))) (list!19070 (right!43229 (left!42899 t!3643))))))))

(declare-fun b!5089271 () Bool)

(declare-fun res!2166394 () Bool)

(declare-fun e!3173994 () Bool)

(assert (=> b!5089271 (=> (not res!2166394) (not e!3173994))))

(declare-fun lt!2092182 () List!58627)

(assert (=> b!5089271 (= res!2166394 (= (size!39181 lt!2092182) (+ (size!39181 (t!371504 (list!19070 (left!42899 (left!42899 t!3643))))) (size!39181 (list!19070 (right!43229 (left!42899 t!3643)))))))))

(declare-fun d!1647340 () Bool)

(assert (=> d!1647340 e!3173994))

(declare-fun res!2166393 () Bool)

(assert (=> d!1647340 (=> (not res!2166393) (not e!3173994))))

(assert (=> d!1647340 (= res!2166393 (= (content!10435 lt!2092182) ((_ map or) (content!10435 (t!371504 (list!19070 (left!42899 (left!42899 t!3643))))) (content!10435 (list!19070 (right!43229 (left!42899 t!3643)))))))))

(assert (=> d!1647340 (= lt!2092182 e!3173995)))

(declare-fun c!874512 () Bool)

(assert (=> d!1647340 (= c!874512 ((_ is Nil!58503) (t!371504 (list!19070 (left!42899 (left!42899 t!3643))))))))

(assert (=> d!1647340 (= (++!12825 (t!371504 (list!19070 (left!42899 (left!42899 t!3643)))) (list!19070 (right!43229 (left!42899 t!3643)))) lt!2092182)))

(declare-fun b!5089269 () Bool)

(assert (=> b!5089269 (= e!3173995 (list!19070 (right!43229 (left!42899 t!3643))))))

(declare-fun b!5089272 () Bool)

(assert (=> b!5089272 (= e!3173994 (or (not (= (list!19070 (right!43229 (left!42899 t!3643))) Nil!58503)) (= lt!2092182 (t!371504 (list!19070 (left!42899 (left!42899 t!3643)))))))))

(assert (= (and d!1647340 c!874512) b!5089269))

(assert (= (and d!1647340 (not c!874512)) b!5089270))

(assert (= (and d!1647340 res!2166393) b!5089271))

(assert (= (and b!5089271 res!2166394) b!5089272))

(assert (=> b!5089270 m!6146850))

(declare-fun m!6147292 () Bool)

(assert (=> b!5089270 m!6147292))

(declare-fun m!6147294 () Bool)

(assert (=> b!5089271 m!6147294))

(declare-fun m!6147296 () Bool)

(assert (=> b!5089271 m!6147296))

(assert (=> b!5089271 m!6146850))

(assert (=> b!5089271 m!6146996))

(declare-fun m!6147298 () Bool)

(assert (=> d!1647340 m!6147298))

(declare-fun m!6147300 () Bool)

(assert (=> d!1647340 m!6147300))

(assert (=> d!1647340 m!6146850))

(assert (=> d!1647340 m!6147002))

(assert (=> b!5089109 d!1647340))

(declare-fun d!1647342 () Bool)

(assert (=> d!1647342 (= (inv!77845 (xs!19000 (left!42899 (right!43229 t!3643)))) (<= (size!39181 (innerList!15706 (xs!19000 (left!42899 (right!43229 t!3643))))) 2147483647))))

(declare-fun bs!1191078 () Bool)

(assert (= bs!1191078 d!1647342))

(declare-fun m!6147302 () Bool)

(assert (=> bs!1191078 m!6147302))

(assert (=> b!5089164 d!1647342))

(assert (=> d!1647220 d!1647316))

(assert (=> d!1647220 d!1647318))

(declare-fun d!1647344 () Bool)

(declare-fun lt!2092183 () Int)

(assert (=> d!1647344 (= lt!2092183 (size!39181 (list!19070 (left!42899 (left!42899 t!3643)))))))

(assert (=> d!1647344 (= lt!2092183 (ite ((_ is Empty!15618) (left!42899 (left!42899 t!3643))) 0 (ite ((_ is Leaf!25932) (left!42899 (left!42899 t!3643))) (csize!31467 (left!42899 (left!42899 t!3643))) (csize!31466 (left!42899 (left!42899 t!3643))))))))

(assert (=> d!1647344 (= (size!39180 (left!42899 (left!42899 t!3643))) lt!2092183)))

(declare-fun bs!1191079 () Bool)

(assert (= bs!1191079 d!1647344))

(assert (=> bs!1191079 m!6146848))

(assert (=> bs!1191079 m!6146848))

(assert (=> bs!1191079 m!6146994))

(assert (=> d!1647268 d!1647344))

(declare-fun d!1647346 () Bool)

(declare-fun lt!2092184 () Int)

(assert (=> d!1647346 (= lt!2092184 (size!39181 (list!19070 (right!43229 (left!42899 t!3643)))))))

(assert (=> d!1647346 (= lt!2092184 (ite ((_ is Empty!15618) (right!43229 (left!42899 t!3643))) 0 (ite ((_ is Leaf!25932) (right!43229 (left!42899 t!3643))) (csize!31467 (right!43229 (left!42899 t!3643))) (csize!31466 (right!43229 (left!42899 t!3643))))))))

(assert (=> d!1647346 (= (size!39180 (right!43229 (left!42899 t!3643))) lt!2092184)))

(declare-fun bs!1191080 () Bool)

(assert (= bs!1191080 d!1647346))

(assert (=> bs!1191080 m!6146850))

(assert (=> bs!1191080 m!6146850))

(assert (=> bs!1191080 m!6146996))

(assert (=> d!1647268 d!1647346))

(declare-fun d!1647348 () Bool)

(declare-fun c!874515 () Bool)

(assert (=> d!1647348 (= c!874515 ((_ is Nil!58503) lt!2092168))))

(declare-fun e!3173998 () (InoxSet T!105468))

(assert (=> d!1647348 (= (content!10435 lt!2092168) e!3173998)))

(declare-fun b!5089277 () Bool)

(assert (=> b!5089277 (= e!3173998 ((as const (Array T!105468 Bool)) false))))

(declare-fun b!5089278 () Bool)

(assert (=> b!5089278 (= e!3173998 ((_ map or) (store ((as const (Array T!105468 Bool)) false) (h!64951 lt!2092168) true) (content!10435 (t!371504 lt!2092168))))))

(assert (= (and d!1647348 c!874515) b!5089277))

(assert (= (and d!1647348 (not c!874515)) b!5089278))

(declare-fun m!6147304 () Bool)

(assert (=> b!5089278 m!6147304))

(declare-fun m!6147306 () Bool)

(assert (=> b!5089278 m!6147306))

(assert (=> d!1647248 d!1647348))

(declare-fun d!1647350 () Bool)

(declare-fun c!874516 () Bool)

(assert (=> d!1647350 (= c!874516 ((_ is Nil!58503) (list!19070 (left!42899 (left!42899 t!3643)))))))

(declare-fun e!3173999 () (InoxSet T!105468))

(assert (=> d!1647350 (= (content!10435 (list!19070 (left!42899 (left!42899 t!3643)))) e!3173999)))

(declare-fun b!5089279 () Bool)

(assert (=> b!5089279 (= e!3173999 ((as const (Array T!105468 Bool)) false))))

(declare-fun b!5089280 () Bool)

(assert (=> b!5089280 (= e!3173999 ((_ map or) (store ((as const (Array T!105468 Bool)) false) (h!64951 (list!19070 (left!42899 (left!42899 t!3643)))) true) (content!10435 (t!371504 (list!19070 (left!42899 (left!42899 t!3643)))))))))

(assert (= (and d!1647350 c!874516) b!5089279))

(assert (= (and d!1647350 (not c!874516)) b!5089280))

(declare-fun m!6147308 () Bool)

(assert (=> b!5089280 m!6147308))

(assert (=> b!5089280 m!6147300))

(assert (=> d!1647248 d!1647350))

(declare-fun d!1647352 () Bool)

(declare-fun c!874517 () Bool)

(assert (=> d!1647352 (= c!874517 ((_ is Nil!58503) (list!19070 (right!43229 (left!42899 t!3643)))))))

(declare-fun e!3174000 () (InoxSet T!105468))

(assert (=> d!1647352 (= (content!10435 (list!19070 (right!43229 (left!42899 t!3643)))) e!3174000)))

(declare-fun b!5089281 () Bool)

(assert (=> b!5089281 (= e!3174000 ((as const (Array T!105468 Bool)) false))))

(declare-fun b!5089282 () Bool)

(assert (=> b!5089282 (= e!3174000 ((_ map or) (store ((as const (Array T!105468 Bool)) false) (h!64951 (list!19070 (right!43229 (left!42899 t!3643)))) true) (content!10435 (t!371504 (list!19070 (right!43229 (left!42899 t!3643)))))))))

(assert (= (and d!1647352 c!874517) b!5089281))

(assert (= (and d!1647352 (not c!874517)) b!5089282))

(declare-fun m!6147310 () Bool)

(assert (=> b!5089282 m!6147310))

(declare-fun m!6147312 () Bool)

(assert (=> b!5089282 m!6147312))

(assert (=> d!1647248 d!1647352))

(declare-fun d!1647354 () Bool)

(declare-fun c!874518 () Bool)

(assert (=> d!1647354 (= c!874518 ((_ is Nil!58503) lt!2092167))))

(declare-fun e!3174001 () (InoxSet T!105468))

(assert (=> d!1647354 (= (content!10435 lt!2092167) e!3174001)))

(declare-fun b!5089283 () Bool)

(assert (=> b!5089283 (= e!3174001 ((as const (Array T!105468 Bool)) false))))

(declare-fun b!5089284 () Bool)

(assert (=> b!5089284 (= e!3174001 ((_ map or) (store ((as const (Array T!105468 Bool)) false) (h!64951 lt!2092167) true) (content!10435 (t!371504 lt!2092167))))))

(assert (= (and d!1647354 c!874518) b!5089283))

(assert (= (and d!1647354 (not c!874518)) b!5089284))

(declare-fun m!6147314 () Bool)

(assert (=> b!5089284 m!6147314))

(declare-fun m!6147316 () Bool)

(assert (=> b!5089284 m!6147316))

(assert (=> d!1647228 d!1647354))

(declare-fun d!1647356 () Bool)

(declare-fun c!874519 () Bool)

(assert (=> d!1647356 (= c!874519 ((_ is Nil!58503) (list!19070 (left!42899 (right!43229 t!3643)))))))

(declare-fun e!3174002 () (InoxSet T!105468))

(assert (=> d!1647356 (= (content!10435 (list!19070 (left!42899 (right!43229 t!3643)))) e!3174002)))

(declare-fun b!5089285 () Bool)

(assert (=> b!5089285 (= e!3174002 ((as const (Array T!105468 Bool)) false))))

(declare-fun b!5089286 () Bool)

(assert (=> b!5089286 (= e!3174002 ((_ map or) (store ((as const (Array T!105468 Bool)) false) (h!64951 (list!19070 (left!42899 (right!43229 t!3643)))) true) (content!10435 (t!371504 (list!19070 (left!42899 (right!43229 t!3643)))))))))

(assert (= (and d!1647356 c!874519) b!5089285))

(assert (= (and d!1647356 (not c!874519)) b!5089286))

(declare-fun m!6147318 () Bool)

(assert (=> b!5089286 m!6147318))

(declare-fun m!6147320 () Bool)

(assert (=> b!5089286 m!6147320))

(assert (=> d!1647228 d!1647356))

(declare-fun d!1647358 () Bool)

(declare-fun c!874520 () Bool)

(assert (=> d!1647358 (= c!874520 ((_ is Nil!58503) (list!19070 (right!43229 (right!43229 t!3643)))))))

(declare-fun e!3174003 () (InoxSet T!105468))

(assert (=> d!1647358 (= (content!10435 (list!19070 (right!43229 (right!43229 t!3643)))) e!3174003)))

(declare-fun b!5089287 () Bool)

(assert (=> b!5089287 (= e!3174003 ((as const (Array T!105468 Bool)) false))))

(declare-fun b!5089288 () Bool)

(assert (=> b!5089288 (= e!3174003 ((_ map or) (store ((as const (Array T!105468 Bool)) false) (h!64951 (list!19070 (right!43229 (right!43229 t!3643)))) true) (content!10435 (t!371504 (list!19070 (right!43229 (right!43229 t!3643)))))))))

(assert (= (and d!1647358 c!874520) b!5089287))

(assert (= (and d!1647358 (not c!874520)) b!5089288))

(declare-fun m!6147322 () Bool)

(assert (=> b!5089288 m!6147322))

(declare-fun m!6147324 () Bool)

(assert (=> b!5089288 m!6147324))

(assert (=> d!1647228 d!1647358))

(assert (=> b!5089033 d!1647272))

(assert (=> b!5089033 d!1647274))

(declare-fun d!1647360 () Bool)

(declare-fun res!2166395 () Bool)

(declare-fun e!3174004 () Bool)

(assert (=> d!1647360 (=> (not res!2166395) (not e!3174004))))

(assert (=> d!1647360 (= res!2166395 (= (csize!31466 (left!42899 (left!42899 t!3643))) (+ (size!39180 (left!42899 (left!42899 (left!42899 t!3643)))) (size!39180 (right!43229 (left!42899 (left!42899 t!3643)))))))))

(assert (=> d!1647360 (= (inv!77848 (left!42899 (left!42899 t!3643))) e!3174004)))

(declare-fun b!5089289 () Bool)

(declare-fun res!2166396 () Bool)

(assert (=> b!5089289 (=> (not res!2166396) (not e!3174004))))

(assert (=> b!5089289 (= res!2166396 (and (not (= (left!42899 (left!42899 (left!42899 t!3643))) Empty!15618)) (not (= (right!43229 (left!42899 (left!42899 t!3643))) Empty!15618))))))

(declare-fun b!5089290 () Bool)

(declare-fun res!2166397 () Bool)

(assert (=> b!5089290 (=> (not res!2166397) (not e!3174004))))

(assert (=> b!5089290 (= res!2166397 (= (cheight!15829 (left!42899 (left!42899 t!3643))) (+ (max!0 (height!2170 (left!42899 (left!42899 (left!42899 t!3643)))) (height!2170 (right!43229 (left!42899 (left!42899 t!3643))))) 1)))))

(declare-fun b!5089291 () Bool)

(assert (=> b!5089291 (= e!3174004 (<= 0 (cheight!15829 (left!42899 (left!42899 t!3643)))))))

(assert (= (and d!1647360 res!2166395) b!5089289))

(assert (= (and b!5089289 res!2166396) b!5089290))

(assert (= (and b!5089290 res!2166397) b!5089291))

(declare-fun m!6147326 () Bool)

(assert (=> d!1647360 m!6147326))

(declare-fun m!6147328 () Bool)

(assert (=> d!1647360 m!6147328))

(declare-fun m!6147330 () Bool)

(assert (=> b!5089290 m!6147330))

(declare-fun m!6147332 () Bool)

(assert (=> b!5089290 m!6147332))

(assert (=> b!5089290 m!6147330))

(assert (=> b!5089290 m!6147332))

(declare-fun m!6147334 () Bool)

(assert (=> b!5089290 m!6147334))

(assert (=> b!5089060 d!1647360))

(declare-fun b!5089293 () Bool)

(declare-fun e!3174006 () List!58627)

(assert (=> b!5089293 (= e!3174006 (Cons!58503 (h!64951 (list!19070 (left!42899 t!3643))) (++!12825 (t!371504 (list!19070 (left!42899 t!3643))) (list!19070 (right!43229 t!3643)))))))

(declare-fun b!5089294 () Bool)

(declare-fun res!2166399 () Bool)

(declare-fun e!3174005 () Bool)

(assert (=> b!5089294 (=> (not res!2166399) (not e!3174005))))

(declare-fun lt!2092185 () List!58627)

(assert (=> b!5089294 (= res!2166399 (= (size!39181 lt!2092185) (+ (size!39181 (list!19070 (left!42899 t!3643))) (size!39181 (list!19070 (right!43229 t!3643))))))))

(declare-fun d!1647362 () Bool)

(assert (=> d!1647362 e!3174005))

(declare-fun res!2166398 () Bool)

(assert (=> d!1647362 (=> (not res!2166398) (not e!3174005))))

(assert (=> d!1647362 (= res!2166398 (= (content!10435 lt!2092185) ((_ map or) (content!10435 (list!19070 (left!42899 t!3643))) (content!10435 (list!19070 (right!43229 t!3643))))))))

(assert (=> d!1647362 (= lt!2092185 e!3174006)))

(declare-fun c!874521 () Bool)

(assert (=> d!1647362 (= c!874521 ((_ is Nil!58503) (list!19070 (left!42899 t!3643))))))

(assert (=> d!1647362 (= (++!12825 (list!19070 (left!42899 t!3643)) (list!19070 (right!43229 t!3643))) lt!2092185)))

(declare-fun b!5089292 () Bool)

(assert (=> b!5089292 (= e!3174006 (list!19070 (right!43229 t!3643)))))

(declare-fun b!5089295 () Bool)

(assert (=> b!5089295 (= e!3174005 (or (not (= (list!19070 (right!43229 t!3643)) Nil!58503)) (= lt!2092185 (list!19070 (left!42899 t!3643)))))))

(assert (= (and d!1647362 c!874521) b!5089292))

(assert (= (and d!1647362 (not c!874521)) b!5089293))

(assert (= (and d!1647362 res!2166398) b!5089294))

(assert (= (and b!5089294 res!2166399) b!5089295))

(assert (=> b!5089293 m!6146808))

(declare-fun m!6147336 () Bool)

(assert (=> b!5089293 m!6147336))

(declare-fun m!6147338 () Bool)

(assert (=> b!5089294 m!6147338))

(assert (=> b!5089294 m!6146804))

(assert (=> b!5089294 m!6146806))

(assert (=> b!5089294 m!6146808))

(assert (=> b!5089294 m!6146810))

(declare-fun m!6147340 () Bool)

(assert (=> d!1647362 m!6147340))

(assert (=> d!1647362 m!6146804))

(declare-fun m!6147342 () Bool)

(assert (=> d!1647362 m!6147342))

(assert (=> d!1647362 m!6146808))

(declare-fun m!6147344 () Bool)

(assert (=> d!1647362 m!6147344))

(assert (=> b!5089134 d!1647362))

(assert (=> b!5089134 d!1647182))

(assert (=> b!5089134 d!1647198))

(declare-fun d!1647364 () Bool)

(declare-fun lt!2092186 () Int)

(assert (=> d!1647364 (>= lt!2092186 0)))

(declare-fun e!3174007 () Int)

(assert (=> d!1647364 (= lt!2092186 e!3174007)))

(declare-fun c!874522 () Bool)

(assert (=> d!1647364 (= c!874522 ((_ is Nil!58503) (innerList!15706 (xs!19000 (left!42899 t!3643)))))))

(assert (=> d!1647364 (= (size!39181 (innerList!15706 (xs!19000 (left!42899 t!3643)))) lt!2092186)))

(declare-fun b!5089296 () Bool)

(assert (=> b!5089296 (= e!3174007 0)))

(declare-fun b!5089297 () Bool)

(assert (=> b!5089297 (= e!3174007 (+ 1 (size!39181 (t!371504 (innerList!15706 (xs!19000 (left!42899 t!3643)))))))))

(assert (= (and d!1647364 c!874522) b!5089296))

(assert (= (and d!1647364 (not c!874522)) b!5089297))

(declare-fun m!6147346 () Bool)

(assert (=> b!5089297 m!6147346))

(assert (=> d!1647246 d!1647364))

(declare-fun d!1647366 () Bool)

(declare-fun res!2166400 () Bool)

(declare-fun e!3174008 () Bool)

(assert (=> d!1647366 (=> (not res!2166400) (not e!3174008))))

(assert (=> d!1647366 (= res!2166400 (<= (size!39181 (list!19072 (xs!19000 (left!42899 (left!42899 t!3643))))) 512))))

(assert (=> d!1647366 (= (inv!77849 (left!42899 (left!42899 t!3643))) e!3174008)))

(declare-fun b!5089298 () Bool)

(declare-fun res!2166401 () Bool)

(assert (=> b!5089298 (=> (not res!2166401) (not e!3174008))))

(assert (=> b!5089298 (= res!2166401 (= (csize!31467 (left!42899 (left!42899 t!3643))) (size!39181 (list!19072 (xs!19000 (left!42899 (left!42899 t!3643)))))))))

(declare-fun b!5089299 () Bool)

(assert (=> b!5089299 (= e!3174008 (and (> (csize!31467 (left!42899 (left!42899 t!3643))) 0) (<= (csize!31467 (left!42899 (left!42899 t!3643))) 512)))))

(assert (= (and d!1647366 res!2166400) b!5089298))

(assert (= (and b!5089298 res!2166401) b!5089299))

(assert (=> d!1647366 m!6147004))

(assert (=> d!1647366 m!6147004))

(declare-fun m!6147348 () Bool)

(assert (=> d!1647366 m!6147348))

(assert (=> b!5089298 m!6147004))

(assert (=> b!5089298 m!6147004))

(assert (=> b!5089298 m!6147348))

(assert (=> b!5089062 d!1647366))

(declare-fun d!1647368 () Bool)

(declare-fun c!874523 () Bool)

(assert (=> d!1647368 (= c!874523 ((_ is Node!15618) (left!42899 (left!42899 (right!43229 t!3643)))))))

(declare-fun e!3174009 () Bool)

(assert (=> d!1647368 (= (inv!77844 (left!42899 (left!42899 (right!43229 t!3643)))) e!3174009)))

(declare-fun b!5089300 () Bool)

(assert (=> b!5089300 (= e!3174009 (inv!77848 (left!42899 (left!42899 (right!43229 t!3643)))))))

(declare-fun b!5089301 () Bool)

(declare-fun e!3174010 () Bool)

(assert (=> b!5089301 (= e!3174009 e!3174010)))

(declare-fun res!2166402 () Bool)

(assert (=> b!5089301 (= res!2166402 (not ((_ is Leaf!25932) (left!42899 (left!42899 (right!43229 t!3643))))))))

(assert (=> b!5089301 (=> res!2166402 e!3174010)))

(declare-fun b!5089302 () Bool)

(assert (=> b!5089302 (= e!3174010 (inv!77849 (left!42899 (left!42899 (right!43229 t!3643)))))))

(assert (= (and d!1647368 c!874523) b!5089300))

(assert (= (and d!1647368 (not c!874523)) b!5089301))

(assert (= (and b!5089301 (not res!2166402)) b!5089302))

(declare-fun m!6147350 () Bool)

(assert (=> b!5089300 m!6147350))

(declare-fun m!6147352 () Bool)

(assert (=> b!5089302 m!6147352))

(assert (=> b!5089163 d!1647368))

(declare-fun d!1647370 () Bool)

(declare-fun c!874524 () Bool)

(assert (=> d!1647370 (= c!874524 ((_ is Node!15618) (right!43229 (left!42899 (right!43229 t!3643)))))))

(declare-fun e!3174011 () Bool)

(assert (=> d!1647370 (= (inv!77844 (right!43229 (left!42899 (right!43229 t!3643)))) e!3174011)))

(declare-fun b!5089303 () Bool)

(assert (=> b!5089303 (= e!3174011 (inv!77848 (right!43229 (left!42899 (right!43229 t!3643)))))))

(declare-fun b!5089304 () Bool)

(declare-fun e!3174012 () Bool)

(assert (=> b!5089304 (= e!3174011 e!3174012)))

(declare-fun res!2166403 () Bool)

(assert (=> b!5089304 (= res!2166403 (not ((_ is Leaf!25932) (right!43229 (left!42899 (right!43229 t!3643))))))))

(assert (=> b!5089304 (=> res!2166403 e!3174012)))

(declare-fun b!5089305 () Bool)

(assert (=> b!5089305 (= e!3174012 (inv!77849 (right!43229 (left!42899 (right!43229 t!3643)))))))

(assert (= (and d!1647370 c!874524) b!5089303))

(assert (= (and d!1647370 (not c!874524)) b!5089304))

(assert (= (and b!5089304 (not res!2166403)) b!5089305))

(declare-fun m!6147354 () Bool)

(assert (=> b!5089303 m!6147354))

(declare-fun m!6147356 () Bool)

(assert (=> b!5089305 m!6147356))

(assert (=> b!5089163 d!1647370))

(declare-fun d!1647372 () Bool)

(assert (=> d!1647372 (= (list!19072 (xs!19000 (left!42899 (right!43229 t!3643)))) (innerList!15706 (xs!19000 (left!42899 (right!43229 t!3643)))))))

(assert (=> b!5089102 d!1647372))

(declare-fun d!1647374 () Bool)

(declare-fun res!2166404 () Bool)

(declare-fun e!3174013 () Bool)

(assert (=> d!1647374 (=> (not res!2166404) (not e!3174013))))

(assert (=> d!1647374 (= res!2166404 (= (csize!31466 (right!43229 (left!42899 t!3643))) (+ (size!39180 (left!42899 (right!43229 (left!42899 t!3643)))) (size!39180 (right!43229 (right!43229 (left!42899 t!3643)))))))))

(assert (=> d!1647374 (= (inv!77848 (right!43229 (left!42899 t!3643))) e!3174013)))

(declare-fun b!5089306 () Bool)

(declare-fun res!2166405 () Bool)

(assert (=> b!5089306 (=> (not res!2166405) (not e!3174013))))

(assert (=> b!5089306 (= res!2166405 (and (not (= (left!42899 (right!43229 (left!42899 t!3643))) Empty!15618)) (not (= (right!43229 (right!43229 (left!42899 t!3643))) Empty!15618))))))

(declare-fun b!5089307 () Bool)

(declare-fun res!2166406 () Bool)

(assert (=> b!5089307 (=> (not res!2166406) (not e!3174013))))

(assert (=> b!5089307 (= res!2166406 (= (cheight!15829 (right!43229 (left!42899 t!3643))) (+ (max!0 (height!2170 (left!42899 (right!43229 (left!42899 t!3643)))) (height!2170 (right!43229 (right!43229 (left!42899 t!3643))))) 1)))))

(declare-fun b!5089308 () Bool)

(assert (=> b!5089308 (= e!3174013 (<= 0 (cheight!15829 (right!43229 (left!42899 t!3643)))))))

(assert (= (and d!1647374 res!2166404) b!5089306))

(assert (= (and b!5089306 res!2166405) b!5089307))

(assert (= (and b!5089307 res!2166406) b!5089308))

(declare-fun m!6147358 () Bool)

(assert (=> d!1647374 m!6147358))

(declare-fun m!6147360 () Bool)

(assert (=> d!1647374 m!6147360))

(declare-fun m!6147362 () Bool)

(assert (=> b!5089307 m!6147362))

(declare-fun m!6147364 () Bool)

(assert (=> b!5089307 m!6147364))

(assert (=> b!5089307 m!6147362))

(assert (=> b!5089307 m!6147364))

(declare-fun m!6147366 () Bool)

(assert (=> b!5089307 m!6147366))

(assert (=> b!5089063 d!1647374))

(declare-fun b!5089310 () Bool)

(declare-fun e!3174015 () List!58627)

(assert (=> b!5089310 (= e!3174015 (Cons!58503 (h!64951 (t!371504 (list!19070 (left!42899 (right!43229 t!3643))))) (++!12825 (t!371504 (t!371504 (list!19070 (left!42899 (right!43229 t!3643))))) (list!19070 (right!43229 (right!43229 t!3643))))))))

(declare-fun b!5089311 () Bool)

(declare-fun res!2166408 () Bool)

(declare-fun e!3174014 () Bool)

(assert (=> b!5089311 (=> (not res!2166408) (not e!3174014))))

(declare-fun lt!2092187 () List!58627)

(assert (=> b!5089311 (= res!2166408 (= (size!39181 lt!2092187) (+ (size!39181 (t!371504 (list!19070 (left!42899 (right!43229 t!3643))))) (size!39181 (list!19070 (right!43229 (right!43229 t!3643)))))))))

(declare-fun d!1647376 () Bool)

(assert (=> d!1647376 e!3174014))

(declare-fun res!2166407 () Bool)

(assert (=> d!1647376 (=> (not res!2166407) (not e!3174014))))

(assert (=> d!1647376 (= res!2166407 (= (content!10435 lt!2092187) ((_ map or) (content!10435 (t!371504 (list!19070 (left!42899 (right!43229 t!3643))))) (content!10435 (list!19070 (right!43229 (right!43229 t!3643)))))))))

(assert (=> d!1647376 (= lt!2092187 e!3174015)))

(declare-fun c!874525 () Bool)

(assert (=> d!1647376 (= c!874525 ((_ is Nil!58503) (t!371504 (list!19070 (left!42899 (right!43229 t!3643))))))))

(assert (=> d!1647376 (= (++!12825 (t!371504 (list!19070 (left!42899 (right!43229 t!3643)))) (list!19070 (right!43229 (right!43229 t!3643)))) lt!2092187)))

(declare-fun b!5089309 () Bool)

(assert (=> b!5089309 (= e!3174015 (list!19070 (right!43229 (right!43229 t!3643))))))

(declare-fun b!5089312 () Bool)

(assert (=> b!5089312 (= e!3174014 (or (not (= (list!19070 (right!43229 (right!43229 t!3643))) Nil!58503)) (= lt!2092187 (t!371504 (list!19070 (left!42899 (right!43229 t!3643)))))))))

(assert (= (and d!1647376 c!874525) b!5089309))

(assert (= (and d!1647376 (not c!874525)) b!5089310))

(assert (= (and d!1647376 res!2166407) b!5089311))

(assert (= (and b!5089311 res!2166408) b!5089312))

(assert (=> b!5089310 m!6146868))

(declare-fun m!6147368 () Bool)

(assert (=> b!5089310 m!6147368))

(declare-fun m!6147370 () Bool)

(assert (=> b!5089311 m!6147370))

(declare-fun m!6147372 () Bool)

(assert (=> b!5089311 m!6147372))

(assert (=> b!5089311 m!6146868))

(assert (=> b!5089311 m!6146964))

(declare-fun m!6147374 () Bool)

(assert (=> d!1647376 m!6147374))

(assert (=> d!1647376 m!6147320))

(assert (=> d!1647376 m!6146868))

(assert (=> d!1647376 m!6146970))

(assert (=> b!5089091 d!1647376))

(declare-fun d!1647378 () Bool)

(assert (=> d!1647378 (= (inv!77845 (xs!19000 (left!42899 (left!42899 t!3643)))) (<= (size!39181 (innerList!15706 (xs!19000 (left!42899 (left!42899 t!3643))))) 2147483647))))

(declare-fun bs!1191081 () Bool)

(assert (= bs!1191081 d!1647378))

(declare-fun m!6147376 () Bool)

(assert (=> bs!1191081 m!6147376))

(assert (=> b!5089172 d!1647378))

(assert (=> d!1647210 d!1647330))

(assert (=> d!1647210 d!1647214))

(declare-fun d!1647380 () Bool)

(assert (=> d!1647380 (= (inv!77845 (xs!19000 (right!43229 (right!43229 t!3643)))) (<= (size!39181 (innerList!15706 (xs!19000 (right!43229 (right!43229 t!3643))))) 2147483647))))

(declare-fun bs!1191082 () Bool)

(assert (= bs!1191082 d!1647380))

(declare-fun m!6147378 () Bool)

(assert (=> bs!1191082 m!6147378))

(assert (=> b!5089167 d!1647380))

(declare-fun d!1647382 () Bool)

(declare-fun lt!2092188 () Int)

(assert (=> d!1647382 (>= lt!2092188 0)))

(declare-fun e!3174016 () Int)

(assert (=> d!1647382 (= lt!2092188 e!3174016)))

(declare-fun c!874526 () Bool)

(assert (=> d!1647382 (= c!874526 ((_ is Nil!58503) (t!371504 (list!19070 t!3643))))))

(assert (=> d!1647382 (= (size!39181 (t!371504 (list!19070 t!3643))) lt!2092188)))

(declare-fun b!5089313 () Bool)

(assert (=> b!5089313 (= e!3174016 0)))

(declare-fun b!5089314 () Bool)

(assert (=> b!5089314 (= e!3174016 (+ 1 (size!39181 (t!371504 (t!371504 (list!19070 t!3643))))))))

(assert (= (and d!1647382 c!874526) b!5089313))

(assert (= (and d!1647382 (not c!874526)) b!5089314))

(declare-fun m!6147380 () Bool)

(assert (=> b!5089314 m!6147380))

(assert (=> b!5089127 d!1647382))

(declare-fun d!1647384 () Bool)

(assert (=> d!1647384 (= (list!19072 (xs!19000 (right!43229 (right!43229 t!3643)))) (innerList!15706 (xs!19000 (right!43229 (right!43229 t!3643)))))))

(assert (=> b!5089106 d!1647384))

(declare-fun d!1647386 () Bool)

(assert (=> d!1647386 (= (inv!77845 (xs!19000 (right!43229 (left!42899 t!3643)))) (<= (size!39181 (innerList!15706 (xs!19000 (right!43229 (left!42899 t!3643))))) 2147483647))))

(declare-fun bs!1191083 () Bool)

(assert (= bs!1191083 d!1647386))

(declare-fun m!6147382 () Bool)

(assert (=> bs!1191083 m!6147382))

(assert (=> b!5089175 d!1647386))

(declare-fun d!1647388 () Bool)

(declare-fun res!2166409 () Bool)

(declare-fun e!3174017 () Bool)

(assert (=> d!1647388 (=> (not res!2166409) (not e!3174017))))

(assert (=> d!1647388 (= res!2166409 (= (csize!31466 (right!43229 (right!43229 t!3643))) (+ (size!39180 (left!42899 (right!43229 (right!43229 t!3643)))) (size!39180 (right!43229 (right!43229 (right!43229 t!3643)))))))))

(assert (=> d!1647388 (= (inv!77848 (right!43229 (right!43229 t!3643))) e!3174017)))

(declare-fun b!5089315 () Bool)

(declare-fun res!2166410 () Bool)

(assert (=> b!5089315 (=> (not res!2166410) (not e!3174017))))

(assert (=> b!5089315 (= res!2166410 (and (not (= (left!42899 (right!43229 (right!43229 t!3643))) Empty!15618)) (not (= (right!43229 (right!43229 (right!43229 t!3643))) Empty!15618))))))

(declare-fun b!5089316 () Bool)

(declare-fun res!2166411 () Bool)

(assert (=> b!5089316 (=> (not res!2166411) (not e!3174017))))

(assert (=> b!5089316 (= res!2166411 (= (cheight!15829 (right!43229 (right!43229 t!3643))) (+ (max!0 (height!2170 (left!42899 (right!43229 (right!43229 t!3643)))) (height!2170 (right!43229 (right!43229 (right!43229 t!3643))))) 1)))))

(declare-fun b!5089317 () Bool)

(assert (=> b!5089317 (= e!3174017 (<= 0 (cheight!15829 (right!43229 (right!43229 t!3643)))))))

(assert (= (and d!1647388 res!2166409) b!5089315))

(assert (= (and b!5089315 res!2166410) b!5089316))

(assert (= (and b!5089316 res!2166411) b!5089317))

(declare-fun m!6147384 () Bool)

(assert (=> d!1647388 m!6147384))

(declare-fun m!6147386 () Bool)

(assert (=> d!1647388 m!6147386))

(declare-fun m!6147388 () Bool)

(assert (=> b!5089316 m!6147388))

(declare-fun m!6147390 () Bool)

(assert (=> b!5089316 m!6147390))

(assert (=> b!5089316 m!6147388))

(assert (=> b!5089316 m!6147390))

(declare-fun m!6147392 () Bool)

(assert (=> b!5089316 m!6147392))

(assert (=> b!5089146 d!1647388))

(assert (=> b!5089030 d!1647222))

(assert (=> b!5089030 d!1647226))

(declare-fun d!1647390 () Bool)

(declare-fun lt!2092189 () Int)

(assert (=> d!1647390 (= lt!2092189 (size!39181 (list!19070 (left!42899 (right!43229 t!3643)))))))

(assert (=> d!1647390 (= lt!2092189 (ite ((_ is Empty!15618) (left!42899 (right!43229 t!3643))) 0 (ite ((_ is Leaf!25932) (left!42899 (right!43229 t!3643))) (csize!31467 (left!42899 (right!43229 t!3643))) (csize!31466 (left!42899 (right!43229 t!3643))))))))

(assert (=> d!1647390 (= (size!39180 (left!42899 (right!43229 t!3643))) lt!2092189)))

(declare-fun bs!1191084 () Bool)

(assert (= bs!1191084 d!1647390))

(assert (=> bs!1191084 m!6146866))

(assert (=> bs!1191084 m!6146866))

(assert (=> bs!1191084 m!6146962))

(assert (=> d!1647282 d!1647390))

(declare-fun d!1647392 () Bool)

(declare-fun lt!2092190 () Int)

(assert (=> d!1647392 (= lt!2092190 (size!39181 (list!19070 (right!43229 (right!43229 t!3643)))))))

(assert (=> d!1647392 (= lt!2092190 (ite ((_ is Empty!15618) (right!43229 (right!43229 t!3643))) 0 (ite ((_ is Leaf!25932) (right!43229 (right!43229 t!3643))) (csize!31467 (right!43229 (right!43229 t!3643))) (csize!31466 (right!43229 (right!43229 t!3643))))))))

(assert (=> d!1647392 (= (size!39180 (right!43229 (right!43229 t!3643))) lt!2092190)))

(declare-fun bs!1191085 () Bool)

(assert (= bs!1191085 d!1647392))

(assert (=> bs!1191085 m!6146868))

(assert (=> bs!1191085 m!6146868))

(assert (=> bs!1191085 m!6146964))

(assert (=> d!1647282 d!1647392))

(declare-fun d!1647394 () Bool)

(declare-fun res!2166412 () Bool)

(declare-fun e!3174018 () Bool)

(assert (=> d!1647394 (=> (not res!2166412) (not e!3174018))))

(assert (=> d!1647394 (= res!2166412 (<= (size!39181 (list!19072 (xs!19000 (right!43229 (right!43229 t!3643))))) 512))))

(assert (=> d!1647394 (= (inv!77849 (right!43229 (right!43229 t!3643))) e!3174018)))

(declare-fun b!5089318 () Bool)

(declare-fun res!2166413 () Bool)

(assert (=> b!5089318 (=> (not res!2166413) (not e!3174018))))

(assert (=> b!5089318 (= res!2166413 (= (csize!31467 (right!43229 (right!43229 t!3643))) (size!39181 (list!19072 (xs!19000 (right!43229 (right!43229 t!3643)))))))))

(declare-fun b!5089319 () Bool)

(assert (=> b!5089319 (= e!3174018 (and (> (csize!31467 (right!43229 (right!43229 t!3643))) 0) (<= (csize!31467 (right!43229 (right!43229 t!3643))) 512)))))

(assert (= (and d!1647394 res!2166412) b!5089318))

(assert (= (and b!5089318 res!2166413) b!5089319))

(assert (=> d!1647394 m!6146980))

(assert (=> d!1647394 m!6146980))

(declare-fun m!6147394 () Bool)

(assert (=> d!1647394 m!6147394))

(assert (=> b!5089318 m!6146980))

(assert (=> b!5089318 m!6146980))

(assert (=> b!5089318 m!6147394))

(assert (=> b!5089148 d!1647394))

(declare-fun b!5089321 () Bool)

(declare-fun e!3174020 () List!58627)

(assert (=> b!5089321 (= e!3174020 (Cons!58503 (h!64951 (list!19070 (left!42899 (left!42899 (left!42899 t!3643))))) (++!12825 (t!371504 (list!19070 (left!42899 (left!42899 (left!42899 t!3643))))) (list!19070 (right!43229 (left!42899 (left!42899 t!3643)))))))))

(declare-fun b!5089322 () Bool)

(declare-fun res!2166415 () Bool)

(declare-fun e!3174019 () Bool)

(assert (=> b!5089322 (=> (not res!2166415) (not e!3174019))))

(declare-fun lt!2092191 () List!58627)

(assert (=> b!5089322 (= res!2166415 (= (size!39181 lt!2092191) (+ (size!39181 (list!19070 (left!42899 (left!42899 (left!42899 t!3643))))) (size!39181 (list!19070 (right!43229 (left!42899 (left!42899 t!3643))))))))))

(declare-fun d!1647396 () Bool)

(assert (=> d!1647396 e!3174019))

(declare-fun res!2166414 () Bool)

(assert (=> d!1647396 (=> (not res!2166414) (not e!3174019))))

(assert (=> d!1647396 (= res!2166414 (= (content!10435 lt!2092191) ((_ map or) (content!10435 (list!19070 (left!42899 (left!42899 (left!42899 t!3643))))) (content!10435 (list!19070 (right!43229 (left!42899 (left!42899 t!3643))))))))))

(assert (=> d!1647396 (= lt!2092191 e!3174020)))

(declare-fun c!874527 () Bool)

(assert (=> d!1647396 (= c!874527 ((_ is Nil!58503) (list!19070 (left!42899 (left!42899 (left!42899 t!3643))))))))

(assert (=> d!1647396 (= (++!12825 (list!19070 (left!42899 (left!42899 (left!42899 t!3643)))) (list!19070 (right!43229 (left!42899 (left!42899 t!3643))))) lt!2092191)))

(declare-fun b!5089320 () Bool)

(assert (=> b!5089320 (= e!3174020 (list!19070 (right!43229 (left!42899 (left!42899 t!3643)))))))

(declare-fun b!5089323 () Bool)

(assert (=> b!5089323 (= e!3174019 (or (not (= (list!19070 (right!43229 (left!42899 (left!42899 t!3643)))) Nil!58503)) (= lt!2092191 (list!19070 (left!42899 (left!42899 (left!42899 t!3643)))))))))

(assert (= (and d!1647396 c!874527) b!5089320))

(assert (= (and d!1647396 (not c!874527)) b!5089321))

(assert (= (and d!1647396 res!2166414) b!5089322))

(assert (= (and b!5089322 res!2166415) b!5089323))

(assert (=> b!5089321 m!6147008))

(declare-fun m!6147396 () Bool)

(assert (=> b!5089321 m!6147396))

(declare-fun m!6147398 () Bool)

(assert (=> b!5089322 m!6147398))

(assert (=> b!5089322 m!6147006))

(declare-fun m!6147400 () Bool)

(assert (=> b!5089322 m!6147400))

(assert (=> b!5089322 m!6147008))

(declare-fun m!6147402 () Bool)

(assert (=> b!5089322 m!6147402))

(declare-fun m!6147404 () Bool)

(assert (=> d!1647396 m!6147404))

(assert (=> d!1647396 m!6147006))

(declare-fun m!6147406 () Bool)

(assert (=> d!1647396 m!6147406))

(assert (=> d!1647396 m!6147008))

(declare-fun m!6147408 () Bool)

(assert (=> d!1647396 m!6147408))

(assert (=> b!5089118 d!1647396))

(declare-fun b!5089325 () Bool)

(declare-fun e!3174021 () List!58627)

(declare-fun e!3174022 () List!58627)

(assert (=> b!5089325 (= e!3174021 e!3174022)))

(declare-fun c!874529 () Bool)

(assert (=> b!5089325 (= c!874529 ((_ is Leaf!25932) (left!42899 (left!42899 (left!42899 t!3643)))))))

(declare-fun b!5089326 () Bool)

(assert (=> b!5089326 (= e!3174022 (list!19072 (xs!19000 (left!42899 (left!42899 (left!42899 t!3643))))))))

(declare-fun b!5089324 () Bool)

(assert (=> b!5089324 (= e!3174021 Nil!58503)))

(declare-fun b!5089327 () Bool)

(assert (=> b!5089327 (= e!3174022 (++!12825 (list!19070 (left!42899 (left!42899 (left!42899 (left!42899 t!3643))))) (list!19070 (right!43229 (left!42899 (left!42899 (left!42899 t!3643)))))))))

(declare-fun d!1647398 () Bool)

(declare-fun c!874528 () Bool)

(assert (=> d!1647398 (= c!874528 ((_ is Empty!15618) (left!42899 (left!42899 (left!42899 t!3643)))))))

(assert (=> d!1647398 (= (list!19070 (left!42899 (left!42899 (left!42899 t!3643)))) e!3174021)))

(assert (= (and d!1647398 c!874528) b!5089324))

(assert (= (and d!1647398 (not c!874528)) b!5089325))

(assert (= (and b!5089325 c!874529) b!5089326))

(assert (= (and b!5089325 (not c!874529)) b!5089327))

(declare-fun m!6147410 () Bool)

(assert (=> b!5089326 m!6147410))

(declare-fun m!6147412 () Bool)

(assert (=> b!5089327 m!6147412))

(declare-fun m!6147414 () Bool)

(assert (=> b!5089327 m!6147414))

(assert (=> b!5089327 m!6147412))

(assert (=> b!5089327 m!6147414))

(declare-fun m!6147416 () Bool)

(assert (=> b!5089327 m!6147416))

(assert (=> b!5089118 d!1647398))

(declare-fun b!5089329 () Bool)

(declare-fun e!3174023 () List!58627)

(declare-fun e!3174024 () List!58627)

(assert (=> b!5089329 (= e!3174023 e!3174024)))

(declare-fun c!874531 () Bool)

(assert (=> b!5089329 (= c!874531 ((_ is Leaf!25932) (right!43229 (left!42899 (left!42899 t!3643)))))))

(declare-fun b!5089330 () Bool)

(assert (=> b!5089330 (= e!3174024 (list!19072 (xs!19000 (right!43229 (left!42899 (left!42899 t!3643))))))))

(declare-fun b!5089328 () Bool)

(assert (=> b!5089328 (= e!3174023 Nil!58503)))

(declare-fun b!5089331 () Bool)

(assert (=> b!5089331 (= e!3174024 (++!12825 (list!19070 (left!42899 (right!43229 (left!42899 (left!42899 t!3643))))) (list!19070 (right!43229 (right!43229 (left!42899 (left!42899 t!3643)))))))))

(declare-fun d!1647400 () Bool)

(declare-fun c!874530 () Bool)

(assert (=> d!1647400 (= c!874530 ((_ is Empty!15618) (right!43229 (left!42899 (left!42899 t!3643)))))))

(assert (=> d!1647400 (= (list!19070 (right!43229 (left!42899 (left!42899 t!3643)))) e!3174023)))

(assert (= (and d!1647400 c!874530) b!5089328))

(assert (= (and d!1647400 (not c!874530)) b!5089329))

(assert (= (and b!5089329 c!874531) b!5089330))

(assert (= (and b!5089329 (not c!874531)) b!5089331))

(declare-fun m!6147418 () Bool)

(assert (=> b!5089330 m!6147418))

(declare-fun m!6147420 () Bool)

(assert (=> b!5089331 m!6147420))

(declare-fun m!6147422 () Bool)

(assert (=> b!5089331 m!6147422))

(assert (=> b!5089331 m!6147420))

(assert (=> b!5089331 m!6147422))

(declare-fun m!6147424 () Bool)

(assert (=> b!5089331 m!6147424))

(assert (=> b!5089118 d!1647400))

(declare-fun d!1647402 () Bool)

(assert (=> d!1647402 (= (list!19072 (xs!19000 (right!43229 (left!42899 t!3643)))) (innerList!15706 (xs!19000 (right!43229 (left!42899 t!3643)))))))

(assert (=> b!5089121 d!1647402))

(declare-fun d!1647404 () Bool)

(declare-fun lt!2092192 () Int)

(assert (=> d!1647404 (>= lt!2092192 0)))

(declare-fun e!3174025 () Int)

(assert (=> d!1647404 (= lt!2092192 e!3174025)))

(declare-fun c!874532 () Bool)

(assert (=> d!1647404 (= c!874532 ((_ is Nil!58503) (list!19072 (xs!19000 (left!42899 t!3643)))))))

(assert (=> d!1647404 (= (size!39181 (list!19072 (xs!19000 (left!42899 t!3643)))) lt!2092192)))

(declare-fun b!5089332 () Bool)

(assert (=> b!5089332 (= e!3174025 0)))

(declare-fun b!5089333 () Bool)

(assert (=> b!5089333 (= e!3174025 (+ 1 (size!39181 (t!371504 (list!19072 (xs!19000 (left!42899 t!3643)))))))))

(assert (= (and d!1647404 c!874532) b!5089332))

(assert (= (and d!1647404 (not c!874532)) b!5089333))

(declare-fun m!6147426 () Bool)

(assert (=> b!5089333 m!6147426))

(assert (=> d!1647276 d!1647404))

(assert (=> d!1647276 d!1647218))

(declare-fun d!1647406 () Bool)

(declare-fun res!2166416 () Bool)

(declare-fun e!3174026 () Bool)

(assert (=> d!1647406 (=> (not res!2166416) (not e!3174026))))

(assert (=> d!1647406 (= res!2166416 (= (csize!31466 (left!42899 (right!43229 t!3643))) (+ (size!39180 (left!42899 (left!42899 (right!43229 t!3643)))) (size!39180 (right!43229 (left!42899 (right!43229 t!3643)))))))))

(assert (=> d!1647406 (= (inv!77848 (left!42899 (right!43229 t!3643))) e!3174026)))

(declare-fun b!5089334 () Bool)

(declare-fun res!2166417 () Bool)

(assert (=> b!5089334 (=> (not res!2166417) (not e!3174026))))

(assert (=> b!5089334 (= res!2166417 (and (not (= (left!42899 (left!42899 (right!43229 t!3643))) Empty!15618)) (not (= (right!43229 (left!42899 (right!43229 t!3643))) Empty!15618))))))

(declare-fun b!5089335 () Bool)

(declare-fun res!2166418 () Bool)

(assert (=> b!5089335 (=> (not res!2166418) (not e!3174026))))

(assert (=> b!5089335 (= res!2166418 (= (cheight!15829 (left!42899 (right!43229 t!3643))) (+ (max!0 (height!2170 (left!42899 (left!42899 (right!43229 t!3643)))) (height!2170 (right!43229 (left!42899 (right!43229 t!3643))))) 1)))))

(declare-fun b!5089336 () Bool)

(assert (=> b!5089336 (= e!3174026 (<= 0 (cheight!15829 (left!42899 (right!43229 t!3643)))))))

(assert (= (and d!1647406 res!2166416) b!5089334))

(assert (= (and b!5089334 res!2166417) b!5089335))

(assert (= (and b!5089335 res!2166418) b!5089336))

(declare-fun m!6147428 () Bool)

(assert (=> d!1647406 m!6147428))

(declare-fun m!6147430 () Bool)

(assert (=> d!1647406 m!6147430))

(declare-fun m!6147432 () Bool)

(assert (=> b!5089335 m!6147432))

(declare-fun m!6147434 () Bool)

(assert (=> b!5089335 m!6147434))

(assert (=> b!5089335 m!6147432))

(assert (=> b!5089335 m!6147434))

(declare-fun m!6147436 () Bool)

(assert (=> b!5089335 m!6147436))

(assert (=> b!5089143 d!1647406))

(declare-fun d!1647408 () Bool)

(declare-fun lt!2092193 () Int)

(assert (=> d!1647408 (>= lt!2092193 0)))

(declare-fun e!3174027 () Int)

(assert (=> d!1647408 (= lt!2092193 e!3174027)))

(declare-fun c!874533 () Bool)

(assert (=> d!1647408 (= c!874533 ((_ is Nil!58503) (t!371504 (t!371504 (list!19070 (right!43229 t!3643))))))))

(assert (=> d!1647408 (= (size!39181 (t!371504 (t!371504 (list!19070 (right!43229 t!3643))))) lt!2092193)))

(declare-fun b!5089337 () Bool)

(assert (=> b!5089337 (= e!3174027 0)))

(declare-fun b!5089338 () Bool)

(assert (=> b!5089338 (= e!3174027 (+ 1 (size!39181 (t!371504 (t!371504 (t!371504 (list!19070 (right!43229 t!3643))))))))))

(assert (= (and d!1647408 c!874533) b!5089337))

(assert (= (and d!1647408 (not c!874533)) b!5089338))

(declare-fun m!6147438 () Bool)

(assert (=> b!5089338 m!6147438))

(assert (=> b!5089057 d!1647408))

(assert (=> b!5089133 d!1647318))

(declare-fun d!1647410 () Bool)

(declare-fun res!2166419 () Bool)

(declare-fun e!3174028 () Bool)

(assert (=> d!1647410 (=> (not res!2166419) (not e!3174028))))

(assert (=> d!1647410 (= res!2166419 (<= (size!39181 (list!19072 (xs!19000 (left!42899 (right!43229 t!3643))))) 512))))

(assert (=> d!1647410 (= (inv!77849 (left!42899 (right!43229 t!3643))) e!3174028)))

(declare-fun b!5089339 () Bool)

(declare-fun res!2166420 () Bool)

(assert (=> b!5089339 (=> (not res!2166420) (not e!3174028))))

(assert (=> b!5089339 (= res!2166420 (= (csize!31467 (left!42899 (right!43229 t!3643))) (size!39181 (list!19072 (xs!19000 (left!42899 (right!43229 t!3643)))))))))

(declare-fun b!5089340 () Bool)

(assert (=> b!5089340 (= e!3174028 (and (> (csize!31467 (left!42899 (right!43229 t!3643))) 0) (<= (csize!31467 (left!42899 (right!43229 t!3643))) 512)))))

(assert (= (and d!1647410 res!2166419) b!5089339))

(assert (= (and b!5089339 res!2166420) b!5089340))

(assert (=> d!1647410 m!6146972))

(assert (=> d!1647410 m!6146972))

(declare-fun m!6147440 () Bool)

(assert (=> d!1647410 m!6147440))

(assert (=> b!5089339 m!6146972))

(assert (=> b!5089339 m!6146972))

(assert (=> b!5089339 m!6147440))

(assert (=> b!5089145 d!1647410))

(declare-fun d!1647412 () Bool)

(declare-fun lt!2092194 () Int)

(assert (=> d!1647412 (>= lt!2092194 0)))

(declare-fun e!3174029 () Int)

(assert (=> d!1647412 (= lt!2092194 e!3174029)))

(declare-fun c!874534 () Bool)

(assert (=> d!1647412 (= c!874534 ((_ is Nil!58503) (t!371504 (t!371504 (list!19070 (left!42899 t!3643))))))))

(assert (=> d!1647412 (= (size!39181 (t!371504 (t!371504 (list!19070 (left!42899 t!3643))))) lt!2092194)))

(declare-fun b!5089341 () Bool)

(assert (=> b!5089341 (= e!3174029 0)))

(declare-fun b!5089342 () Bool)

(assert (=> b!5089342 (= e!3174029 (+ 1 (size!39181 (t!371504 (t!371504 (t!371504 (list!19070 (left!42899 t!3643))))))))))

(assert (= (and d!1647412 c!874534) b!5089341))

(assert (= (and d!1647412 (not c!874534)) b!5089342))

(declare-fun m!6147442 () Bool)

(assert (=> b!5089342 m!6147442))

(assert (=> b!5089139 d!1647412))

(declare-fun d!1647414 () Bool)

(declare-fun lt!2092195 () Int)

(assert (=> d!1647414 (>= lt!2092195 0)))

(declare-fun e!3174030 () Int)

(assert (=> d!1647414 (= lt!2092195 e!3174030)))

(declare-fun c!874535 () Bool)

(assert (=> d!1647414 (= c!874535 ((_ is Nil!58503) (innerList!15706 (xs!19000 (right!43229 t!3643)))))))

(assert (=> d!1647414 (= (size!39181 (innerList!15706 (xs!19000 (right!43229 t!3643)))) lt!2092195)))

(declare-fun b!5089343 () Bool)

(assert (=> b!5089343 (= e!3174030 0)))

(declare-fun b!5089344 () Bool)

(assert (=> b!5089344 (= e!3174030 (+ 1 (size!39181 (t!371504 (innerList!15706 (xs!19000 (right!43229 t!3643)))))))))

(assert (= (and d!1647414 c!874535) b!5089343))

(assert (= (and d!1647414 (not c!874535)) b!5089344))

(declare-fun m!6147444 () Bool)

(assert (=> b!5089344 m!6147444))

(assert (=> d!1647280 d!1647414))

(assert (=> b!5089149 d!1647404))

(assert (=> b!5089149 d!1647218))

(declare-fun d!1647416 () Bool)

(assert (=> d!1647416 (= (list!19072 (xs!19000 (left!42899 (left!42899 t!3643)))) (innerList!15706 (xs!19000 (left!42899 (left!42899 t!3643)))))))

(assert (=> b!5089117 d!1647416))

(declare-fun d!1647418 () Bool)

(declare-fun c!874536 () Bool)

(assert (=> d!1647418 (= c!874536 ((_ is Node!15618) (left!42899 (left!42899 (left!42899 t!3643)))))))

(declare-fun e!3174031 () Bool)

(assert (=> d!1647418 (= (inv!77844 (left!42899 (left!42899 (left!42899 t!3643)))) e!3174031)))

(declare-fun b!5089345 () Bool)

(assert (=> b!5089345 (= e!3174031 (inv!77848 (left!42899 (left!42899 (left!42899 t!3643)))))))

(declare-fun b!5089346 () Bool)

(declare-fun e!3174032 () Bool)

(assert (=> b!5089346 (= e!3174031 e!3174032)))

(declare-fun res!2166421 () Bool)

(assert (=> b!5089346 (= res!2166421 (not ((_ is Leaf!25932) (left!42899 (left!42899 (left!42899 t!3643))))))))

(assert (=> b!5089346 (=> res!2166421 e!3174032)))

(declare-fun b!5089347 () Bool)

(assert (=> b!5089347 (= e!3174032 (inv!77849 (left!42899 (left!42899 (left!42899 t!3643)))))))

(assert (= (and d!1647418 c!874536) b!5089345))

(assert (= (and d!1647418 (not c!874536)) b!5089346))

(assert (= (and b!5089346 (not res!2166421)) b!5089347))

(declare-fun m!6147446 () Bool)

(assert (=> b!5089345 m!6147446))

(declare-fun m!6147448 () Bool)

(assert (=> b!5089347 m!6147448))

(assert (=> b!5089171 d!1647418))

(declare-fun d!1647420 () Bool)

(declare-fun c!874537 () Bool)

(assert (=> d!1647420 (= c!874537 ((_ is Node!15618) (right!43229 (left!42899 (left!42899 t!3643)))))))

(declare-fun e!3174033 () Bool)

(assert (=> d!1647420 (= (inv!77844 (right!43229 (left!42899 (left!42899 t!3643)))) e!3174033)))

(declare-fun b!5089348 () Bool)

(assert (=> b!5089348 (= e!3174033 (inv!77848 (right!43229 (left!42899 (left!42899 t!3643)))))))

(declare-fun b!5089349 () Bool)

(declare-fun e!3174034 () Bool)

(assert (=> b!5089349 (= e!3174033 e!3174034)))

(declare-fun res!2166422 () Bool)

(assert (=> b!5089349 (= res!2166422 (not ((_ is Leaf!25932) (right!43229 (left!42899 (left!42899 t!3643))))))))

(assert (=> b!5089349 (=> res!2166422 e!3174034)))

(declare-fun b!5089350 () Bool)

(assert (=> b!5089350 (= e!3174034 (inv!77849 (right!43229 (left!42899 (left!42899 t!3643)))))))

(assert (= (and d!1647420 c!874537) b!5089348))

(assert (= (and d!1647420 (not c!874537)) b!5089349))

(assert (= (and b!5089349 (not res!2166422)) b!5089350))

(declare-fun m!6147450 () Bool)

(assert (=> b!5089348 m!6147450))

(declare-fun m!6147452 () Bool)

(assert (=> b!5089350 m!6147452))

(assert (=> b!5089171 d!1647420))

(declare-fun d!1647422 () Bool)

(declare-fun lt!2092196 () Int)

(assert (=> d!1647422 (>= lt!2092196 0)))

(declare-fun e!3174035 () Int)

(assert (=> d!1647422 (= lt!2092196 e!3174035)))

(declare-fun c!874538 () Bool)

(assert (=> d!1647422 (= c!874538 ((_ is Nil!58503) lt!2092168))))

(assert (=> d!1647422 (= (size!39181 lt!2092168) lt!2092196)))

(declare-fun b!5089351 () Bool)

(assert (=> b!5089351 (= e!3174035 0)))

(declare-fun b!5089352 () Bool)

(assert (=> b!5089352 (= e!3174035 (+ 1 (size!39181 (t!371504 lt!2092168))))))

(assert (= (and d!1647422 c!874538) b!5089351))

(assert (= (and d!1647422 (not c!874538)) b!5089352))

(declare-fun m!6147454 () Bool)

(assert (=> b!5089352 m!6147454))

(assert (=> b!5089110 d!1647422))

(declare-fun d!1647424 () Bool)

(declare-fun lt!2092197 () Int)

(assert (=> d!1647424 (>= lt!2092197 0)))

(declare-fun e!3174036 () Int)

(assert (=> d!1647424 (= lt!2092197 e!3174036)))

(declare-fun c!874539 () Bool)

(assert (=> d!1647424 (= c!874539 ((_ is Nil!58503) (list!19070 (left!42899 (left!42899 t!3643)))))))

(assert (=> d!1647424 (= (size!39181 (list!19070 (left!42899 (left!42899 t!3643)))) lt!2092197)))

(declare-fun b!5089353 () Bool)

(assert (=> b!5089353 (= e!3174036 0)))

(declare-fun b!5089354 () Bool)

(assert (=> b!5089354 (= e!3174036 (+ 1 (size!39181 (t!371504 (list!19070 (left!42899 (left!42899 t!3643)))))))))

(assert (= (and d!1647424 c!874539) b!5089353))

(assert (= (and d!1647424 (not c!874539)) b!5089354))

(assert (=> b!5089354 m!6147296))

(assert (=> b!5089110 d!1647424))

(declare-fun d!1647426 () Bool)

(declare-fun lt!2092198 () Int)

(assert (=> d!1647426 (>= lt!2092198 0)))

(declare-fun e!3174037 () Int)

(assert (=> d!1647426 (= lt!2092198 e!3174037)))

(declare-fun c!874540 () Bool)

(assert (=> d!1647426 (= c!874540 ((_ is Nil!58503) (list!19070 (right!43229 (left!42899 t!3643)))))))

(assert (=> d!1647426 (= (size!39181 (list!19070 (right!43229 (left!42899 t!3643)))) lt!2092198)))

(declare-fun b!5089355 () Bool)

(assert (=> b!5089355 (= e!3174037 0)))

(declare-fun b!5089356 () Bool)

(assert (=> b!5089356 (= e!3174037 (+ 1 (size!39181 (t!371504 (list!19070 (right!43229 (left!42899 t!3643)))))))))

(assert (= (and d!1647426 c!874540) b!5089355))

(assert (= (and d!1647426 (not c!874540)) b!5089356))

(declare-fun m!6147456 () Bool)

(assert (=> b!5089356 m!6147456))

(assert (=> b!5089110 d!1647426))

(declare-fun b!5089358 () Bool)

(declare-fun e!3174039 () List!58627)

(assert (=> b!5089358 (= e!3174039 (Cons!58503 (h!64951 (list!19070 (left!42899 (left!42899 (right!43229 t!3643))))) (++!12825 (t!371504 (list!19070 (left!42899 (left!42899 (right!43229 t!3643))))) (list!19070 (right!43229 (left!42899 (right!43229 t!3643)))))))))

(declare-fun b!5089359 () Bool)

(declare-fun res!2166424 () Bool)

(declare-fun e!3174038 () Bool)

(assert (=> b!5089359 (=> (not res!2166424) (not e!3174038))))

(declare-fun lt!2092199 () List!58627)

(assert (=> b!5089359 (= res!2166424 (= (size!39181 lt!2092199) (+ (size!39181 (list!19070 (left!42899 (left!42899 (right!43229 t!3643))))) (size!39181 (list!19070 (right!43229 (left!42899 (right!43229 t!3643))))))))))

(declare-fun d!1647428 () Bool)

(assert (=> d!1647428 e!3174038))

(declare-fun res!2166423 () Bool)

(assert (=> d!1647428 (=> (not res!2166423) (not e!3174038))))

(assert (=> d!1647428 (= res!2166423 (= (content!10435 lt!2092199) ((_ map or) (content!10435 (list!19070 (left!42899 (left!42899 (right!43229 t!3643))))) (content!10435 (list!19070 (right!43229 (left!42899 (right!43229 t!3643))))))))))

(assert (=> d!1647428 (= lt!2092199 e!3174039)))

(declare-fun c!874541 () Bool)

(assert (=> d!1647428 (= c!874541 ((_ is Nil!58503) (list!19070 (left!42899 (left!42899 (right!43229 t!3643))))))))

(assert (=> d!1647428 (= (++!12825 (list!19070 (left!42899 (left!42899 (right!43229 t!3643)))) (list!19070 (right!43229 (left!42899 (right!43229 t!3643))))) lt!2092199)))

(declare-fun b!5089357 () Bool)

(assert (=> b!5089357 (= e!3174039 (list!19070 (right!43229 (left!42899 (right!43229 t!3643)))))))

(declare-fun b!5089360 () Bool)

(assert (=> b!5089360 (= e!3174038 (or (not (= (list!19070 (right!43229 (left!42899 (right!43229 t!3643)))) Nil!58503)) (= lt!2092199 (list!19070 (left!42899 (left!42899 (right!43229 t!3643)))))))))

(assert (= (and d!1647428 c!874541) b!5089357))

(assert (= (and d!1647428 (not c!874541)) b!5089358))

(assert (= (and d!1647428 res!2166423) b!5089359))

(assert (= (and b!5089359 res!2166424) b!5089360))

(assert (=> b!5089358 m!6146976))

(declare-fun m!6147458 () Bool)

(assert (=> b!5089358 m!6147458))

(declare-fun m!6147460 () Bool)

(assert (=> b!5089359 m!6147460))

(assert (=> b!5089359 m!6146974))

(declare-fun m!6147462 () Bool)

(assert (=> b!5089359 m!6147462))

(assert (=> b!5089359 m!6146976))

(declare-fun m!6147464 () Bool)

(assert (=> b!5089359 m!6147464))

(declare-fun m!6147466 () Bool)

(assert (=> d!1647428 m!6147466))

(assert (=> d!1647428 m!6146974))

(declare-fun m!6147468 () Bool)

(assert (=> d!1647428 m!6147468))

(assert (=> d!1647428 m!6146976))

(declare-fun m!6147470 () Bool)

(assert (=> d!1647428 m!6147470))

(assert (=> b!5089103 d!1647428))

(declare-fun b!5089362 () Bool)

(declare-fun e!3174040 () List!58627)

(declare-fun e!3174041 () List!58627)

(assert (=> b!5089362 (= e!3174040 e!3174041)))

(declare-fun c!874543 () Bool)

(assert (=> b!5089362 (= c!874543 ((_ is Leaf!25932) (left!42899 (left!42899 (right!43229 t!3643)))))))

(declare-fun b!5089363 () Bool)

(assert (=> b!5089363 (= e!3174041 (list!19072 (xs!19000 (left!42899 (left!42899 (right!43229 t!3643))))))))

(declare-fun b!5089361 () Bool)

(assert (=> b!5089361 (= e!3174040 Nil!58503)))

(declare-fun b!5089364 () Bool)

(assert (=> b!5089364 (= e!3174041 (++!12825 (list!19070 (left!42899 (left!42899 (left!42899 (right!43229 t!3643))))) (list!19070 (right!43229 (left!42899 (left!42899 (right!43229 t!3643)))))))))

(declare-fun d!1647430 () Bool)

(declare-fun c!874542 () Bool)

(assert (=> d!1647430 (= c!874542 ((_ is Empty!15618) (left!42899 (left!42899 (right!43229 t!3643)))))))

(assert (=> d!1647430 (= (list!19070 (left!42899 (left!42899 (right!43229 t!3643)))) e!3174040)))

(assert (= (and d!1647430 c!874542) b!5089361))

(assert (= (and d!1647430 (not c!874542)) b!5089362))

(assert (= (and b!5089362 c!874543) b!5089363))

(assert (= (and b!5089362 (not c!874543)) b!5089364))

(declare-fun m!6147472 () Bool)

(assert (=> b!5089363 m!6147472))

(declare-fun m!6147474 () Bool)

(assert (=> b!5089364 m!6147474))

(declare-fun m!6147476 () Bool)

(assert (=> b!5089364 m!6147476))

(assert (=> b!5089364 m!6147474))

(assert (=> b!5089364 m!6147476))

(declare-fun m!6147478 () Bool)

(assert (=> b!5089364 m!6147478))

(assert (=> b!5089103 d!1647430))

(declare-fun b!5089366 () Bool)

(declare-fun e!3174042 () List!58627)

(declare-fun e!3174043 () List!58627)

(assert (=> b!5089366 (= e!3174042 e!3174043)))

(declare-fun c!874545 () Bool)

(assert (=> b!5089366 (= c!874545 ((_ is Leaf!25932) (right!43229 (left!42899 (right!43229 t!3643)))))))

(declare-fun b!5089367 () Bool)

(assert (=> b!5089367 (= e!3174043 (list!19072 (xs!19000 (right!43229 (left!42899 (right!43229 t!3643))))))))

(declare-fun b!5089365 () Bool)

(assert (=> b!5089365 (= e!3174042 Nil!58503)))

(declare-fun b!5089368 () Bool)

(assert (=> b!5089368 (= e!3174043 (++!12825 (list!19070 (left!42899 (right!43229 (left!42899 (right!43229 t!3643))))) (list!19070 (right!43229 (right!43229 (left!42899 (right!43229 t!3643)))))))))

(declare-fun d!1647432 () Bool)

(declare-fun c!874544 () Bool)

(assert (=> d!1647432 (= c!874544 ((_ is Empty!15618) (right!43229 (left!42899 (right!43229 t!3643)))))))

(assert (=> d!1647432 (= (list!19070 (right!43229 (left!42899 (right!43229 t!3643)))) e!3174042)))

(assert (= (and d!1647432 c!874544) b!5089365))

(assert (= (and d!1647432 (not c!874544)) b!5089366))

(assert (= (and b!5089366 c!874545) b!5089367))

(assert (= (and b!5089366 (not c!874545)) b!5089368))

(declare-fun m!6147480 () Bool)

(assert (=> b!5089367 m!6147480))

(declare-fun m!6147482 () Bool)

(assert (=> b!5089368 m!6147482))

(declare-fun m!6147484 () Bool)

(assert (=> b!5089368 m!6147484))

(assert (=> b!5089368 m!6147482))

(assert (=> b!5089368 m!6147484))

(declare-fun m!6147486 () Bool)

(assert (=> b!5089368 m!6147486))

(assert (=> b!5089103 d!1647432))

(declare-fun d!1647434 () Bool)

(declare-fun lt!2092200 () Int)

(assert (=> d!1647434 (>= lt!2092200 0)))

(declare-fun e!3174044 () Int)

(assert (=> d!1647434 (= lt!2092200 e!3174044)))

(declare-fun c!874546 () Bool)

(assert (=> d!1647434 (= c!874546 ((_ is Nil!58503) lt!2092167))))

(assert (=> d!1647434 (= (size!39181 lt!2092167) lt!2092200)))

(declare-fun b!5089369 () Bool)

(assert (=> b!5089369 (= e!3174044 0)))

(declare-fun b!5089370 () Bool)

(assert (=> b!5089370 (= e!3174044 (+ 1 (size!39181 (t!371504 lt!2092167))))))

(assert (= (and d!1647434 c!874546) b!5089369))

(assert (= (and d!1647434 (not c!874546)) b!5089370))

(declare-fun m!6147488 () Bool)

(assert (=> b!5089370 m!6147488))

(assert (=> b!5089092 d!1647434))

(declare-fun d!1647436 () Bool)

(declare-fun lt!2092201 () Int)

(assert (=> d!1647436 (>= lt!2092201 0)))

(declare-fun e!3174045 () Int)

(assert (=> d!1647436 (= lt!2092201 e!3174045)))

(declare-fun c!874547 () Bool)

(assert (=> d!1647436 (= c!874547 ((_ is Nil!58503) (list!19070 (left!42899 (right!43229 t!3643)))))))

(assert (=> d!1647436 (= (size!39181 (list!19070 (left!42899 (right!43229 t!3643)))) lt!2092201)))

(declare-fun b!5089371 () Bool)

(assert (=> b!5089371 (= e!3174045 0)))

(declare-fun b!5089372 () Bool)

(assert (=> b!5089372 (= e!3174045 (+ 1 (size!39181 (t!371504 (list!19070 (left!42899 (right!43229 t!3643)))))))))

(assert (= (and d!1647436 c!874547) b!5089371))

(assert (= (and d!1647436 (not c!874547)) b!5089372))

(assert (=> b!5089372 m!6147372))

(assert (=> b!5089092 d!1647436))

(declare-fun d!1647438 () Bool)

(declare-fun lt!2092202 () Int)

(assert (=> d!1647438 (>= lt!2092202 0)))

(declare-fun e!3174046 () Int)

(assert (=> d!1647438 (= lt!2092202 e!3174046)))

(declare-fun c!874548 () Bool)

(assert (=> d!1647438 (= c!874548 ((_ is Nil!58503) (list!19070 (right!43229 (right!43229 t!3643)))))))

(assert (=> d!1647438 (= (size!39181 (list!19070 (right!43229 (right!43229 t!3643)))) lt!2092202)))

(declare-fun b!5089373 () Bool)

(assert (=> b!5089373 (= e!3174046 0)))

(declare-fun b!5089374 () Bool)

(assert (=> b!5089374 (= e!3174046 (+ 1 (size!39181 (t!371504 (list!19070 (right!43229 (right!43229 t!3643)))))))))

(assert (= (and d!1647438 c!874548) b!5089373))

(assert (= (and d!1647438 (not c!874548)) b!5089374))

(declare-fun m!6147490 () Bool)

(assert (=> b!5089374 m!6147490))

(assert (=> b!5089092 d!1647438))

(declare-fun d!1647440 () Bool)

(declare-fun c!874549 () Bool)

(assert (=> d!1647440 (= c!874549 ((_ is Node!15618) (left!42899 (right!43229 (right!43229 t!3643)))))))

(declare-fun e!3174047 () Bool)

(assert (=> d!1647440 (= (inv!77844 (left!42899 (right!43229 (right!43229 t!3643)))) e!3174047)))

(declare-fun b!5089375 () Bool)

(assert (=> b!5089375 (= e!3174047 (inv!77848 (left!42899 (right!43229 (right!43229 t!3643)))))))

(declare-fun b!5089376 () Bool)

(declare-fun e!3174048 () Bool)

(assert (=> b!5089376 (= e!3174047 e!3174048)))

(declare-fun res!2166425 () Bool)

(assert (=> b!5089376 (= res!2166425 (not ((_ is Leaf!25932) (left!42899 (right!43229 (right!43229 t!3643))))))))

(assert (=> b!5089376 (=> res!2166425 e!3174048)))

(declare-fun b!5089377 () Bool)

(assert (=> b!5089377 (= e!3174048 (inv!77849 (left!42899 (right!43229 (right!43229 t!3643)))))))

(assert (= (and d!1647440 c!874549) b!5089375))

(assert (= (and d!1647440 (not c!874549)) b!5089376))

(assert (= (and b!5089376 (not res!2166425)) b!5089377))

(declare-fun m!6147492 () Bool)

(assert (=> b!5089375 m!6147492))

(declare-fun m!6147494 () Bool)

(assert (=> b!5089377 m!6147494))

(assert (=> b!5089166 d!1647440))

(declare-fun d!1647442 () Bool)

(declare-fun c!874550 () Bool)

(assert (=> d!1647442 (= c!874550 ((_ is Node!15618) (right!43229 (right!43229 (right!43229 t!3643)))))))

(declare-fun e!3174049 () Bool)

(assert (=> d!1647442 (= (inv!77844 (right!43229 (right!43229 (right!43229 t!3643)))) e!3174049)))

(declare-fun b!5089378 () Bool)

(assert (=> b!5089378 (= e!3174049 (inv!77848 (right!43229 (right!43229 (right!43229 t!3643)))))))

(declare-fun b!5089379 () Bool)

(declare-fun e!3174050 () Bool)

(assert (=> b!5089379 (= e!3174049 e!3174050)))

(declare-fun res!2166426 () Bool)

(assert (=> b!5089379 (= res!2166426 (not ((_ is Leaf!25932) (right!43229 (right!43229 (right!43229 t!3643))))))))

(assert (=> b!5089379 (=> res!2166426 e!3174050)))

(declare-fun b!5089380 () Bool)

(assert (=> b!5089380 (= e!3174050 (inv!77849 (right!43229 (right!43229 (right!43229 t!3643)))))))

(assert (= (and d!1647442 c!874550) b!5089378))

(assert (= (and d!1647442 (not c!874550)) b!5089379))

(assert (= (and b!5089379 (not res!2166426)) b!5089380))

(declare-fun m!6147496 () Bool)

(assert (=> b!5089378 m!6147496))

(declare-fun m!6147498 () Bool)

(assert (=> b!5089380 m!6147498))

(assert (=> b!5089166 d!1647442))

(declare-fun d!1647444 () Bool)

(declare-fun lt!2092203 () Int)

(assert (=> d!1647444 (= lt!2092203 (size!39181 (list!19070 (left!42899 t!3643))))))

(assert (=> d!1647444 (= lt!2092203 (ite ((_ is Empty!15618) (left!42899 t!3643)) 0 (ite ((_ is Leaf!25932) (left!42899 t!3643)) (csize!31467 (left!42899 t!3643)) (csize!31466 (left!42899 t!3643)))))))

(assert (=> d!1647444 (= (size!39180 (left!42899 t!3643)) lt!2092203)))

(declare-fun bs!1191086 () Bool)

(assert (= bs!1191086 d!1647444))

(assert (=> bs!1191086 m!6146804))

(assert (=> bs!1191086 m!6146804))

(assert (=> bs!1191086 m!6146806))

(assert (=> d!1647212 d!1647444))

(declare-fun d!1647446 () Bool)

(declare-fun lt!2092204 () Int)

(assert (=> d!1647446 (= lt!2092204 (size!39181 (list!19070 (right!43229 t!3643))))))

(assert (=> d!1647446 (= lt!2092204 (ite ((_ is Empty!15618) (right!43229 t!3643)) 0 (ite ((_ is Leaf!25932) (right!43229 t!3643)) (csize!31467 (right!43229 t!3643)) (csize!31466 (right!43229 t!3643)))))))

(assert (=> d!1647446 (= (size!39180 (right!43229 t!3643)) lt!2092204)))

(declare-fun bs!1191087 () Bool)

(assert (= bs!1191087 d!1647446))

(assert (=> bs!1191087 m!6146808))

(assert (=> bs!1191087 m!6146808))

(assert (=> bs!1191087 m!6146810))

(assert (=> d!1647212 d!1647446))

(declare-fun d!1647448 () Bool)

(declare-fun res!2166427 () Bool)

(declare-fun e!3174051 () Bool)

(assert (=> d!1647448 (=> (not res!2166427) (not e!3174051))))

(assert (=> d!1647448 (= res!2166427 (<= (size!39181 (list!19072 (xs!19000 (right!43229 (left!42899 t!3643))))) 512))))

(assert (=> d!1647448 (= (inv!77849 (right!43229 (left!42899 t!3643))) e!3174051)))

(declare-fun b!5089381 () Bool)

(declare-fun res!2166428 () Bool)

(assert (=> b!5089381 (=> (not res!2166428) (not e!3174051))))

(assert (=> b!5089381 (= res!2166428 (= (csize!31467 (right!43229 (left!42899 t!3643))) (size!39181 (list!19072 (xs!19000 (right!43229 (left!42899 t!3643)))))))))

(declare-fun b!5089382 () Bool)

(assert (=> b!5089382 (= e!3174051 (and (> (csize!31467 (right!43229 (left!42899 t!3643))) 0) (<= (csize!31467 (right!43229 (left!42899 t!3643))) 512)))))

(assert (= (and d!1647448 res!2166427) b!5089381))

(assert (= (and b!5089381 res!2166428) b!5089382))

(assert (=> d!1647448 m!6147024))

(assert (=> d!1647448 m!6147024))

(declare-fun m!6147500 () Bool)

(assert (=> d!1647448 m!6147500))

(assert (=> b!5089381 m!6147024))

(assert (=> b!5089381 m!6147024))

(assert (=> b!5089381 m!6147500))

(assert (=> b!5089065 d!1647448))

(declare-fun d!1647450 () Bool)

(assert (=> d!1647450 (= (max!0 (height!2170 (left!42899 t!3643)) (height!2170 (right!43229 t!3643))) (ite (< (height!2170 (left!42899 t!3643)) (height!2170 (right!43229 t!3643))) (height!2170 (right!43229 t!3643)) (height!2170 (left!42899 t!3643))))))

(assert (=> b!5089054 d!1647450))

(declare-fun d!1647452 () Bool)

(assert (=> d!1647452 (= (height!2170 (left!42899 t!3643)) (ite ((_ is Empty!15618) (left!42899 t!3643)) 0 (ite ((_ is Leaf!25932) (left!42899 t!3643)) 1 (cheight!15829 (left!42899 t!3643)))))))

(assert (=> b!5089054 d!1647452))

(declare-fun d!1647454 () Bool)

(assert (=> d!1647454 (= (height!2170 (right!43229 t!3643)) (ite ((_ is Empty!15618) (right!43229 t!3643)) 0 (ite ((_ is Leaf!25932) (right!43229 t!3643)) 1 (cheight!15829 (right!43229 t!3643)))))))

(assert (=> b!5089054 d!1647454))

(declare-fun d!1647456 () Bool)

(assert (=> d!1647456 (= (max!0 (height!2170 (left!42899 (right!43229 t!3643))) (height!2170 (right!43229 (right!43229 t!3643)))) (ite (< (height!2170 (left!42899 (right!43229 t!3643))) (height!2170 (right!43229 (right!43229 t!3643)))) (height!2170 (right!43229 (right!43229 t!3643))) (height!2170 (left!42899 (right!43229 t!3643)))))))

(assert (=> b!5089158 d!1647456))

(declare-fun d!1647458 () Bool)

(assert (=> d!1647458 (= (height!2170 (left!42899 (right!43229 t!3643))) (ite ((_ is Empty!15618) (left!42899 (right!43229 t!3643))) 0 (ite ((_ is Leaf!25932) (left!42899 (right!43229 t!3643))) 1 (cheight!15829 (left!42899 (right!43229 t!3643))))))))

(assert (=> b!5089158 d!1647458))

(declare-fun d!1647460 () Bool)

(assert (=> d!1647460 (= (height!2170 (right!43229 (right!43229 t!3643))) (ite ((_ is Empty!15618) (right!43229 (right!43229 t!3643))) 0 (ite ((_ is Leaf!25932) (right!43229 (right!43229 t!3643))) 1 (cheight!15829 (right!43229 (right!43229 t!3643))))))))

(assert (=> b!5089158 d!1647460))

(declare-fun e!3174053 () Bool)

(declare-fun tp!1418790 () Bool)

(declare-fun b!5089383 () Bool)

(declare-fun tp!1418791 () Bool)

(assert (=> b!5089383 (= e!3174053 (and (inv!77844 (left!42899 (left!42899 (left!42899 (left!42899 t!3643))))) tp!1418791 (inv!77844 (right!43229 (left!42899 (left!42899 (left!42899 t!3643))))) tp!1418790))))

(declare-fun b!5089385 () Bool)

(declare-fun e!3174052 () Bool)

(declare-fun tp!1418792 () Bool)

(assert (=> b!5089385 (= e!3174052 tp!1418792)))

(declare-fun b!5089384 () Bool)

(assert (=> b!5089384 (= e!3174053 (and (inv!77845 (xs!19000 (left!42899 (left!42899 (left!42899 t!3643))))) e!3174052))))

(assert (=> b!5089171 (= tp!1418770 (and (inv!77844 (left!42899 (left!42899 (left!42899 t!3643)))) e!3174053))))

(assert (= (and b!5089171 ((_ is Node!15618) (left!42899 (left!42899 (left!42899 t!3643))))) b!5089383))

(assert (= b!5089384 b!5089385))

(assert (= (and b!5089171 ((_ is Leaf!25932) (left!42899 (left!42899 (left!42899 t!3643))))) b!5089384))

(declare-fun m!6147502 () Bool)

(assert (=> b!5089383 m!6147502))

(declare-fun m!6147504 () Bool)

(assert (=> b!5089383 m!6147504))

(declare-fun m!6147506 () Bool)

(assert (=> b!5089384 m!6147506))

(assert (=> b!5089171 m!6147104))

(declare-fun tp!1418793 () Bool)

(declare-fun b!5089386 () Bool)

(declare-fun tp!1418794 () Bool)

(declare-fun e!3174055 () Bool)

(assert (=> b!5089386 (= e!3174055 (and (inv!77844 (left!42899 (right!43229 (left!42899 (left!42899 t!3643))))) tp!1418794 (inv!77844 (right!43229 (right!43229 (left!42899 (left!42899 t!3643))))) tp!1418793))))

(declare-fun b!5089388 () Bool)

(declare-fun e!3174054 () Bool)

(declare-fun tp!1418795 () Bool)

(assert (=> b!5089388 (= e!3174054 tp!1418795)))

(declare-fun b!5089387 () Bool)

(assert (=> b!5089387 (= e!3174055 (and (inv!77845 (xs!19000 (right!43229 (left!42899 (left!42899 t!3643))))) e!3174054))))

(assert (=> b!5089171 (= tp!1418769 (and (inv!77844 (right!43229 (left!42899 (left!42899 t!3643)))) e!3174055))))

(assert (= (and b!5089171 ((_ is Node!15618) (right!43229 (left!42899 (left!42899 t!3643))))) b!5089386))

(assert (= b!5089387 b!5089388))

(assert (= (and b!5089171 ((_ is Leaf!25932) (right!43229 (left!42899 (left!42899 t!3643))))) b!5089387))

(declare-fun m!6147508 () Bool)

(assert (=> b!5089386 m!6147508))

(declare-fun m!6147510 () Bool)

(assert (=> b!5089386 m!6147510))

(declare-fun m!6147512 () Bool)

(assert (=> b!5089387 m!6147512))

(assert (=> b!5089171 m!6147106))

(declare-fun b!5089389 () Bool)

(declare-fun e!3174056 () Bool)

(declare-fun tp!1418796 () Bool)

(assert (=> b!5089389 (= e!3174056 (and tp_is_empty!37119 tp!1418796))))

(assert (=> b!5089161 (= tp!1418761 e!3174056)))

(assert (= (and b!5089161 ((_ is Cons!58503) (t!371504 (innerList!15706 (xs!19000 (left!42899 t!3643)))))) b!5089389))

(declare-fun b!5089390 () Bool)

(declare-fun e!3174057 () Bool)

(declare-fun tp!1418797 () Bool)

(assert (=> b!5089390 (= e!3174057 (and tp_is_empty!37119 tp!1418797))))

(assert (=> b!5089165 (= tp!1418765 e!3174057)))

(assert (= (and b!5089165 ((_ is Cons!58503) (innerList!15706 (xs!19000 (left!42899 (right!43229 t!3643)))))) b!5089390))

(declare-fun tp!1418799 () Bool)

(declare-fun tp!1418798 () Bool)

(declare-fun b!5089391 () Bool)

(declare-fun e!3174059 () Bool)

(assert (=> b!5089391 (= e!3174059 (and (inv!77844 (left!42899 (left!42899 (right!43229 (left!42899 t!3643))))) tp!1418799 (inv!77844 (right!43229 (left!42899 (right!43229 (left!42899 t!3643))))) tp!1418798))))

(declare-fun b!5089393 () Bool)

(declare-fun e!3174058 () Bool)

(declare-fun tp!1418800 () Bool)

(assert (=> b!5089393 (= e!3174058 tp!1418800)))

(declare-fun b!5089392 () Bool)

(assert (=> b!5089392 (= e!3174059 (and (inv!77845 (xs!19000 (left!42899 (right!43229 (left!42899 t!3643))))) e!3174058))))

(assert (=> b!5089174 (= tp!1418773 (and (inv!77844 (left!42899 (right!43229 (left!42899 t!3643)))) e!3174059))))

(assert (= (and b!5089174 ((_ is Node!15618) (left!42899 (right!43229 (left!42899 t!3643))))) b!5089391))

(assert (= b!5089392 b!5089393))

(assert (= (and b!5089174 ((_ is Leaf!25932) (left!42899 (right!43229 (left!42899 t!3643))))) b!5089392))

(declare-fun m!6147514 () Bool)

(assert (=> b!5089391 m!6147514))

(declare-fun m!6147516 () Bool)

(assert (=> b!5089391 m!6147516))

(declare-fun m!6147518 () Bool)

(assert (=> b!5089392 m!6147518))

(assert (=> b!5089174 m!6147112))

(declare-fun tp!1418802 () Bool)

(declare-fun b!5089394 () Bool)

(declare-fun e!3174061 () Bool)

(declare-fun tp!1418801 () Bool)

(assert (=> b!5089394 (= e!3174061 (and (inv!77844 (left!42899 (right!43229 (right!43229 (left!42899 t!3643))))) tp!1418802 (inv!77844 (right!43229 (right!43229 (right!43229 (left!42899 t!3643))))) tp!1418801))))

(declare-fun b!5089396 () Bool)

(declare-fun e!3174060 () Bool)

(declare-fun tp!1418803 () Bool)

(assert (=> b!5089396 (= e!3174060 tp!1418803)))

(declare-fun b!5089395 () Bool)

(assert (=> b!5089395 (= e!3174061 (and (inv!77845 (xs!19000 (right!43229 (right!43229 (left!42899 t!3643))))) e!3174060))))

(assert (=> b!5089174 (= tp!1418772 (and (inv!77844 (right!43229 (right!43229 (left!42899 t!3643)))) e!3174061))))

(assert (= (and b!5089174 ((_ is Node!15618) (right!43229 (right!43229 (left!42899 t!3643))))) b!5089394))

(assert (= b!5089395 b!5089396))

(assert (= (and b!5089174 ((_ is Leaf!25932) (right!43229 (right!43229 (left!42899 t!3643))))) b!5089395))

(declare-fun m!6147520 () Bool)

(assert (=> b!5089394 m!6147520))

(declare-fun m!6147522 () Bool)

(assert (=> b!5089394 m!6147522))

(declare-fun m!6147524 () Bool)

(assert (=> b!5089395 m!6147524))

(assert (=> b!5089174 m!6147114))

(declare-fun b!5089397 () Bool)

(declare-fun e!3174062 () Bool)

(declare-fun tp!1418804 () Bool)

(assert (=> b!5089397 (= e!3174062 (and tp_is_empty!37119 tp!1418804))))

(assert (=> b!5089173 (= tp!1418771 e!3174062)))

(assert (= (and b!5089173 ((_ is Cons!58503) (innerList!15706 (xs!19000 (left!42899 (left!42899 t!3643)))))) b!5089397))

(declare-fun e!3174064 () Bool)

(declare-fun tp!1418806 () Bool)

(declare-fun b!5089398 () Bool)

(declare-fun tp!1418805 () Bool)

(assert (=> b!5089398 (= e!3174064 (and (inv!77844 (left!42899 (left!42899 (right!43229 (right!43229 t!3643))))) tp!1418806 (inv!77844 (right!43229 (left!42899 (right!43229 (right!43229 t!3643))))) tp!1418805))))

(declare-fun b!5089400 () Bool)

(declare-fun e!3174063 () Bool)

(declare-fun tp!1418807 () Bool)

(assert (=> b!5089400 (= e!3174063 tp!1418807)))

(declare-fun b!5089399 () Bool)

(assert (=> b!5089399 (= e!3174064 (and (inv!77845 (xs!19000 (left!42899 (right!43229 (right!43229 t!3643))))) e!3174063))))

(assert (=> b!5089166 (= tp!1418767 (and (inv!77844 (left!42899 (right!43229 (right!43229 t!3643)))) e!3174064))))

(assert (= (and b!5089166 ((_ is Node!15618) (left!42899 (right!43229 (right!43229 t!3643))))) b!5089398))

(assert (= b!5089399 b!5089400))

(assert (= (and b!5089166 ((_ is Leaf!25932) (left!42899 (right!43229 (right!43229 t!3643))))) b!5089399))

(declare-fun m!6147526 () Bool)

(assert (=> b!5089398 m!6147526))

(declare-fun m!6147528 () Bool)

(assert (=> b!5089398 m!6147528))

(declare-fun m!6147530 () Bool)

(assert (=> b!5089399 m!6147530))

(assert (=> b!5089166 m!6147096))

(declare-fun tp!1418809 () Bool)

(declare-fun b!5089401 () Bool)

(declare-fun tp!1418808 () Bool)

(declare-fun e!3174066 () Bool)

(assert (=> b!5089401 (= e!3174066 (and (inv!77844 (left!42899 (right!43229 (right!43229 (right!43229 t!3643))))) tp!1418809 (inv!77844 (right!43229 (right!43229 (right!43229 (right!43229 t!3643))))) tp!1418808))))

(declare-fun b!5089403 () Bool)

(declare-fun e!3174065 () Bool)

(declare-fun tp!1418810 () Bool)

(assert (=> b!5089403 (= e!3174065 tp!1418810)))

(declare-fun b!5089402 () Bool)

(assert (=> b!5089402 (= e!3174066 (and (inv!77845 (xs!19000 (right!43229 (right!43229 (right!43229 t!3643))))) e!3174065))))

(assert (=> b!5089166 (= tp!1418766 (and (inv!77844 (right!43229 (right!43229 (right!43229 t!3643)))) e!3174066))))

(assert (= (and b!5089166 ((_ is Node!15618) (right!43229 (right!43229 (right!43229 t!3643))))) b!5089401))

(assert (= b!5089402 b!5089403))

(assert (= (and b!5089166 ((_ is Leaf!25932) (right!43229 (right!43229 (right!43229 t!3643))))) b!5089402))

(declare-fun m!6147532 () Bool)

(assert (=> b!5089401 m!6147532))

(declare-fun m!6147534 () Bool)

(assert (=> b!5089401 m!6147534))

(declare-fun m!6147536 () Bool)

(assert (=> b!5089402 m!6147536))

(assert (=> b!5089166 m!6147098))

(declare-fun b!5089404 () Bool)

(declare-fun e!3174067 () Bool)

(declare-fun tp!1418811 () Bool)

(assert (=> b!5089404 (= e!3174067 (and tp_is_empty!37119 tp!1418811))))

(assert (=> b!5089160 (= tp!1418760 e!3174067)))

(assert (= (and b!5089160 ((_ is Cons!58503) (t!371504 (innerList!15706 (xs!19000 (right!43229 t!3643)))))) b!5089404))

(declare-fun b!5089405 () Bool)

(declare-fun e!3174068 () Bool)

(declare-fun tp!1418812 () Bool)

(assert (=> b!5089405 (= e!3174068 (and tp_is_empty!37119 tp!1418812))))

(assert (=> b!5089162 (= tp!1418762 e!3174068)))

(assert (= (and b!5089162 ((_ is Cons!58503) (t!371504 (t!371504 (innerList!15706 (xs!19000 t!3643)))))) b!5089405))

(declare-fun b!5089406 () Bool)

(declare-fun e!3174069 () Bool)

(declare-fun tp!1418813 () Bool)

(assert (=> b!5089406 (= e!3174069 (and tp_is_empty!37119 tp!1418813))))

(assert (=> b!5089176 (= tp!1418774 e!3174069)))

(assert (= (and b!5089176 ((_ is Cons!58503) (innerList!15706 (xs!19000 (right!43229 (left!42899 t!3643)))))) b!5089406))

(declare-fun b!5089407 () Bool)

(declare-fun e!3174070 () Bool)

(declare-fun tp!1418814 () Bool)

(assert (=> b!5089407 (= e!3174070 (and tp_is_empty!37119 tp!1418814))))

(assert (=> b!5089168 (= tp!1418768 e!3174070)))

(assert (= (and b!5089168 ((_ is Cons!58503) (innerList!15706 (xs!19000 (right!43229 (right!43229 t!3643)))))) b!5089407))

(declare-fun tp!1418815 () Bool)

(declare-fun tp!1418816 () Bool)

(declare-fun e!3174072 () Bool)

(declare-fun b!5089408 () Bool)

(assert (=> b!5089408 (= e!3174072 (and (inv!77844 (left!42899 (left!42899 (left!42899 (right!43229 t!3643))))) tp!1418816 (inv!77844 (right!43229 (left!42899 (left!42899 (right!43229 t!3643))))) tp!1418815))))

(declare-fun b!5089410 () Bool)

(declare-fun e!3174071 () Bool)

(declare-fun tp!1418817 () Bool)

(assert (=> b!5089410 (= e!3174071 tp!1418817)))

(declare-fun b!5089409 () Bool)

(assert (=> b!5089409 (= e!3174072 (and (inv!77845 (xs!19000 (left!42899 (left!42899 (right!43229 t!3643))))) e!3174071))))

(assert (=> b!5089163 (= tp!1418764 (and (inv!77844 (left!42899 (left!42899 (right!43229 t!3643)))) e!3174072))))

(assert (= (and b!5089163 ((_ is Node!15618) (left!42899 (left!42899 (right!43229 t!3643))))) b!5089408))

(assert (= b!5089409 b!5089410))

(assert (= (and b!5089163 ((_ is Leaf!25932) (left!42899 (left!42899 (right!43229 t!3643))))) b!5089409))

(declare-fun m!6147538 () Bool)

(assert (=> b!5089408 m!6147538))

(declare-fun m!6147540 () Bool)

(assert (=> b!5089408 m!6147540))

(declare-fun m!6147542 () Bool)

(assert (=> b!5089409 m!6147542))

(assert (=> b!5089163 m!6147090))

(declare-fun b!5089411 () Bool)

(declare-fun tp!1418818 () Bool)

(declare-fun tp!1418819 () Bool)

(declare-fun e!3174074 () Bool)

(assert (=> b!5089411 (= e!3174074 (and (inv!77844 (left!42899 (right!43229 (left!42899 (right!43229 t!3643))))) tp!1418819 (inv!77844 (right!43229 (right!43229 (left!42899 (right!43229 t!3643))))) tp!1418818))))

(declare-fun b!5089413 () Bool)

(declare-fun e!3174073 () Bool)

(declare-fun tp!1418820 () Bool)

(assert (=> b!5089413 (= e!3174073 tp!1418820)))

(declare-fun b!5089412 () Bool)

(assert (=> b!5089412 (= e!3174074 (and (inv!77845 (xs!19000 (right!43229 (left!42899 (right!43229 t!3643))))) e!3174073))))

(assert (=> b!5089163 (= tp!1418763 (and (inv!77844 (right!43229 (left!42899 (right!43229 t!3643)))) e!3174074))))

(assert (= (and b!5089163 ((_ is Node!15618) (right!43229 (left!42899 (right!43229 t!3643))))) b!5089411))

(assert (= b!5089412 b!5089413))

(assert (= (and b!5089163 ((_ is Leaf!25932) (right!43229 (left!42899 (right!43229 t!3643))))) b!5089412))

(declare-fun m!6147544 () Bool)

(assert (=> b!5089411 m!6147544))

(declare-fun m!6147546 () Bool)

(assert (=> b!5089411 m!6147546))

(declare-fun m!6147548 () Bool)

(assert (=> b!5089412 m!6147548))

(assert (=> b!5089163 m!6147092))

(check-sat (not b!5089246) (not b!5089385) (not b!5089250) (not d!1647394) (not b!5089364) (not b!5089397) (not b!5089310) (not b!5089410) (not b!5089412) (not b!5089297) (not b!5089307) (not b!5089383) (not b!5089322) tp_is_empty!37119 (not d!1647360) (not b!5089294) (not d!1647410) (not b!5089331) (not b!5089367) (not d!1647378) (not b!5089370) (not b!5089406) (not b!5089401) (not b!5089342) (not b!5089321) (not b!5089271) (not b!5089387) (not d!1647366) (not b!5089368) (not b!5089268) (not b!5089403) (not b!5089350) (not b!5089278) (not b!5089390) (not b!5089300) (not b!5089330) (not b!5089358) (not d!1647388) (not b!5089411) (not b!5089262) (not d!1647396) (not b!5089378) (not b!5089395) (not b!5089354) (not d!1647362) (not b!5089266) (not b!5089375) (not b!5089333) (not b!5089384) (not b!5089374) (not b!5089393) (not b!5089282) (not b!5089265) (not b!5089380) (not b!5089174) (not b!5089398) (not d!1647376) (not b!5089280) (not b!5089249) (not b!5089166) (not b!5089290) (not b!5089316) (not b!5089163) (not b!5089171) (not d!1647380) (not b!5089348) (not d!1647406) (not b!5089389) (not b!5089335) (not b!5089314) (not b!5089359) (not b!5089399) (not d!1647374) (not d!1647446) (not b!5089326) (not b!5089372) (not d!1647346) (not b!5089400) (not b!5089327) (not d!1647340) (not b!5089239) (not b!5089388) (not b!5089257) (not d!1647390) (not b!5089247) (not b!5089252) (not b!5089402) (not b!5089404) (not b!5089392) (not b!5089407) (not b!5089244) (not d!1647392) (not b!5089409) (not b!5089261) (not b!5089344) (not b!5089377) (not b!5089386) (not b!5089243) (not d!1647342) (not b!5089352) (not b!5089286) (not b!5089298) (not b!5089347) (not d!1647428) (not d!1647344) (not b!5089408) (not d!1647310) (not b!5089270) (not d!1647332) (not b!5089338) (not b!5089356) (not b!5089305) (not d!1647444) (not b!5089391) (not b!5089288) (not b!5089394) (not b!5089405) (not b!5089318) (not b!5089413) (not b!5089303) (not b!5089284) (not b!5089396) (not b!5089311) (not b!5089235) (not b!5089256) (not b!5089254) (not b!5089381) (not b!5089240) (not d!1647448) (not b!5089234) (not b!5089293) (not b!5089302) (not b!5089345) (not b!5089339) (not d!1647386) (not b!5089363))
(check-sat)
