; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44168 () Bool)

(assert start!44168)

(declare-fun res!289784 () Bool)

(declare-fun e!286123 () Bool)

(assert (=> start!44168 (=> (not res!289784) (not e!286123))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44168 (= res!289784 (validMask!0 mask!3524))))

(assert (=> start!44168 e!286123))

(assert (=> start!44168 true))

(declare-datatypes ((array!31463 0))(
  ( (array!31464 (arr!15125 (Array (_ BitVec 32) (_ BitVec 64))) (size!15489 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31463)

(declare-fun array_inv!10899 (array!31463) Bool)

(assert (=> start!44168 (array_inv!10899 a!3235)))

(declare-fun b!486100 () Bool)

(declare-fun res!289785 () Bool)

(assert (=> b!486100 (=> (not res!289785) (not e!286123))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486100 (= res!289785 (validKeyInArray!0 (select (arr!15125 a!3235) j!176)))))

(declare-fun b!486101 () Bool)

(declare-fun res!289781 () Bool)

(assert (=> b!486101 (=> (not res!289781) (not e!286123))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!486101 (= res!289781 (validKeyInArray!0 k!2280))))

(declare-fun b!486102 () Bool)

(declare-fun e!286121 () Bool)

(declare-datatypes ((List!9336 0))(
  ( (Nil!9333) (Cons!9332 (h!10188 (_ BitVec 64)) (t!15572 List!9336)) )
))
(declare-fun noDuplicate!210 (List!9336) Bool)

(assert (=> b!486102 (= e!286121 (not (noDuplicate!210 Nil!9333)))))

(declare-fun b!486103 () Bool)

(declare-fun res!289787 () Bool)

(assert (=> b!486103 (=> (not res!289787) (not e!286121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31463 (_ BitVec 32)) Bool)

(assert (=> b!486103 (= res!289787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486104 () Bool)

(assert (=> b!486104 (= e!286123 e!286121)))

(declare-fun res!289780 () Bool)

(assert (=> b!486104 (=> (not res!289780) (not e!286121))))

(declare-datatypes ((SeekEntryResult!3599 0))(
  ( (MissingZero!3599 (index!16575 (_ BitVec 32))) (Found!3599 (index!16576 (_ BitVec 32))) (Intermediate!3599 (undefined!4411 Bool) (index!16577 (_ BitVec 32)) (x!45734 (_ BitVec 32))) (Undefined!3599) (MissingVacant!3599 (index!16578 (_ BitVec 32))) )
))
(declare-fun lt!219653 () SeekEntryResult!3599)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486104 (= res!289780 (or (= lt!219653 (MissingZero!3599 i!1204)) (= lt!219653 (MissingVacant!3599 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31463 (_ BitVec 32)) SeekEntryResult!3599)

(assert (=> b!486104 (= lt!219653 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486105 () Bool)

(declare-fun res!289786 () Bool)

(assert (=> b!486105 (=> (not res!289786) (not e!286123))))

(declare-fun arrayContainsKey!0 (array!31463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486105 (= res!289786 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486106 () Bool)

(declare-fun res!289782 () Bool)

(assert (=> b!486106 (=> (not res!289782) (not e!286121))))

(assert (=> b!486106 (= res!289782 (and (bvsle #b00000000000000000000000000000000 (size!15489 a!3235)) (bvslt (size!15489 a!3235) #b01111111111111111111111111111111)))))

(declare-fun b!486107 () Bool)

(declare-fun res!289783 () Bool)

(assert (=> b!486107 (=> (not res!289783) (not e!286123))))

(assert (=> b!486107 (= res!289783 (and (= (size!15489 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15489 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15489 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44168 res!289784) b!486107))

(assert (= (and b!486107 res!289783) b!486100))

(assert (= (and b!486100 res!289785) b!486101))

(assert (= (and b!486101 res!289781) b!486105))

(assert (= (and b!486105 res!289786) b!486104))

(assert (= (and b!486104 res!289780) b!486103))

(assert (= (and b!486103 res!289787) b!486106))

(assert (= (and b!486106 res!289782) b!486102))

(declare-fun m!466123 () Bool)

(assert (=> b!486102 m!466123))

(declare-fun m!466125 () Bool)

(assert (=> b!486105 m!466125))

(declare-fun m!466127 () Bool)

(assert (=> b!486103 m!466127))

(declare-fun m!466129 () Bool)

(assert (=> start!44168 m!466129))

(declare-fun m!466131 () Bool)

(assert (=> start!44168 m!466131))

(declare-fun m!466133 () Bool)

(assert (=> b!486104 m!466133))

(declare-fun m!466135 () Bool)

(assert (=> b!486100 m!466135))

(assert (=> b!486100 m!466135))

(declare-fun m!466137 () Bool)

(assert (=> b!486100 m!466137))

(declare-fun m!466139 () Bool)

(assert (=> b!486101 m!466139))

(push 1)

(assert (not b!486100))

(assert (not b!486105))

(assert (not b!486103))

(assert (not b!486101))

(assert (not start!44168))

(assert (not b!486104))

(assert (not b!486102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77387 () Bool)

(declare-fun res!289819 () Bool)

(declare-fun e!286164 () Bool)

(assert (=> d!77387 (=> res!289819 e!286164)))

(assert (=> d!77387 (= res!289819 (bvsge #b00000000000000000000000000000000 (size!15489 a!3235)))))

(assert (=> d!77387 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286164)))

(declare-fun b!486154 () Bool)

(declare-fun e!286163 () Bool)

(declare-fun call!31271 () Bool)

(assert (=> b!486154 (= e!286163 call!31271)))

(declare-fun b!486155 () Bool)

(declare-fun e!286162 () Bool)

(assert (=> b!486155 (= e!286162 call!31271)))

(declare-fun bm!31268 () Bool)

(assert (=> bm!31268 (= call!31271 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!486156 () Bool)

(assert (=> b!486156 (= e!286164 e!286162)))

(declare-fun c!58436 () Bool)

(assert (=> b!486156 (= c!58436 (validKeyInArray!0 (select (arr!15125 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!486157 () Bool)

(assert (=> b!486157 (= e!286162 e!286163)))

(declare-fun lt!219678 () (_ BitVec 64))

(assert (=> b!486157 (= lt!219678 (select (arr!15125 a!3235) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14166 0))(
  ( (Unit!14167) )
))
(declare-fun lt!219679 () Unit!14166)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31463 (_ BitVec 64) (_ BitVec 32)) Unit!14166)

(assert (=> b!486157 (= lt!219679 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!219678 #b00000000000000000000000000000000))))

(assert (=> b!486157 (arrayContainsKey!0 a!3235 lt!219678 #b00000000000000000000000000000000)))

(declare-fun lt!219680 () Unit!14166)

(assert (=> b!486157 (= lt!219680 lt!219679)))

(declare-fun res!289818 () Bool)

(assert (=> b!486157 (= res!289818 (= (seekEntryOrOpen!0 (select (arr!15125 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3599 #b00000000000000000000000000000000)))))

(assert (=> b!486157 (=> (not res!289818) (not e!286163))))

(assert (= (and d!77387 (not res!289819)) b!486156))

(assert (= (and b!486156 c!58436) b!486157))

(assert (= (and b!486156 (not c!58436)) b!486155))

(assert (= (and b!486157 res!289818) b!486154))

(assert (= (or b!486154 b!486155) bm!31268))

(declare-fun m!466171 () Bool)

(assert (=> bm!31268 m!466171))

(declare-fun m!466173 () Bool)

(assert (=> b!486156 m!466173))

(assert (=> b!486156 m!466173))

(declare-fun m!466175 () Bool)

(assert (=> b!486156 m!466175))

(assert (=> b!486157 m!466173))

(declare-fun m!466177 () Bool)

(assert (=> b!486157 m!466177))

(declare-fun m!466179 () Bool)

(assert (=> b!486157 m!466179))

(assert (=> b!486157 m!466173))

(declare-fun m!466181 () Bool)

(assert (=> b!486157 m!466181))

(assert (=> b!486103 d!77387))

(declare-fun d!77393 () Bool)

(declare-fun res!289828 () Bool)

(declare-fun e!286173 () Bool)

(assert (=> d!77393 (=> res!289828 e!286173)))

(assert (=> d!77393 (= res!289828 (= (select (arr!15125 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77393 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!286173)))

(declare-fun b!486166 () Bool)

(declare-fun e!286174 () Bool)

(assert (=> b!486166 (= e!286173 e!286174)))

(declare-fun res!289829 () Bool)

(assert (=> b!486166 (=> (not res!289829) (not e!286174))))

