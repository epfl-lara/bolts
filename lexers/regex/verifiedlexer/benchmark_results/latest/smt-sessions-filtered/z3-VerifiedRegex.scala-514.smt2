; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14230 () Bool)

(assert start!14230)

(declare-fun b!136050 () Bool)

(declare-fun e!79079 () Bool)

(declare-fun tp_is_empty!1521 () Bool)

(declare-fun tp!71078 () Bool)

(assert (=> b!136050 (= e!79079 (and tp_is_empty!1521 tp!71078))))

(declare-fun b!136051 () Bool)

(declare-fun e!79082 () Bool)

(declare-datatypes ((B!877 0))(
  ( (B!878 (val!924 Int)) )
))
(declare-datatypes ((List!2242 0))(
  ( (Nil!2236) (Cons!2236 (h!7633 B!877) (t!22828 List!2242)) )
))
(declare-fun lt!40836 () List!2242)

(declare-fun lt!40837 () List!2242)

(declare-fun size!2025 (List!2242) Int)

(assert (=> b!136051 (= e!79082 (>= (size!2025 lt!40836) (size!2025 lt!40837)))))

(declare-fun b!136052 () Bool)

(declare-fun res!63829 () Bool)

(declare-fun e!79083 () Bool)

(assert (=> b!136052 (=> (not res!63829) (not e!79083))))

(declare-fun lt!40838 () Bool)

(assert (=> b!136052 (= res!63829 (not lt!40838))))

(declare-fun b!136053 () Bool)

(declare-fun e!79084 () Bool)

(declare-fun tp!71079 () Bool)

(assert (=> b!136053 (= e!79084 (and tp_is_empty!1521 tp!71079))))

(declare-fun b!136054 () Bool)

(declare-fun e!79085 () Bool)

(declare-fun sub!16 () List!2242)

(declare-fun subseq!83 (List!2242 List!2242) Bool)

(assert (=> b!136054 (= e!79085 (not (subseq!83 (t!22828 sub!16) (t!22828 lt!40837))))))

(declare-fun b!136055 () Bool)

(declare-fun e!79078 () Bool)

(assert (=> b!136055 (= e!79078 e!79083)))

(declare-fun res!63831 () Bool)

(assert (=> b!136055 (=> (not res!63831) (not e!79083))))

(declare-fun e!79080 () Bool)

(assert (=> b!136055 (= res!63831 e!79080)))

(declare-fun res!63833 () Bool)

(assert (=> b!136055 (=> res!63833 e!79080)))

(assert (=> b!136055 (= res!63833 lt!40838)))

(get-info :version)

(assert (=> b!136055 (= lt!40838 (not ((_ is Cons!2236) lt!40837)))))

(declare-fun b!136056 () Bool)

(declare-fun res!63832 () Bool)

(assert (=> b!136056 (=> (not res!63832) (not e!79078))))

(assert (=> b!136056 (= res!63832 (not ((_ is Nil!2236) sub!16)))))

(declare-fun res!63827 () Bool)

(assert (=> start!14230 (=> (not res!63827) (not e!79078))))

(assert (=> start!14230 (= res!63827 (subseq!83 sub!16 lt!40837))))

(declare-fun l1!1230 () List!2242)

(declare-fun l2!1199 () List!2242)

(declare-fun ++!510 (List!2242 List!2242) List!2242)

(assert (=> start!14230 (= lt!40837 (++!510 l1!1230 l2!1199))))

(assert (=> start!14230 e!79078))

(declare-fun e!79081 () Bool)

(assert (=> start!14230 e!79081))

(assert (=> start!14230 e!79079))

(assert (=> start!14230 e!79084))

(declare-fun b!136057 () Bool)

(declare-fun res!63828 () Bool)

(assert (=> b!136057 (=> (not res!63828) (not e!79083))))

(assert (=> b!136057 (= res!63828 e!79085)))

(declare-fun res!63830 () Bool)

(assert (=> b!136057 (=> res!63830 e!79085)))

(assert (=> b!136057 (= res!63830 (or lt!40838 (not (= (h!7633 sub!16) (h!7633 lt!40837)))))))

(declare-fun b!136058 () Bool)

(assert (=> b!136058 (= e!79083 e!79082)))

(declare-fun res!63834 () Bool)

(assert (=> b!136058 (=> (not res!63834) (not e!79082))))

(assert (=> b!136058 (= res!63834 (subseq!83 sub!16 lt!40836))))

(declare-fun tail!304 (List!2242) List!2242)

(assert (=> b!136058 (= lt!40836 (++!510 (tail!304 l1!1230) l2!1199))))

(declare-fun b!136059 () Bool)

(declare-fun isEmpty!878 (List!2242) Bool)

(assert (=> b!136059 (= e!79080 (not (isEmpty!878 l1!1230)))))

(declare-fun b!136060 () Bool)

(declare-fun tp!71080 () Bool)

(assert (=> b!136060 (= e!79081 (and tp_is_empty!1521 tp!71080))))

(assert (= (and start!14230 res!63827) b!136056))

(assert (= (and b!136056 res!63832) b!136055))

(assert (= (and b!136055 (not res!63833)) b!136059))

(assert (= (and b!136055 res!63831) b!136057))

(assert (= (and b!136057 (not res!63830)) b!136054))

(assert (= (and b!136057 res!63828) b!136052))

(assert (= (and b!136052 res!63829) b!136058))

(assert (= (and b!136058 res!63834) b!136051))

(assert (= (and start!14230 ((_ is Cons!2236) l1!1230)) b!136060))

(assert (= (and start!14230 ((_ is Cons!2236) l2!1199)) b!136050))

(assert (= (and start!14230 ((_ is Cons!2236) sub!16)) b!136053))

(declare-fun m!120683 () Bool)

(assert (=> b!136054 m!120683))

(declare-fun m!120685 () Bool)

(assert (=> b!136059 m!120685))

(declare-fun m!120687 () Bool)

(assert (=> start!14230 m!120687))

(declare-fun m!120689 () Bool)

(assert (=> start!14230 m!120689))

(declare-fun m!120691 () Bool)

(assert (=> b!136051 m!120691))

(declare-fun m!120693 () Bool)

(assert (=> b!136051 m!120693))

(declare-fun m!120695 () Bool)

(assert (=> b!136058 m!120695))

(declare-fun m!120697 () Bool)

(assert (=> b!136058 m!120697))

(assert (=> b!136058 m!120697))

(declare-fun m!120699 () Bool)

(assert (=> b!136058 m!120699))

(check-sat (not b!136060) (not b!136058) (not start!14230) (not b!136051) (not b!136050) (not b!136059) tp_is_empty!1521 (not b!136053) (not b!136054))
(check-sat)
(get-model)

(declare-fun b!136070 () Bool)

(declare-fun e!79096 () Bool)

(declare-fun e!79095 () Bool)

(assert (=> b!136070 (= e!79096 e!79095)))

(declare-fun res!63843 () Bool)

(assert (=> b!136070 (=> res!63843 e!79095)))

(declare-fun e!79094 () Bool)

(assert (=> b!136070 (= res!63843 e!79094)))

(declare-fun res!63846 () Bool)

(assert (=> b!136070 (=> (not res!63846) (not e!79094))))

(assert (=> b!136070 (= res!63846 (= (h!7633 sub!16) (h!7633 lt!40837)))))

(declare-fun b!136069 () Bool)

(declare-fun e!79097 () Bool)

(assert (=> b!136069 (= e!79097 e!79096)))

(declare-fun res!63844 () Bool)

(assert (=> b!136069 (=> (not res!63844) (not e!79096))))

(assert (=> b!136069 (= res!63844 ((_ is Cons!2236) lt!40837))))

(declare-fun b!136071 () Bool)

(assert (=> b!136071 (= e!79094 (subseq!83 (t!22828 sub!16) (t!22828 lt!40837)))))

(declare-fun d!32607 () Bool)

(declare-fun res!63845 () Bool)

(assert (=> d!32607 (=> res!63845 e!79097)))

(assert (=> d!32607 (= res!63845 ((_ is Nil!2236) sub!16))))

(assert (=> d!32607 (= (subseq!83 sub!16 lt!40837) e!79097)))

(declare-fun b!136072 () Bool)

(assert (=> b!136072 (= e!79095 (subseq!83 sub!16 (t!22828 lt!40837)))))

(assert (= (and d!32607 (not res!63845)) b!136069))

(assert (= (and b!136069 res!63844) b!136070))

(assert (= (and b!136070 res!63846) b!136071))

(assert (= (and b!136070 (not res!63843)) b!136072))

(assert (=> b!136071 m!120683))

(declare-fun m!120701 () Bool)

(assert (=> b!136072 m!120701))

(assert (=> start!14230 d!32607))

(declare-fun b!136093 () Bool)

(declare-fun e!79115 () List!2242)

(assert (=> b!136093 (= e!79115 l2!1199)))

(declare-fun b!136096 () Bool)

(declare-fun e!79114 () Bool)

(declare-fun lt!40841 () List!2242)

(assert (=> b!136096 (= e!79114 (or (not (= l2!1199 Nil!2236)) (= lt!40841 l1!1230)))))

(declare-fun b!136094 () Bool)

(assert (=> b!136094 (= e!79115 (Cons!2236 (h!7633 l1!1230) (++!510 (t!22828 l1!1230) l2!1199)))))

(declare-fun d!32613 () Bool)

(assert (=> d!32613 e!79114))

(declare-fun res!63864 () Bool)

(assert (=> d!32613 (=> (not res!63864) (not e!79114))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!336 (List!2242) (InoxSet B!877))

(assert (=> d!32613 (= res!63864 (= (content!336 lt!40841) ((_ map or) (content!336 l1!1230) (content!336 l2!1199))))))

(assert (=> d!32613 (= lt!40841 e!79115)))

(declare-fun c!28877 () Bool)

(assert (=> d!32613 (= c!28877 ((_ is Nil!2236) l1!1230))))

(assert (=> d!32613 (= (++!510 l1!1230 l2!1199) lt!40841)))

(declare-fun b!136095 () Bool)

(declare-fun res!63863 () Bool)

(assert (=> b!136095 (=> (not res!63863) (not e!79114))))

(assert (=> b!136095 (= res!63863 (= (size!2025 lt!40841) (+ (size!2025 l1!1230) (size!2025 l2!1199))))))

(assert (= (and d!32613 c!28877) b!136093))

(assert (= (and d!32613 (not c!28877)) b!136094))

(assert (= (and d!32613 res!63864) b!136095))

(assert (= (and b!136095 res!63863) b!136096))

(declare-fun m!120705 () Bool)

(assert (=> b!136094 m!120705))

(declare-fun m!120707 () Bool)

(assert (=> d!32613 m!120707))

(declare-fun m!120709 () Bool)

(assert (=> d!32613 m!120709))

(declare-fun m!120711 () Bool)

(assert (=> d!32613 m!120711))

(declare-fun m!120713 () Bool)

(assert (=> b!136095 m!120713))

(declare-fun m!120715 () Bool)

(assert (=> b!136095 m!120715))

(declare-fun m!120717 () Bool)

(assert (=> b!136095 m!120717))

(assert (=> start!14230 d!32613))

(declare-fun b!136098 () Bool)

(declare-fun e!79118 () Bool)

(declare-fun e!79117 () Bool)

(assert (=> b!136098 (= e!79118 e!79117)))

(declare-fun res!63865 () Bool)

(assert (=> b!136098 (=> res!63865 e!79117)))

(declare-fun e!79116 () Bool)

(assert (=> b!136098 (= res!63865 e!79116)))

(declare-fun res!63868 () Bool)

(assert (=> b!136098 (=> (not res!63868) (not e!79116))))

(assert (=> b!136098 (= res!63868 (= (h!7633 (t!22828 sub!16)) (h!7633 (t!22828 lt!40837))))))

(declare-fun b!136097 () Bool)

(declare-fun e!79119 () Bool)

(assert (=> b!136097 (= e!79119 e!79118)))

(declare-fun res!63866 () Bool)

(assert (=> b!136097 (=> (not res!63866) (not e!79118))))

(assert (=> b!136097 (= res!63866 ((_ is Cons!2236) (t!22828 lt!40837)))))

(declare-fun b!136099 () Bool)

(assert (=> b!136099 (= e!79116 (subseq!83 (t!22828 (t!22828 sub!16)) (t!22828 (t!22828 lt!40837))))))

(declare-fun d!32617 () Bool)

(declare-fun res!63867 () Bool)

(assert (=> d!32617 (=> res!63867 e!79119)))

(assert (=> d!32617 (= res!63867 ((_ is Nil!2236) (t!22828 sub!16)))))

(assert (=> d!32617 (= (subseq!83 (t!22828 sub!16) (t!22828 lt!40837)) e!79119)))

(declare-fun b!136100 () Bool)

(assert (=> b!136100 (= e!79117 (subseq!83 (t!22828 sub!16) (t!22828 (t!22828 lt!40837))))))

(assert (= (and d!32617 (not res!63867)) b!136097))

(assert (= (and b!136097 res!63866) b!136098))

(assert (= (and b!136098 res!63868) b!136099))

(assert (= (and b!136098 (not res!63865)) b!136100))

(declare-fun m!120719 () Bool)

(assert (=> b!136099 m!120719))

(declare-fun m!120721 () Bool)

(assert (=> b!136100 m!120721))

(assert (=> b!136054 d!32617))

(declare-fun d!32619 () Bool)

(declare-fun lt!40846 () Int)

(assert (=> d!32619 (>= lt!40846 0)))

(declare-fun e!79126 () Int)

(assert (=> d!32619 (= lt!40846 e!79126)))

(declare-fun c!28882 () Bool)

(assert (=> d!32619 (= c!28882 ((_ is Nil!2236) lt!40836))))

(assert (=> d!32619 (= (size!2025 lt!40836) lt!40846)))

(declare-fun b!136113 () Bool)

(assert (=> b!136113 (= e!79126 0)))

(declare-fun b!136114 () Bool)

(assert (=> b!136114 (= e!79126 (+ 1 (size!2025 (t!22828 lt!40836))))))

(assert (= (and d!32619 c!28882) b!136113))

(assert (= (and d!32619 (not c!28882)) b!136114))

(declare-fun m!120723 () Bool)

(assert (=> b!136114 m!120723))

(assert (=> b!136051 d!32619))

(declare-fun d!32621 () Bool)

(declare-fun lt!40847 () Int)

(assert (=> d!32621 (>= lt!40847 0)))

(declare-fun e!79127 () Int)

(assert (=> d!32621 (= lt!40847 e!79127)))

(declare-fun c!28883 () Bool)

(assert (=> d!32621 (= c!28883 ((_ is Nil!2236) lt!40837))))

(assert (=> d!32621 (= (size!2025 lt!40837) lt!40847)))

(declare-fun b!136115 () Bool)

(assert (=> b!136115 (= e!79127 0)))

(declare-fun b!136116 () Bool)

(assert (=> b!136116 (= e!79127 (+ 1 (size!2025 (t!22828 lt!40837))))))

(assert (= (and d!32621 c!28883) b!136115))

(assert (= (and d!32621 (not c!28883)) b!136116))

(declare-fun m!120725 () Bool)

(assert (=> b!136116 m!120725))

(assert (=> b!136051 d!32621))

(declare-fun d!32623 () Bool)

(assert (=> d!32623 (= (isEmpty!878 l1!1230) ((_ is Nil!2236) l1!1230))))

(assert (=> b!136059 d!32623))

(declare-fun b!136122 () Bool)

(declare-fun e!79132 () Bool)

(declare-fun e!79131 () Bool)

(assert (=> b!136122 (= e!79132 e!79131)))

(declare-fun res!63875 () Bool)

(assert (=> b!136122 (=> res!63875 e!79131)))

(declare-fun e!79130 () Bool)

(assert (=> b!136122 (= res!63875 e!79130)))

(declare-fun res!63878 () Bool)

(assert (=> b!136122 (=> (not res!63878) (not e!79130))))

(assert (=> b!136122 (= res!63878 (= (h!7633 sub!16) (h!7633 lt!40836)))))

(declare-fun b!136121 () Bool)

(declare-fun e!79133 () Bool)

(assert (=> b!136121 (= e!79133 e!79132)))

(declare-fun res!63876 () Bool)

(assert (=> b!136121 (=> (not res!63876) (not e!79132))))

(assert (=> b!136121 (= res!63876 ((_ is Cons!2236) lt!40836))))

(declare-fun b!136123 () Bool)

(assert (=> b!136123 (= e!79130 (subseq!83 (t!22828 sub!16) (t!22828 lt!40836)))))

(declare-fun d!32625 () Bool)

(declare-fun res!63877 () Bool)

(assert (=> d!32625 (=> res!63877 e!79133)))

(assert (=> d!32625 (= res!63877 ((_ is Nil!2236) sub!16))))

(assert (=> d!32625 (= (subseq!83 sub!16 lt!40836) e!79133)))

(declare-fun b!136124 () Bool)

(assert (=> b!136124 (= e!79131 (subseq!83 sub!16 (t!22828 lt!40836)))))

(assert (= (and d!32625 (not res!63877)) b!136121))

(assert (= (and b!136121 res!63876) b!136122))

(assert (= (and b!136122 res!63878) b!136123))

(assert (= (and b!136122 (not res!63875)) b!136124))

(declare-fun m!120739 () Bool)

(assert (=> b!136123 m!120739))

(declare-fun m!120743 () Bool)

(assert (=> b!136124 m!120743))

(assert (=> b!136058 d!32625))

(declare-fun b!136126 () Bool)

(declare-fun e!79138 () List!2242)

(assert (=> b!136126 (= e!79138 l2!1199)))

(declare-fun lt!40849 () List!2242)

(declare-fun e!79136 () Bool)

(declare-fun b!136132 () Bool)

(assert (=> b!136132 (= e!79136 (or (not (= l2!1199 Nil!2236)) (= lt!40849 (tail!304 l1!1230))))))

(declare-fun b!136128 () Bool)

(assert (=> b!136128 (= e!79138 (Cons!2236 (h!7633 (tail!304 l1!1230)) (++!510 (t!22828 (tail!304 l1!1230)) l2!1199)))))

(declare-fun d!32629 () Bool)

(assert (=> d!32629 e!79136))

(declare-fun res!63884 () Bool)

(assert (=> d!32629 (=> (not res!63884) (not e!79136))))

(assert (=> d!32629 (= res!63884 (= (content!336 lt!40849) ((_ map or) (content!336 (tail!304 l1!1230)) (content!336 l2!1199))))))

(assert (=> d!32629 (= lt!40849 e!79138)))

(declare-fun c!28885 () Bool)

(assert (=> d!32629 (= c!28885 ((_ is Nil!2236) (tail!304 l1!1230)))))

(assert (=> d!32629 (= (++!510 (tail!304 l1!1230) l2!1199) lt!40849)))

(declare-fun b!136130 () Bool)

(declare-fun res!63881 () Bool)

(assert (=> b!136130 (=> (not res!63881) (not e!79136))))

(assert (=> b!136130 (= res!63881 (= (size!2025 lt!40849) (+ (size!2025 (tail!304 l1!1230)) (size!2025 l2!1199))))))

(assert (= (and d!32629 c!28885) b!136126))

(assert (= (and d!32629 (not c!28885)) b!136128))

(assert (= (and d!32629 res!63884) b!136130))

(assert (= (and b!136130 res!63881) b!136132))

(declare-fun m!120749 () Bool)

(assert (=> b!136128 m!120749))

(declare-fun m!120751 () Bool)

(assert (=> d!32629 m!120751))

(assert (=> d!32629 m!120697))

(declare-fun m!120753 () Bool)

(assert (=> d!32629 m!120753))

(assert (=> d!32629 m!120711))

(declare-fun m!120755 () Bool)

(assert (=> b!136130 m!120755))

(assert (=> b!136130 m!120697))

(declare-fun m!120757 () Bool)

(assert (=> b!136130 m!120757))

(assert (=> b!136130 m!120717))

(assert (=> b!136058 d!32629))

(declare-fun d!32633 () Bool)

(assert (=> d!32633 (= (tail!304 l1!1230) (t!22828 l1!1230))))

(assert (=> b!136058 d!32633))

(declare-fun b!136141 () Bool)

(declare-fun e!79144 () Bool)

(declare-fun tp!71083 () Bool)

(assert (=> b!136141 (= e!79144 (and tp_is_empty!1521 tp!71083))))

(assert (=> b!136060 (= tp!71080 e!79144)))

(assert (= (and b!136060 ((_ is Cons!2236) (t!22828 l1!1230))) b!136141))

(declare-fun b!136142 () Bool)

(declare-fun e!79145 () Bool)

(declare-fun tp!71084 () Bool)

(assert (=> b!136142 (= e!79145 (and tp_is_empty!1521 tp!71084))))

(assert (=> b!136050 (= tp!71078 e!79145)))

(assert (= (and b!136050 ((_ is Cons!2236) (t!22828 l2!1199))) b!136142))

(declare-fun b!136143 () Bool)

(declare-fun e!79146 () Bool)

(declare-fun tp!71085 () Bool)

(assert (=> b!136143 (= e!79146 (and tp_is_empty!1521 tp!71085))))

(assert (=> b!136053 (= tp!71079 e!79146)))

(assert (= (and b!136053 ((_ is Cons!2236) (t!22828 sub!16))) b!136143))

(check-sat (not b!136128) (not b!136094) (not d!32629) (not b!136099) (not b!136095) (not b!136071) tp_is_empty!1521 (not b!136100) (not b!136116) (not b!136123) (not d!32613) (not b!136114) (not b!136142) (not b!136072) (not b!136141) (not b!136143) (not b!136130) (not b!136124))
(check-sat)
