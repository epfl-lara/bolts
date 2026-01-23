; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!515848 () Bool)

(assert start!515848)

(declare-fun res!2098754 () Bool)

(declare-fun e!3071010 () Bool)

(assert (=> start!515848 (=> (not res!2098754) (not e!3071010))))

(declare-datatypes ((C!26900 0))(
  ( (C!26901 (val!22784 Int)) )
))
(declare-datatypes ((List!56752 0))(
  ( (Nil!56628) (Cons!56628 (h!63076 C!26900) (t!367158 List!56752)) )
))
(declare-fun lt!2017352 () List!56752)

(declare-fun ++!12291 (List!56752 List!56752) List!56752)

(assert (=> start!515848 (= res!2098754 (= (++!12291 Nil!56628 lt!2017352) lt!2017352))))

(declare-fun lt!2017353 () Int)

(declare-datatypes ((IArray!29749 0))(
  ( (IArray!29750 (innerList!14932 List!56752)) )
))
(declare-datatypes ((Conc!14844 0))(
  ( (Node!14844 (left!41280 Conc!14844) (right!41610 Conc!14844) (csize!29918 Int) (cheight!15055 Int)) (Leaf!24699 (xs!18160 IArray!29749) (csize!29919 Int)) (Empty!14844) )
))
(declare-datatypes ((BalanceConc!29118 0))(
  ( (BalanceConc!29119 (c!835134 Conc!14844)) )
))
(declare-fun input!5492 () BalanceConc!29118)

(declare-fun size!37394 (BalanceConc!29118) Int)

(assert (=> start!515848 (= lt!2017353 (size!37394 input!5492))))

(declare-fun list!17892 (BalanceConc!29118) List!56752)

(assert (=> start!515848 (= lt!2017352 (list!17892 input!5492))))

(assert (=> start!515848 e!3071010))

(declare-fun e!3071009 () Bool)

(declare-fun inv!73275 (BalanceConc!29118) Bool)

(assert (=> start!515848 (and (inv!73275 input!5492) e!3071009)))

(declare-fun b!4913342 () Bool)

(declare-fun size!37395 (List!56752) Int)

(assert (=> b!4913342 (= e!3071010 (not (= 0 (size!37395 Nil!56628))))))

(declare-fun b!4913343 () Bool)

(declare-fun tp!1381679 () Bool)

(declare-fun inv!73276 (Conc!14844) Bool)

(assert (=> b!4913343 (= e!3071009 (and (inv!73276 (c!835134 input!5492)) tp!1381679))))

(assert (= (and start!515848 res!2098754) b!4913342))

(assert (= start!515848 b!4913343))

(declare-fun m!5923144 () Bool)

(assert (=> start!515848 m!5923144))

(declare-fun m!5923146 () Bool)

(assert (=> start!515848 m!5923146))

(declare-fun m!5923148 () Bool)

(assert (=> start!515848 m!5923148))

(declare-fun m!5923150 () Bool)

(assert (=> start!515848 m!5923150))

(declare-fun m!5923152 () Bool)

(assert (=> b!4913342 m!5923152))

(declare-fun m!5923154 () Bool)

(assert (=> b!4913343 m!5923154))

(check-sat (not start!515848) (not b!4913343) (not b!4913342))
(check-sat)
(get-model)

(declare-fun b!4913368 () Bool)

(declare-fun e!3071024 () Bool)

(declare-fun lt!2017358 () List!56752)

(assert (=> b!4913368 (= e!3071024 (or (not (= lt!2017352 Nil!56628)) (= lt!2017358 Nil!56628)))))

(declare-fun b!4913365 () Bool)

(declare-fun e!3071023 () List!56752)

(assert (=> b!4913365 (= e!3071023 lt!2017352)))

(declare-fun b!4913366 () Bool)

(assert (=> b!4913366 (= e!3071023 (Cons!56628 (h!63076 Nil!56628) (++!12291 (t!367158 Nil!56628) lt!2017352)))))

(declare-fun b!4913367 () Bool)

(declare-fun res!2098762 () Bool)

(assert (=> b!4913367 (=> (not res!2098762) (not e!3071024))))

(assert (=> b!4913367 (= res!2098762 (= (size!37395 lt!2017358) (+ (size!37395 Nil!56628) (size!37395 lt!2017352))))))

(declare-fun d!1578765 () Bool)

(assert (=> d!1578765 e!3071024))

(declare-fun res!2098763 () Bool)

(assert (=> d!1578765 (=> (not res!2098763) (not e!3071024))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10045 (List!56752) (InoxSet C!26900))

(assert (=> d!1578765 (= res!2098763 (= (content!10045 lt!2017358) ((_ map or) (content!10045 Nil!56628) (content!10045 lt!2017352))))))

(assert (=> d!1578765 (= lt!2017358 e!3071023)))

(declare-fun c!835142 () Bool)

(get-info :version)

(assert (=> d!1578765 (= c!835142 ((_ is Nil!56628) Nil!56628))))

(assert (=> d!1578765 (= (++!12291 Nil!56628 lt!2017352) lt!2017358)))

(assert (= (and d!1578765 c!835142) b!4913365))

(assert (= (and d!1578765 (not c!835142)) b!4913366))

(assert (= (and d!1578765 res!2098763) b!4913367))

(assert (= (and b!4913367 res!2098762) b!4913368))

(declare-fun m!5923162 () Bool)

(assert (=> b!4913366 m!5923162))

(declare-fun m!5923164 () Bool)

(assert (=> b!4913367 m!5923164))

(assert (=> b!4913367 m!5923152))

(declare-fun m!5923166 () Bool)

(assert (=> b!4913367 m!5923166))

(declare-fun m!5923168 () Bool)

(assert (=> d!1578765 m!5923168))

(declare-fun m!5923170 () Bool)

(assert (=> d!1578765 m!5923170))

(declare-fun m!5923172 () Bool)

(assert (=> d!1578765 m!5923172))

(assert (=> start!515848 d!1578765))

(declare-fun d!1578771 () Bool)

(declare-fun lt!2017362 () Int)

(assert (=> d!1578771 (= lt!2017362 (size!37395 (list!17892 input!5492)))))

(declare-fun size!37396 (Conc!14844) Int)

(assert (=> d!1578771 (= lt!2017362 (size!37396 (c!835134 input!5492)))))

(assert (=> d!1578771 (= (size!37394 input!5492) lt!2017362)))

(declare-fun bs!1177627 () Bool)

(assert (= bs!1177627 d!1578771))

(assert (=> bs!1177627 m!5923148))

(assert (=> bs!1177627 m!5923148))

(declare-fun m!5923174 () Bool)

(assert (=> bs!1177627 m!5923174))

(declare-fun m!5923176 () Bool)

(assert (=> bs!1177627 m!5923176))

(assert (=> start!515848 d!1578771))

(declare-fun d!1578773 () Bool)

(declare-fun list!17893 (Conc!14844) List!56752)

(assert (=> d!1578773 (= (list!17892 input!5492) (list!17893 (c!835134 input!5492)))))

(declare-fun bs!1177628 () Bool)

(assert (= bs!1177628 d!1578773))

(declare-fun m!5923178 () Bool)

(assert (=> bs!1177628 m!5923178))

(assert (=> start!515848 d!1578773))

(declare-fun d!1578775 () Bool)

(declare-fun isBalanced!4061 (Conc!14844) Bool)

(assert (=> d!1578775 (= (inv!73275 input!5492) (isBalanced!4061 (c!835134 input!5492)))))

(declare-fun bs!1177629 () Bool)

(assert (= bs!1177629 d!1578775))

(declare-fun m!5923192 () Bool)

(assert (=> bs!1177629 m!5923192))

(assert (=> start!515848 d!1578775))

(declare-fun d!1578779 () Bool)

(declare-fun c!835149 () Bool)

(assert (=> d!1578779 (= c!835149 ((_ is Node!14844) (c!835134 input!5492)))))

(declare-fun e!3071036 () Bool)

(assert (=> d!1578779 (= (inv!73276 (c!835134 input!5492)) e!3071036)))

(declare-fun b!4913389 () Bool)

(declare-fun inv!73279 (Conc!14844) Bool)

(assert (=> b!4913389 (= e!3071036 (inv!73279 (c!835134 input!5492)))))

(declare-fun b!4913390 () Bool)

(declare-fun e!3071037 () Bool)

(assert (=> b!4913390 (= e!3071036 e!3071037)))

(declare-fun res!2098772 () Bool)

(assert (=> b!4913390 (= res!2098772 (not ((_ is Leaf!24699) (c!835134 input!5492))))))

(assert (=> b!4913390 (=> res!2098772 e!3071037)))

(declare-fun b!4913391 () Bool)

(declare-fun inv!73280 (Conc!14844) Bool)

(assert (=> b!4913391 (= e!3071037 (inv!73280 (c!835134 input!5492)))))

(assert (= (and d!1578779 c!835149) b!4913389))

(assert (= (and d!1578779 (not c!835149)) b!4913390))

(assert (= (and b!4913390 (not res!2098772)) b!4913391))

(declare-fun m!5923200 () Bool)

(assert (=> b!4913389 m!5923200))

(declare-fun m!5923202 () Bool)

(assert (=> b!4913391 m!5923202))

(assert (=> b!4913343 d!1578779))

(declare-fun d!1578785 () Bool)

(declare-fun lt!2017371 () Int)

(assert (=> d!1578785 (>= lt!2017371 0)))

(declare-fun e!3071044 () Int)

(assert (=> d!1578785 (= lt!2017371 e!3071044)))

(declare-fun c!835152 () Bool)

(assert (=> d!1578785 (= c!835152 ((_ is Nil!56628) Nil!56628))))

(assert (=> d!1578785 (= (size!37395 Nil!56628) lt!2017371)))

(declare-fun b!4913404 () Bool)

(assert (=> b!4913404 (= e!3071044 0)))

(declare-fun b!4913405 () Bool)

(assert (=> b!4913405 (= e!3071044 (+ 1 (size!37395 (t!367158 Nil!56628))))))

(assert (= (and d!1578785 c!835152) b!4913404))

(assert (= (and d!1578785 (not c!835152)) b!4913405))

(declare-fun m!5923206 () Bool)

(assert (=> b!4913405 m!5923206))

(assert (=> b!4913342 d!1578785))

(declare-fun b!4913417 () Bool)

(declare-fun tp!1381695 () Bool)

(declare-fun tp!1381697 () Bool)

(declare-fun e!3071052 () Bool)

(assert (=> b!4913417 (= e!3071052 (and (inv!73276 (left!41280 (c!835134 input!5492))) tp!1381695 (inv!73276 (right!41610 (c!835134 input!5492))) tp!1381697))))

(declare-fun b!4913419 () Bool)

(declare-fun e!3071051 () Bool)

(declare-fun tp!1381696 () Bool)

(assert (=> b!4913419 (= e!3071051 tp!1381696)))

(declare-fun b!4913418 () Bool)

(declare-fun inv!73282 (IArray!29749) Bool)

(assert (=> b!4913418 (= e!3071052 (and (inv!73282 (xs!18160 (c!835134 input!5492))) e!3071051))))

(assert (=> b!4913343 (= tp!1381679 (and (inv!73276 (c!835134 input!5492)) e!3071052))))

(assert (= (and b!4913343 ((_ is Node!14844) (c!835134 input!5492))) b!4913417))

(assert (= b!4913418 b!4913419))

(assert (= (and b!4913343 ((_ is Leaf!24699) (c!835134 input!5492))) b!4913418))

(declare-fun m!5923214 () Bool)

(assert (=> b!4913417 m!5923214))

(declare-fun m!5923216 () Bool)

(assert (=> b!4913417 m!5923216))

(declare-fun m!5923218 () Bool)

(assert (=> b!4913418 m!5923218))

(assert (=> b!4913343 m!5923154))

(check-sat (not b!4913418) (not b!4913391) (not d!1578771) (not b!4913367) (not d!1578773) (not d!1578765) (not b!4913419) (not b!4913405) (not b!4913343) (not b!4913366) (not d!1578775) (not b!4913417) (not b!4913389))
(check-sat)
