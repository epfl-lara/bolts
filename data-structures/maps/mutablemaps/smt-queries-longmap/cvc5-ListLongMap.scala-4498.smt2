; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62472 () Bool)

(assert start!62472)

(declare-fun b!701929 () Bool)

(declare-fun res!465928 () Bool)

(declare-fun e!397362 () Bool)

(assert (=> b!701929 (=> (not res!465928) (not e!397362))))

(declare-datatypes ((array!40107 0))(
  ( (array!40108 (arr!19206 (Array (_ BitVec 32) (_ BitVec 64))) (size!19589 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40107)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!701929 (= res!465928 (validKeyInArray!0 (select (arr!19206 a!3591) from!2969)))))

(declare-fun res!465941 () Bool)

(assert (=> start!62472 (=> (not res!465941) (not e!397362))))

(assert (=> start!62472 (= res!465941 (and (bvslt (size!19589 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19589 a!3591))))))

(assert (=> start!62472 e!397362))

(assert (=> start!62472 true))

(declare-fun array_inv!14980 (array!40107) Bool)

(assert (=> start!62472 (array_inv!14980 a!3591)))

(declare-fun b!701930 () Bool)

(declare-fun res!465930 () Bool)

(declare-fun e!397361 () Bool)

(assert (=> b!701930 (=> (not res!465930) (not e!397361))))

(declare-datatypes ((List!13300 0))(
  ( (Nil!13297) (Cons!13296 (h!14341 (_ BitVec 64)) (t!19590 List!13300)) )
))
(declare-fun lt!317612 () List!13300)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3843 (List!13300 (_ BitVec 64)) Bool)

(assert (=> b!701930 (= res!465930 (not (contains!3843 lt!317612 k!2824)))))

(declare-fun b!701931 () Bool)

(declare-fun res!465920 () Bool)

(assert (=> b!701931 (=> (not res!465920) (not e!397361))))

(declare-fun lt!317611 () List!13300)

(declare-fun -!252 (List!13300 (_ BitVec 64)) List!13300)

(assert (=> b!701931 (= res!465920 (= (-!252 lt!317611 k!2824) lt!317612))))

(declare-fun b!701932 () Bool)

(declare-fun res!465918 () Bool)

(assert (=> b!701932 (=> (not res!465918) (not e!397361))))

(assert (=> b!701932 (= res!465918 (contains!3843 lt!317611 k!2824))))

(declare-fun b!701933 () Bool)

(declare-fun res!465916 () Bool)

(assert (=> b!701933 (=> (not res!465916) (not e!397361))))

(declare-fun arrayContainsKey!0 (array!40107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!701933 (= res!465916 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!701934 () Bool)

(declare-fun res!465940 () Bool)

(assert (=> b!701934 (=> (not res!465940) (not e!397362))))

(assert (=> b!701934 (= res!465940 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19589 a!3591)))))

(declare-fun b!701935 () Bool)

(declare-fun res!465922 () Bool)

(assert (=> b!701935 (=> (not res!465922) (not e!397362))))

(declare-fun newAcc!49 () List!13300)

(assert (=> b!701935 (= res!465922 (not (contains!3843 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701936 () Bool)

(declare-fun res!465914 () Bool)

(assert (=> b!701936 (=> (not res!465914) (not e!397361))))

(assert (=> b!701936 (= res!465914 (not (contains!3843 lt!317611 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701937 () Bool)

(declare-fun res!465931 () Bool)

(assert (=> b!701937 (=> (not res!465931) (not e!397362))))

(declare-fun acc!652 () List!13300)

(assert (=> b!701937 (= res!465931 (not (contains!3843 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701938 () Bool)

(declare-fun res!465919 () Bool)

(assert (=> b!701938 (=> (not res!465919) (not e!397362))))

(declare-fun subseq!287 (List!13300 List!13300) Bool)

(assert (=> b!701938 (= res!465919 (subseq!287 acc!652 newAcc!49))))

(declare-fun b!701939 () Bool)

(declare-fun res!465921 () Bool)

(assert (=> b!701939 (=> (not res!465921) (not e!397362))))

(assert (=> b!701939 (= res!465921 (validKeyInArray!0 k!2824))))

(declare-fun b!701940 () Bool)

(assert (=> b!701940 (= e!397361 (not (bvsle from!2969 (size!19589 a!3591))))))

(declare-fun arrayNoDuplicates!0 (array!40107 (_ BitVec 32) List!13300) Bool)

(assert (=> b!701940 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317611)))

(declare-datatypes ((Unit!24562 0))(
  ( (Unit!24563) )
))
(declare-fun lt!317613 () Unit!24562)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40107 (_ BitVec 64) (_ BitVec 32) List!13300 List!13300) Unit!24562)

(assert (=> b!701940 (= lt!317613 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317612 lt!317611))))

(declare-fun b!701941 () Bool)

(declare-fun res!465929 () Bool)

(assert (=> b!701941 (=> (not res!465929) (not e!397362))))

(assert (=> b!701941 (= res!465929 (= (-!252 newAcc!49 k!2824) acc!652))))

(declare-fun b!701942 () Bool)

(declare-fun res!465939 () Bool)

(assert (=> b!701942 (=> (not res!465939) (not e!397361))))

(assert (=> b!701942 (= res!465939 (subseq!287 lt!317612 lt!317611))))

(declare-fun b!701943 () Bool)

(declare-fun res!465926 () Bool)

(assert (=> b!701943 (=> (not res!465926) (not e!397362))))

(assert (=> b!701943 (= res!465926 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!701944 () Bool)

(declare-fun res!465917 () Bool)

(assert (=> b!701944 (=> (not res!465917) (not e!397362))))

(assert (=> b!701944 (= res!465917 (not (contains!3843 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701945 () Bool)

(declare-fun res!465935 () Bool)

(assert (=> b!701945 (=> (not res!465935) (not e!397362))))

(assert (=> b!701945 (= res!465935 (contains!3843 newAcc!49 k!2824))))

(declare-fun b!701946 () Bool)

(declare-fun res!465927 () Bool)

(assert (=> b!701946 (=> (not res!465927) (not e!397361))))

(assert (=> b!701946 (= res!465927 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317612))))

(declare-fun b!701947 () Bool)

(declare-fun res!465933 () Bool)

(assert (=> b!701947 (=> (not res!465933) (not e!397361))))

(assert (=> b!701947 (= res!465933 (not (contains!3843 lt!317611 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701948 () Bool)

(declare-fun res!465925 () Bool)

(assert (=> b!701948 (=> (not res!465925) (not e!397362))))

(declare-fun noDuplicate!1090 (List!13300) Bool)

(assert (=> b!701948 (= res!465925 (noDuplicate!1090 newAcc!49))))

(declare-fun b!701949 () Bool)

(declare-fun res!465938 () Bool)

(assert (=> b!701949 (=> (not res!465938) (not e!397361))))

(assert (=> b!701949 (= res!465938 (noDuplicate!1090 lt!317611))))

(declare-fun b!701950 () Bool)

(declare-fun res!465932 () Bool)

(assert (=> b!701950 (=> (not res!465932) (not e!397362))))

(assert (=> b!701950 (= res!465932 (noDuplicate!1090 acc!652))))

(declare-fun b!701951 () Bool)

(declare-fun res!465924 () Bool)

(assert (=> b!701951 (=> (not res!465924) (not e!397362))))

(assert (=> b!701951 (= res!465924 (not (contains!3843 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701952 () Bool)

(assert (=> b!701952 (= e!397362 e!397361)))

(declare-fun res!465915 () Bool)

(assert (=> b!701952 (=> (not res!465915) (not e!397361))))

(assert (=> b!701952 (= res!465915 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!484 (List!13300 (_ BitVec 64)) List!13300)

(assert (=> b!701952 (= lt!317611 ($colon$colon!484 newAcc!49 (select (arr!19206 a!3591) from!2969)))))

(assert (=> b!701952 (= lt!317612 ($colon$colon!484 acc!652 (select (arr!19206 a!3591) from!2969)))))

(declare-fun b!701953 () Bool)

(declare-fun res!465913 () Bool)

(assert (=> b!701953 (=> (not res!465913) (not e!397361))))

(assert (=> b!701953 (= res!465913 (not (contains!3843 lt!317612 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701954 () Bool)

(declare-fun res!465937 () Bool)

(assert (=> b!701954 (=> (not res!465937) (not e!397361))))

(assert (=> b!701954 (= res!465937 (noDuplicate!1090 lt!317612))))

(declare-fun b!701955 () Bool)

(declare-fun res!465923 () Bool)

(assert (=> b!701955 (=> (not res!465923) (not e!397362))))

(assert (=> b!701955 (= res!465923 (not (contains!3843 acc!652 k!2824)))))

(declare-fun b!701956 () Bool)

(declare-fun res!465936 () Bool)

(assert (=> b!701956 (=> (not res!465936) (not e!397362))))

(assert (=> b!701956 (= res!465936 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!701957 () Bool)

(declare-fun res!465934 () Bool)

(assert (=> b!701957 (=> (not res!465934) (not e!397361))))

(assert (=> b!701957 (= res!465934 (not (contains!3843 lt!317612 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62472 res!465941) b!701950))

(assert (= (and b!701950 res!465932) b!701948))

(assert (= (and b!701948 res!465925) b!701944))

(assert (= (and b!701944 res!465917) b!701937))

(assert (= (and b!701937 res!465931) b!701943))

(assert (= (and b!701943 res!465926) b!701955))

(assert (= (and b!701955 res!465923) b!701939))

(assert (= (and b!701939 res!465921) b!701956))

(assert (= (and b!701956 res!465936) b!701938))

(assert (= (and b!701938 res!465919) b!701945))

(assert (= (and b!701945 res!465935) b!701941))

(assert (= (and b!701941 res!465929) b!701935))

(assert (= (and b!701935 res!465922) b!701951))

(assert (= (and b!701951 res!465924) b!701934))

(assert (= (and b!701934 res!465940) b!701929))

(assert (= (and b!701929 res!465928) b!701952))

(assert (= (and b!701952 res!465915) b!701954))

(assert (= (and b!701954 res!465937) b!701949))

(assert (= (and b!701949 res!465938) b!701957))

(assert (= (and b!701957 res!465934) b!701953))

(assert (= (and b!701953 res!465913) b!701933))

(assert (= (and b!701933 res!465916) b!701930))

(assert (= (and b!701930 res!465930) b!701946))

(assert (= (and b!701946 res!465927) b!701942))

(assert (= (and b!701942 res!465939) b!701932))

(assert (= (and b!701932 res!465918) b!701931))

(assert (= (and b!701931 res!465920) b!701947))

(assert (= (and b!701947 res!465933) b!701936))

(assert (= (and b!701936 res!465914) b!701940))

(declare-fun m!661191 () Bool)

(assert (=> b!701952 m!661191))

(assert (=> b!701952 m!661191))

(declare-fun m!661193 () Bool)

(assert (=> b!701952 m!661193))

(assert (=> b!701952 m!661191))

(declare-fun m!661195 () Bool)

(assert (=> b!701952 m!661195))

(declare-fun m!661197 () Bool)

(assert (=> b!701949 m!661197))

(declare-fun m!661199 () Bool)

(assert (=> b!701954 m!661199))

(declare-fun m!661201 () Bool)

(assert (=> b!701950 m!661201))

(declare-fun m!661203 () Bool)

(assert (=> b!701944 m!661203))

(declare-fun m!661205 () Bool)

(assert (=> b!701955 m!661205))

(declare-fun m!661207 () Bool)

(assert (=> b!701938 m!661207))

(declare-fun m!661209 () Bool)

(assert (=> b!701948 m!661209))

(declare-fun m!661211 () Bool)

(assert (=> b!701932 m!661211))

(declare-fun m!661213 () Bool)

(assert (=> b!701946 m!661213))

(declare-fun m!661215 () Bool)

(assert (=> b!701930 m!661215))

(declare-fun m!661217 () Bool)

(assert (=> b!701937 m!661217))

(declare-fun m!661219 () Bool)

(assert (=> b!701936 m!661219))

(declare-fun m!661221 () Bool)

(assert (=> b!701931 m!661221))

(declare-fun m!661223 () Bool)

(assert (=> b!701943 m!661223))

(declare-fun m!661225 () Bool)

(assert (=> b!701956 m!661225))

(declare-fun m!661227 () Bool)

(assert (=> b!701942 m!661227))

(declare-fun m!661229 () Bool)

(assert (=> b!701941 m!661229))

(declare-fun m!661231 () Bool)

(assert (=> b!701933 m!661231))

(declare-fun m!661233 () Bool)

(assert (=> b!701957 m!661233))

(assert (=> b!701929 m!661191))

(assert (=> b!701929 m!661191))

(declare-fun m!661235 () Bool)

(assert (=> b!701929 m!661235))

(declare-fun m!661237 () Bool)

(assert (=> b!701945 m!661237))

(declare-fun m!661239 () Bool)

(assert (=> b!701935 m!661239))

(declare-fun m!661241 () Bool)

(assert (=> b!701947 m!661241))

(declare-fun m!661243 () Bool)

(assert (=> b!701940 m!661243))

(declare-fun m!661245 () Bool)

(assert (=> b!701940 m!661245))

(declare-fun m!661247 () Bool)

(assert (=> start!62472 m!661247))

(declare-fun m!661249 () Bool)

(assert (=> b!701953 m!661249))

(declare-fun m!661251 () Bool)

(assert (=> b!701951 m!661251))

(declare-fun m!661253 () Bool)

(assert (=> b!701939 m!661253))

(push 1)

