; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49842 () Bool)

(assert start!49842)

(declare-fun b!547075 () Bool)

(declare-fun res!340870 () Bool)

(declare-fun e!316110 () Bool)

(assert (=> b!547075 (=> (not res!340870) (not e!316110))))

(declare-datatypes ((array!34501 0))(
  ( (array!34502 (arr!16571 (Array (_ BitVec 32) (_ BitVec 64))) (size!16935 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34501)

(assert (=> b!547075 (= res!340870 (and (bvsle #b00000000000000000000000000000000 (size!16935 a!3118)) (bvslt (size!16935 a!3118) #b01111111111111111111111111111111)))))

(declare-fun b!547076 () Bool)

(declare-fun res!340873 () Bool)

(assert (=> b!547076 (=> (not res!340873) (not e!316110))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34501 (_ BitVec 32)) Bool)

(assert (=> b!547076 (= res!340873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547077 () Bool)

(declare-fun res!340871 () Bool)

(declare-fun e!316111 () Bool)

(assert (=> b!547077 (=> (not res!340871) (not e!316111))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547077 (= res!340871 (validKeyInArray!0 k!1914))))

(declare-fun b!547078 () Bool)

(declare-fun res!340872 () Bool)

(assert (=> b!547078 (=> (not res!340872) (not e!316111))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!547078 (= res!340872 (validKeyInArray!0 (select (arr!16571 a!3118) j!142)))))

(declare-fun b!547079 () Bool)

(declare-datatypes ((List!10704 0))(
  ( (Nil!10701) (Cons!10700 (h!11667 (_ BitVec 64)) (t!16940 List!10704)) )
))
(declare-fun noDuplicate!222 (List!10704) Bool)

(assert (=> b!547079 (= e!316110 (not (noDuplicate!222 Nil!10701)))))

(declare-fun b!547080 () Bool)

(assert (=> b!547080 (= e!316111 e!316110)))

(declare-fun res!340869 () Bool)

(assert (=> b!547080 (=> (not res!340869) (not e!316110))))

(declare-datatypes ((SeekEntryResult!5027 0))(
  ( (MissingZero!5027 (index!22335 (_ BitVec 32))) (Found!5027 (index!22336 (_ BitVec 32))) (Intermediate!5027 (undefined!5839 Bool) (index!22337 (_ BitVec 32)) (x!51306 (_ BitVec 32))) (Undefined!5027) (MissingVacant!5027 (index!22338 (_ BitVec 32))) )
))
(declare-fun lt!249443 () SeekEntryResult!5027)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547080 (= res!340869 (or (= lt!249443 (MissingZero!5027 i!1132)) (= lt!249443 (MissingVacant!5027 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34501 (_ BitVec 32)) SeekEntryResult!5027)

(assert (=> b!547080 (= lt!249443 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547081 () Bool)

(declare-fun res!340868 () Bool)

(assert (=> b!547081 (=> (not res!340868) (not e!316111))))

(assert (=> b!547081 (= res!340868 (and (= (size!16935 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16935 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16935 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547082 () Bool)

(declare-fun res!340874 () Bool)

(assert (=> b!547082 (=> (not res!340874) (not e!316111))))

(declare-fun arrayContainsKey!0 (array!34501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547082 (= res!340874 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!340867 () Bool)

(assert (=> start!49842 (=> (not res!340867) (not e!316111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49842 (= res!340867 (validMask!0 mask!3119))))

(assert (=> start!49842 e!316111))

(assert (=> start!49842 true))

(declare-fun array_inv!12345 (array!34501) Bool)

(assert (=> start!49842 (array_inv!12345 a!3118)))

(assert (= (and start!49842 res!340867) b!547081))

(assert (= (and b!547081 res!340868) b!547078))

(assert (= (and b!547078 res!340872) b!547077))

(assert (= (and b!547077 res!340871) b!547082))

(assert (= (and b!547082 res!340874) b!547080))

(assert (= (and b!547080 res!340869) b!547076))

(assert (= (and b!547076 res!340873) b!547075))

(assert (= (and b!547075 res!340870) b!547079))

(declare-fun m!524419 () Bool)

(assert (=> b!547076 m!524419))

(declare-fun m!524421 () Bool)

(assert (=> b!547078 m!524421))

(assert (=> b!547078 m!524421))

(declare-fun m!524423 () Bool)

(assert (=> b!547078 m!524423))

(declare-fun m!524425 () Bool)

(assert (=> b!547079 m!524425))

(declare-fun m!524427 () Bool)

(assert (=> b!547082 m!524427))

(declare-fun m!524429 () Bool)

(assert (=> start!49842 m!524429))

(declare-fun m!524431 () Bool)

(assert (=> start!49842 m!524431))

(declare-fun m!524433 () Bool)

(assert (=> b!547080 m!524433))

(declare-fun m!524435 () Bool)

(assert (=> b!547077 m!524435))

(push 1)

(assert (not start!49842))

(assert (not b!547079))

(assert (not b!547077))

(assert (not b!547080))

(assert (not b!547082))

(assert (not b!547078))

(assert (not b!547076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82335 () Bool)

(assert (=> d!82335 (= (validKeyInArray!0 (select (arr!16571 a!3118) j!142)) (and (not (= (select (arr!16571 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16571 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547078 d!82335))

(declare-fun d!82337 () Bool)

(assert (=> d!82337 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547077 d!82337))

(declare-fun d!82339 () Bool)

(declare-fun res!340879 () Bool)

(declare-fun e!316116 () Bool)

(assert (=> d!82339 (=> res!340879 e!316116)))

(assert (=> d!82339 (= res!340879 (= (select (arr!16571 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82339 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316116)))

(declare-fun b!547087 () Bool)

(declare-fun e!316117 () Bool)

(assert (=> b!547087 (= e!316116 e!316117)))

(declare-fun res!340880 () Bool)

(assert (=> b!547087 (=> (not res!340880) (not e!316117))))

(assert (=> b!547087 (= res!340880 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16935 a!3118)))))

(declare-fun b!547088 () Bool)

(assert (=> b!547088 (= e!316117 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82339 (not res!340879)) b!547087))

(assert (= (and b!547087 res!340880) b!547088))

(declare-fun m!524437 () Bool)

(assert (=> d!82339 m!524437))

(declare-fun m!524439 () Bool)

(assert (=> b!547088 m!524439))

(assert (=> b!547082 d!82339))

(declare-fun bm!32153 () Bool)

(declare-fun call!32156 () Bool)

(assert (=> bm!32153 (= call!32156 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!547116 () Bool)

(declare-fun e!316133 () Bool)

(assert (=> b!547116 (= e!316133 call!32156)))

(declare-fun b!547117 () Bool)

(declare-fun e!316135 () Bool)

(assert (=> b!547117 (= e!316135 call!32156)))

(declare-fun b!547118 () Bool)

(assert (=> b!547118 (= e!316133 e!316135)))

(declare-fun lt!249461 () (_ BitVec 64))

(assert (=> b!547118 (= lt!249461 (select (arr!16571 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16930 0))(
  ( (Unit!16931) )
))
(declare-fun lt!249460 () Unit!16930)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34501 (_ BitVec 64) (_ BitVec 32)) Unit!16930)

(assert (=> b!547118 (= lt!249460 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249461 #b00000000000000000000000000000000))))

(assert (=> b!547118 (arrayContainsKey!0 a!3118 lt!249461 #b00000000000000000000000000000000)))

(declare-fun lt!249459 () Unit!16930)

(assert (=> b!547118 (= lt!249459 lt!249460)))

(declare-fun res!340886 () Bool)

(assert (=> b!547118 (= res!340886 (= (seekEntryOrOpen!0 (select (arr!16571 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5027 #b00000000000000000000000000000000)))))

(assert (=> b!547118 (=> (not res!340886) (not e!316135))))

(declare-fun b!547115 () Bool)

(declare-fun e!316134 () Bool)

(assert (=> b!547115 (= e!316134 e!316133)))

(declare-fun c!63443 () Bool)

(assert (=> b!547115 (= c!63443 (validKeyInArray!0 (select (arr!16571 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82341 () Bool)

(declare-fun res!340885 () Bool)

(assert (=> d!82341 (=> res!340885 e!316134)))

(assert (=> d!82341 (= res!340885 (bvsge #b00000000000000000000000000000000 (size!16935 a!3118)))))

(assert (=> d!82341 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316134)))

(assert (= (and d!82341 (not res!340885)) b!547115))

(assert (= (and b!547115 c!63443) b!547118))

(assert (= (and b!547115 (not c!63443)) b!547116))

(assert (= (and b!547118 res!340886) b!547117))

(assert (= (or b!547117 b!547116) bm!32153))

(declare-fun m!524455 () Bool)

(assert (=> bm!32153 m!524455))

(assert (=> b!547118 m!524437))

(declare-fun m!524457 () Bool)

(assert (=> b!547118 m!524457))

(declare-fun m!524459 () Bool)

(assert (=> b!547118 m!524459))

(assert (=> b!547118 m!524437))

(declare-fun m!524461 () Bool)

(assert (=> b!547118 m!524461))

(assert (=> b!547115 m!524437))

(assert (=> b!547115 m!524437))

(declare-fun m!524463 () Bool)

(assert (=> b!547115 m!524463))

(assert (=> b!547076 d!82341))

(declare-fun d!82347 () Bool)

(assert (=> d!82347 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!49842 d!82347))

(declare-fun d!82355 () Bool)

(assert (=> d!82355 (= (array_inv!12345 a!3118) (bvsge (size!16935 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!49842 d!82355))

(declare-fun b!547191 () Bool)

(declare-fun c!63466 () Bool)

(declare-fun lt!249496 () (_ BitVec 64))

(assert (=> b!547191 (= c!63466 (= lt!249496 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!316187 () SeekEntryResult!5027)

(declare-fun e!316189 () SeekEntryResult!5027)

(assert (=> b!547191 (= e!316187 e!316189)))

(declare-fun b!547192 () Bool)

(declare-fun lt!249497 () SeekEntryResult!5027)

