; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755352 () Bool)

(assert start!755352)

(declare-fun b!8024087 () Bool)

(declare-fun e!4726940 () Bool)

(declare-datatypes ((B!4269 0))(
  ( (B!4270 (val!32524 Int)) )
))
(declare-datatypes ((List!75036 0))(
  ( (Nil!74912) (Cons!74912 (h!81360 B!4269) (t!390779 List!75036)) )
))
(declare-fun l!2932 () List!75036)

(declare-fun ListPrimitiveSize!507 (List!75036) Int)

(declare-fun tail!15979 (List!75036) List!75036)

(assert (=> b!8024087 (= e!4726940 (>= (ListPrimitiveSize!507 (tail!15979 l!2932)) (ListPrimitiveSize!507 l!2932)))))

(declare-fun b!8024088 () Bool)

(declare-fun e!4726941 () Bool)

(declare-fun tp_is_empty!54157 () Bool)

(declare-fun tp!2401403 () Bool)

(assert (=> b!8024088 (= e!4726941 (and tp_is_empty!54157 tp!2401403))))

(declare-fun b!8024089 () Bool)

(declare-fun res!3173226 () Bool)

(assert (=> b!8024089 (=> (not res!3173226) (not e!4726940))))

(declare-fun p!1838 () List!75036)

(declare-fun isPrefix!6843 (List!75036 List!75036) Bool)

(assert (=> b!8024089 (= res!3173226 (isPrefix!6843 p!1838 l!2932))))

(declare-fun b!8024090 () Bool)

(declare-fun res!3173225 () Bool)

(assert (=> b!8024090 (=> (not res!3173225) (not e!4726940))))

(get-info :version)

(assert (=> b!8024090 (= res!3173225 ((_ is Cons!74912) p!1838))))

(declare-fun b!8024091 () Bool)

(declare-fun e!4726939 () Bool)

(declare-fun tp!2401402 () Bool)

(assert (=> b!8024091 (= e!4726939 (and tp_is_empty!54157 tp!2401402))))

(declare-fun res!3173224 () Bool)

(assert (=> start!755352 (=> (not res!3173224) (not e!4726940))))

(declare-fun size!43689 (List!75036) Int)

(assert (=> start!755352 (= res!3173224 (>= (size!43689 l!2932) (size!43689 p!1838)))))

(assert (=> start!755352 e!4726940))

(assert (=> start!755352 e!4726939))

(assert (=> start!755352 e!4726941))

(assert (= (and start!755352 res!3173224) b!8024089))

(assert (= (and b!8024089 res!3173226) b!8024090))

(assert (= (and b!8024090 res!3173225) b!8024087))

(assert (= (and start!755352 ((_ is Cons!74912) l!2932)) b!8024091))

(assert (= (and start!755352 ((_ is Cons!74912) p!1838)) b!8024088))

(declare-fun m!8386598 () Bool)

(assert (=> b!8024087 m!8386598))

(assert (=> b!8024087 m!8386598))

(declare-fun m!8386600 () Bool)

(assert (=> b!8024087 m!8386600))

(declare-fun m!8386602 () Bool)

(assert (=> b!8024087 m!8386602))

(declare-fun m!8386604 () Bool)

(assert (=> b!8024089 m!8386604))

(declare-fun m!8386606 () Bool)

(assert (=> start!755352 m!8386606))

(declare-fun m!8386608 () Bool)

(assert (=> start!755352 m!8386608))

(check-sat tp_is_empty!54157 (not b!8024091) (not start!755352) (not b!8024087) (not b!8024088) (not b!8024089))
(check-sat)
(get-model)

(declare-fun d!2392640 () Bool)

(declare-fun lt!2720541 () Int)

(assert (=> d!2392640 (>= lt!2720541 0)))

(declare-fun e!4726948 () Int)

(assert (=> d!2392640 (= lt!2720541 e!4726948)))

(declare-fun c!1472368 () Bool)

(assert (=> d!2392640 (= c!1472368 ((_ is Nil!74912) (tail!15979 l!2932)))))

(assert (=> d!2392640 (= (ListPrimitiveSize!507 (tail!15979 l!2932)) lt!2720541)))

(declare-fun b!8024104 () Bool)

(assert (=> b!8024104 (= e!4726948 0)))

(declare-fun b!8024105 () Bool)

(assert (=> b!8024105 (= e!4726948 (+ 1 (ListPrimitiveSize!507 (t!390779 (tail!15979 l!2932)))))))

(assert (= (and d!2392640 c!1472368) b!8024104))

(assert (= (and d!2392640 (not c!1472368)) b!8024105))

(declare-fun m!8386614 () Bool)

(assert (=> b!8024105 m!8386614))

(assert (=> b!8024087 d!2392640))

(declare-fun d!2392648 () Bool)

(assert (=> d!2392648 (= (tail!15979 l!2932) (t!390779 l!2932))))

(assert (=> b!8024087 d!2392648))

(declare-fun d!2392650 () Bool)

(declare-fun lt!2720542 () Int)

(assert (=> d!2392650 (>= lt!2720542 0)))

(declare-fun e!4726949 () Int)

(assert (=> d!2392650 (= lt!2720542 e!4726949)))

(declare-fun c!1472369 () Bool)

(assert (=> d!2392650 (= c!1472369 ((_ is Nil!74912) l!2932))))

(assert (=> d!2392650 (= (ListPrimitiveSize!507 l!2932) lt!2720542)))

(declare-fun b!8024106 () Bool)

(assert (=> b!8024106 (= e!4726949 0)))

(declare-fun b!8024107 () Bool)

(assert (=> b!8024107 (= e!4726949 (+ 1 (ListPrimitiveSize!507 (t!390779 l!2932))))))

(assert (= (and d!2392650 c!1472369) b!8024106))

(assert (= (and d!2392650 (not c!1472369)) b!8024107))

(declare-fun m!8386616 () Bool)

(assert (=> b!8024107 m!8386616))

(assert (=> b!8024087 d!2392650))

(declare-fun d!2392652 () Bool)

(declare-fun lt!2720547 () Int)

(assert (=> d!2392652 (>= lt!2720547 0)))

(declare-fun e!4726958 () Int)

(assert (=> d!2392652 (= lt!2720547 e!4726958)))

(declare-fun c!1472372 () Bool)

(assert (=> d!2392652 (= c!1472372 ((_ is Nil!74912) l!2932))))

(assert (=> d!2392652 (= (size!43689 l!2932) lt!2720547)))

(declare-fun b!8024120 () Bool)

(assert (=> b!8024120 (= e!4726958 0)))

(declare-fun b!8024121 () Bool)

(assert (=> b!8024121 (= e!4726958 (+ 1 (size!43689 (t!390779 l!2932))))))

(assert (= (and d!2392652 c!1472372) b!8024120))

(assert (= (and d!2392652 (not c!1472372)) b!8024121))

(declare-fun m!8386618 () Bool)

(assert (=> b!8024121 m!8386618))

(assert (=> start!755352 d!2392652))

(declare-fun d!2392654 () Bool)

(declare-fun lt!2720548 () Int)

(assert (=> d!2392654 (>= lt!2720548 0)))

(declare-fun e!4726959 () Int)

(assert (=> d!2392654 (= lt!2720548 e!4726959)))

(declare-fun c!1472373 () Bool)

(assert (=> d!2392654 (= c!1472373 ((_ is Nil!74912) p!1838))))

(assert (=> d!2392654 (= (size!43689 p!1838) lt!2720548)))

(declare-fun b!8024122 () Bool)

(assert (=> b!8024122 (= e!4726959 0)))

(declare-fun b!8024123 () Bool)

(assert (=> b!8024123 (= e!4726959 (+ 1 (size!43689 (t!390779 p!1838))))))

(assert (= (and d!2392654 c!1472373) b!8024122))

(assert (= (and d!2392654 (not c!1472373)) b!8024123))

(declare-fun m!8386620 () Bool)

(assert (=> b!8024123 m!8386620))

(assert (=> start!755352 d!2392654))

(declare-fun b!8024150 () Bool)

(declare-fun e!4726979 () Bool)

(declare-fun e!4726978 () Bool)

(assert (=> b!8024150 (= e!4726979 e!4726978)))

(declare-fun res!3173248 () Bool)

(assert (=> b!8024150 (=> (not res!3173248) (not e!4726978))))

(assert (=> b!8024150 (= res!3173248 (not ((_ is Nil!74912) l!2932)))))

(declare-fun b!8024151 () Bool)

(declare-fun res!3173249 () Bool)

(assert (=> b!8024151 (=> (not res!3173249) (not e!4726978))))

(declare-fun head!16440 (List!75036) B!4269)

(assert (=> b!8024151 (= res!3173249 (= (head!16440 p!1838) (head!16440 l!2932)))))

(declare-fun d!2392656 () Bool)

(declare-fun e!4726977 () Bool)

(assert (=> d!2392656 e!4726977))

(declare-fun res!3173247 () Bool)

(assert (=> d!2392656 (=> res!3173247 e!4726977)))

(declare-fun lt!2720556 () Bool)

(assert (=> d!2392656 (= res!3173247 (not lt!2720556))))

(assert (=> d!2392656 (= lt!2720556 e!4726979)))

(declare-fun res!3173250 () Bool)

(assert (=> d!2392656 (=> res!3173250 e!4726979)))

(assert (=> d!2392656 (= res!3173250 ((_ is Nil!74912) p!1838))))

(assert (=> d!2392656 (= (isPrefix!6843 p!1838 l!2932) lt!2720556)))

(declare-fun b!8024152 () Bool)

(assert (=> b!8024152 (= e!4726978 (isPrefix!6843 (tail!15979 p!1838) (tail!15979 l!2932)))))

(declare-fun b!8024153 () Bool)

(assert (=> b!8024153 (= e!4726977 (>= (size!43689 l!2932) (size!43689 p!1838)))))

(assert (= (and d!2392656 (not res!3173250)) b!8024150))

(assert (= (and b!8024150 res!3173248) b!8024151))

(assert (= (and b!8024151 res!3173249) b!8024152))

(assert (= (and d!2392656 (not res!3173247)) b!8024153))

(declare-fun m!8386634 () Bool)

(assert (=> b!8024151 m!8386634))

(declare-fun m!8386636 () Bool)

(assert (=> b!8024151 m!8386636))

(declare-fun m!8386638 () Bool)

(assert (=> b!8024152 m!8386638))

(assert (=> b!8024152 m!8386598))

(assert (=> b!8024152 m!8386638))

(assert (=> b!8024152 m!8386598))

(declare-fun m!8386640 () Bool)

(assert (=> b!8024152 m!8386640))

(assert (=> b!8024153 m!8386606))

(assert (=> b!8024153 m!8386608))

(assert (=> b!8024089 d!2392656))

(declare-fun b!8024158 () Bool)

(declare-fun e!4726982 () Bool)

(declare-fun tp!2401410 () Bool)

(assert (=> b!8024158 (= e!4726982 (and tp_is_empty!54157 tp!2401410))))

(assert (=> b!8024088 (= tp!2401403 e!4726982)))

(assert (= (and b!8024088 ((_ is Cons!74912) (t!390779 p!1838))) b!8024158))

(declare-fun b!8024159 () Bool)

(declare-fun e!4726983 () Bool)

(declare-fun tp!2401411 () Bool)

(assert (=> b!8024159 (= e!4726983 (and tp_is_empty!54157 tp!2401411))))

(assert (=> b!8024091 (= tp!2401402 e!4726983)))

(assert (= (and b!8024091 ((_ is Cons!74912) (t!390779 l!2932))) b!8024159))

(check-sat (not b!8024121) (not b!8024152) (not b!8024107) (not b!8024159) (not b!8024151) (not b!8024123) (not b!8024105) (not b!8024158) tp_is_empty!54157 (not b!8024153))
(check-sat)
