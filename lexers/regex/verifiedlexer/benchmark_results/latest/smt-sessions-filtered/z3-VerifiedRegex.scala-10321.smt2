; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536430 () Bool)

(assert start!536430)

(declare-fun b!5090814 () Bool)

(declare-fun res!2166791 () Bool)

(declare-fun e!3174880 () Bool)

(assert (=> b!5090814 (=> (not res!2166791) (not e!3174880))))

(declare-fun i!607 () Int)

(declare-datatypes ((T!105580 0))(
  ( (T!105581 (val!23718 Int)) )
))
(declare-datatypes ((List!58643 0))(
  ( (Nil!58519) (Cons!58519 (h!64967 T!105580) (t!371552 List!58643)) )
))
(declare-datatypes ((IArray!31329 0))(
  ( (IArray!31330 (innerList!15722 List!58643)) )
))
(declare-datatypes ((Conc!15634 0))(
  ( (Node!15634 (left!42923 Conc!15634) (right!43253 Conc!15634) (csize!31498 Int) (cheight!15845 Int)) (Leaf!25956 (xs!19016 IArray!31329) (csize!31499 Int)) (Empty!15634) )
))
(declare-fun t!3643 () Conc!15634)

(declare-fun size!39209 (Conc!15634) Int)

(assert (=> b!5090814 (= res!2166791 (< i!607 (size!39209 t!3643)))))

(declare-fun tp!1419204 () Bool)

(declare-fun e!3174881 () Bool)

(declare-fun tp!1419205 () Bool)

(declare-fun b!5090815 () Bool)

(declare-fun inv!77927 (Conc!15634) Bool)

(assert (=> b!5090815 (= e!3174881 (and (inv!77927 (left!42923 t!3643)) tp!1419205 (inv!77927 (right!43253 t!3643)) tp!1419204))))

(declare-fun b!5090816 () Bool)

(declare-fun ConcPrimitiveSize!40 (Conc!15634) Int)

(assert (=> b!5090816 (= e!3174880 (< (ConcPrimitiveSize!40 t!3643) 0))))

(declare-fun res!2166792 () Bool)

(assert (=> start!536430 (=> (not res!2166792) (not e!3174880))))

(assert (=> start!536430 (= res!2166792 (<= 0 i!607))))

(assert (=> start!536430 e!3174880))

(assert (=> start!536430 true))

(assert (=> start!536430 (and (inv!77927 t!3643) e!3174881)))

(declare-fun b!5090817 () Bool)

(declare-fun e!3174882 () Bool)

(declare-fun tp!1419203 () Bool)

(assert (=> b!5090817 (= e!3174882 tp!1419203)))

(declare-fun b!5090818 () Bool)

(declare-fun inv!77928 (IArray!31329) Bool)

(assert (=> b!5090818 (= e!3174881 (and (inv!77928 (xs!19016 t!3643)) e!3174882))))

(assert (= (and start!536430 res!2166792) b!5090814))

(assert (= (and b!5090814 res!2166791) b!5090816))

(get-info :version)

(assert (= (and start!536430 ((_ is Node!15634) t!3643)) b!5090815))

(assert (= b!5090818 b!5090817))

(assert (= (and start!536430 ((_ is Leaf!25956) t!3643)) b!5090818))

(declare-fun m!6148918 () Bool)

(assert (=> b!5090815 m!6148918))

(declare-fun m!6148920 () Bool)

(assert (=> b!5090815 m!6148920))

(declare-fun m!6148922 () Bool)

(assert (=> b!5090818 m!6148922))

(declare-fun m!6148924 () Bool)

(assert (=> start!536430 m!6148924))

(declare-fun m!6148926 () Bool)

(assert (=> b!5090816 m!6148926))

(declare-fun m!6148928 () Bool)

(assert (=> b!5090814 m!6148928))

(check-sat (not b!5090816) (not b!5090815) (not b!5090814) (not start!536430) (not b!5090817) (not b!5090818))
(check-sat)
(get-model)

(declare-fun d!1647898 () Bool)

(declare-fun size!39210 (List!58643) Int)

(assert (=> d!1647898 (= (inv!77928 (xs!19016 t!3643)) (<= (size!39210 (innerList!15722 (xs!19016 t!3643))) 2147483647))))

(declare-fun bs!1191150 () Bool)

(assert (= bs!1191150 d!1647898))

(declare-fun m!6148930 () Bool)

(assert (=> bs!1191150 m!6148930))

(assert (=> b!5090818 d!1647898))

(declare-fun d!1647902 () Bool)

(declare-fun lt!2092411 () Int)

(declare-fun list!19097 (Conc!15634) List!58643)

(assert (=> d!1647902 (= lt!2092411 (size!39210 (list!19097 t!3643)))))

(assert (=> d!1647902 (= lt!2092411 (ite ((_ is Empty!15634) t!3643) 0 (ite ((_ is Leaf!25956) t!3643) (csize!31499 t!3643) (csize!31498 t!3643))))))

(assert (=> d!1647902 (= (size!39209 t!3643) lt!2092411)))

(declare-fun bs!1191151 () Bool)

(assert (= bs!1191151 d!1647902))

(declare-fun m!6148932 () Bool)

(assert (=> bs!1191151 m!6148932))

(assert (=> bs!1191151 m!6148932))

(declare-fun m!6148934 () Bool)

(assert (=> bs!1191151 m!6148934))

(assert (=> b!5090814 d!1647902))

(declare-fun d!1647904 () Bool)

(declare-fun c!874866 () Bool)

(assert (=> d!1647904 (= c!874866 ((_ is Node!15634) (left!42923 t!3643)))))

(declare-fun e!3174901 () Bool)

(assert (=> d!1647904 (= (inv!77927 (left!42923 t!3643)) e!3174901)))

(declare-fun b!5090848 () Bool)

(declare-fun inv!77931 (Conc!15634) Bool)

(assert (=> b!5090848 (= e!3174901 (inv!77931 (left!42923 t!3643)))))

(declare-fun b!5090849 () Bool)

(declare-fun e!3174902 () Bool)

(assert (=> b!5090849 (= e!3174901 e!3174902)))

(declare-fun res!2166800 () Bool)

(assert (=> b!5090849 (= res!2166800 (not ((_ is Leaf!25956) (left!42923 t!3643))))))

(assert (=> b!5090849 (=> res!2166800 e!3174902)))

(declare-fun b!5090850 () Bool)

(declare-fun inv!77932 (Conc!15634) Bool)

(assert (=> b!5090850 (= e!3174902 (inv!77932 (left!42923 t!3643)))))

(assert (= (and d!1647904 c!874866) b!5090848))

(assert (= (and d!1647904 (not c!874866)) b!5090849))

(assert (= (and b!5090849 (not res!2166800)) b!5090850))

(declare-fun m!6148948 () Bool)

(assert (=> b!5090848 m!6148948))

(declare-fun m!6148950 () Bool)

(assert (=> b!5090850 m!6148950))

(assert (=> b!5090815 d!1647904))

(declare-fun d!1647912 () Bool)

(declare-fun c!874867 () Bool)

(assert (=> d!1647912 (= c!874867 ((_ is Node!15634) (right!43253 t!3643)))))

(declare-fun e!3174903 () Bool)

(assert (=> d!1647912 (= (inv!77927 (right!43253 t!3643)) e!3174903)))

(declare-fun b!5090851 () Bool)

(assert (=> b!5090851 (= e!3174903 (inv!77931 (right!43253 t!3643)))))

(declare-fun b!5090852 () Bool)

(declare-fun e!3174904 () Bool)

(assert (=> b!5090852 (= e!3174903 e!3174904)))

(declare-fun res!2166801 () Bool)

(assert (=> b!5090852 (= res!2166801 (not ((_ is Leaf!25956) (right!43253 t!3643))))))

(assert (=> b!5090852 (=> res!2166801 e!3174904)))

(declare-fun b!5090853 () Bool)

(assert (=> b!5090853 (= e!3174904 (inv!77932 (right!43253 t!3643)))))

(assert (= (and d!1647912 c!874867) b!5090851))

(assert (= (and d!1647912 (not c!874867)) b!5090852))

(assert (= (and b!5090852 (not res!2166801)) b!5090853))

(declare-fun m!6148952 () Bool)

(assert (=> b!5090851 m!6148952))

(declare-fun m!6148954 () Bool)

(assert (=> b!5090853 m!6148954))

(assert (=> b!5090815 d!1647912))

(declare-fun b!5090866 () Bool)

(declare-fun e!3174912 () Int)

(declare-fun e!3174911 () Int)

(assert (=> b!5090866 (= e!3174912 e!3174911)))

(declare-fun c!874874 () Bool)

(assert (=> b!5090866 (= c!874874 ((_ is Leaf!25956) t!3643))))

(declare-fun bm!354652 () Bool)

(declare-fun call!354657 () Int)

(declare-fun c!874875 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!354652 (= call!354657 (BigIntAbs!0 (ite c!874875 (csize!31498 t!3643) (csize!31499 t!3643))))))

(declare-fun d!1647914 () Bool)

(declare-fun lt!2092420 () Int)

(assert (=> d!1647914 (>= lt!2092420 0)))

(assert (=> d!1647914 (= lt!2092420 e!3174912)))

(assert (=> d!1647914 (= c!874875 ((_ is Node!15634) t!3643))))

(assert (=> d!1647914 (= (ConcPrimitiveSize!40 t!3643) lt!2092420)))

(declare-fun b!5090867 () Bool)

(assert (=> b!5090867 (= e!3174912 (+ 1 (ConcPrimitiveSize!40 (left!42923 t!3643)) (ConcPrimitiveSize!40 (right!43253 t!3643)) call!354657 (BigIntAbs!0 (cheight!15845 t!3643))))))

(declare-fun b!5090868 () Bool)

(declare-fun IArrayPrimitiveSize!38 (IArray!31329) Int)

(assert (=> b!5090868 (= e!3174911 (+ 1 (IArrayPrimitiveSize!38 (xs!19016 t!3643)) call!354657))))

(declare-fun b!5090869 () Bool)

(assert (=> b!5090869 (= e!3174911 0)))

(assert (= (and d!1647914 c!874875) b!5090867))

(assert (= (and d!1647914 (not c!874875)) b!5090866))

(assert (= (and b!5090866 c!874874) b!5090868))

(assert (= (and b!5090866 (not c!874874)) b!5090869))

(assert (= (or b!5090867 b!5090868) bm!354652))

(declare-fun m!6148972 () Bool)

(assert (=> bm!354652 m!6148972))

(declare-fun m!6148974 () Bool)

(assert (=> b!5090867 m!6148974))

(declare-fun m!6148976 () Bool)

(assert (=> b!5090867 m!6148976))

(declare-fun m!6148978 () Bool)

(assert (=> b!5090867 m!6148978))

(declare-fun m!6148980 () Bool)

(assert (=> b!5090868 m!6148980))

(assert (=> b!5090816 d!1647914))

(declare-fun d!1647920 () Bool)

(declare-fun c!874876 () Bool)

(assert (=> d!1647920 (= c!874876 ((_ is Node!15634) t!3643))))

(declare-fun e!3174915 () Bool)

(assert (=> d!1647920 (= (inv!77927 t!3643) e!3174915)))

(declare-fun b!5090874 () Bool)

(assert (=> b!5090874 (= e!3174915 (inv!77931 t!3643))))

(declare-fun b!5090875 () Bool)

(declare-fun e!3174916 () Bool)

(assert (=> b!5090875 (= e!3174915 e!3174916)))

(declare-fun res!2166802 () Bool)

(assert (=> b!5090875 (= res!2166802 (not ((_ is Leaf!25956) t!3643)))))

(assert (=> b!5090875 (=> res!2166802 e!3174916)))

(declare-fun b!5090876 () Bool)

(assert (=> b!5090876 (= e!3174916 (inv!77932 t!3643))))

(assert (= (and d!1647920 c!874876) b!5090874))

(assert (= (and d!1647920 (not c!874876)) b!5090875))

(assert (= (and b!5090875 (not res!2166802)) b!5090876))

(declare-fun m!6148982 () Bool)

(assert (=> b!5090874 m!6148982))

(declare-fun m!6148984 () Bool)

(assert (=> b!5090876 m!6148984))

(assert (=> start!536430 d!1647920))

(declare-fun tp!1419222 () Bool)

(declare-fun b!5090892 () Bool)

(declare-fun tp!1419221 () Bool)

(declare-fun e!3174925 () Bool)

(assert (=> b!5090892 (= e!3174925 (and (inv!77927 (left!42923 (left!42923 t!3643))) tp!1419221 (inv!77927 (right!43253 (left!42923 t!3643))) tp!1419222))))

(declare-fun b!5090894 () Bool)

(declare-fun e!3174926 () Bool)

(declare-fun tp!1419223 () Bool)

(assert (=> b!5090894 (= e!3174926 tp!1419223)))

(declare-fun b!5090893 () Bool)

(assert (=> b!5090893 (= e!3174925 (and (inv!77928 (xs!19016 (left!42923 t!3643))) e!3174926))))

(assert (=> b!5090815 (= tp!1419205 (and (inv!77927 (left!42923 t!3643)) e!3174925))))

(assert (= (and b!5090815 ((_ is Node!15634) (left!42923 t!3643))) b!5090892))

(assert (= b!5090893 b!5090894))

(assert (= (and b!5090815 ((_ is Leaf!25956) (left!42923 t!3643))) b!5090893))

(declare-fun m!6148992 () Bool)

(assert (=> b!5090892 m!6148992))

(declare-fun m!6148996 () Bool)

(assert (=> b!5090892 m!6148996))

(declare-fun m!6148998 () Bool)

(assert (=> b!5090893 m!6148998))

(assert (=> b!5090815 m!6148918))

(declare-fun tp!1419227 () Bool)

(declare-fun b!5090898 () Bool)

(declare-fun tp!1419228 () Bool)

(declare-fun e!3174929 () Bool)

(assert (=> b!5090898 (= e!3174929 (and (inv!77927 (left!42923 (right!43253 t!3643))) tp!1419227 (inv!77927 (right!43253 (right!43253 t!3643))) tp!1419228))))

(declare-fun b!5090901 () Bool)

(declare-fun e!3174930 () Bool)

(declare-fun tp!1419229 () Bool)

(assert (=> b!5090901 (= e!3174930 tp!1419229)))

(declare-fun b!5090900 () Bool)

(assert (=> b!5090900 (= e!3174929 (and (inv!77928 (xs!19016 (right!43253 t!3643))) e!3174930))))

(assert (=> b!5090815 (= tp!1419204 (and (inv!77927 (right!43253 t!3643)) e!3174929))))

(assert (= (and b!5090815 ((_ is Node!15634) (right!43253 t!3643))) b!5090898))

(assert (= b!5090900 b!5090901))

(assert (= (and b!5090815 ((_ is Leaf!25956) (right!43253 t!3643))) b!5090900))

(declare-fun m!6149004 () Bool)

(assert (=> b!5090898 m!6149004))

(declare-fun m!6149006 () Bool)

(assert (=> b!5090898 m!6149006))

(declare-fun m!6149008 () Bool)

(assert (=> b!5090900 m!6149008))

(assert (=> b!5090815 m!6148920))

(declare-fun b!5090910 () Bool)

(declare-fun e!3174936 () Bool)

(declare-fun tp_is_empty!37147 () Bool)

(declare-fun tp!1419235 () Bool)

(assert (=> b!5090910 (= e!3174936 (and tp_is_empty!37147 tp!1419235))))

(assert (=> b!5090817 (= tp!1419203 e!3174936)))

(assert (= (and b!5090817 ((_ is Cons!58519) (innerList!15722 (xs!19016 t!3643)))) b!5090910))

(check-sat (not b!5090850) (not b!5090874) (not b!5090815) (not b!5090894) tp_is_empty!37147 (not b!5090900) (not b!5090851) (not d!1647902) (not b!5090901) (not d!1647898) (not b!5090892) (not b!5090910) (not b!5090853) (not bm!354652) (not b!5090876) (not b!5090898) (not b!5090867) (not b!5090868) (not b!5090893) (not b!5090848))
(check-sat)
