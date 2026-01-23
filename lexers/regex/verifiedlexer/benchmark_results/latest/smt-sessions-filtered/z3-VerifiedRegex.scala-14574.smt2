; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755504 () Bool)

(assert start!755504)

(declare-fun res!3173490 () Bool)

(declare-fun e!4727431 () Bool)

(assert (=> start!755504 (=> (not res!3173490) (not e!4727431))))

(declare-datatypes ((T!148306 0))(
  ( (T!148307 (val!32546 Int)) )
))
(declare-datatypes ((List!75058 0))(
  ( (Nil!74934) (Cons!74934 (h!81382 T!148306) (t!390803 List!75058)) )
))
(declare-datatypes ((IArray!31937 0))(
  ( (IArray!31938 (innerList!16026 List!75058)) )
))
(declare-datatypes ((Conc!15938 0))(
  ( (Node!15938 (left!57152 Conc!15938) (right!57482 Conc!15938) (csize!32106 Int) (cheight!16149 Int)) (Leaf!30513 (xs!19336 IArray!31937) (csize!32107 Int)) (Empty!15938) )
))
(declare-fun t!3624 () Conc!15938)

(get-info :version)

(assert (=> start!755504 (= res!3173490 ((_ is Empty!15938) t!3624))))

(assert (=> start!755504 e!4727431))

(declare-fun e!4727433 () Bool)

(declare-fun inv!96590 (Conc!15938) Bool)

(assert (=> start!755504 (and (inv!96590 t!3624) e!4727433)))

(declare-fun b!8024810 () Bool)

(declare-fun size!43705 (List!75058) Int)

(declare-fun list!19474 (Conc!15938) List!75058)

(assert (=> b!8024810 (= e!4727431 (not (= 0 (size!43705 (list!19474 t!3624)))))))

(declare-fun b!8024813 () Bool)

(declare-fun e!4727432 () Bool)

(declare-fun tp!2401620 () Bool)

(assert (=> b!8024813 (= e!4727432 tp!2401620)))

(declare-fun tp!2401619 () Bool)

(declare-fun tp!2401621 () Bool)

(declare-fun b!8024811 () Bool)

(assert (=> b!8024811 (= e!4727433 (and (inv!96590 (left!57152 t!3624)) tp!2401621 (inv!96590 (right!57482 t!3624)) tp!2401619))))

(declare-fun b!8024812 () Bool)

(declare-fun inv!96591 (IArray!31937) Bool)

(assert (=> b!8024812 (= e!4727433 (and (inv!96591 (xs!19336 t!3624)) e!4727432))))

(assert (= (and start!755504 res!3173490) b!8024810))

(assert (= (and start!755504 ((_ is Node!15938) t!3624)) b!8024811))

(assert (= b!8024812 b!8024813))

(assert (= (and start!755504 ((_ is Leaf!30513) t!3624)) b!8024812))

(declare-fun m!8387118 () Bool)

(assert (=> start!755504 m!8387118))

(declare-fun m!8387120 () Bool)

(assert (=> b!8024810 m!8387120))

(assert (=> b!8024810 m!8387120))

(declare-fun m!8387122 () Bool)

(assert (=> b!8024810 m!8387122))

(declare-fun m!8387124 () Bool)

(assert (=> b!8024811 m!8387124))

(declare-fun m!8387126 () Bool)

(assert (=> b!8024811 m!8387126))

(declare-fun m!8387128 () Bool)

(assert (=> b!8024812 m!8387128))

(check-sat (not start!755504) (not b!8024810) (not b!8024811) (not b!8024812) (not b!8024813))
(check-sat)
(get-model)

(declare-fun d!2392839 () Bool)

(declare-fun c!1472472 () Bool)

(assert (=> d!2392839 (= c!1472472 ((_ is Node!15938) (left!57152 t!3624)))))

(declare-fun e!4727446 () Bool)

(assert (=> d!2392839 (= (inv!96590 (left!57152 t!3624)) e!4727446)))

(declare-fun b!8024832 () Bool)

(declare-fun inv!96594 (Conc!15938) Bool)

(assert (=> b!8024832 (= e!4727446 (inv!96594 (left!57152 t!3624)))))

(declare-fun b!8024833 () Bool)

(declare-fun e!4727447 () Bool)

(assert (=> b!8024833 (= e!4727446 e!4727447)))

(declare-fun res!3173497 () Bool)

(assert (=> b!8024833 (= res!3173497 (not ((_ is Leaf!30513) (left!57152 t!3624))))))

(assert (=> b!8024833 (=> res!3173497 e!4727447)))

(declare-fun b!8024834 () Bool)

(declare-fun inv!96595 (Conc!15938) Bool)

(assert (=> b!8024834 (= e!4727447 (inv!96595 (left!57152 t!3624)))))

(assert (= (and d!2392839 c!1472472) b!8024832))

(assert (= (and d!2392839 (not c!1472472)) b!8024833))

(assert (= (and b!8024833 (not res!3173497)) b!8024834))

(declare-fun m!8387138 () Bool)

(assert (=> b!8024832 m!8387138))

(declare-fun m!8387140 () Bool)

(assert (=> b!8024834 m!8387140))

(assert (=> b!8024811 d!2392839))

(declare-fun d!2392845 () Bool)

(declare-fun c!1472473 () Bool)

(assert (=> d!2392845 (= c!1472473 ((_ is Node!15938) (right!57482 t!3624)))))

(declare-fun e!4727448 () Bool)

(assert (=> d!2392845 (= (inv!96590 (right!57482 t!3624)) e!4727448)))

(declare-fun b!8024835 () Bool)

(assert (=> b!8024835 (= e!4727448 (inv!96594 (right!57482 t!3624)))))

(declare-fun b!8024836 () Bool)

(declare-fun e!4727449 () Bool)

(assert (=> b!8024836 (= e!4727448 e!4727449)))

(declare-fun res!3173498 () Bool)

(assert (=> b!8024836 (= res!3173498 (not ((_ is Leaf!30513) (right!57482 t!3624))))))

(assert (=> b!8024836 (=> res!3173498 e!4727449)))

(declare-fun b!8024837 () Bool)

(assert (=> b!8024837 (= e!4727449 (inv!96595 (right!57482 t!3624)))))

(assert (= (and d!2392845 c!1472473) b!8024835))

(assert (= (and d!2392845 (not c!1472473)) b!8024836))

(assert (= (and b!8024836 (not res!3173498)) b!8024837))

(declare-fun m!8387144 () Bool)

(assert (=> b!8024835 m!8387144))

(declare-fun m!8387146 () Bool)

(assert (=> b!8024837 m!8387146))

(assert (=> b!8024811 d!2392845))

(declare-fun d!2392849 () Bool)

(declare-fun c!1472475 () Bool)

(assert (=> d!2392849 (= c!1472475 ((_ is Node!15938) t!3624))))

(declare-fun e!4727452 () Bool)

(assert (=> d!2392849 (= (inv!96590 t!3624) e!4727452)))

(declare-fun b!8024841 () Bool)

(assert (=> b!8024841 (= e!4727452 (inv!96594 t!3624))))

(declare-fun b!8024842 () Bool)

(declare-fun e!4727453 () Bool)

(assert (=> b!8024842 (= e!4727452 e!4727453)))

(declare-fun res!3173500 () Bool)

(assert (=> b!8024842 (= res!3173500 (not ((_ is Leaf!30513) t!3624)))))

(assert (=> b!8024842 (=> res!3173500 e!4727453)))

(declare-fun b!8024843 () Bool)

(assert (=> b!8024843 (= e!4727453 (inv!96595 t!3624))))

(assert (= (and d!2392849 c!1472475) b!8024841))

(assert (= (and d!2392849 (not c!1472475)) b!8024842))

(assert (= (and b!8024842 (not res!3173500)) b!8024843))

(declare-fun m!8387148 () Bool)

(assert (=> b!8024841 m!8387148))

(declare-fun m!8387152 () Bool)

(assert (=> b!8024843 m!8387152))

(assert (=> start!755504 d!2392849))

(declare-fun d!2392851 () Bool)

(assert (=> d!2392851 (= (inv!96591 (xs!19336 t!3624)) (<= (size!43705 (innerList!16026 (xs!19336 t!3624))) 2147483647))))

(declare-fun bs!1971252 () Bool)

(assert (= bs!1971252 d!2392851))

(declare-fun m!8387156 () Bool)

(assert (=> bs!1971252 m!8387156))

(assert (=> b!8024812 d!2392851))

(declare-fun d!2392855 () Bool)

(declare-fun lt!2720690 () Int)

(assert (=> d!2392855 (>= lt!2720690 0)))

(declare-fun e!4727459 () Int)

(assert (=> d!2392855 (= lt!2720690 e!4727459)))

(declare-fun c!1472481 () Bool)

(assert (=> d!2392855 (= c!1472481 ((_ is Nil!74934) (list!19474 t!3624)))))

(assert (=> d!2392855 (= (size!43705 (list!19474 t!3624)) lt!2720690)))

(declare-fun b!8024854 () Bool)

(assert (=> b!8024854 (= e!4727459 0)))

(declare-fun b!8024855 () Bool)

(assert (=> b!8024855 (= e!4727459 (+ 1 (size!43705 (t!390803 (list!19474 t!3624)))))))

(assert (= (and d!2392855 c!1472481) b!8024854))

(assert (= (and d!2392855 (not c!1472481)) b!8024855))

(declare-fun m!8387160 () Bool)

(assert (=> b!8024855 m!8387160))

(assert (=> b!8024810 d!2392855))

(declare-fun d!2392859 () Bool)

(declare-fun c!1472492 () Bool)

(assert (=> d!2392859 (= c!1472492 ((_ is Empty!15938) t!3624))))

(declare-fun e!4727474 () List!75058)

(assert (=> d!2392859 (= (list!19474 t!3624) e!4727474)))

(declare-fun b!8024884 () Bool)

(assert (=> b!8024884 (= e!4727474 Nil!74934)))

(declare-fun b!8024885 () Bool)

(declare-fun e!4727475 () List!75058)

(assert (=> b!8024885 (= e!4727474 e!4727475)))

(declare-fun c!1472493 () Bool)

(assert (=> b!8024885 (= c!1472493 ((_ is Leaf!30513) t!3624))))

(declare-fun b!8024886 () Bool)

(declare-fun list!19476 (IArray!31937) List!75058)

(assert (=> b!8024886 (= e!4727475 (list!19476 (xs!19336 t!3624)))))

(declare-fun b!8024887 () Bool)

(declare-fun ++!18576 (List!75058 List!75058) List!75058)

(assert (=> b!8024887 (= e!4727475 (++!18576 (list!19474 (left!57152 t!3624)) (list!19474 (right!57482 t!3624))))))

(assert (= (and d!2392859 c!1472492) b!8024884))

(assert (= (and d!2392859 (not c!1472492)) b!8024885))

(assert (= (and b!8024885 c!1472493) b!8024886))

(assert (= (and b!8024885 (not c!1472493)) b!8024887))

(declare-fun m!8387170 () Bool)

(assert (=> b!8024886 m!8387170))

(declare-fun m!8387172 () Bool)

(assert (=> b!8024887 m!8387172))

(declare-fun m!8387174 () Bool)

(assert (=> b!8024887 m!8387174))

(assert (=> b!8024887 m!8387172))

(assert (=> b!8024887 m!8387174))

(declare-fun m!8387176 () Bool)

(assert (=> b!8024887 m!8387176))

(assert (=> b!8024810 d!2392859))

(declare-fun b!8024892 () Bool)

(declare-fun e!4727479 () Bool)

(declare-fun tp_is_empty!54195 () Bool)

(declare-fun tp!2401632 () Bool)

(assert (=> b!8024892 (= e!4727479 (and tp_is_empty!54195 tp!2401632))))

(assert (=> b!8024813 (= tp!2401620 e!4727479)))

(assert (= (and b!8024813 ((_ is Cons!74934) (innerList!16026 (xs!19336 t!3624)))) b!8024892))

(declare-fun tp!2401648 () Bool)

(declare-fun tp!2401646 () Bool)

(declare-fun b!8024912 () Bool)

(declare-fun e!4727490 () Bool)

(assert (=> b!8024912 (= e!4727490 (and (inv!96590 (left!57152 (left!57152 t!3624))) tp!2401646 (inv!96590 (right!57482 (left!57152 t!3624))) tp!2401648))))

(declare-fun b!8024914 () Bool)

(declare-fun e!4727491 () Bool)

(declare-fun tp!2401647 () Bool)

(assert (=> b!8024914 (= e!4727491 tp!2401647)))

(declare-fun b!8024913 () Bool)

(assert (=> b!8024913 (= e!4727490 (and (inv!96591 (xs!19336 (left!57152 t!3624))) e!4727491))))

(assert (=> b!8024811 (= tp!2401621 (and (inv!96590 (left!57152 t!3624)) e!4727490))))

(assert (= (and b!8024811 ((_ is Node!15938) (left!57152 t!3624))) b!8024912))

(assert (= b!8024913 b!8024914))

(assert (= (and b!8024811 ((_ is Leaf!30513) (left!57152 t!3624))) b!8024913))

(declare-fun m!8387190 () Bool)

(assert (=> b!8024912 m!8387190))

(declare-fun m!8387192 () Bool)

(assert (=> b!8024912 m!8387192))

(declare-fun m!8387194 () Bool)

(assert (=> b!8024913 m!8387194))

(assert (=> b!8024811 m!8387124))

(declare-fun tp!2401651 () Bool)

(declare-fun tp!2401649 () Bool)

(declare-fun b!8024915 () Bool)

(declare-fun e!4727492 () Bool)

(assert (=> b!8024915 (= e!4727492 (and (inv!96590 (left!57152 (right!57482 t!3624))) tp!2401649 (inv!96590 (right!57482 (right!57482 t!3624))) tp!2401651))))

(declare-fun b!8024917 () Bool)

(declare-fun e!4727493 () Bool)

(declare-fun tp!2401650 () Bool)

(assert (=> b!8024917 (= e!4727493 tp!2401650)))

(declare-fun b!8024916 () Bool)

(assert (=> b!8024916 (= e!4727492 (and (inv!96591 (xs!19336 (right!57482 t!3624))) e!4727493))))

(assert (=> b!8024811 (= tp!2401619 (and (inv!96590 (right!57482 t!3624)) e!4727492))))

(assert (= (and b!8024811 ((_ is Node!15938) (right!57482 t!3624))) b!8024915))

(assert (= b!8024916 b!8024917))

(assert (= (and b!8024811 ((_ is Leaf!30513) (right!57482 t!3624))) b!8024916))

(declare-fun m!8387196 () Bool)

(assert (=> b!8024915 m!8387196))

(declare-fun m!8387198 () Bool)

(assert (=> b!8024915 m!8387198))

(declare-fun m!8387200 () Bool)

(assert (=> b!8024916 m!8387200))

(assert (=> b!8024811 m!8387126))

(check-sat (not b!8024834) (not b!8024835) (not b!8024811) (not b!8024914) (not b!8024837) (not b!8024887) (not b!8024913) (not d!2392851) (not b!8024916) (not b!8024841) (not b!8024886) (not b!8024855) (not b!8024892) (not b!8024832) (not b!8024843) (not b!8024917) (not b!8024912) tp_is_empty!54195 (not b!8024915))
(check-sat)
