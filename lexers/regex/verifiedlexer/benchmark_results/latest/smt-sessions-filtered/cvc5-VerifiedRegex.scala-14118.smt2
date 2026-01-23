; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742664 () Bool)

(assert start!742664)

(declare-fun b!7841710 () Bool)

(declare-fun e!4636366 () Bool)

(declare-fun tp_is_empty!52415 () Bool)

(declare-fun tp!2320978 () Bool)

(assert (=> b!7841710 (= e!4636366 (and tp_is_empty!52415 tp!2320978))))

(declare-fun b!7841711 () Bool)

(declare-fun e!4636368 () Bool)

(declare-datatypes ((B!3983 0))(
  ( (B!3984 (val!31633 Int)) )
))
(declare-datatypes ((List!73867 0))(
  ( (Nil!73743) (Cons!73743 (h!80191 B!3983) (t!388602 List!73867)) )
))
(declare-fun s2!461 () List!73867)

(declare-fun l!3495 () List!73867)

(assert (=> b!7841711 (= e!4636368 (and (is-Cons!73743 s2!461) (= l!3495 Nil!73743)))))

(declare-fun b!7841713 () Bool)

(declare-fun e!4636367 () Bool)

(declare-fun tp!2320980 () Bool)

(assert (=> b!7841713 (= e!4636367 (and tp_is_empty!52415 tp!2320980))))

(declare-fun b!7841714 () Bool)

(declare-fun res!3118849 () Bool)

(assert (=> b!7841714 (=> (not res!3118849) (not e!4636368))))

(declare-fun s1!502 () List!73867)

(declare-fun size!42792 (List!73867) Int)

(assert (=> b!7841714 (= res!3118849 (<= (size!42792 s2!461) (size!42792 s1!502)))))

(declare-fun b!7841715 () Bool)

(declare-fun res!3118848 () Bool)

(assert (=> b!7841715 (=> (not res!3118848) (not e!4636368))))

(declare-fun isPrefix!6344 (List!73867 List!73867) Bool)

(assert (=> b!7841715 (= res!3118848 (isPrefix!6344 s2!461 l!3495))))

(declare-fun b!7841712 () Bool)

(declare-fun e!4636369 () Bool)

(declare-fun tp!2320979 () Bool)

(assert (=> b!7841712 (= e!4636369 (and tp_is_empty!52415 tp!2320979))))

(declare-fun res!3118847 () Bool)

(assert (=> start!742664 (=> (not res!3118847) (not e!4636368))))

(assert (=> start!742664 (= res!3118847 (isPrefix!6344 s1!502 l!3495))))

(assert (=> start!742664 e!4636368))

(assert (=> start!742664 e!4636367))

(assert (=> start!742664 e!4636366))

(assert (=> start!742664 e!4636369))

(assert (= (and start!742664 res!3118847) b!7841715))

(assert (= (and b!7841715 res!3118848) b!7841714))

(assert (= (and b!7841714 res!3118849) b!7841711))

(assert (= (and start!742664 (is-Cons!73743 s1!502)) b!7841713))

(assert (= (and start!742664 (is-Cons!73743 l!3495)) b!7841710))

(assert (= (and start!742664 (is-Cons!73743 s2!461)) b!7841712))

(declare-fun m!8253990 () Bool)

(assert (=> b!7841714 m!8253990))

(declare-fun m!8253992 () Bool)

(assert (=> b!7841714 m!8253992))

(declare-fun m!8253994 () Bool)

(assert (=> b!7841715 m!8253994))

(declare-fun m!8253996 () Bool)

(assert (=> start!742664 m!8253996))

(push 1)

(assert (not b!7841715))

(assert (not b!7841713))

(assert (not b!7841710))

(assert (not start!742664))

(assert (not b!7841712))

(assert tp_is_empty!52415)

(assert (not b!7841714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7841744 () Bool)

(declare-fun e!4636390 () Bool)

(declare-fun tail!15548 (List!73867) List!73867)

(assert (=> b!7841744 (= e!4636390 (isPrefix!6344 (tail!15548 s1!502) (tail!15548 l!3495)))))

(declare-fun b!7841742 () Bool)

(declare-fun e!4636388 () Bool)

(assert (=> b!7841742 (= e!4636388 e!4636390)))

(declare-fun res!3118869 () Bool)

(assert (=> b!7841742 (=> (not res!3118869) (not e!4636390))))

(assert (=> b!7841742 (= res!3118869 (not (is-Nil!73743 l!3495)))))

(declare-fun b!7841745 () Bool)

(declare-fun e!4636389 () Bool)

(assert (=> b!7841745 (= e!4636389 (>= (size!42792 l!3495) (size!42792 s1!502)))))

(declare-fun d!2352183 () Bool)

(assert (=> d!2352183 e!4636389))

(declare-fun res!3118870 () Bool)

(assert (=> d!2352183 (=> res!3118870 e!4636389)))

(declare-fun lt!2678559 () Bool)

(assert (=> d!2352183 (= res!3118870 (not lt!2678559))))

(assert (=> d!2352183 (= lt!2678559 e!4636388)))

(declare-fun res!3118868 () Bool)

(assert (=> d!2352183 (=> res!3118868 e!4636388)))

(assert (=> d!2352183 (= res!3118868 (is-Nil!73743 s1!502))))

(assert (=> d!2352183 (= (isPrefix!6344 s1!502 l!3495) lt!2678559)))

(declare-fun b!7841743 () Bool)

(declare-fun res!3118867 () Bool)

(assert (=> b!7841743 (=> (not res!3118867) (not e!4636390))))

(declare-fun head!16007 (List!73867) B!3983)

(assert (=> b!7841743 (= res!3118867 (= (head!16007 s1!502) (head!16007 l!3495)))))

(assert (= (and d!2352183 (not res!3118868)) b!7841742))

(assert (= (and b!7841742 res!3118869) b!7841743))

(assert (= (and b!7841743 res!3118867) b!7841744))

(assert (= (and d!2352183 (not res!3118870)) b!7841745))

(declare-fun m!8254006 () Bool)

(assert (=> b!7841744 m!8254006))

(declare-fun m!8254008 () Bool)

(assert (=> b!7841744 m!8254008))

(assert (=> b!7841744 m!8254006))

(assert (=> b!7841744 m!8254008))

(declare-fun m!8254010 () Bool)

(assert (=> b!7841744 m!8254010))

(declare-fun m!8254012 () Bool)

(assert (=> b!7841745 m!8254012))

(assert (=> b!7841745 m!8253992))

(declare-fun m!8254014 () Bool)

(assert (=> b!7841743 m!8254014))

(declare-fun m!8254016 () Bool)

(assert (=> b!7841743 m!8254016))

(assert (=> start!742664 d!2352183))

(declare-fun d!2352185 () Bool)

(declare-fun lt!2678562 () Int)

(assert (=> d!2352185 (>= lt!2678562 0)))

(declare-fun e!4636393 () Int)

(assert (=> d!2352185 (= lt!2678562 e!4636393)))

(declare-fun c!1441647 () Bool)

(assert (=> d!2352185 (= c!1441647 (is-Nil!73743 s2!461))))

(assert (=> d!2352185 (= (size!42792 s2!461) lt!2678562)))

(declare-fun b!7841750 () Bool)

(assert (=> b!7841750 (= e!4636393 0)))

(declare-fun b!7841751 () Bool)

(assert (=> b!7841751 (= e!4636393 (+ 1 (size!42792 (t!388602 s2!461))))))

(assert (= (and d!2352185 c!1441647) b!7841750))

(assert (= (and d!2352185 (not c!1441647)) b!7841751))

(declare-fun m!8254018 () Bool)

(assert (=> b!7841751 m!8254018))

(assert (=> b!7841714 d!2352185))

(declare-fun d!2352189 () Bool)

(declare-fun lt!2678563 () Int)

(assert (=> d!2352189 (>= lt!2678563 0)))

(declare-fun e!4636394 () Int)

(assert (=> d!2352189 (= lt!2678563 e!4636394)))

(declare-fun c!1441648 () Bool)

(assert (=> d!2352189 (= c!1441648 (is-Nil!73743 s1!502))))

(assert (=> d!2352189 (= (size!42792 s1!502) lt!2678563)))

(declare-fun b!7841752 () Bool)

(assert (=> b!7841752 (= e!4636394 0)))

(declare-fun b!7841753 () Bool)

(assert (=> b!7841753 (= e!4636394 (+ 1 (size!42792 (t!388602 s1!502))))))

(assert (= (and d!2352189 c!1441648) b!7841752))

(assert (= (and d!2352189 (not c!1441648)) b!7841753))

(declare-fun m!8254020 () Bool)

(assert (=> b!7841753 m!8254020))

(assert (=> b!7841714 d!2352189))

(declare-fun b!7841756 () Bool)

(declare-fun e!4636397 () Bool)

(assert (=> b!7841756 (= e!4636397 (isPrefix!6344 (tail!15548 s2!461) (tail!15548 l!3495)))))

(declare-fun b!7841754 () Bool)

(declare-fun e!4636395 () Bool)

(assert (=> b!7841754 (= e!4636395 e!4636397)))

(declare-fun res!3118873 () Bool)

(assert (=> b!7841754 (=> (not res!3118873) (not e!4636397))))

(assert (=> b!7841754 (= res!3118873 (not (is-Nil!73743 l!3495)))))

(declare-fun b!7841757 () Bool)

(declare-fun e!4636396 () Bool)

(assert (=> b!7841757 (= e!4636396 (>= (size!42792 l!3495) (size!42792 s2!461)))))

(declare-fun d!2352191 () Bool)

(assert (=> d!2352191 e!4636396))

(declare-fun res!3118874 () Bool)

(assert (=> d!2352191 (=> res!3118874 e!4636396)))

(declare-fun lt!2678564 () Bool)

(assert (=> d!2352191 (= res!3118874 (not lt!2678564))))

(assert (=> d!2352191 (= lt!2678564 e!4636395)))

(declare-fun res!3118872 () Bool)

(assert (=> d!2352191 (=> res!3118872 e!4636395)))

(assert (=> d!2352191 (= res!3118872 (is-Nil!73743 s2!461))))

(assert (=> d!2352191 (= (isPrefix!6344 s2!461 l!3495) lt!2678564)))

(declare-fun b!7841755 () Bool)

(declare-fun res!3118871 () Bool)

(assert (=> b!7841755 (=> (not res!3118871) (not e!4636397))))

(assert (=> b!7841755 (= res!3118871 (= (head!16007 s2!461) (head!16007 l!3495)))))

(assert (= (and d!2352191 (not res!3118872)) b!7841754))

(assert (= (and b!7841754 res!3118873) b!7841755))

(assert (= (and b!7841755 res!3118871) b!7841756))

(assert (= (and d!2352191 (not res!3118874)) b!7841757))

(declare-fun m!8254022 () Bool)

(assert (=> b!7841756 m!8254022))

(assert (=> b!7841756 m!8254008))

(assert (=> b!7841756 m!8254022))

(assert (=> b!7841756 m!8254008))

(declare-fun m!8254024 () Bool)

(assert (=> b!7841756 m!8254024))

(assert (=> b!7841757 m!8254012))

(assert (=> b!7841757 m!8253990))

(declare-fun m!8254026 () Bool)

(assert (=> b!7841755 m!8254026))

(assert (=> b!7841755 m!8254016))

(assert (=> b!7841715 d!2352191))

(declare-fun b!7841762 () Bool)

(declare-fun e!4636400 () Bool)

(declare-fun tp!2320992 () Bool)

(assert (=> b!7841762 (= e!4636400 (and tp_is_empty!52415 tp!2320992))))

(assert (=> b!7841713 (= tp!2320980 e!4636400)))

(assert (= (and b!7841713 (is-Cons!73743 (t!388602 s1!502))) b!7841762))

(declare-fun b!7841763 () Bool)

(declare-fun e!4636401 () Bool)

(declare-fun tp!2320993 () Bool)

(assert (=> b!7841763 (= e!4636401 (and tp_is_empty!52415 tp!2320993))))

(assert (=> b!7841710 (= tp!2320978 e!4636401)))

(assert (= (and b!7841710 (is-Cons!73743 (t!388602 l!3495))) b!7841763))

(declare-fun b!7841764 () Bool)

(declare-fun e!4636402 () Bool)

(declare-fun tp!2320994 () Bool)

(assert (=> b!7841764 (= e!4636402 (and tp_is_empty!52415 tp!2320994))))

(assert (=> b!7841712 (= tp!2320979 e!4636402)))

(assert (= (and b!7841712 (is-Cons!73743 (t!388602 s2!461))) b!7841764))

(push 1)

(assert (not b!7841755))

(assert (not b!7841762))

(assert (not b!7841743))

(assert (not b!7841745))

(assert (not b!7841753))

(assert (not b!7841764))

(assert (not b!7841751))

(assert (not b!7841763))

(assert (not b!7841744))

(assert (not b!7841756))

(assert tp_is_empty!52415)

(assert (not b!7841757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

