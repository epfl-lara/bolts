; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32372 () Bool)

(assert start!32372)

(declare-fun b!322137 () Bool)

(declare-fun res!176249 () Bool)

(declare-fun e!199413 () Bool)

(assert (=> b!322137 (=> (not res!176249) (not e!199413))))

(declare-datatypes ((array!16507 0))(
  ( (array!16508 (arr!7808 (Array (_ BitVec 32) (_ BitVec 64))) (size!8160 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16507)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16507 (_ BitVec 32)) Bool)

(assert (=> b!322137 (= res!176249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!176248 () Bool)

(assert (=> start!32372 (=> (not res!176248) (not e!199413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32372 (= res!176248 (validMask!0 mask!3777))))

(assert (=> start!32372 e!199413))

(declare-fun array_inv!5762 (array!16507) Bool)

(assert (=> start!32372 (array_inv!5762 a!3305)))

(assert (=> start!32372 true))

(declare-fun b!322138 () Bool)

(declare-datatypes ((Unit!9836 0))(
  ( (Unit!9837) )
))
(declare-fun e!199410 () Unit!9836)

(declare-fun Unit!9838 () Unit!9836)

(assert (=> b!322138 (= e!199410 Unit!9838)))

(declare-fun b!322139 () Bool)

(declare-fun res!176253 () Bool)

(assert (=> b!322139 (=> (not res!176253) (not e!199413))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322139 (= res!176253 (validKeyInArray!0 k0!2497))))

(declare-fun b!322140 () Bool)

(declare-fun res!176251 () Bool)

(declare-fun e!199409 () Bool)

(assert (=> b!322140 (=> (not res!176251) (not e!199409))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322140 (= res!176251 (and (= (select (arr!7808 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8160 a!3305))))))

(declare-fun b!322141 () Bool)

(declare-fun res!176246 () Bool)

(assert (=> b!322141 (=> (not res!176246) (not e!199413))))

(assert (=> b!322141 (= res!176246 (and (= (size!8160 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8160 a!3305))))))

(declare-fun b!322142 () Bool)

(declare-fun res!176250 () Bool)

(assert (=> b!322142 (=> (not res!176250) (not e!199409))))

(declare-datatypes ((SeekEntryResult!2950 0))(
  ( (MissingZero!2950 (index!13976 (_ BitVec 32))) (Found!2950 (index!13977 (_ BitVec 32))) (Intermediate!2950 (undefined!3762 Bool) (index!13978 (_ BitVec 32)) (x!32205 (_ BitVec 32))) (Undefined!2950) (MissingVacant!2950 (index!13979 (_ BitVec 32))) )
))
(declare-fun lt!156390 () SeekEntryResult!2950)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16507 (_ BitVec 32)) SeekEntryResult!2950)

(assert (=> b!322142 (= res!176250 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156390))))

(declare-fun b!322143 () Bool)

(declare-fun res!176247 () Bool)

(assert (=> b!322143 (=> (not res!176247) (not e!199413))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16507 (_ BitVec 32)) SeekEntryResult!2950)

(assert (=> b!322143 (= res!176247 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2950 i!1250)))))

(declare-fun b!322144 () Bool)

(declare-fun res!176245 () Bool)

(assert (=> b!322144 (=> (not res!176245) (not e!199413))))

(declare-fun arrayContainsKey!0 (array!16507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322144 (= res!176245 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322145 () Bool)

(assert (=> b!322145 false))

(declare-fun e!199411 () Unit!9836)

(declare-fun Unit!9839 () Unit!9836)

(assert (=> b!322145 (= e!199411 Unit!9839)))

(declare-fun b!322146 () Bool)

(declare-fun res!176252 () Bool)

(assert (=> b!322146 (=> (not res!176252) (not e!199409))))

(assert (=> b!322146 (= res!176252 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7808 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!322147 () Bool)

(declare-fun e!199414 () Unit!9836)

(declare-fun Unit!9840 () Unit!9836)

(assert (=> b!322147 (= e!199414 Unit!9840)))

(declare-fun b!322148 () Bool)

(declare-fun Unit!9841 () Unit!9836)

(assert (=> b!322148 (= e!199414 Unit!9841)))

(assert (=> b!322148 false))

(declare-fun b!322149 () Bool)

(assert (=> b!322149 (= e!199409 (not true))))

(assert (=> b!322149 (= index!1840 resIndex!58)))

(declare-fun lt!156391 () Unit!9836)

(assert (=> b!322149 (= lt!156391 e!199410)))

(declare-fun c!50574 () Bool)

(assert (=> b!322149 (= c!50574 (not (= resIndex!58 index!1840)))))

(declare-fun b!322150 () Bool)

(assert (=> b!322150 (= e!199410 e!199411)))

(declare-fun c!50575 () Bool)

(assert (=> b!322150 (= c!50575 (or (= (select (arr!7808 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7808 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322151 () Bool)

(assert (=> b!322151 (= e!199413 e!199409)))

(declare-fun res!176244 () Bool)

(assert (=> b!322151 (=> (not res!176244) (not e!199409))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322151 (= res!176244 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156390))))

(assert (=> b!322151 (= lt!156390 (Intermediate!2950 false resIndex!58 resX!58))))

(declare-fun b!322152 () Bool)

(assert (=> b!322152 false))

(declare-fun lt!156392 () Unit!9836)

(assert (=> b!322152 (= lt!156392 e!199414)))

(declare-fun c!50576 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322152 (= c!50576 ((_ is Intermediate!2950) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun Unit!9842 () Unit!9836)

(assert (=> b!322152 (= e!199411 Unit!9842)))

(assert (= (and start!32372 res!176248) b!322141))

(assert (= (and b!322141 res!176246) b!322139))

(assert (= (and b!322139 res!176253) b!322144))

(assert (= (and b!322144 res!176245) b!322143))

(assert (= (and b!322143 res!176247) b!322137))

(assert (= (and b!322137 res!176249) b!322151))

(assert (= (and b!322151 res!176244) b!322140))

(assert (= (and b!322140 res!176251) b!322142))

(assert (= (and b!322142 res!176250) b!322146))

(assert (= (and b!322146 res!176252) b!322149))

(assert (= (and b!322149 c!50574) b!322150))

(assert (= (and b!322149 (not c!50574)) b!322138))

(assert (= (and b!322150 c!50575) b!322145))

(assert (= (and b!322150 (not c!50575)) b!322152))

(assert (= (and b!322152 c!50576) b!322147))

(assert (= (and b!322152 (not c!50576)) b!322148))

(declare-fun m!330063 () Bool)

(assert (=> b!322137 m!330063))

(declare-fun m!330065 () Bool)

(assert (=> b!322140 m!330065))

(declare-fun m!330067 () Bool)

(assert (=> b!322152 m!330067))

(assert (=> b!322152 m!330067))

(declare-fun m!330069 () Bool)

(assert (=> b!322152 m!330069))

(declare-fun m!330071 () Bool)

(assert (=> b!322144 m!330071))

(declare-fun m!330073 () Bool)

(assert (=> b!322143 m!330073))

(declare-fun m!330075 () Bool)

(assert (=> b!322150 m!330075))

(declare-fun m!330077 () Bool)

(assert (=> b!322151 m!330077))

(assert (=> b!322151 m!330077))

(declare-fun m!330079 () Bool)

(assert (=> b!322151 m!330079))

(declare-fun m!330081 () Bool)

(assert (=> b!322142 m!330081))

(assert (=> b!322146 m!330075))

(declare-fun m!330083 () Bool)

(assert (=> start!32372 m!330083))

(declare-fun m!330085 () Bool)

(assert (=> start!32372 m!330085))

(declare-fun m!330087 () Bool)

(assert (=> b!322139 m!330087))

(check-sat (not b!322137) (not b!322151) (not b!322152) (not b!322144) (not b!322142) (not b!322143) (not b!322139) (not start!32372))
(check-sat)
