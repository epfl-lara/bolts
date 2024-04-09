; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107898 () Bool)

(assert start!107898)

(declare-fun b!1274832 () Bool)

(declare-fun e!727637 () Bool)

(declare-datatypes ((B!2172 0))(
  ( (B!2173 (val!16682 Int)) )
))
(declare-datatypes ((tuple2!21592 0))(
  ( (tuple2!21593 (_1!10806 (_ BitVec 64)) (_2!10806 B!2172)) )
))
(declare-datatypes ((List!28766 0))(
  ( (Nil!28763) (Cons!28762 (h!29971 tuple2!21592) (t!42306 List!28766)) )
))
(declare-fun lt!575246 () List!28766)

(declare-fun key!173 () (_ BitVec 64))

(declare-fun containsKey!703 (List!28766 (_ BitVec 64)) Bool)

(assert (=> b!1274832 (= e!727637 (containsKey!703 lt!575246 key!173))))

(declare-fun b!1274830 () Bool)

(declare-fun res!847506 () Bool)

(declare-fun e!727638 () Bool)

(assert (=> b!1274830 (=> (not res!847506) (not e!727638))))

(declare-fun l!595 () List!28766)

(assert (=> b!1274830 (= res!847506 (and (not (= (_1!10806 (h!29971 l!595)) key!173)) (is-Cons!28762 l!595)))))

(declare-fun b!1274831 () Bool)

(assert (=> b!1274831 (= e!727638 e!727637)))

(declare-fun res!847507 () Bool)

(assert (=> b!1274831 (=> res!847507 e!727637)))

(declare-fun isStrictlySorted!857 (List!28766) Bool)

(assert (=> b!1274831 (= res!847507 (not (isStrictlySorted!857 lt!575246)))))

(declare-fun $colon$colon!668 (List!28766 tuple2!21592) List!28766)

(declare-fun removeStrictlySorted!185 (List!28766 (_ BitVec 64)) List!28766)

(assert (=> b!1274831 (= lt!575246 ($colon$colon!668 (removeStrictlySorted!185 (t!42306 l!595) key!173) (h!29971 l!595)))))

(declare-fun res!847505 () Bool)

(assert (=> start!107898 (=> (not res!847505) (not e!727638))))

(assert (=> start!107898 (= res!847505 (isStrictlySorted!857 l!595))))

(assert (=> start!107898 e!727638))

(declare-fun e!727636 () Bool)

(assert (=> start!107898 e!727636))

(assert (=> start!107898 true))

(declare-fun b!1274833 () Bool)

(declare-fun tp_is_empty!33215 () Bool)

(declare-fun tp!98064 () Bool)

(assert (=> b!1274833 (= e!727636 (and tp_is_empty!33215 tp!98064))))

(assert (= (and start!107898 res!847505) b!1274830))

(assert (= (and b!1274830 res!847506) b!1274831))

(assert (= (and b!1274831 (not res!847507)) b!1274832))

(assert (= (and start!107898 (is-Cons!28762 l!595)) b!1274833))

(declare-fun m!1171359 () Bool)

(assert (=> b!1274832 m!1171359))

(declare-fun m!1171361 () Bool)

(assert (=> b!1274831 m!1171361))

(declare-fun m!1171363 () Bool)

(assert (=> b!1274831 m!1171363))

(assert (=> b!1274831 m!1171363))

(declare-fun m!1171365 () Bool)

(assert (=> b!1274831 m!1171365))

(declare-fun m!1171367 () Bool)

(assert (=> start!107898 m!1171367))

(push 1)

(assert (not b!1274831))

(assert (not b!1274833))

(assert (not start!107898))

(assert (not b!1274832))

(assert tp_is_empty!33215)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140163 () Bool)

(declare-fun res!847518 () Bool)

(declare-fun e!727649 () Bool)

(assert (=> d!140163 (=> res!847518 e!727649)))

(assert (=> d!140163 (= res!847518 (and (is-Cons!28762 lt!575246) (= (_1!10806 (h!29971 lt!575246)) key!173)))))

(assert (=> d!140163 (= (containsKey!703 lt!575246 key!173) e!727649)))

(declare-fun b!1274844 () Bool)

(declare-fun e!727650 () Bool)

(assert (=> b!1274844 (= e!727649 e!727650)))

(declare-fun res!847519 () Bool)

(assert (=> b!1274844 (=> (not res!847519) (not e!727650))))

(assert (=> b!1274844 (= res!847519 (and (or (not (is-Cons!28762 lt!575246)) (bvsle (_1!10806 (h!29971 lt!575246)) key!173)) (is-Cons!28762 lt!575246) (bvslt (_1!10806 (h!29971 lt!575246)) key!173)))))

(declare-fun b!1274845 () Bool)

(assert (=> b!1274845 (= e!727650 (containsKey!703 (t!42306 lt!575246) key!173))))

(assert (= (and d!140163 (not res!847518)) b!1274844))

(assert (= (and b!1274844 res!847519) b!1274845))

(declare-fun m!1171371 () Bool)

(assert (=> b!1274845 m!1171371))

(assert (=> b!1274832 d!140163))

(declare-fun d!140171 () Bool)

(declare-fun res!847534 () Bool)

(declare-fun e!727665 () Bool)

(assert (=> d!140171 (=> res!847534 e!727665)))

(assert (=> d!140171 (= res!847534 (or (is-Nil!28763 lt!575246) (is-Nil!28763 (t!42306 lt!575246))))))

(assert (=> d!140171 (= (isStrictlySorted!857 lt!575246) e!727665)))

(declare-fun b!1274860 () Bool)

(declare-fun e!727666 () Bool)

(assert (=> b!1274860 (= e!727665 e!727666)))

(declare-fun res!847535 () Bool)

(assert (=> b!1274860 (=> (not res!847535) (not e!727666))))

(assert (=> b!1274860 (= res!847535 (bvslt (_1!10806 (h!29971 lt!575246)) (_1!10806 (h!29971 (t!42306 lt!575246)))))))

(declare-fun b!1274861 () Bool)

(assert (=> b!1274861 (= e!727666 (isStrictlySorted!857 (t!42306 lt!575246)))))

(assert (= (and d!140171 (not res!847534)) b!1274860))

(assert (= (and b!1274860 res!847535) b!1274861))

(declare-fun m!1171375 () Bool)

(assert (=> b!1274861 m!1171375))

(assert (=> b!1274831 d!140171))

(declare-fun d!140175 () Bool)

(assert (=> d!140175 (= ($colon$colon!668 (removeStrictlySorted!185 (t!42306 l!595) key!173) (h!29971 l!595)) (Cons!28762 (h!29971 l!595) (removeStrictlySorted!185 (t!42306 l!595) key!173)))))

(assert (=> b!1274831 d!140175))

(declare-fun d!140179 () Bool)

(declare-fun e!727705 () Bool)

(assert (=> d!140179 e!727705))

(declare-fun res!847555 () Bool)

(assert (=> d!140179 (=> (not res!847555) (not e!727705))))

(declare-fun lt!575254 () List!28766)

(assert (=> d!140179 (= res!847555 (isStrictlySorted!857 lt!575254))))

(declare-fun e!727704 () List!28766)

(assert (=> d!140179 (= lt!575254 e!727704)))

(declare-fun c!123849 () Bool)

(assert (=> d!140179 (= c!123849 (and (is-Cons!28762 (t!42306 l!595)) (= (_1!10806 (h!29971 (t!42306 l!595))) key!173)))))

(assert (=> d!140179 (isStrictlySorted!857 (t!42306 l!595))))

(assert (=> d!140179 (= (removeStrictlySorted!185 (t!42306 l!595) key!173) lt!575254)))

(declare-fun b!1274914 () Bool)

(declare-fun e!727703 () List!28766)

(assert (=> b!1274914 (= e!727703 Nil!28763)))

(declare-fun b!1274915 () Bool)

(assert (=> b!1274915 (= e!727704 (t!42306 (t!42306 l!595)))))

(declare-fun b!1274916 () Bool)

(assert (=> b!1274916 (= e!727704 e!727703)))

(declare-fun c!123850 () Bool)

(assert (=> b!1274916 (= c!123850 (and (is-Cons!28762 (t!42306 l!595)) (not (= (_1!10806 (h!29971 (t!42306 l!595))) key!173))))))

(declare-fun b!1274917 () Bool)

(assert (=> b!1274917 (= e!727703 ($colon$colon!668 (removeStrictlySorted!185 (t!42306 (t!42306 l!595)) key!173) (h!29971 (t!42306 l!595))))))

(declare-fun b!1274918 () Bool)

(assert (=> b!1274918 (= e!727705 (not (containsKey!703 lt!575254 key!173)))))

(assert (= (and d!140179 c!123849) b!1274915))

(assert (= (and d!140179 (not c!123849)) b!1274916))

(assert (= (and b!1274916 c!123850) b!1274917))

(assert (= (and b!1274916 (not c!123850)) b!1274914))

(assert (= (and d!140179 res!847555) b!1274918))

(declare-fun m!1171393 () Bool)

(assert (=> d!140179 m!1171393))

(declare-fun m!1171395 () Bool)

(assert (=> d!140179 m!1171395))

(declare-fun m!1171397 () Bool)

(assert (=> b!1274917 m!1171397))

(assert (=> b!1274917 m!1171397))

(declare-fun m!1171399 () Bool)

(assert (=> b!1274917 m!1171399))

(declare-fun m!1171401 () Bool)

(assert (=> b!1274918 m!1171401))

(assert (=> b!1274831 d!140179))

(declare-fun d!140191 () Bool)

(declare-fun res!847557 () Bool)

(declare-fun e!727709 () Bool)

(assert (=> d!140191 (=> res!847557 e!727709)))

(assert (=> d!140191 (= res!847557 (or (is-Nil!28763 l!595) (is-Nil!28763 (t!42306 l!595))))))

(assert (=> d!140191 (= (isStrictlySorted!857 l!595) e!727709)))

(declare-fun b!1274924 () Bool)

(declare-fun e!727710 () Bool)

(assert (=> b!1274924 (= e!727709 e!727710)))

(declare-fun res!847558 () Bool)

(assert (=> b!1274924 (=> (not res!847558) (not e!727710))))

(assert (=> b!1274924 (= res!847558 (bvslt (_1!10806 (h!29971 l!595)) (_1!10806 (h!29971 (t!42306 l!595)))))))

(declare-fun b!1274925 () Bool)

(assert (=> b!1274925 (= e!727710 (isStrictlySorted!857 (t!42306 l!595)))))

(assert (= (and d!140191 (not res!847557)) b!1274924))

(assert (= (and b!1274924 res!847558) b!1274925))

(assert (=> b!1274925 m!1171395))

(assert (=> start!107898 d!140191))

(declare-fun b!1274934 () Bool)

(declare-fun e!727715 () Bool)

(declare-fun tp!98072 () Bool)

(assert (=> b!1274934 (= e!727715 (and tp_is_empty!33215 tp!98072))))

(assert (=> b!1274833 (= tp!98064 e!727715)))

(assert (= (and b!1274833 (is-Cons!28762 (t!42306 l!595))) b!1274934))

(push 1)

(assert (not b!1274917))

(assert (not b!1274925))

(assert (not b!1274845))

(assert (not d!140179))

(assert (not b!1274934))

(assert (not b!1274861))

(assert tp_is_empty!33215)

(assert (not b!1274918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140221 () Bool)

(declare-fun res!847581 () Bool)

(declare-fun e!727745 () Bool)

(assert (=> d!140221 (=> res!847581 e!727745)))

(assert (=> d!140221 (= res!847581 (or (is-Nil!28763 (t!42306 lt!575246)) (is-Nil!28763 (t!42306 (t!42306 lt!575246)))))))

(assert (=> d!140221 (= (isStrictlySorted!857 (t!42306 lt!575246)) e!727745)))

(declare-fun b!1274968 () Bool)

(declare-fun e!727746 () Bool)

(assert (=> b!1274968 (= e!727745 e!727746)))

(declare-fun res!847582 () Bool)

(assert (=> b!1274968 (=> (not res!847582) (not e!727746))))

(assert (=> b!1274968 (= res!847582 (bvslt (_1!10806 (h!29971 (t!42306 lt!575246))) (_1!10806 (h!29971 (t!42306 (t!42306 lt!575246))))))))

(declare-fun b!1274969 () Bool)

(assert (=> b!1274969 (= e!727746 (isStrictlySorted!857 (t!42306 (t!42306 lt!575246))))))

(assert (= (and d!140221 (not res!847581)) b!1274968))

(assert (= (and b!1274968 res!847582) b!1274969))

(declare-fun m!1171447 () Bool)

(assert (=> b!1274969 m!1171447))

(assert (=> b!1274861 d!140221))

(declare-fun d!140223 () Bool)

(declare-fun res!847583 () Bool)

(declare-fun e!727747 () Bool)

(assert (=> d!140223 (=> res!847583 e!727747)))

(assert (=> d!140223 (= res!847583 (and (is-Cons!28762 lt!575254) (= (_1!10806 (h!29971 lt!575254)) key!173)))))

(assert (=> d!140223 (= (containsKey!703 lt!575254 key!173) e!727747)))

(declare-fun b!1274970 () Bool)

(declare-fun e!727748 () Bool)

(assert (=> b!1274970 (= e!727747 e!727748)))

(declare-fun res!847584 () Bool)

(assert (=> b!1274970 (=> (not res!847584) (not e!727748))))

(assert (=> b!1274970 (= res!847584 (and (or (not (is-Cons!28762 lt!575254)) (bvsle (_1!10806 (h!29971 lt!575254)) key!173)) (is-Cons!28762 lt!575254) (bvslt (_1!10806 (h!29971 lt!575254)) key!173)))))

(declare-fun b!1274971 () Bool)

(assert (=> b!1274971 (= e!727748 (containsKey!703 (t!42306 lt!575254) key!173))))

(assert (= (and d!140223 (not res!847583)) b!1274970))

(assert (= (and b!1274970 res!847584) b!1274971))

(declare-fun m!1171449 () Bool)

(assert (=> b!1274971 m!1171449))

(assert (=> b!1274918 d!140223))

(declare-fun d!140225 () Bool)

(declare-fun res!847585 () Bool)

(declare-fun e!727749 () Bool)

(assert (=> d!140225 (=> res!847585 e!727749)))

(assert (=> d!140225 (= res!847585 (or (is-Nil!28763 (t!42306 l!595)) (is-Nil!28763 (t!42306 (t!42306 l!595)))))))

(assert (=> d!140225 (= (isStrictlySorted!857 (t!42306 l!595)) e!727749)))

(declare-fun b!1274972 () Bool)

(declare-fun e!727750 () Bool)

(assert (=> b!1274972 (= e!727749 e!727750)))

(declare-fun res!847586 () Bool)

(assert (=> b!1274972 (=> (not res!847586) (not e!727750))))

(assert (=> b!1274972 (= res!847586 (bvslt (_1!10806 (h!29971 (t!42306 l!595))) (_1!10806 (h!29971 (t!42306 (t!42306 l!595))))))))

(declare-fun b!1274973 () Bool)

(assert (=> b!1274973 (= e!727750 (isStrictlySorted!857 (t!42306 (t!42306 l!595))))))

(assert (= (and d!140225 (not res!847585)) b!1274972))

(assert (= (and b!1274972 res!847586) b!1274973))

(declare-fun m!1171451 () Bool)

(assert (=> b!1274973 m!1171451))

(assert (=> b!1274925 d!140225))

(declare-fun d!140227 () Bool)

(declare-fun res!847587 () Bool)

(declare-fun e!727751 () Bool)

(assert (=> d!140227 (=> res!847587 e!727751)))

(assert (=> d!140227 (= res!847587 (and (is-Cons!28762 (t!42306 lt!575246)) (= (_1!10806 (h!29971 (t!42306 lt!575246))) key!173)))))

(assert (=> d!140227 (= (containsKey!703 (t!42306 lt!575246) key!173) e!727751)))

(declare-fun b!1274974 () Bool)

(declare-fun e!727752 () Bool)

(assert (=> b!1274974 (= e!727751 e!727752)))

(declare-fun res!847588 () Bool)

(assert (=> b!1274974 (=> (not res!847588) (not e!727752))))

(assert (=> b!1274974 (= res!847588 (and (or (not (is-Cons!28762 (t!42306 lt!575246))) (bvsle (_1!10806 (h!29971 (t!42306 lt!575246))) key!173)) (is-Cons!28762 (t!42306 lt!575246)) (bvslt (_1!10806 (h!29971 (t!42306 lt!575246))) key!173)))))

(declare-fun b!1274975 () Bool)

(assert (=> b!1274975 (= e!727752 (containsKey!703 (t!42306 (t!42306 lt!575246)) key!173))))

(assert (= (and d!140227 (not res!847587)) b!1274974))

(assert (= (and b!1274974 res!847588) b!1274975))

(declare-fun m!1171453 () Bool)

(assert (=> b!1274975 m!1171453))

(assert (=> b!1274845 d!140227))

(declare-fun d!140229 () Bool)

(declare-fun res!847589 () Bool)

(declare-fun e!727753 () Bool)

(assert (=> d!140229 (=> res!847589 e!727753)))

(assert (=> d!140229 (= res!847589 (or (is-Nil!28763 lt!575254) (is-Nil!28763 (t!42306 lt!575254))))))

(assert (=> d!140229 (= (isStrictlySorted!857 lt!575254) e!727753)))

(declare-fun b!1274976 () Bool)

(declare-fun e!727754 () Bool)

(assert (=> b!1274976 (= e!727753 e!727754)))

(declare-fun res!847590 () Bool)

(assert (=> b!1274976 (=> (not res!847590) (not e!727754))))

(assert (=> b!1274976 (= res!847590 (bvslt (_1!10806 (h!29971 lt!575254)) (_1!10806 (h!29971 (t!42306 lt!575254)))))))

(declare-fun b!1274977 () Bool)

(assert (=> b!1274977 (= e!727754 (isStrictlySorted!857 (t!42306 lt!575254)))))

(assert (= (and d!140229 (not res!847589)) b!1274976))

(assert (= (and b!1274976 res!847590) b!1274977))

(declare-fun m!1171455 () Bool)

(assert (=> b!1274977 m!1171455))

(assert (=> d!140179 d!140229))

(assert (=> d!140179 d!140225))

(declare-fun d!140231 () Bool)

(assert (=> d!140231 (= ($colon$colon!668 (removeStrictlySorted!185 (t!42306 (t!42306 l!595)) key!173) (h!29971 (t!42306 l!595))) (Cons!28762 (h!29971 (t!42306 l!595)) (removeStrictlySorted!185 (t!42306 (t!42306 l!595)) key!173)))))

(assert (=> b!1274917 d!140231))

(declare-fun d!140233 () Bool)

(declare-fun e!727757 () Bool)

(assert (=> d!140233 e!727757))

(declare-fun res!847591 () Bool)

(assert (=> d!140233 (=> (not res!847591) (not e!727757))))

(declare-fun lt!575258 () List!28766)

(assert (=> d!140233 (= res!847591 (isStrictlySorted!857 lt!575258))))

(declare-fun e!727756 () List!28766)

(assert (=> d!140233 (= lt!575258 e!727756)))

(declare-fun c!123857 () Bool)

(assert (=> d!140233 (= c!123857 (and (is-Cons!28762 (t!42306 (t!42306 l!595))) (= (_1!10806 (h!29971 (t!42306 (t!42306 l!595)))) key!173)))))

(assert (=> d!140233 (isStrictlySorted!857 (t!42306 (t!42306 l!595)))))

(assert (=> d!140233 (= (removeStrictlySorted!185 (t!42306 (t!42306 l!595)) key!173) lt!575258)))

(declare-fun b!1274978 () Bool)

(declare-fun e!727755 () List!28766)

(assert (=> b!1274978 (= e!727755 Nil!28763)))

(declare-fun b!1274979 () Bool)

(assert (=> b!1274979 (= e!727756 (t!42306 (t!42306 (t!42306 l!595))))))

(declare-fun b!1274980 () Bool)

(assert (=> b!1274980 (= e!727756 e!727755)))

(declare-fun c!123858 () Bool)

(assert (=> b!1274980 (= c!123858 (and (is-Cons!28762 (t!42306 (t!42306 l!595))) (not (= (_1!10806 (h!29971 (t!42306 (t!42306 l!595)))) key!173))))))

(declare-fun b!1274981 () Bool)

(assert (=> b!1274981 (= e!727755 ($colon$colon!668 (removeStrictlySorted!185 (t!42306 (t!42306 (t!42306 l!595))) key!173) (h!29971 (t!42306 (t!42306 l!595)))))))

(declare-fun b!1274982 () Bool)

(assert (=> b!1274982 (= e!727757 (not (containsKey!703 lt!575258 key!173)))))

(assert (= (and d!140233 c!123857) b!1274979))

(assert (= (and d!140233 (not c!123857)) b!1274980))

(assert (= (and b!1274980 c!123858) b!1274981))

(assert (= (and b!1274980 (not c!123858)) b!1274978))

(assert (= (and d!140233 res!847591) b!1274982))

(declare-fun m!1171457 () Bool)

(assert (=> d!140233 m!1171457))

(assert (=> d!140233 m!1171451))

(declare-fun m!1171459 () Bool)

(assert (=> b!1274981 m!1171459))

(assert (=> b!1274981 m!1171459))

(declare-fun m!1171461 () Bool)

(assert (=> b!1274981 m!1171461))

(declare-fun m!1171463 () Bool)

(assert (=> b!1274982 m!1171463))

(assert (=> b!1274917 d!140233))

(declare-fun b!1274983 () Bool)

(declare-fun e!727758 () Bool)

(declare-fun tp!98076 () Bool)

(assert (=> b!1274983 (= e!727758 (and tp_is_empty!33215 tp!98076))))

(assert (=> b!1274934 (= tp!98072 e!727758)))

(assert (= (and b!1274934 (is-Cons!28762 (t!42306 (t!42306 l!595)))) b!1274983))

(push 1)

(assert (not b!1274977))

(assert (not b!1274973))

(assert (not b!1274969))

(assert tp_is_empty!33215)

(assert (not b!1274981))

(assert (not b!1274982))

(assert (not b!1274975))

(assert (not d!140233))

(assert (not b!1274983))

(assert (not b!1274971))

(check-sat)

