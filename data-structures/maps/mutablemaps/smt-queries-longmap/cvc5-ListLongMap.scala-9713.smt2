; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114926 () Bool)

(assert start!114926)

(declare-fun b!1361953 () Bool)

(declare-datatypes ((Unit!44849 0))(
  ( (Unit!44850) )
))
(declare-fun e!772605 () Unit!44849)

(declare-fun lt!600299 () Unit!44849)

(assert (=> b!1361953 (= e!772605 lt!600299)))

(declare-fun lt!600300 () Unit!44849)

(declare-datatypes ((List!31943 0))(
  ( (Nil!31940) (Cons!31939 (h!33148 (_ BitVec 64)) (t!46635 List!31943)) )
))
(declare-fun acc!759 () List!31943)

(declare-fun lemmaListSubSeqRefl!0 (List!31943) Unit!44849)

(assert (=> b!1361953 (= lt!600300 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!899 (List!31943 List!31943) Bool)

(assert (=> b!1361953 (subseq!899 acc!759 acc!759)))

(declare-datatypes ((array!92584 0))(
  ( (array!92585 (arr!44722 (Array (_ BitVec 32) (_ BitVec 64))) (size!45273 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92584)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92584 List!31943 List!31943 (_ BitVec 32)) Unit!44849)

(declare-fun $colon$colon!904 (List!31943 (_ BitVec 64)) List!31943)

(assert (=> b!1361953 (= lt!600299 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!904 acc!759 (select (arr!44722 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92584 (_ BitVec 32) List!31943) Bool)

(assert (=> b!1361953 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361954 () Bool)

(declare-fun e!772607 () Bool)

(declare-fun e!772606 () Bool)

(assert (=> b!1361954 (= e!772607 e!772606)))

(declare-fun res!906129 () Bool)

(assert (=> b!1361954 (=> (not res!906129) (not e!772606))))

(declare-fun lt!600298 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361954 (= res!906129 (and (not (= from!3120 i!1404)) lt!600298))))

(declare-fun lt!600297 () Unit!44849)

(assert (=> b!1361954 (= lt!600297 e!772605)))

(declare-fun c!127357 () Bool)

(assert (=> b!1361954 (= c!127357 lt!600298)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361954 (= lt!600298 (validKeyInArray!0 (select (arr!44722 a!3742) from!3120)))))

(declare-fun b!1361955 () Bool)

(declare-fun res!906128 () Bool)

(declare-fun e!772608 () Bool)

(assert (=> b!1361955 (=> (not res!906128) (not e!772608))))

(declare-fun lt!600302 () List!31943)

(declare-fun contains!9508 (List!31943 (_ BitVec 64)) Bool)

(assert (=> b!1361955 (= res!906128 (not (contains!9508 lt!600302 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361956 () Bool)

(declare-fun res!906135 () Bool)

(assert (=> b!1361956 (=> (not res!906135) (not e!772607))))

(assert (=> b!1361956 (= res!906135 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45273 a!3742)))))

(declare-fun b!1361957 () Bool)

(declare-fun res!906136 () Bool)

(assert (=> b!1361957 (=> (not res!906136) (not e!772607))))

(assert (=> b!1361957 (= res!906136 (not (contains!9508 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361958 () Bool)

(declare-fun Unit!44851 () Unit!44849)

(assert (=> b!1361958 (= e!772605 Unit!44851)))

(declare-fun b!1361959 () Bool)

(declare-fun res!906130 () Bool)

(assert (=> b!1361959 (=> (not res!906130) (not e!772608))))

(declare-fun noDuplicate!2387 (List!31943) Bool)

(assert (=> b!1361959 (= res!906130 (noDuplicate!2387 lt!600302))))

(declare-fun b!1361960 () Bool)

(declare-fun res!906137 () Bool)

(assert (=> b!1361960 (=> (not res!906137) (not e!772608))))

(assert (=> b!1361960 (= res!906137 (not (contains!9508 lt!600302 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361961 () Bool)

(declare-fun res!906127 () Bool)

(assert (=> b!1361961 (=> (not res!906127) (not e!772607))))

(assert (=> b!1361961 (= res!906127 (noDuplicate!2387 acc!759))))

(declare-fun b!1361963 () Bool)

(declare-fun res!906126 () Bool)

(assert (=> b!1361963 (=> (not res!906126) (not e!772608))))

(assert (=> b!1361963 (= res!906126 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600302))))

(declare-fun b!1361964 () Bool)

(declare-fun res!906134 () Bool)

(assert (=> b!1361964 (=> (not res!906134) (not e!772607))))

(assert (=> b!1361964 (= res!906134 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31940))))

(declare-fun b!1361965 () Bool)

(declare-fun res!906132 () Bool)

(assert (=> b!1361965 (=> (not res!906132) (not e!772607))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1361965 (= res!906132 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361966 () Bool)

(declare-fun res!906133 () Bool)

(assert (=> b!1361966 (=> (not res!906133) (not e!772607))))

(assert (=> b!1361966 (= res!906133 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45273 a!3742))))))

(declare-fun b!1361967 () Bool)

(declare-fun res!906138 () Bool)

(assert (=> b!1361967 (=> (not res!906138) (not e!772607))))

(assert (=> b!1361967 (= res!906138 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361968 () Bool)

(declare-fun res!906125 () Bool)

(assert (=> b!1361968 (=> (not res!906125) (not e!772607))))

(assert (=> b!1361968 (= res!906125 (not (contains!9508 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361969 () Bool)

(assert (=> b!1361969 (= e!772606 e!772608)))

(declare-fun res!906124 () Bool)

(assert (=> b!1361969 (=> (not res!906124) (not e!772608))))

(assert (=> b!1361969 (= res!906124 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1361969 (= lt!600302 ($colon$colon!904 acc!759 (select (arr!44722 a!3742) from!3120)))))

(declare-fun b!1361962 () Bool)

(assert (=> b!1361962 (= e!772608 (not true))))

(assert (=> b!1361962 (arrayNoDuplicates!0 (array!92585 (store (arr!44722 a!3742) i!1404 l!3587) (size!45273 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!600302)))

(declare-fun lt!600301 () Unit!44849)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92584 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31943) Unit!44849)

(assert (=> b!1361962 (= lt!600301 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600302))))

(declare-fun res!906131 () Bool)

(assert (=> start!114926 (=> (not res!906131) (not e!772607))))

(assert (=> start!114926 (= res!906131 (and (bvslt (size!45273 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45273 a!3742))))))

(assert (=> start!114926 e!772607))

(assert (=> start!114926 true))

(declare-fun array_inv!33667 (array!92584) Bool)

(assert (=> start!114926 (array_inv!33667 a!3742)))

(assert (= (and start!114926 res!906131) b!1361961))

(assert (= (and b!1361961 res!906127) b!1361957))

(assert (= (and b!1361957 res!906136) b!1361968))

(assert (= (and b!1361968 res!906125) b!1361964))

(assert (= (and b!1361964 res!906134) b!1361967))

(assert (= (and b!1361967 res!906138) b!1361966))

(assert (= (and b!1361966 res!906133) b!1361965))

(assert (= (and b!1361965 res!906132) b!1361956))

(assert (= (and b!1361956 res!906135) b!1361954))

(assert (= (and b!1361954 c!127357) b!1361953))

(assert (= (and b!1361954 (not c!127357)) b!1361958))

(assert (= (and b!1361954 res!906129) b!1361969))

(assert (= (and b!1361969 res!906124) b!1361959))

(assert (= (and b!1361959 res!906130) b!1361960))

(assert (= (and b!1361960 res!906137) b!1361955))

(assert (= (and b!1361955 res!906128) b!1361963))

(assert (= (and b!1361963 res!906126) b!1361962))

(declare-fun m!1246969 () Bool)

(assert (=> b!1361957 m!1246969))

(declare-fun m!1246971 () Bool)

(assert (=> b!1361962 m!1246971))

(declare-fun m!1246973 () Bool)

(assert (=> b!1361962 m!1246973))

(declare-fun m!1246975 () Bool)

(assert (=> b!1361962 m!1246975))

(declare-fun m!1246977 () Bool)

(assert (=> start!114926 m!1246977))

(declare-fun m!1246979 () Bool)

(assert (=> b!1361959 m!1246979))

(declare-fun m!1246981 () Bool)

(assert (=> b!1361955 m!1246981))

(declare-fun m!1246983 () Bool)

(assert (=> b!1361953 m!1246983))

(declare-fun m!1246985 () Bool)

(assert (=> b!1361953 m!1246985))

(declare-fun m!1246987 () Bool)

(assert (=> b!1361953 m!1246987))

(declare-fun m!1246989 () Bool)

(assert (=> b!1361953 m!1246989))

(declare-fun m!1246991 () Bool)

(assert (=> b!1361953 m!1246991))

(assert (=> b!1361953 m!1246985))

(assert (=> b!1361953 m!1246987))

(declare-fun m!1246993 () Bool)

(assert (=> b!1361953 m!1246993))

(declare-fun m!1246995 () Bool)

(assert (=> b!1361965 m!1246995))

(assert (=> b!1361969 m!1246985))

(assert (=> b!1361969 m!1246985))

(assert (=> b!1361969 m!1246987))

(declare-fun m!1246997 () Bool)

(assert (=> b!1361960 m!1246997))

(declare-fun m!1246999 () Bool)

(assert (=> b!1361967 m!1246999))

(declare-fun m!1247001 () Bool)

(assert (=> b!1361963 m!1247001))

(assert (=> b!1361954 m!1246985))

(assert (=> b!1361954 m!1246985))

(declare-fun m!1247003 () Bool)

(assert (=> b!1361954 m!1247003))

(declare-fun m!1247005 () Bool)

(assert (=> b!1361961 m!1247005))

(declare-fun m!1247007 () Bool)

(assert (=> b!1361964 m!1247007))

(declare-fun m!1247009 () Bool)

(assert (=> b!1361968 m!1247009))

(push 1)

