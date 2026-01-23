; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536296 () Bool)

(assert start!536296)

(declare-fun b!5089887 () Bool)

(declare-fun res!2166552 () Bool)

(declare-fun e!3174343 () Bool)

(assert (=> b!5089887 (=> (not res!2166552) (not e!3174343))))

(declare-fun i!607 () Int)

(declare-datatypes ((T!105508 0))(
  ( (T!105509 (val!23707 Int)) )
))
(declare-datatypes ((List!58632 0))(
  ( (Nil!58508) (Cons!58508 (h!64956 T!105508) (t!371521 List!58632)) )
))
(declare-datatypes ((IArray!31307 0))(
  ( (IArray!31308 (innerList!15711 List!58632)) )
))
(declare-datatypes ((Conc!15623 0))(
  ( (Node!15623 (left!42907 Conc!15623) (right!43237 Conc!15623) (csize!31476 Int) (cheight!15834 Int)) (Leaf!25940 (xs!19005 IArray!31307) (csize!31477 Int)) (Empty!15623) )
))
(declare-fun t!3643 () Conc!15623)

(declare-fun size!39188 (Conc!15623) Int)

(assert (=> b!5089887 (= res!2166552 (< i!607 (size!39188 t!3643)))))

(declare-fun b!5089888 () Bool)

(declare-fun e!3174345 () Bool)

(assert (=> b!5089888 (= e!3174343 e!3174345)))

(declare-fun res!2166551 () Bool)

(assert (=> b!5089888 (=> (not res!2166551) (not e!3174345))))

(declare-fun lt!2092297 () Int)

(assert (=> b!5089888 (= res!2166551 (>= i!607 lt!2092297))))

(assert (=> b!5089888 (= lt!2092297 (size!39188 (left!42907 t!3643)))))

(declare-fun lt!2092296 () Bool)

(declare-fun appendIndex!414 (List!58632 List!58632 Int) Bool)

(declare-fun list!19079 (Conc!15623) List!58632)

(assert (=> b!5089888 (= lt!2092296 (appendIndex!414 (list!19079 (left!42907 t!3643)) (list!19079 (right!43237 t!3643)) i!607))))

(declare-fun b!5089889 () Bool)

(declare-fun res!2166554 () Bool)

(assert (=> b!5089889 (=> (not res!2166554) (not e!3174343))))

(assert (=> b!5089889 (= res!2166554 (and (not (is-Leaf!25940 t!3643)) (is-Node!15623 t!3643)))))

(declare-fun b!5089891 () Bool)

(declare-fun e!3174347 () Bool)

(declare-fun tp!1418925 () Bool)

(assert (=> b!5089891 (= e!3174347 tp!1418925)))

(declare-fun tp!1418926 () Bool)

(declare-fun b!5089892 () Bool)

(declare-fun tp!1418924 () Bool)

(declare-fun e!3174344 () Bool)

(declare-fun inv!77871 (Conc!15623) Bool)

(assert (=> b!5089892 (= e!3174344 (and (inv!77871 (left!42907 t!3643)) tp!1418926 (inv!77871 (right!43237 t!3643)) tp!1418924))))

(declare-fun b!5089893 () Bool)

(declare-fun e!3174346 () Bool)

(assert (=> b!5089893 (= e!3174345 e!3174346)))

(declare-fun res!2166553 () Bool)

(assert (=> b!5089893 (=> res!2166553 e!3174346)))

(declare-fun lt!2092295 () Int)

(assert (=> b!5089893 (= res!2166553 (> 0 lt!2092295))))

(assert (=> b!5089893 (= lt!2092295 (- i!607 lt!2092297))))

(declare-fun b!5089894 () Bool)

(declare-fun inv!77872 (IArray!31307) Bool)

(assert (=> b!5089894 (= e!3174344 (and (inv!77872 (xs!19005 t!3643)) e!3174347))))

(declare-fun res!2166555 () Bool)

(assert (=> start!536296 (=> (not res!2166555) (not e!3174343))))

(assert (=> start!536296 (= res!2166555 (<= 0 i!607))))

(assert (=> start!536296 e!3174343))

(assert (=> start!536296 true))

(assert (=> start!536296 (and (inv!77871 t!3643) e!3174344)))

(declare-fun b!5089890 () Bool)

(assert (=> b!5089890 (= e!3174346 (>= lt!2092295 (size!39188 (right!43237 t!3643))))))

(assert (= (and start!536296 res!2166555) b!5089887))

(assert (= (and b!5089887 res!2166552) b!5089889))

(assert (= (and b!5089889 res!2166554) b!5089888))

(assert (= (and b!5089888 res!2166551) b!5089893))

(assert (= (and b!5089893 (not res!2166553)) b!5089890))

(assert (= (and start!536296 (is-Node!15623 t!3643)) b!5089892))

(assert (= b!5089894 b!5089891))

(assert (= (and start!536296 (is-Leaf!25940 t!3643)) b!5089894))

(declare-fun m!6148102 () Bool)

(assert (=> b!5089887 m!6148102))

(declare-fun m!6148104 () Bool)

(assert (=> b!5089888 m!6148104))

(declare-fun m!6148106 () Bool)

(assert (=> b!5089888 m!6148106))

(declare-fun m!6148108 () Bool)

(assert (=> b!5089888 m!6148108))

(assert (=> b!5089888 m!6148106))

(assert (=> b!5089888 m!6148108))

(declare-fun m!6148110 () Bool)

(assert (=> b!5089888 m!6148110))

(declare-fun m!6148112 () Bool)

(assert (=> b!5089894 m!6148112))

(declare-fun m!6148114 () Bool)

(assert (=> start!536296 m!6148114))

(declare-fun m!6148116 () Bool)

(assert (=> b!5089890 m!6148116))

(declare-fun m!6148118 () Bool)

(assert (=> b!5089892 m!6148118))

(declare-fun m!6148120 () Bool)

(assert (=> b!5089892 m!6148120))

(push 1)

(assert (not b!5089892))

(assert (not b!5089890))

(assert (not start!536296))

(assert (not b!5089888))

(assert (not b!5089894))

(assert (not b!5089887))

(assert (not b!5089891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1647665 () Bool)

(declare-fun c!874673 () Bool)

(assert (=> d!1647665 (= c!874673 (is-Node!15623 t!3643))))

(declare-fun e!3174367 () Bool)

(assert (=> d!1647665 (= (inv!77871 t!3643) e!3174367)))

(declare-fun b!5089925 () Bool)

(declare-fun inv!77875 (Conc!15623) Bool)

(assert (=> b!5089925 (= e!3174367 (inv!77875 t!3643))))

(declare-fun b!5089926 () Bool)

(declare-fun e!3174368 () Bool)

(assert (=> b!5089926 (= e!3174367 e!3174368)))

(declare-fun res!2166573 () Bool)

(assert (=> b!5089926 (= res!2166573 (not (is-Leaf!25940 t!3643)))))

(assert (=> b!5089926 (=> res!2166573 e!3174368)))

(declare-fun b!5089927 () Bool)

(declare-fun inv!77876 (Conc!15623) Bool)

(assert (=> b!5089927 (= e!3174368 (inv!77876 t!3643))))

(assert (= (and d!1647665 c!874673) b!5089925))

(assert (= (and d!1647665 (not c!874673)) b!5089926))

(assert (= (and b!5089926 (not res!2166573)) b!5089927))

(declare-fun m!6148142 () Bool)

(assert (=> b!5089925 m!6148142))

(declare-fun m!6148144 () Bool)

(assert (=> b!5089927 m!6148144))

(assert (=> start!536296 d!1647665))

(declare-fun d!1647667 () Bool)

(declare-fun c!874674 () Bool)

(assert (=> d!1647667 (= c!874674 (is-Node!15623 (left!42907 t!3643)))))

(declare-fun e!3174369 () Bool)

(assert (=> d!1647667 (= (inv!77871 (left!42907 t!3643)) e!3174369)))

(declare-fun b!5089928 () Bool)

(assert (=> b!5089928 (= e!3174369 (inv!77875 (left!42907 t!3643)))))

(declare-fun b!5089929 () Bool)

(declare-fun e!3174370 () Bool)

(assert (=> b!5089929 (= e!3174369 e!3174370)))

(declare-fun res!2166574 () Bool)

(assert (=> b!5089929 (= res!2166574 (not (is-Leaf!25940 (left!42907 t!3643))))))

(assert (=> b!5089929 (=> res!2166574 e!3174370)))

(declare-fun b!5089930 () Bool)

(assert (=> b!5089930 (= e!3174370 (inv!77876 (left!42907 t!3643)))))

(assert (= (and d!1647667 c!874674) b!5089928))

(assert (= (and d!1647667 (not c!874674)) b!5089929))

(assert (= (and b!5089929 (not res!2166574)) b!5089930))

(declare-fun m!6148146 () Bool)

(assert (=> b!5089928 m!6148146))

(declare-fun m!6148148 () Bool)

(assert (=> b!5089930 m!6148148))

(assert (=> b!5089892 d!1647667))

(declare-fun d!1647671 () Bool)

(declare-fun c!874675 () Bool)

(assert (=> d!1647671 (= c!874675 (is-Node!15623 (right!43237 t!3643)))))

(declare-fun e!3174371 () Bool)

(assert (=> d!1647671 (= (inv!77871 (right!43237 t!3643)) e!3174371)))

(declare-fun b!5089931 () Bool)

(assert (=> b!5089931 (= e!3174371 (inv!77875 (right!43237 t!3643)))))

(declare-fun b!5089932 () Bool)

(declare-fun e!3174372 () Bool)

(assert (=> b!5089932 (= e!3174371 e!3174372)))

(declare-fun res!2166575 () Bool)

(assert (=> b!5089932 (= res!2166575 (not (is-Leaf!25940 (right!43237 t!3643))))))

(assert (=> b!5089932 (=> res!2166575 e!3174372)))

(declare-fun b!5089933 () Bool)

(assert (=> b!5089933 (= e!3174372 (inv!77876 (right!43237 t!3643)))))

(assert (= (and d!1647671 c!874675) b!5089931))

(assert (= (and d!1647671 (not c!874675)) b!5089932))

(assert (= (and b!5089932 (not res!2166575)) b!5089933))

(declare-fun m!6148150 () Bool)

(assert (=> b!5089931 m!6148150))

(declare-fun m!6148152 () Bool)

(assert (=> b!5089933 m!6148152))

(assert (=> b!5089892 d!1647671))

(declare-fun d!1647673 () Bool)

(declare-fun lt!2092309 () Int)

(declare-fun size!39190 (List!58632) Int)

(assert (=> d!1647673 (= lt!2092309 (size!39190 (list!19079 t!3643)))))

(assert (=> d!1647673 (= lt!2092309 (ite (is-Empty!15623 t!3643) 0 (ite (is-Leaf!25940 t!3643) (csize!31477 t!3643) (csize!31476 t!3643))))))

(assert (=> d!1647673 (= (size!39188 t!3643) lt!2092309)))

(declare-fun bs!1191110 () Bool)

(assert (= bs!1191110 d!1647673))

(declare-fun m!6148154 () Bool)

(assert (=> bs!1191110 m!6148154))

(assert (=> bs!1191110 m!6148154))

(declare-fun m!6148156 () Bool)

(assert (=> bs!1191110 m!6148156))

(assert (=> b!5089887 d!1647673))

(declare-fun d!1647675 () Bool)

(declare-fun lt!2092310 () Int)

(assert (=> d!1647675 (= lt!2092310 (size!39190 (list!19079 (right!43237 t!3643))))))

(assert (=> d!1647675 (= lt!2092310 (ite (is-Empty!15623 (right!43237 t!3643)) 0 (ite (is-Leaf!25940 (right!43237 t!3643)) (csize!31477 (right!43237 t!3643)) (csize!31476 (right!43237 t!3643)))))))

(assert (=> d!1647675 (= (size!39188 (right!43237 t!3643)) lt!2092310)))

(declare-fun bs!1191111 () Bool)

(assert (= bs!1191111 d!1647675))

(assert (=> bs!1191111 m!6148108))

(assert (=> bs!1191111 m!6148108))

(declare-fun m!6148158 () Bool)

(assert (=> bs!1191111 m!6148158))

(assert (=> b!5089890 d!1647675))

(declare-fun d!1647677 () Bool)

(assert (=> d!1647677 (= (inv!77872 (xs!19005 t!3643)) (<= (size!39190 (innerList!15711 (xs!19005 t!3643))) 2147483647))))

(declare-fun bs!1191112 () Bool)

(assert (= bs!1191112 d!1647677))

(declare-fun m!6148160 () Bool)

(assert (=> bs!1191112 m!6148160))

(assert (=> b!5089894 d!1647677))

(declare-fun d!1647679 () Bool)

(declare-fun lt!2092311 () Int)

(assert (=> d!1647679 (= lt!2092311 (size!39190 (list!19079 (left!42907 t!3643))))))

(assert (=> d!1647679 (= lt!2092311 (ite (is-Empty!15623 (left!42907 t!3643)) 0 (ite (is-Leaf!25940 (left!42907 t!3643)) (csize!31477 (left!42907 t!3643)) (csize!31476 (left!42907 t!3643)))))))

(assert (=> d!1647679 (= (size!39188 (left!42907 t!3643)) lt!2092311)))

(declare-fun bs!1191113 () Bool)

(assert (= bs!1191113 d!1647679))

(assert (=> bs!1191113 m!6148106))

(assert (=> bs!1191113 m!6148106))

(declare-fun m!6148162 () Bool)

(assert (=> bs!1191113 m!6148162))

(assert (=> b!5089888 d!1647679))

(declare-fun b!5089946 () Bool)

(declare-fun e!3174382 () Int)

(assert (=> b!5089946 (= e!3174382 i!607)))

(declare-fun b!5089947 () Bool)

(declare-fun e!3174381 () Bool)

(assert (=> b!5089947 (= e!3174381 (< i!607 (+ (size!39190 (list!19079 (left!42907 t!3643))) (size!39190 (list!19079 (right!43237 t!3643))))))))

(declare-fun b!5089948 () Bool)

(assert (=> b!5089948 (= e!3174382 (- i!607 (size!39190 (list!19079 (left!42907 t!3643)))))))

(declare-fun d!1647681 () Bool)

(declare-fun e!3174383 () T!105508)

(declare-fun apply!14255 (List!58632 Int) T!105508)

(declare-fun ++!12828 (List!58632 List!58632) List!58632)

(assert (=> d!1647681 (= (apply!14255 (++!12828 (list!19079 (left!42907 t!3643)) (list!19079 (right!43237 t!3643))) i!607) e!3174383)))

(declare-fun c!874681 () Bool)

(assert (=> d!1647681 (= c!874681 (< i!607 (size!39190 (list!19079 (left!42907 t!3643)))))))

(declare-fun lt!2092317 () Bool)

(declare-fun e!3174384 () Bool)

(assert (=> d!1647681 (= lt!2092317 e!3174384)))

(declare-fun res!2166581 () Bool)

(assert (=> d!1647681 (=> res!2166581 e!3174384)))

(assert (=> d!1647681 (= res!2166581 (or (is-Nil!58508 (list!19079 (left!42907 t!3643))) (= i!607 0)))))

(assert (=> d!1647681 e!3174381))

(declare-fun res!2166580 () Bool)

(assert (=> d!1647681 (=> (not res!2166580) (not e!3174381))))

(assert (=> d!1647681 (= res!2166580 (<= 0 i!607))))

(assert (=> d!1647681 (= (appendIndex!414 (list!19079 (left!42907 t!3643)) (list!19079 (right!43237 t!3643)) i!607) true)))

(declare-fun call!354636 () T!105508)

(declare-fun bm!354631 () Bool)

(assert (=> bm!354631 (= call!354636 (apply!14255 (ite c!874681 (list!19079 (left!42907 t!3643)) (list!19079 (right!43237 t!3643))) e!3174382))))

(declare-fun c!874680 () Bool)

(assert (=> bm!354631 (= c!874680 c!874681)))

(declare-fun b!5089949 () Bool)

(assert (=> b!5089949 (= e!3174383 call!354636)))

(declare-fun b!5089950 () Bool)

(assert (=> b!5089950 (= e!3174383 call!354636)))

(declare-fun b!5089951 () Bool)

(assert (=> b!5089951 (= e!3174384 (appendIndex!414 (t!371521 (list!19079 (left!42907 t!3643))) (list!19079 (right!43237 t!3643)) (- i!607 1)))))

(assert (= (and d!1647681 res!2166580) b!5089947))

(assert (= (and d!1647681 (not res!2166581)) b!5089951))

(assert (= (and d!1647681 c!874681) b!5089950))

(assert (= (and d!1647681 (not c!874681)) b!5089949))

(assert (= (or b!5089950 b!5089949) bm!354631))

(assert (= (and bm!354631 c!874680) b!5089946))

(assert (= (and bm!354631 (not c!874680)) b!5089948))

(declare-fun m!6148166 () Bool)

(assert (=> bm!354631 m!6148166))

(assert (=> b!5089948 m!6148106))

(assert (=> b!5089948 m!6148162))

(assert (=> b!5089947 m!6148106))

(assert (=> b!5089947 m!6148162))

(assert (=> b!5089947 m!6148108))

(assert (=> b!5089947 m!6148158))

(assert (=> d!1647681 m!6148106))

(assert (=> d!1647681 m!6148108))

(declare-fun m!6148168 () Bool)

(assert (=> d!1647681 m!6148168))

(assert (=> d!1647681 m!6148168))

(declare-fun m!6148170 () Bool)

(assert (=> d!1647681 m!6148170))

(assert (=> d!1647681 m!6148106))

(assert (=> d!1647681 m!6148162))

(assert (=> b!5089951 m!6148108))

(declare-fun m!6148172 () Bool)

(assert (=> b!5089951 m!6148172))

(assert (=> b!5089888 d!1647681))

(declare-fun b!5089967 () Bool)

(declare-fun e!3174394 () List!58632)

(assert (=> b!5089967 (= e!3174394 (++!12828 (list!19079 (left!42907 (left!42907 t!3643))) (list!19079 (right!43237 (left!42907 t!3643)))))))

(declare-fun b!5089966 () Bool)

(declare-fun list!19081 (IArray!31307) List!58632)

(assert (=> b!5089966 (= e!3174394 (list!19081 (xs!19005 (left!42907 t!3643))))))

(declare-fun d!1647685 () Bool)

(declare-fun c!874686 () Bool)

(assert (=> d!1647685 (= c!874686 (is-Empty!15623 (left!42907 t!3643)))))

(declare-fun e!3174393 () List!58632)

(assert (=> d!1647685 (= (list!19079 (left!42907 t!3643)) e!3174393)))

(declare-fun b!5089965 () Bool)

(assert (=> b!5089965 (= e!3174393 e!3174394)))

(declare-fun c!874687 () Bool)

(assert (=> b!5089965 (= c!874687 (is-Leaf!25940 (left!42907 t!3643)))))

(declare-fun b!5089964 () Bool)

(assert (=> b!5089964 (= e!3174393 Nil!58508)))

(assert (= (and d!1647685 c!874686) b!5089964))

(assert (= (and d!1647685 (not c!874686)) b!5089965))

(assert (= (and b!5089965 c!874687) b!5089966))

(assert (= (and b!5089965 (not c!874687)) b!5089967))

(declare-fun m!6148174 () Bool)

(assert (=> b!5089967 m!6148174))

(declare-fun m!6148176 () Bool)

(assert (=> b!5089967 m!6148176))

(assert (=> b!5089967 m!6148174))

(assert (=> b!5089967 m!6148176))

(declare-fun m!6148178 () Bool)

(assert (=> b!5089967 m!6148178))

(declare-fun m!6148180 () Bool)

(assert (=> b!5089966 m!6148180))

(assert (=> b!5089888 d!1647685))

(declare-fun b!5089975 () Bool)

(declare-fun e!3174398 () List!58632)

(assert (=> b!5089975 (= e!3174398 (++!12828 (list!19079 (left!42907 (right!43237 t!3643))) (list!19079 (right!43237 (right!43237 t!3643)))))))

(declare-fun b!5089974 () Bool)

(assert (=> b!5089974 (= e!3174398 (list!19081 (xs!19005 (right!43237 t!3643))))))

(declare-fun d!1647687 () Bool)

(declare-fun c!874690 () Bool)

(assert (=> d!1647687 (= c!874690 (is-Empty!15623 (right!43237 t!3643)))))

(declare-fun e!3174397 () List!58632)

(assert (=> d!1647687 (= (list!19079 (right!43237 t!3643)) e!3174397)))

(declare-fun b!5089973 () Bool)

(assert (=> b!5089973 (= e!3174397 e!3174398)))

(declare-fun c!874691 () Bool)

(assert (=> b!5089973 (= c!874691 (is-Leaf!25940 (right!43237 t!3643)))))

(declare-fun b!5089972 () Bool)

(assert (=> b!5089972 (= e!3174397 Nil!58508)))

(assert (= (and d!1647687 c!874690) b!5089972))

(assert (= (and d!1647687 (not c!874690)) b!5089973))

(assert (= (and b!5089973 c!874691) b!5089974))

(assert (= (and b!5089973 (not c!874691)) b!5089975))

(declare-fun m!6148182 () Bool)

(assert (=> b!5089975 m!6148182))

(declare-fun m!6148184 () Bool)

(assert (=> b!5089975 m!6148184))

(assert (=> b!5089975 m!6148182))

(assert (=> b!5089975 m!6148184))

(declare-fun m!6148186 () Bool)

(assert (=> b!5089975 m!6148186))

(declare-fun m!6148188 () Bool)

(assert (=> b!5089974 m!6148188))

(assert (=> b!5089888 d!1647687))

(declare-fun tp!1418943 () Bool)

(declare-fun b!5089988 () Bool)

(declare-fun e!3174405 () Bool)

(declare-fun tp!1418944 () Bool)

(assert (=> b!5089988 (= e!3174405 (and (inv!77871 (left!42907 (left!42907 t!3643))) tp!1418944 (inv!77871 (right!43237 (left!42907 t!3643))) tp!1418943))))

(declare-fun b!5089990 () Bool)

(declare-fun e!3174406 () Bool)

(declare-fun tp!1418942 () Bool)

(assert (=> b!5089990 (= e!3174406 tp!1418942)))

(declare-fun b!5089989 () Bool)

(assert (=> b!5089989 (= e!3174405 (and (inv!77872 (xs!19005 (left!42907 t!3643))) e!3174406))))

(assert (=> b!5089892 (= tp!1418926 (and (inv!77871 (left!42907 t!3643)) e!3174405))))

(assert (= (and b!5089892 (is-Node!15623 (left!42907 t!3643))) b!5089988))

(assert (= b!5089989 b!5089990))

(assert (= (and b!5089892 (is-Leaf!25940 (left!42907 t!3643))) b!5089989))

(declare-fun m!6148190 () Bool)

(assert (=> b!5089988 m!6148190))

(declare-fun m!6148192 () Bool)

(assert (=> b!5089988 m!6148192))

(declare-fun m!6148194 () Bool)

(assert (=> b!5089989 m!6148194))

(assert (=> b!5089892 m!6148118))

(declare-fun b!5089991 () Bool)

(declare-fun tp!1418946 () Bool)

(declare-fun e!3174407 () Bool)

(declare-fun tp!1418947 () Bool)

(assert (=> b!5089991 (= e!3174407 (and (inv!77871 (left!42907 (right!43237 t!3643))) tp!1418947 (inv!77871 (right!43237 (right!43237 t!3643))) tp!1418946))))

(declare-fun b!5089993 () Bool)

(declare-fun e!3174408 () Bool)

(declare-fun tp!1418945 () Bool)

(assert (=> b!5089993 (= e!3174408 tp!1418945)))

(declare-fun b!5089992 () Bool)

(assert (=> b!5089992 (= e!3174407 (and (inv!77872 (xs!19005 (right!43237 t!3643))) e!3174408))))

(assert (=> b!5089892 (= tp!1418924 (and (inv!77871 (right!43237 t!3643)) e!3174407))))

(assert (= (and b!5089892 (is-Node!15623 (right!43237 t!3643))) b!5089991))

(assert (= b!5089992 b!5089993))

(assert (= (and b!5089892 (is-Leaf!25940 (right!43237 t!3643))) b!5089992))

(declare-fun m!6148196 () Bool)

(assert (=> b!5089991 m!6148196))

(declare-fun m!6148198 () Bool)

(assert (=> b!5089991 m!6148198))

(declare-fun m!6148200 () Bool)

(assert (=> b!5089992 m!6148200))

(assert (=> b!5089892 m!6148120))

(declare-fun b!5089998 () Bool)

(declare-fun e!3174411 () Bool)

(declare-fun tp_is_empty!37125 () Bool)

(declare-fun tp!1418950 () Bool)

(assert (=> b!5089998 (= e!3174411 (and tp_is_empty!37125 tp!1418950))))

(assert (=> b!5089891 (= tp!1418925 e!3174411)))

(assert (= (and b!5089891 (is-Cons!58508 (innerList!15711 (xs!19005 t!3643)))) b!5089998))

(push 1)

(assert (not b!5089933))

(assert (not b!5089892))

(assert (not b!5089992))

(assert (not d!1647681))

(assert (not b!5089951))

(assert (not b!5089930))

(assert (not b!5089966))

(assert (not b!5089975))

(assert (not b!5089925))

(assert (not d!1647673))

(assert (not d!1647675))

(assert (not b!5089991))

(assert (not b!5089993))

(assert tp_is_empty!37125)

(assert (not b!5089967))

(assert (not b!5089947))

(assert (not d!1647679))

(assert (not b!5089948))

(assert (not b!5089928))

(assert (not bm!354631))

(assert (not d!1647677))

(assert (not b!5089974))

(assert (not b!5089998))

(assert (not b!5089927))

(assert (not b!5089990))

(assert (not b!5089988))

(assert (not b!5089989))

(assert (not b!5089931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

