; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272058 () Bool)

(assert start!272058)

(declare-datatypes ((Object!5242 0) (Conc!10160 0) (List!32932 0) (IArray!20325 0) (BalanceConc!19938 0))(
  ( (BalanceConc!19937 (value!158075 BalanceConc!19938)) (List!32931 (value!158076 List!32932)) (Character!102 (value!158077 (_ BitVec 16))) (Open!102 (value!158078 Int)) )
  ( (Node!10160 (left!24761 Conc!10160) (right!25091 Conc!10160) (csize!20550 Int) (cheight!10371 Int)) (Leaf!15478 (xs!13272 IArray!20325) (csize!20551 Int)) (Empty!10160) )
  ( (Nil!32828) (Cons!32828 (h!38248 Object!5242) (t!229878 List!32932)) )
  ( (IArray!20326 (innerList!10220 List!32932)) )
  ( (BalanceConc!19939 (c!455422 Conc!10160)) )
))
(declare-datatypes ((T!54724 0))(
  ( (T!54725 (val!10322 Int)) )
))
(declare-datatypes ((List!32933 0))(
  ( (Nil!32829) (Cons!32829 (h!38249 T!54724) (t!229879 List!32933)) )
))
(declare-datatypes ((Vector!212 0))(
  ( (Vector!213 (underlying!8346 Object!5242) (overflowing!163 List!32933)) )
))
(declare-fun thiss!9338 () Vector!212)

(declare-fun t!5895 () T!54724)

(declare-fun list!12295 (Vector!212) List!32933)

(declare-fun choose!16577 (Vector!212 T!54724) Vector!212)

(declare-fun $colon$colon!567 (List!32933 T!54724) List!32933)

(assert (=> start!272058 (not (= (list!12295 (choose!16577 thiss!9338 t!5895)) ($colon$colon!567 (list!12295 thiss!9338) t!5895)))))

(declare-fun e!1777874 () Bool)

(assert (=> start!272058 e!1777874))

(declare-fun tp_is_empty!14369 () Bool)

(assert (=> start!272058 tp_is_empty!14369))

(declare-fun b!2811156 () Bool)

(declare-fun tp!897742 () Bool)

(declare-fun tp!897743 () Bool)

(assert (=> b!2811156 (= e!1777874 (and tp!897742 tp!897743))))

(assert (= start!272058 b!2811156))

(declare-fun m!3240879 () Bool)

(assert (=> start!272058 m!3240879))

(assert (=> start!272058 m!3240879))

(declare-fun m!3240881 () Bool)

(assert (=> start!272058 m!3240881))

(declare-fun m!3240883 () Bool)

(assert (=> start!272058 m!3240883))

(assert (=> start!272058 m!3240883))

(declare-fun m!3240885 () Bool)

(assert (=> start!272058 m!3240885))

(check-sat (not start!272058) (not b!2811156) tp_is_empty!14369)
(check-sat)
(get-model)

(declare-fun d!815930 () Bool)

(declare-fun choose!16580 (Vector!212) List!32933)

(assert (=> d!815930 (= (list!12295 (choose!16577 thiss!9338 t!5895)) (choose!16580 (choose!16577 thiss!9338 t!5895)))))

(declare-fun bs!516381 () Bool)

(assert (= bs!516381 d!815930))

(assert (=> bs!516381 m!3240879))

(declare-fun m!3240893 () Bool)

(assert (=> bs!516381 m!3240893))

(assert (=> start!272058 d!815930))

(declare-fun d!815936 () Bool)

(declare-fun choose!16581 (Vector!212 T!54724) Vector!212)

(assert (=> d!815936 (= (choose!16577 thiss!9338 t!5895) (choose!16581 thiss!9338 t!5895))))

(declare-fun bs!516382 () Bool)

(assert (= bs!516382 d!815936))

(declare-fun m!3240895 () Bool)

(assert (=> bs!516382 m!3240895))

(assert (=> start!272058 d!815936))

(declare-fun d!815938 () Bool)

(assert (=> d!815938 (= ($colon$colon!567 (list!12295 thiss!9338) t!5895) (Cons!32829 t!5895 (list!12295 thiss!9338)))))

(assert (=> start!272058 d!815938))

(declare-fun d!815940 () Bool)

(assert (=> d!815940 (= (list!12295 thiss!9338) (choose!16580 thiss!9338))))

(declare-fun bs!516383 () Bool)

(assert (= bs!516383 d!815940))

(declare-fun m!3240897 () Bool)

(assert (=> bs!516383 m!3240897))

(assert (=> start!272058 d!815940))

(declare-fun b!2811182 () Bool)

(declare-fun e!1777889 () Bool)

(declare-fun tp!897757 () Bool)

(declare-fun inv!44561 (Conc!10160) Bool)

(assert (=> b!2811182 (= e!1777889 (and (inv!44561 (c!455422 (value!158075 (underlying!8346 thiss!9338)))) tp!897757))))

(declare-fun b!2811181 () Bool)

(declare-fun e!1777888 () Bool)

(declare-fun inv!44563 (BalanceConc!19938) Bool)

(assert (=> b!2811181 (= e!1777888 (and (inv!44563 (value!158075 (underlying!8346 thiss!9338))) e!1777889))))

(declare-fun b!2811183 () Bool)

(declare-fun tp!897758 () Bool)

(assert (=> b!2811183 (= e!1777888 tp!897758)))

(assert (=> b!2811156 (= tp!897742 e!1777888)))

(assert (= b!2811181 b!2811182))

(get-info :version)

(assert (= (and b!2811156 ((_ is BalanceConc!19937) (underlying!8346 thiss!9338))) b!2811181))

(assert (= (and b!2811156 ((_ is List!32931) (underlying!8346 thiss!9338))) b!2811183))

(declare-fun m!3240903 () Bool)

(assert (=> b!2811182 m!3240903))

(declare-fun m!3240905 () Bool)

(assert (=> b!2811181 m!3240905))

(declare-fun b!2811188 () Bool)

(declare-fun e!1777892 () Bool)

(declare-fun tp!897761 () Bool)

(assert (=> b!2811188 (= e!1777892 (and tp_is_empty!14369 tp!897761))))

(assert (=> b!2811156 (= tp!897743 e!1777892)))

(assert (= (and b!2811156 ((_ is Cons!32829) (overflowing!163 thiss!9338))) b!2811188))

(check-sat (not b!2811181) tp_is_empty!14369 (not d!815930) (not b!2811188) (not b!2811182) (not d!815940) (not b!2811183) (not d!815936))
(check-sat)
(get-model)

(declare-fun d!815942 () Bool)

(assert (=> d!815942 true))

(declare-fun e!1777895 () Bool)

(assert (=> d!815942 e!1777895))

(declare-fun res!1170386 () List!32933)

(assert (=> d!815942 (= (choose!16580 (choose!16577 thiss!9338 t!5895)) res!1170386)))

(declare-fun b!2811191 () Bool)

(declare-fun tp!897764 () Bool)

(assert (=> b!2811191 (= e!1777895 (and tp_is_empty!14369 tp!897764))))

(assert (= (and d!815942 ((_ is Cons!32829) res!1170386)) b!2811191))

(assert (=> d!815930 d!815942))

(declare-fun d!815944 () Bool)

(assert (=> d!815944 true))

(declare-fun e!1777896 () Bool)

(assert (=> d!815944 e!1777896))

(declare-fun res!1170387 () List!32933)

(assert (=> d!815944 (= (choose!16580 thiss!9338) res!1170387)))

(declare-fun b!2811192 () Bool)

(declare-fun tp!897765 () Bool)

(assert (=> b!2811192 (= e!1777896 (and tp_is_empty!14369 tp!897765))))

(assert (= (and d!815944 ((_ is Cons!32829) res!1170387)) b!2811192))

(assert (=> d!815940 d!815944))

(declare-fun d!815946 () Bool)

(declare-fun isBalanced!3086 (Conc!10160) Bool)

(assert (=> d!815946 (= (inv!44563 (value!158075 (underlying!8346 thiss!9338))) (isBalanced!3086 (c!455422 (value!158075 (underlying!8346 thiss!9338)))))))

(declare-fun bs!516384 () Bool)

(assert (= bs!516384 d!815946))

(declare-fun m!3240907 () Bool)

(assert (=> bs!516384 m!3240907))

(assert (=> b!2811181 d!815946))

(declare-fun d!815948 () Bool)

(declare-fun res!1170392 () Vector!212)

(assert (=> d!815948 (= (list!12295 res!1170392) ($colon$colon!567 (list!12295 thiss!9338) t!5895))))

(declare-fun e!1777901 () Bool)

(assert (=> d!815948 e!1777901))

(assert (=> d!815948 (= (choose!16581 thiss!9338 t!5895) res!1170392)))

(declare-fun b!2811197 () Bool)

(declare-fun tp!897774 () Bool)

(declare-fun tp!897775 () Bool)

(assert (=> b!2811197 (= e!1777901 (and tp!897774 tp!897775))))

(assert (= d!815948 b!2811197))

(declare-fun m!3240909 () Bool)

(assert (=> d!815948 m!3240909))

(assert (=> d!815948 m!3240883))

(assert (=> d!815948 m!3240883))

(assert (=> d!815948 m!3240885))

(assert (=> d!815936 d!815948))

(declare-fun d!815952 () Bool)

(declare-fun c!455425 () Bool)

(assert (=> d!815952 (= c!455425 ((_ is Node!10160) (c!455422 (value!158075 (underlying!8346 thiss!9338)))))))

(declare-fun e!1777910 () Bool)

(assert (=> d!815952 (= (inv!44561 (c!455422 (value!158075 (underlying!8346 thiss!9338)))) e!1777910)))

(declare-fun b!2811208 () Bool)

(declare-fun inv!44564 (Conc!10160) Bool)

(assert (=> b!2811208 (= e!1777910 (inv!44564 (c!455422 (value!158075 (underlying!8346 thiss!9338)))))))

(declare-fun b!2811209 () Bool)

(declare-fun e!1777911 () Bool)

(assert (=> b!2811209 (= e!1777910 e!1777911)))

(declare-fun res!1170399 () Bool)

(assert (=> b!2811209 (= res!1170399 (not ((_ is Leaf!15478) (c!455422 (value!158075 (underlying!8346 thiss!9338))))))))

(assert (=> b!2811209 (=> res!1170399 e!1777911)))

(declare-fun b!2811210 () Bool)

(declare-fun inv!44565 (Conc!10160) Bool)

(assert (=> b!2811210 (= e!1777911 (inv!44565 (c!455422 (value!158075 (underlying!8346 thiss!9338)))))))

(assert (= (and d!815952 c!455425) b!2811208))

(assert (= (and d!815952 (not c!455425)) b!2811209))

(assert (= (and b!2811209 (not res!1170399)) b!2811210))

(declare-fun m!3240913 () Bool)

(assert (=> b!2811208 m!3240913))

(declare-fun m!3240915 () Bool)

(assert (=> b!2811210 m!3240915))

(assert (=> b!2811182 d!815952))

(declare-fun b!2811211 () Bool)

(declare-fun e!1777912 () Bool)

(declare-fun tp!897781 () Bool)

(assert (=> b!2811211 (= e!1777912 (and tp_is_empty!14369 tp!897781))))

(assert (=> b!2811188 (= tp!897761 e!1777912)))

(assert (= (and b!2811188 ((_ is Cons!32829) (t!229879 (overflowing!163 thiss!9338)))) b!2811211))

(declare-fun b!2811216 () Bool)

(declare-fun e!1777915 () Bool)

(declare-fun tp!897786 () Bool)

(declare-fun tp!897787 () Bool)

(assert (=> b!2811216 (= e!1777915 (and tp!897786 tp!897787))))

(assert (=> b!2811183 (= tp!897758 e!1777915)))

(assert (= (and b!2811183 ((_ is Cons!32828) (value!158076 (underlying!8346 thiss!9338)))) b!2811216))

(declare-fun tp!897795 () Bool)

(declare-fun tp!897796 () Bool)

(declare-fun b!2811234 () Bool)

(declare-fun e!1777927 () Bool)

(assert (=> b!2811234 (= e!1777927 (and (inv!44561 (left!24761 (c!455422 (value!158075 (underlying!8346 thiss!9338))))) tp!897796 (inv!44561 (right!25091 (c!455422 (value!158075 (underlying!8346 thiss!9338))))) tp!897795))))

(declare-fun b!2811236 () Bool)

(declare-fun e!1777926 () Bool)

(declare-fun tp!897794 () Bool)

(assert (=> b!2811236 (= e!1777926 tp!897794)))

(declare-fun b!2811235 () Bool)

(declare-fun inv!44567 (IArray!20325) Bool)

(assert (=> b!2811235 (= e!1777927 (and (inv!44567 (xs!13272 (c!455422 (value!158075 (underlying!8346 thiss!9338))))) e!1777926))))

(assert (=> b!2811182 (= tp!897757 (and (inv!44561 (c!455422 (value!158075 (underlying!8346 thiss!9338)))) e!1777927))))

(assert (= (and b!2811182 ((_ is Node!10160) (c!455422 (value!158075 (underlying!8346 thiss!9338))))) b!2811234))

(assert (= b!2811235 b!2811236))

(assert (= (and b!2811182 ((_ is Leaf!15478) (c!455422 (value!158075 (underlying!8346 thiss!9338))))) b!2811235))

(declare-fun m!3240921 () Bool)

(assert (=> b!2811234 m!3240921))

(declare-fun m!3240923 () Bool)

(assert (=> b!2811234 m!3240923))

(declare-fun m!3240925 () Bool)

(assert (=> b!2811235 m!3240925))

(assert (=> b!2811182 m!3240903))

(check-sat (not b!2811182) tp_is_empty!14369 (not b!2811216) (not b!2811234) (not b!2811235) (not b!2811192) (not b!2811210) (not b!2811211) (not d!815946) (not b!2811191) (not b!2811197) (not b!2811208) (not d!815948) (not b!2811236))
(check-sat)
