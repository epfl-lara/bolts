; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62056 () Bool)

(assert start!62056)

(declare-fun b!694162 () Bool)

(declare-datatypes ((Unit!24510 0))(
  ( (Unit!24511) )
))
(declare-fun e!394899 () Unit!24510)

(declare-fun Unit!24512 () Unit!24510)

(assert (=> b!694162 (= e!394899 Unit!24512)))

(declare-fun b!694163 () Bool)

(declare-fun res!458389 () Bool)

(declare-fun e!394892 () Bool)

(assert (=> b!694163 (=> (not res!458389) (not e!394892))))

(declare-datatypes ((List!13179 0))(
  ( (Nil!13176) (Cons!13175 (h!14220 (_ BitVec 64)) (t!19466 List!13179)) )
))
(declare-fun lt!316839 () List!13179)

(declare-fun contains!3722 (List!13179 (_ BitVec 64)) Bool)

(assert (=> b!694163 (= res!458389 (not (contains!3722 lt!316839 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694164 () Bool)

(declare-fun res!458392 () Bool)

(declare-fun e!394895 () Bool)

(assert (=> b!694164 (=> (not res!458392) (not e!394895))))

(declare-datatypes ((array!39853 0))(
  ( (array!39854 (arr!19085 (Array (_ BitVec 32) (_ BitVec 64))) (size!19468 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39853)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694164 (= res!458392 (validKeyInArray!0 (select (arr!19085 a!3626) from!3004)))))

(declare-fun b!694165 () Bool)

(declare-fun res!458398 () Bool)

(assert (=> b!694165 (=> (not res!458398) (not e!394892))))

(declare-fun noDuplicate!969 (List!13179) Bool)

(assert (=> b!694165 (= res!458398 (noDuplicate!969 lt!316839))))

(declare-fun b!694166 () Bool)

(declare-fun e!394890 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!694166 (= e!394890 (not (contains!3722 lt!316839 k!2843)))))

(declare-fun b!694167 () Bool)

(declare-fun e!394900 () Bool)

(assert (=> b!694167 (= e!394900 (contains!3722 lt!316839 k!2843))))

(declare-fun b!694168 () Bool)

(declare-fun res!458402 () Bool)

(assert (=> b!694168 (=> (not res!458402) (not e!394895))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694168 (= res!458402 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19468 a!3626))))))

(declare-fun b!694169 () Bool)

(declare-fun e!394896 () Bool)

(assert (=> b!694169 (= e!394895 e!394896)))

(declare-fun res!458396 () Bool)

(assert (=> b!694169 (=> (not res!458396) (not e!394896))))

(assert (=> b!694169 (= res!458396 (not (= (select (arr!19085 a!3626) from!3004) k!2843)))))

(declare-fun lt!316837 () Unit!24510)

(assert (=> b!694169 (= lt!316837 e!394899)))

(declare-fun c!78257 () Bool)

(assert (=> b!694169 (= c!78257 (= (select (arr!19085 a!3626) from!3004) k!2843))))

(declare-fun b!694170 () Bool)

(assert (=> b!694170 (= e!394896 e!394892)))

(declare-fun res!458391 () Bool)

(assert (=> b!694170 (=> (not res!458391) (not e!394892))))

(assert (=> b!694170 (= res!458391 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun acc!681 () List!13179)

(declare-fun $colon$colon!432 (List!13179 (_ BitVec 64)) List!13179)

(assert (=> b!694170 (= lt!316839 ($colon$colon!432 acc!681 (select (arr!19085 a!3626) from!3004)))))

(declare-fun res!458404 () Bool)

(assert (=> start!62056 (=> (not res!458404) (not e!394895))))

(assert (=> start!62056 (= res!458404 (and (bvslt (size!19468 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19468 a!3626))))))

(assert (=> start!62056 e!394895))

(assert (=> start!62056 true))

(declare-fun array_inv!14859 (array!39853) Bool)

(assert (=> start!62056 (array_inv!14859 a!3626)))

(declare-fun b!694171 () Bool)

(declare-fun res!458386 () Bool)

(assert (=> b!694171 (=> (not res!458386) (not e!394895))))

(declare-fun arrayNoDuplicates!0 (array!39853 (_ BitVec 32) List!13179) Bool)

(assert (=> b!694171 (= res!458386 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694172 () Bool)

(declare-fun res!458385 () Bool)

(assert (=> b!694172 (=> (not res!458385) (not e!394895))))

(declare-fun e!394893 () Bool)

(assert (=> b!694172 (= res!458385 e!394893)))

(declare-fun res!458388 () Bool)

(assert (=> b!694172 (=> res!458388 e!394893)))

(declare-fun e!394898 () Bool)

(assert (=> b!694172 (= res!458388 e!394898)))

(declare-fun res!458393 () Bool)

(assert (=> b!694172 (=> (not res!458393) (not e!394898))))

(assert (=> b!694172 (= res!458393 (bvsgt from!3004 i!1382))))

(declare-fun b!694173 () Bool)

(declare-fun e!394894 () Bool)

(assert (=> b!694173 (= e!394894 e!394890)))

(declare-fun res!458397 () Bool)

(assert (=> b!694173 (=> (not res!458397) (not e!394890))))

(assert (=> b!694173 (= res!458397 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694174 () Bool)

(declare-fun e!394891 () Bool)

(assert (=> b!694174 (= e!394893 e!394891)))

(declare-fun res!458384 () Bool)

(assert (=> b!694174 (=> (not res!458384) (not e!394891))))

(assert (=> b!694174 (= res!458384 (bvsle from!3004 i!1382))))

(declare-fun b!694175 () Bool)

(declare-fun res!458387 () Bool)

(assert (=> b!694175 (=> (not res!458387) (not e!394892))))

(assert (=> b!694175 (= res!458387 (not (contains!3722 lt!316839 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694176 () Bool)

(declare-fun res!458383 () Bool)

(assert (=> b!694176 (=> (not res!458383) (not e!394895))))

(assert (=> b!694176 (= res!458383 (validKeyInArray!0 k!2843))))

(declare-fun b!694177 () Bool)

(declare-fun res!458399 () Bool)

(assert (=> b!694177 (=> (not res!458399) (not e!394895))))

(assert (=> b!694177 (= res!458399 (noDuplicate!969 acc!681))))

(declare-fun b!694178 () Bool)

(declare-fun res!458390 () Bool)

(assert (=> b!694178 (=> (not res!458390) (not e!394895))))

(assert (=> b!694178 (= res!458390 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13176))))

(declare-fun b!694179 () Bool)

(declare-fun res!458394 () Bool)

(assert (=> b!694179 (=> (not res!458394) (not e!394892))))

(assert (=> b!694179 (= res!458394 e!394894)))

(declare-fun res!458395 () Bool)

(assert (=> b!694179 (=> res!458395 e!394894)))

(assert (=> b!694179 (= res!458395 e!394900)))

(declare-fun res!458405 () Bool)

(assert (=> b!694179 (=> (not res!458405) (not e!394900))))

(assert (=> b!694179 (= res!458405 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694180 () Bool)

(assert (=> b!694180 (= e!394891 (not (contains!3722 acc!681 k!2843)))))

(declare-fun b!694181 () Bool)

(declare-fun res!458382 () Bool)

(assert (=> b!694181 (=> (not res!458382) (not e!394895))))

(assert (=> b!694181 (= res!458382 (not (contains!3722 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694182 () Bool)

(assert (=> b!694182 (= e!394898 (contains!3722 acc!681 k!2843))))

(declare-fun b!694183 () Bool)

(declare-fun res!458403 () Bool)

(assert (=> b!694183 (=> (not res!458403) (not e!394895))))

(assert (=> b!694183 (= res!458403 (not (contains!3722 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694184 () Bool)

(declare-fun res!458400 () Bool)

(assert (=> b!694184 (=> (not res!458400) (not e!394895))))

(declare-fun arrayContainsKey!0 (array!39853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694184 (= res!458400 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694185 () Bool)

(declare-fun Unit!24513 () Unit!24510)

(assert (=> b!694185 (= e!394899 Unit!24513)))

(assert (=> b!694185 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316836 () Unit!24510)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39853 (_ BitVec 64) (_ BitVec 32)) Unit!24510)

(assert (=> b!694185 (= lt!316836 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!694185 false))

(declare-fun b!694186 () Bool)

(declare-fun res!458401 () Bool)

(assert (=> b!694186 (=> (not res!458401) (not e!394895))))

(assert (=> b!694186 (= res!458401 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19468 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694187 () Bool)

(assert (=> b!694187 (= e!394892 false)))

(declare-fun lt!316838 () Bool)

(assert (=> b!694187 (= lt!316838 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316839))))

(assert (= (and start!62056 res!458404) b!694177))

(assert (= (and b!694177 res!458399) b!694183))

(assert (= (and b!694183 res!458403) b!694181))

(assert (= (and b!694181 res!458382) b!694172))

(assert (= (and b!694172 res!458393) b!694182))

(assert (= (and b!694172 (not res!458388)) b!694174))

(assert (= (and b!694174 res!458384) b!694180))

(assert (= (and b!694172 res!458385) b!694178))

(assert (= (and b!694178 res!458390) b!694171))

(assert (= (and b!694171 res!458386) b!694168))

(assert (= (and b!694168 res!458402) b!694176))

(assert (= (and b!694176 res!458383) b!694184))

(assert (= (and b!694184 res!458400) b!694186))

(assert (= (and b!694186 res!458401) b!694164))

(assert (= (and b!694164 res!458392) b!694169))

(assert (= (and b!694169 c!78257) b!694185))

(assert (= (and b!694169 (not c!78257)) b!694162))

(assert (= (and b!694169 res!458396) b!694170))

(assert (= (and b!694170 res!458391) b!694165))

(assert (= (and b!694165 res!458398) b!694175))

(assert (= (and b!694175 res!458387) b!694163))

(assert (= (and b!694163 res!458389) b!694179))

(assert (= (and b!694179 res!458405) b!694167))

(assert (= (and b!694179 (not res!458395)) b!694173))

(assert (= (and b!694173 res!458397) b!694166))

(assert (= (and b!694179 res!458394) b!694187))

(declare-fun m!656095 () Bool)

(assert (=> b!694180 m!656095))

(declare-fun m!656097 () Bool)

(assert (=> b!694183 m!656097))

(declare-fun m!656099 () Bool)

(assert (=> b!694181 m!656099))

(assert (=> b!694182 m!656095))

(declare-fun m!656101 () Bool)

(assert (=> b!694176 m!656101))

(declare-fun m!656103 () Bool)

(assert (=> b!694165 m!656103))

(declare-fun m!656105 () Bool)

(assert (=> b!694170 m!656105))

(assert (=> b!694170 m!656105))

(declare-fun m!656107 () Bool)

(assert (=> b!694170 m!656107))

(declare-fun m!656109 () Bool)

(assert (=> b!694167 m!656109))

(declare-fun m!656111 () Bool)

(assert (=> b!694184 m!656111))

(declare-fun m!656113 () Bool)

(assert (=> b!694187 m!656113))

(declare-fun m!656115 () Bool)

(assert (=> b!694171 m!656115))

(declare-fun m!656117 () Bool)

(assert (=> start!62056 m!656117))

(declare-fun m!656119 () Bool)

(assert (=> b!694177 m!656119))

(assert (=> b!694169 m!656105))

(declare-fun m!656121 () Bool)

(assert (=> b!694185 m!656121))

(declare-fun m!656123 () Bool)

(assert (=> b!694185 m!656123))

(declare-fun m!656125 () Bool)

(assert (=> b!694163 m!656125))

(assert (=> b!694166 m!656109))

(assert (=> b!694164 m!656105))

(assert (=> b!694164 m!656105))

(declare-fun m!656127 () Bool)

(assert (=> b!694164 m!656127))

(declare-fun m!656129 () Bool)

(assert (=> b!694175 m!656129))

(declare-fun m!656131 () Bool)

(assert (=> b!694178 m!656131))

(push 1)

