; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756052 () Bool)

(assert start!756052)

(declare-fun b!8027798 () Bool)

(declare-fun res!3174808 () Bool)

(declare-fun e!4729395 () Bool)

(assert (=> b!8027798 (=> (not res!3174808) (not e!4729395))))

(declare-datatypes ((B!4413 0))(
  ( (B!4414 (val!32606 Int)) )
))
(declare-datatypes ((List!75122 0))(
  ( (Nil!74996) (Cons!74996 (h!81444 B!4413) (t!390878 List!75122)) )
))
(declare-fun s1!480 () List!75122)

(declare-fun isEmpty!43004 (List!75122) Bool)

(assert (=> b!8027798 (= res!3174808 (not (isEmpty!43004 s1!480)))))

(declare-fun b!8027799 () Bool)

(declare-fun res!3174805 () Bool)

(assert (=> b!8027799 (=> (not res!3174805) (not e!4729395))))

(declare-fun p1!159 () List!75122)

(declare-fun p2!159 () List!75122)

(declare-fun size!43731 (List!75122) Int)

(assert (=> b!8027799 (= res!3174805 (< (size!43731 p1!159) (size!43731 p2!159)))))

(declare-fun b!8027800 () Bool)

(declare-fun e!4729397 () Bool)

(declare-fun tp_is_empty!54317 () Bool)

(declare-fun tp!2402397 () Bool)

(assert (=> b!8027800 (= e!4729397 (and tp_is_empty!54317 tp!2402397))))

(declare-fun b!8027801 () Bool)

(declare-fun e!4729392 () Bool)

(assert (=> b!8027801 (= e!4729392 e!4729395)))

(declare-fun res!3174807 () Bool)

(assert (=> b!8027801 (=> (not res!3174807) (not e!4729395))))

(declare-fun lt!2721350 () List!75122)

(declare-fun l!3185 () List!75122)

(assert (=> b!8027801 (= res!3174807 (= lt!2721350 l!3185))))

(declare-fun ++!18598 (List!75122 List!75122) List!75122)

(assert (=> b!8027801 (= lt!2721350 (++!18598 p1!159 s1!480))))

(declare-fun b!8027802 () Bool)

(declare-fun e!4729396 () Bool)

(assert (=> b!8027802 (= e!4729395 (not e!4729396))))

(declare-fun res!3174806 () Bool)

(assert (=> b!8027802 (=> res!3174806 e!4729396)))

(get-info :version)

(assert (=> b!8027802 (= res!3174806 (not ((_ is Cons!74996) p1!159)))))

(declare-fun isPrefix!6871 (List!75122 List!75122) Bool)

(assert (=> b!8027802 (isPrefix!6871 p1!159 lt!2721350)))

(declare-datatypes ((Unit!170976 0))(
  ( (Unit!170977) )
))
(declare-fun lt!2721349 () Unit!170976)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3990 (List!75122 List!75122) Unit!170976)

(assert (=> b!8027802 (= lt!2721349 (lemmaConcatTwoListThenFirstIsPrefix!3990 p1!159 s1!480))))

(declare-fun b!8027803 () Bool)

(declare-fun e!4729390 () Bool)

(declare-fun tp!2402396 () Bool)

(assert (=> b!8027803 (= e!4729390 (and tp_is_empty!54317 tp!2402396))))

(declare-fun b!8027804 () Bool)

(declare-fun e!4729391 () Bool)

(assert (=> b!8027804 (= e!4729396 e!4729391)))

(declare-fun res!3174809 () Bool)

(assert (=> b!8027804 (=> res!3174809 e!4729391)))

(declare-fun lt!2721348 () List!75122)

(declare-fun tail!16029 (List!75122) List!75122)

(assert (=> b!8027804 (= res!3174809 (not (isPrefix!6871 (tail!16029 p2!159) lt!2721348)))))

(assert (=> b!8027804 (= lt!2721348 (tail!16029 l!3185))))

(declare-fun b!8027806 () Bool)

(declare-fun e!4729393 () Bool)

(declare-fun tp!2402399 () Bool)

(assert (=> b!8027806 (= e!4729393 (and tp_is_empty!54317 tp!2402399))))

(declare-fun b!8027807 () Bool)

(declare-fun e!4729394 () Bool)

(declare-fun tp!2402398 () Bool)

(assert (=> b!8027807 (= e!4729394 (and tp_is_empty!54317 tp!2402398))))

(declare-fun res!3174804 () Bool)

(assert (=> start!756052 (=> (not res!3174804) (not e!4729392))))

(assert (=> start!756052 (= res!3174804 (isPrefix!6871 p2!159 l!3185))))

(assert (=> start!756052 e!4729392))

(assert (=> start!756052 e!4729390))

(assert (=> start!756052 e!4729393))

(assert (=> start!756052 e!4729397))

(assert (=> start!756052 e!4729394))

(declare-fun b!8027805 () Bool)

(assert (=> b!8027805 (= e!4729391 (= (++!18598 (t!390878 p1!159) s1!480) lt!2721348))))

(assert (= (and start!756052 res!3174804) b!8027801))

(assert (= (and b!8027801 res!3174807) b!8027798))

(assert (= (and b!8027798 res!3174808) b!8027799))

(assert (= (and b!8027799 res!3174805) b!8027802))

(assert (= (and b!8027802 (not res!3174806)) b!8027804))

(assert (= (and b!8027804 (not res!3174809)) b!8027805))

(assert (= (and start!756052 ((_ is Cons!74996) p2!159)) b!8027803))

(assert (= (and start!756052 ((_ is Cons!74996) l!3185)) b!8027806))

(assert (= (and start!756052 ((_ is Cons!74996) p1!159)) b!8027800))

(assert (= (and start!756052 ((_ is Cons!74996) s1!480)) b!8027807))

(declare-fun m!8389888 () Bool)

(assert (=> b!8027805 m!8389888))

(declare-fun m!8389890 () Bool)

(assert (=> b!8027799 m!8389890))

(declare-fun m!8389892 () Bool)

(assert (=> b!8027799 m!8389892))

(declare-fun m!8389894 () Bool)

(assert (=> b!8027801 m!8389894))

(declare-fun m!8389896 () Bool)

(assert (=> b!8027804 m!8389896))

(assert (=> b!8027804 m!8389896))

(declare-fun m!8389898 () Bool)

(assert (=> b!8027804 m!8389898))

(declare-fun m!8389900 () Bool)

(assert (=> b!8027804 m!8389900))

(declare-fun m!8389902 () Bool)

(assert (=> b!8027802 m!8389902))

(declare-fun m!8389904 () Bool)

(assert (=> b!8027802 m!8389904))

(declare-fun m!8389906 () Bool)

(assert (=> start!756052 m!8389906))

(declare-fun m!8389908 () Bool)

(assert (=> b!8027798 m!8389908))

(check-sat (not b!8027804) (not b!8027807) (not b!8027801) (not b!8027803) (not b!8027800) (not b!8027805) (not start!756052) (not b!8027798) (not b!8027806) tp_is_empty!54317 (not b!8027802) (not b!8027799))
(check-sat)
(get-model)

(declare-fun d!2393807 () Bool)

(assert (=> d!2393807 (= (isEmpty!43004 s1!480) ((_ is Nil!74996) s1!480))))

(assert (=> b!8027798 d!2393807))

(declare-fun d!2393809 () Bool)

(declare-fun lt!2721353 () Int)

(assert (=> d!2393809 (>= lt!2721353 0)))

(declare-fun e!4729400 () Int)

(assert (=> d!2393809 (= lt!2721353 e!4729400)))

(declare-fun c!1472865 () Bool)

(assert (=> d!2393809 (= c!1472865 ((_ is Nil!74996) p1!159))))

(assert (=> d!2393809 (= (size!43731 p1!159) lt!2721353)))

(declare-fun b!8027812 () Bool)

(assert (=> b!8027812 (= e!4729400 0)))

(declare-fun b!8027813 () Bool)

(assert (=> b!8027813 (= e!4729400 (+ 1 (size!43731 (t!390878 p1!159))))))

(assert (= (and d!2393809 c!1472865) b!8027812))

(assert (= (and d!2393809 (not c!1472865)) b!8027813))

(declare-fun m!8389910 () Bool)

(assert (=> b!8027813 m!8389910))

(assert (=> b!8027799 d!2393809))

(declare-fun d!2393811 () Bool)

(declare-fun lt!2721354 () Int)

(assert (=> d!2393811 (>= lt!2721354 0)))

(declare-fun e!4729401 () Int)

(assert (=> d!2393811 (= lt!2721354 e!4729401)))

(declare-fun c!1472866 () Bool)

(assert (=> d!2393811 (= c!1472866 ((_ is Nil!74996) p2!159))))

(assert (=> d!2393811 (= (size!43731 p2!159) lt!2721354)))

(declare-fun b!8027814 () Bool)

(assert (=> b!8027814 (= e!4729401 0)))

(declare-fun b!8027815 () Bool)

(assert (=> b!8027815 (= e!4729401 (+ 1 (size!43731 (t!390878 p2!159))))))

(assert (= (and d!2393811 c!1472866) b!8027814))

(assert (= (and d!2393811 (not c!1472866)) b!8027815))

(declare-fun m!8389912 () Bool)

(assert (=> b!8027815 m!8389912))

(assert (=> b!8027799 d!2393811))

(declare-fun b!8027839 () Bool)

(declare-fun e!4729418 () Bool)

(assert (=> b!8027839 (= e!4729418 (>= (size!43731 lt!2721348) (size!43731 (tail!16029 p2!159))))))

(declare-fun b!8027837 () Bool)

(declare-fun res!3174832 () Bool)

(declare-fun e!4729417 () Bool)

(assert (=> b!8027837 (=> (not res!3174832) (not e!4729417))))

(declare-fun head!16485 (List!75122) B!4413)

(assert (=> b!8027837 (= res!3174832 (= (head!16485 (tail!16029 p2!159)) (head!16485 lt!2721348)))))

(declare-fun b!8027838 () Bool)

(assert (=> b!8027838 (= e!4729417 (isPrefix!6871 (tail!16029 (tail!16029 p2!159)) (tail!16029 lt!2721348)))))

(declare-fun b!8027836 () Bool)

(declare-fun e!4729419 () Bool)

(assert (=> b!8027836 (= e!4729419 e!4729417)))

(declare-fun res!3174831 () Bool)

(assert (=> b!8027836 (=> (not res!3174831) (not e!4729417))))

(assert (=> b!8027836 (= res!3174831 (not ((_ is Nil!74996) lt!2721348)))))

(declare-fun d!2393815 () Bool)

(assert (=> d!2393815 e!4729418))

(declare-fun res!3174833 () Bool)

(assert (=> d!2393815 (=> res!3174833 e!4729418)))

(declare-fun lt!2721360 () Bool)

(assert (=> d!2393815 (= res!3174833 (not lt!2721360))))

(assert (=> d!2393815 (= lt!2721360 e!4729419)))

(declare-fun res!3174830 () Bool)

(assert (=> d!2393815 (=> res!3174830 e!4729419)))

(assert (=> d!2393815 (= res!3174830 ((_ is Nil!74996) (tail!16029 p2!159)))))

(assert (=> d!2393815 (= (isPrefix!6871 (tail!16029 p2!159) lt!2721348) lt!2721360)))

(assert (= (and d!2393815 (not res!3174830)) b!8027836))

(assert (= (and b!8027836 res!3174831) b!8027837))

(assert (= (and b!8027837 res!3174832) b!8027838))

(assert (= (and d!2393815 (not res!3174833)) b!8027839))

(declare-fun m!8389928 () Bool)

(assert (=> b!8027839 m!8389928))

(assert (=> b!8027839 m!8389896))

(declare-fun m!8389930 () Bool)

(assert (=> b!8027839 m!8389930))

(assert (=> b!8027837 m!8389896))

(declare-fun m!8389932 () Bool)

(assert (=> b!8027837 m!8389932))

(declare-fun m!8389934 () Bool)

(assert (=> b!8027837 m!8389934))

(assert (=> b!8027838 m!8389896))

(declare-fun m!8389936 () Bool)

(assert (=> b!8027838 m!8389936))

(declare-fun m!8389938 () Bool)

(assert (=> b!8027838 m!8389938))

(assert (=> b!8027838 m!8389936))

(assert (=> b!8027838 m!8389938))

(declare-fun m!8389940 () Bool)

(assert (=> b!8027838 m!8389940))

(assert (=> b!8027804 d!2393815))

(declare-fun d!2393819 () Bool)

(assert (=> d!2393819 (= (tail!16029 p2!159) (t!390878 p2!159))))

(assert (=> b!8027804 d!2393819))

(declare-fun d!2393825 () Bool)

(assert (=> d!2393825 (= (tail!16029 l!3185) (t!390878 l!3185))))

(assert (=> b!8027804 d!2393825))

(declare-fun b!8027843 () Bool)

(declare-fun e!4729421 () Bool)

(assert (=> b!8027843 (= e!4729421 (>= (size!43731 l!3185) (size!43731 p2!159)))))

(declare-fun b!8027841 () Bool)

(declare-fun res!3174836 () Bool)

(declare-fun e!4729420 () Bool)

(assert (=> b!8027841 (=> (not res!3174836) (not e!4729420))))

(assert (=> b!8027841 (= res!3174836 (= (head!16485 p2!159) (head!16485 l!3185)))))

(declare-fun b!8027842 () Bool)

(assert (=> b!8027842 (= e!4729420 (isPrefix!6871 (tail!16029 p2!159) (tail!16029 l!3185)))))

(declare-fun b!8027840 () Bool)

(declare-fun e!4729422 () Bool)

(assert (=> b!8027840 (= e!4729422 e!4729420)))

(declare-fun res!3174835 () Bool)

(assert (=> b!8027840 (=> (not res!3174835) (not e!4729420))))

(assert (=> b!8027840 (= res!3174835 (not ((_ is Nil!74996) l!3185)))))

(declare-fun d!2393827 () Bool)

(assert (=> d!2393827 e!4729421))

(declare-fun res!3174837 () Bool)

(assert (=> d!2393827 (=> res!3174837 e!4729421)))

(declare-fun lt!2721361 () Bool)

(assert (=> d!2393827 (= res!3174837 (not lt!2721361))))

(assert (=> d!2393827 (= lt!2721361 e!4729422)))

(declare-fun res!3174834 () Bool)

(assert (=> d!2393827 (=> res!3174834 e!4729422)))

(assert (=> d!2393827 (= res!3174834 ((_ is Nil!74996) p2!159))))

(assert (=> d!2393827 (= (isPrefix!6871 p2!159 l!3185) lt!2721361)))

(assert (= (and d!2393827 (not res!3174834)) b!8027840))

(assert (= (and b!8027840 res!3174835) b!8027841))

(assert (= (and b!8027841 res!3174836) b!8027842))

(assert (= (and d!2393827 (not res!3174837)) b!8027843))

(declare-fun m!8389942 () Bool)

(assert (=> b!8027843 m!8389942))

(assert (=> b!8027843 m!8389892))

(declare-fun m!8389944 () Bool)

(assert (=> b!8027841 m!8389944))

(declare-fun m!8389946 () Bool)

(assert (=> b!8027841 m!8389946))

(assert (=> b!8027842 m!8389896))

(assert (=> b!8027842 m!8389900))

(assert (=> b!8027842 m!8389896))

(assert (=> b!8027842 m!8389900))

(declare-fun m!8389948 () Bool)

(assert (=> b!8027842 m!8389948))

(assert (=> start!756052 d!2393827))

(declare-fun b!8027847 () Bool)

(declare-fun e!4729424 () Bool)

(assert (=> b!8027847 (= e!4729424 (>= (size!43731 lt!2721350) (size!43731 p1!159)))))

(declare-fun b!8027845 () Bool)

(declare-fun res!3174840 () Bool)

(declare-fun e!4729423 () Bool)

(assert (=> b!8027845 (=> (not res!3174840) (not e!4729423))))

(assert (=> b!8027845 (= res!3174840 (= (head!16485 p1!159) (head!16485 lt!2721350)))))

(declare-fun b!8027846 () Bool)

(assert (=> b!8027846 (= e!4729423 (isPrefix!6871 (tail!16029 p1!159) (tail!16029 lt!2721350)))))

(declare-fun b!8027844 () Bool)

(declare-fun e!4729425 () Bool)

(assert (=> b!8027844 (= e!4729425 e!4729423)))

(declare-fun res!3174839 () Bool)

(assert (=> b!8027844 (=> (not res!3174839) (not e!4729423))))

(assert (=> b!8027844 (= res!3174839 (not ((_ is Nil!74996) lt!2721350)))))

(declare-fun d!2393831 () Bool)

(assert (=> d!2393831 e!4729424))

(declare-fun res!3174841 () Bool)

(assert (=> d!2393831 (=> res!3174841 e!4729424)))

(declare-fun lt!2721362 () Bool)

(assert (=> d!2393831 (= res!3174841 (not lt!2721362))))

(assert (=> d!2393831 (= lt!2721362 e!4729425)))

(declare-fun res!3174838 () Bool)

(assert (=> d!2393831 (=> res!3174838 e!4729425)))

(assert (=> d!2393831 (= res!3174838 ((_ is Nil!74996) p1!159))))

(assert (=> d!2393831 (= (isPrefix!6871 p1!159 lt!2721350) lt!2721362)))

(assert (= (and d!2393831 (not res!3174838)) b!8027844))

(assert (= (and b!8027844 res!3174839) b!8027845))

(assert (= (and b!8027845 res!3174840) b!8027846))

(assert (= (and d!2393831 (not res!3174841)) b!8027847))

(declare-fun m!8389950 () Bool)

(assert (=> b!8027847 m!8389950))

(assert (=> b!8027847 m!8389890))

(declare-fun m!8389952 () Bool)

(assert (=> b!8027845 m!8389952))

(declare-fun m!8389954 () Bool)

(assert (=> b!8027845 m!8389954))

(declare-fun m!8389956 () Bool)

(assert (=> b!8027846 m!8389956))

(declare-fun m!8389958 () Bool)

(assert (=> b!8027846 m!8389958))

(assert (=> b!8027846 m!8389956))

(assert (=> b!8027846 m!8389958))

(declare-fun m!8389960 () Bool)

(assert (=> b!8027846 m!8389960))

(assert (=> b!8027802 d!2393831))

(declare-fun d!2393833 () Bool)

(assert (=> d!2393833 (isPrefix!6871 p1!159 (++!18598 p1!159 s1!480))))

(declare-fun lt!2721367 () Unit!170976)

(declare-fun choose!60463 (List!75122 List!75122) Unit!170976)

(assert (=> d!2393833 (= lt!2721367 (choose!60463 p1!159 s1!480))))

(assert (=> d!2393833 (= (lemmaConcatTwoListThenFirstIsPrefix!3990 p1!159 s1!480) lt!2721367)))

(declare-fun bs!1971367 () Bool)

(assert (= bs!1971367 d!2393833))

(assert (=> bs!1971367 m!8389894))

(assert (=> bs!1971367 m!8389894))

(declare-fun m!8389962 () Bool)

(assert (=> bs!1971367 m!8389962))

(declare-fun m!8389964 () Bool)

(assert (=> bs!1971367 m!8389964))

(assert (=> b!8027802 d!2393833))

(declare-fun b!8027876 () Bool)

(declare-fun res!3174853 () Bool)

(declare-fun e!4729440 () Bool)

(assert (=> b!8027876 (=> (not res!3174853) (not e!4729440))))

(declare-fun lt!2721374 () List!75122)

(assert (=> b!8027876 (= res!3174853 (= (size!43731 lt!2721374) (+ (size!43731 p1!159) (size!43731 s1!480))))))

(declare-fun b!8027874 () Bool)

(declare-fun e!4729439 () List!75122)

(assert (=> b!8027874 (= e!4729439 s1!480)))

(declare-fun b!8027875 () Bool)

(assert (=> b!8027875 (= e!4729439 (Cons!74996 (h!81444 p1!159) (++!18598 (t!390878 p1!159) s1!480)))))

(declare-fun b!8027877 () Bool)

(assert (=> b!8027877 (= e!4729440 (or (not (= s1!480 Nil!74996)) (= lt!2721374 p1!159)))))

(declare-fun d!2393835 () Bool)

(assert (=> d!2393835 e!4729440))

(declare-fun res!3174852 () Bool)

(assert (=> d!2393835 (=> (not res!3174852) (not e!4729440))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16007 (List!75122) (InoxSet B!4413))

(assert (=> d!2393835 (= res!3174852 (= (content!16007 lt!2721374) ((_ map or) (content!16007 p1!159) (content!16007 s1!480))))))

(assert (=> d!2393835 (= lt!2721374 e!4729439)))

(declare-fun c!1472875 () Bool)

(assert (=> d!2393835 (= c!1472875 ((_ is Nil!74996) p1!159))))

(assert (=> d!2393835 (= (++!18598 p1!159 s1!480) lt!2721374)))

(assert (= (and d!2393835 c!1472875) b!8027874))

(assert (= (and d!2393835 (not c!1472875)) b!8027875))

(assert (= (and d!2393835 res!3174852) b!8027876))

(assert (= (and b!8027876 res!3174853) b!8027877))

(declare-fun m!8389980 () Bool)

(assert (=> b!8027876 m!8389980))

(assert (=> b!8027876 m!8389890))

(declare-fun m!8389982 () Bool)

(assert (=> b!8027876 m!8389982))

(assert (=> b!8027875 m!8389888))

(declare-fun m!8389984 () Bool)

(assert (=> d!2393835 m!8389984))

(declare-fun m!8389986 () Bool)

(assert (=> d!2393835 m!8389986))

(declare-fun m!8389988 () Bool)

(assert (=> d!2393835 m!8389988))

(assert (=> b!8027801 d!2393835))

(declare-fun b!8027886 () Bool)

(declare-fun res!3174859 () Bool)

(declare-fun e!4729446 () Bool)

(assert (=> b!8027886 (=> (not res!3174859) (not e!4729446))))

(declare-fun lt!2721377 () List!75122)

(assert (=> b!8027886 (= res!3174859 (= (size!43731 lt!2721377) (+ (size!43731 (t!390878 p1!159)) (size!43731 s1!480))))))

(declare-fun b!8027884 () Bool)

(declare-fun e!4729445 () List!75122)

(assert (=> b!8027884 (= e!4729445 s1!480)))

(declare-fun b!8027885 () Bool)

(assert (=> b!8027885 (= e!4729445 (Cons!74996 (h!81444 (t!390878 p1!159)) (++!18598 (t!390878 (t!390878 p1!159)) s1!480)))))

(declare-fun b!8027887 () Bool)

(assert (=> b!8027887 (= e!4729446 (or (not (= s1!480 Nil!74996)) (= lt!2721377 (t!390878 p1!159))))))

(declare-fun d!2393843 () Bool)

(assert (=> d!2393843 e!4729446))

(declare-fun res!3174858 () Bool)

(assert (=> d!2393843 (=> (not res!3174858) (not e!4729446))))

(assert (=> d!2393843 (= res!3174858 (= (content!16007 lt!2721377) ((_ map or) (content!16007 (t!390878 p1!159)) (content!16007 s1!480))))))

(assert (=> d!2393843 (= lt!2721377 e!4729445)))

(declare-fun c!1472877 () Bool)

(assert (=> d!2393843 (= c!1472877 ((_ is Nil!74996) (t!390878 p1!159)))))

(assert (=> d!2393843 (= (++!18598 (t!390878 p1!159) s1!480) lt!2721377)))

(assert (= (and d!2393843 c!1472877) b!8027884))

(assert (= (and d!2393843 (not c!1472877)) b!8027885))

(assert (= (and d!2393843 res!3174858) b!8027886))

(assert (= (and b!8027886 res!3174859) b!8027887))

(declare-fun m!8389998 () Bool)

(assert (=> b!8027886 m!8389998))

(assert (=> b!8027886 m!8389910))

(assert (=> b!8027886 m!8389982))

(declare-fun m!8390000 () Bool)

(assert (=> b!8027885 m!8390000))

(declare-fun m!8390002 () Bool)

(assert (=> d!2393843 m!8390002))

(declare-fun m!8390004 () Bool)

(assert (=> d!2393843 m!8390004))

(assert (=> d!2393843 m!8389988))

(assert (=> b!8027805 d!2393843))

(declare-fun b!8027900 () Bool)

(declare-fun e!4729454 () Bool)

(declare-fun tp!2402402 () Bool)

(assert (=> b!8027900 (= e!4729454 (and tp_is_empty!54317 tp!2402402))))

(assert (=> b!8027803 (= tp!2402396 e!4729454)))

(assert (= (and b!8027803 ((_ is Cons!74996) (t!390878 p2!159))) b!8027900))

(declare-fun b!8027901 () Bool)

(declare-fun e!4729455 () Bool)

(declare-fun tp!2402403 () Bool)

(assert (=> b!8027901 (= e!4729455 (and tp_is_empty!54317 tp!2402403))))

(assert (=> b!8027806 (= tp!2402399 e!4729455)))

(assert (= (and b!8027806 ((_ is Cons!74996) (t!390878 l!3185))) b!8027901))

(declare-fun b!8027902 () Bool)

(declare-fun e!4729456 () Bool)

(declare-fun tp!2402404 () Bool)

(assert (=> b!8027902 (= e!4729456 (and tp_is_empty!54317 tp!2402404))))

(assert (=> b!8027807 (= tp!2402398 e!4729456)))

(assert (= (and b!8027807 ((_ is Cons!74996) (t!390878 s1!480))) b!8027902))

(declare-fun b!8027903 () Bool)

(declare-fun e!4729457 () Bool)

(declare-fun tp!2402405 () Bool)

(assert (=> b!8027903 (= e!4729457 (and tp_is_empty!54317 tp!2402405))))

(assert (=> b!8027800 (= tp!2402397 e!4729457)))

(assert (= (and b!8027800 ((_ is Cons!74996) (t!390878 p1!159))) b!8027903))

(check-sat tp_is_empty!54317 (not b!8027838) (not b!8027902) (not b!8027886) (not b!8027903) (not b!8027815) (not b!8027843) (not b!8027900) (not b!8027846) (not b!8027841) (not b!8027876) (not d!2393835) (not b!8027901) (not b!8027837) (not b!8027875) (not d!2393833) (not d!2393843) (not b!8027847) (not b!8027813) (not b!8027839) (not b!8027885) (not b!8027842) (not b!8027845))
(check-sat)
