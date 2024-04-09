; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54888 () Bool)

(assert start!54888)

(declare-fun b!600083 () Bool)

(declare-datatypes ((Unit!18928 0))(
  ( (Unit!18929) )
))
(declare-fun e!343090 () Unit!18928)

(declare-fun Unit!18930 () Unit!18928)

(assert (=> b!600083 (= e!343090 Unit!18930)))

(declare-fun b!600084 () Bool)

(declare-fun res!385178 () Bool)

(declare-fun e!343100 () Bool)

(assert (=> b!600084 (=> res!385178 e!343100)))

(declare-datatypes ((List!11893 0))(
  ( (Nil!11890) (Cons!11889 (h!12934 (_ BitVec 64)) (t!18129 List!11893)) )
))
(declare-fun noDuplicate!292 (List!11893) Bool)

(assert (=> b!600084 (= res!385178 (not (noDuplicate!292 Nil!11890)))))

(declare-fun b!600085 () Bool)

(assert (=> b!600085 (= e!343100 true)))

(declare-fun lt!273004 () Bool)

(declare-fun contains!2978 (List!11893 (_ BitVec 64)) Bool)

(assert (=> b!600085 (= lt!273004 (contains!2978 Nil!11890 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600086 () Bool)

(declare-fun res!385159 () Bool)

(declare-fun e!343097 () Bool)

(assert (=> b!600086 (=> (not res!385159) (not e!343097))))

(declare-datatypes ((array!37086 0))(
  ( (array!37087 (arr!17799 (Array (_ BitVec 32) (_ BitVec 64))) (size!18163 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37086)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37086 (_ BitVec 32)) Bool)

(assert (=> b!600086 (= res!385159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600087 () Bool)

(declare-fun e!343093 () Bool)

(declare-datatypes ((SeekEntryResult!6246 0))(
  ( (MissingZero!6246 (index!27240 (_ BitVec 32))) (Found!6246 (index!27241 (_ BitVec 32))) (Intermediate!6246 (undefined!7058 Bool) (index!27242 (_ BitVec 32)) (x!56070 (_ BitVec 32))) (Undefined!6246) (MissingVacant!6246 (index!27243 (_ BitVec 32))) )
))
(declare-fun lt!273003 () SeekEntryResult!6246)

(declare-fun lt!272993 () SeekEntryResult!6246)

(assert (=> b!600087 (= e!343093 (= lt!273003 lt!272993))))

(declare-fun res!385176 () Bool)

(declare-fun e!343091 () Bool)

(assert (=> start!54888 (=> (not res!385176) (not e!343091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54888 (= res!385176 (validMask!0 mask!3053))))

(assert (=> start!54888 e!343091))

(assert (=> start!54888 true))

(declare-fun array_inv!13573 (array!37086) Bool)

(assert (=> start!54888 (array_inv!13573 a!2986)))

(declare-fun b!600088 () Bool)

(declare-fun e!343102 () Bool)

(declare-fun e!343101 () Bool)

(assert (=> b!600088 (= e!343102 (not e!343101))))

(declare-fun res!385169 () Bool)

(assert (=> b!600088 (=> res!385169 e!343101)))

(declare-fun lt!272999 () SeekEntryResult!6246)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!600088 (= res!385169 (not (= lt!272999 (Found!6246 index!984))))))

(declare-fun lt!272996 () Unit!18928)

(assert (=> b!600088 (= lt!272996 e!343090)))

(declare-fun c!67829 () Bool)

(assert (=> b!600088 (= c!67829 (= lt!272999 Undefined!6246))))

(declare-fun lt!272997 () array!37086)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!273001 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37086 (_ BitVec 32)) SeekEntryResult!6246)

(assert (=> b!600088 (= lt!272999 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273001 lt!272997 mask!3053))))

(assert (=> b!600088 e!343093))

(declare-fun res!385175 () Bool)

(assert (=> b!600088 (=> (not res!385175) (not e!343093))))

(declare-fun lt!272995 () (_ BitVec 32))

(assert (=> b!600088 (= res!385175 (= lt!272993 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272995 vacantSpotIndex!68 lt!273001 lt!272997 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!600088 (= lt!272993 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272995 vacantSpotIndex!68 (select (arr!17799 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!600088 (= lt!273001 (select (store (arr!17799 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273000 () Unit!18928)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37086 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18928)

(assert (=> b!600088 (= lt!273000 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272995 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600088 (= lt!272995 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600089 () Bool)

(declare-fun res!385162 () Bool)

(assert (=> b!600089 (=> (not res!385162) (not e!343097))))

(declare-fun arrayNoDuplicates!0 (array!37086 (_ BitVec 32) List!11893) Bool)

(assert (=> b!600089 (= res!385162 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11890))))

(declare-fun b!600090 () Bool)

(declare-fun e!343096 () Bool)

(declare-fun e!343098 () Bool)

(assert (=> b!600090 (= e!343096 e!343098)))

(declare-fun res!385164 () Bool)

(assert (=> b!600090 (=> (not res!385164) (not e!343098))))

(declare-fun arrayContainsKey!0 (array!37086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600090 (= res!385164 (arrayContainsKey!0 lt!272997 (select (arr!17799 a!2986) j!136) j!136))))

(declare-fun b!600091 () Bool)

(declare-fun e!343094 () Bool)

(assert (=> b!600091 (= e!343097 e!343094)))

(declare-fun res!385174 () Bool)

(assert (=> b!600091 (=> (not res!385174) (not e!343094))))

(assert (=> b!600091 (= res!385174 (= (select (store (arr!17799 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600091 (= lt!272997 (array!37087 (store (arr!17799 a!2986) i!1108 k!1786) (size!18163 a!2986)))))

(declare-fun b!600092 () Bool)

(declare-fun e!343099 () Bool)

(assert (=> b!600092 (= e!343101 e!343099)))

(declare-fun res!385166 () Bool)

(assert (=> b!600092 (=> res!385166 e!343099)))

(declare-fun lt!272998 () (_ BitVec 64))

(assert (=> b!600092 (= res!385166 (or (not (= (select (arr!17799 a!2986) j!136) lt!273001)) (not (= (select (arr!17799 a!2986) j!136) lt!272998)) (bvsge j!136 index!984)))))

(declare-fun e!343092 () Bool)

(assert (=> b!600092 e!343092))

(declare-fun res!385170 () Bool)

(assert (=> b!600092 (=> (not res!385170) (not e!343092))))

(assert (=> b!600092 (= res!385170 (= lt!272998 (select (arr!17799 a!2986) j!136)))))

(assert (=> b!600092 (= lt!272998 (select (store (arr!17799 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600093 () Bool)

(assert (=> b!600093 (= e!343098 (arrayContainsKey!0 lt!272997 (select (arr!17799 a!2986) j!136) index!984))))

(declare-fun b!600094 () Bool)

(declare-fun Unit!18931 () Unit!18928)

(assert (=> b!600094 (= e!343090 Unit!18931)))

(assert (=> b!600094 false))

(declare-fun b!600095 () Bool)

(assert (=> b!600095 (= e!343091 e!343097)))

(declare-fun res!385165 () Bool)

(assert (=> b!600095 (=> (not res!385165) (not e!343097))))

(declare-fun lt!273006 () SeekEntryResult!6246)

(assert (=> b!600095 (= res!385165 (or (= lt!273006 (MissingZero!6246 i!1108)) (= lt!273006 (MissingVacant!6246 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37086 (_ BitVec 32)) SeekEntryResult!6246)

(assert (=> b!600095 (= lt!273006 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600096 () Bool)

(declare-fun res!385163 () Bool)

(assert (=> b!600096 (=> (not res!385163) (not e!343091))))

(assert (=> b!600096 (= res!385163 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600097 () Bool)

(declare-fun res!385167 () Bool)

(assert (=> b!600097 (=> (not res!385167) (not e!343091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600097 (= res!385167 (validKeyInArray!0 (select (arr!17799 a!2986) j!136)))))

(declare-fun b!600098 () Bool)

(declare-fun res!385160 () Bool)

(assert (=> b!600098 (=> res!385160 e!343100)))

(assert (=> b!600098 (= res!385160 (contains!2978 Nil!11890 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600099 () Bool)

(assert (=> b!600099 (= e!343099 e!343100)))

(declare-fun res!385168 () Bool)

(assert (=> b!600099 (=> res!385168 e!343100)))

(assert (=> b!600099 (= res!385168 (or (bvsge (size!18163 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18163 a!2986))))))

(assert (=> b!600099 (arrayNoDuplicates!0 lt!272997 j!136 Nil!11890)))

(declare-fun lt!273005 () Unit!18928)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37086 (_ BitVec 32) (_ BitVec 32)) Unit!18928)

(assert (=> b!600099 (= lt!273005 (lemmaNoDuplicateFromThenFromBigger!0 lt!272997 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600099 (arrayNoDuplicates!0 lt!272997 #b00000000000000000000000000000000 Nil!11890)))

(declare-fun lt!273002 () Unit!18928)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37086 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11893) Unit!18928)

(assert (=> b!600099 (= lt!273002 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11890))))

(assert (=> b!600099 (arrayContainsKey!0 lt!272997 (select (arr!17799 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272994 () Unit!18928)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37086 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18928)

(assert (=> b!600099 (= lt!272994 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272997 (select (arr!17799 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600100 () Bool)

(declare-fun res!385171 () Bool)

(assert (=> b!600100 (=> (not res!385171) (not e!343091))))

(assert (=> b!600100 (= res!385171 (and (= (size!18163 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18163 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18163 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600101 () Bool)

(assert (=> b!600101 (= e!343094 e!343102)))

(declare-fun res!385161 () Bool)

(assert (=> b!600101 (=> (not res!385161) (not e!343102))))

(assert (=> b!600101 (= res!385161 (and (= lt!273003 (Found!6246 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17799 a!2986) index!984) (select (arr!17799 a!2986) j!136))) (not (= (select (arr!17799 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!600101 (= lt!273003 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17799 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600102 () Bool)

(declare-fun res!385173 () Bool)

(assert (=> b!600102 (=> (not res!385173) (not e!343097))))

(assert (=> b!600102 (= res!385173 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17799 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600103 () Bool)

(declare-fun res!385177 () Bool)

(assert (=> b!600103 (=> (not res!385177) (not e!343091))))

(assert (=> b!600103 (= res!385177 (validKeyInArray!0 k!1786))))

(declare-fun b!600104 () Bool)

(assert (=> b!600104 (= e!343092 e!343096)))

(declare-fun res!385172 () Bool)

(assert (=> b!600104 (=> res!385172 e!343096)))

(assert (=> b!600104 (= res!385172 (or (not (= (select (arr!17799 a!2986) j!136) lt!273001)) (not (= (select (arr!17799 a!2986) j!136) lt!272998)) (bvsge j!136 index!984)))))

(assert (= (and start!54888 res!385176) b!600100))

(assert (= (and b!600100 res!385171) b!600097))

(assert (= (and b!600097 res!385167) b!600103))

(assert (= (and b!600103 res!385177) b!600096))

(assert (= (and b!600096 res!385163) b!600095))

(assert (= (and b!600095 res!385165) b!600086))

(assert (= (and b!600086 res!385159) b!600089))

(assert (= (and b!600089 res!385162) b!600102))

(assert (= (and b!600102 res!385173) b!600091))

(assert (= (and b!600091 res!385174) b!600101))

(assert (= (and b!600101 res!385161) b!600088))

(assert (= (and b!600088 res!385175) b!600087))

(assert (= (and b!600088 c!67829) b!600094))

(assert (= (and b!600088 (not c!67829)) b!600083))

(assert (= (and b!600088 (not res!385169)) b!600092))

(assert (= (and b!600092 res!385170) b!600104))

(assert (= (and b!600104 (not res!385172)) b!600090))

(assert (= (and b!600090 res!385164) b!600093))

(assert (= (and b!600092 (not res!385166)) b!600099))

(assert (= (and b!600099 (not res!385168)) b!600084))

(assert (= (and b!600084 (not res!385178)) b!600098))

(assert (= (and b!600098 (not res!385160)) b!600085))

(declare-fun m!577359 () Bool)

(assert (=> b!600102 m!577359))

(declare-fun m!577361 () Bool)

(assert (=> b!600090 m!577361))

(assert (=> b!600090 m!577361))

(declare-fun m!577363 () Bool)

(assert (=> b!600090 m!577363))

(declare-fun m!577365 () Bool)

(assert (=> start!54888 m!577365))

(declare-fun m!577367 () Bool)

(assert (=> start!54888 m!577367))

(declare-fun m!577369 () Bool)

(assert (=> b!600091 m!577369))

(declare-fun m!577371 () Bool)

(assert (=> b!600091 m!577371))

(declare-fun m!577373 () Bool)

(assert (=> b!600095 m!577373))

(assert (=> b!600092 m!577361))

(assert (=> b!600092 m!577369))

(declare-fun m!577375 () Bool)

(assert (=> b!600092 m!577375))

(declare-fun m!577377 () Bool)

(assert (=> b!600084 m!577377))

(assert (=> b!600097 m!577361))

(assert (=> b!600097 m!577361))

(declare-fun m!577379 () Bool)

(assert (=> b!600097 m!577379))

(declare-fun m!577381 () Bool)

(assert (=> b!600103 m!577381))

(declare-fun m!577383 () Bool)

(assert (=> b!600096 m!577383))

(declare-fun m!577385 () Bool)

(assert (=> b!600086 m!577385))

(declare-fun m!577387 () Bool)

(assert (=> b!600088 m!577387))

(declare-fun m!577389 () Bool)

(assert (=> b!600088 m!577389))

(declare-fun m!577391 () Bool)

(assert (=> b!600088 m!577391))

(assert (=> b!600088 m!577361))

(declare-fun m!577393 () Bool)

(assert (=> b!600088 m!577393))

(assert (=> b!600088 m!577369))

(assert (=> b!600088 m!577361))

(declare-fun m!577395 () Bool)

(assert (=> b!600088 m!577395))

(declare-fun m!577397 () Bool)

(assert (=> b!600088 m!577397))

(declare-fun m!577399 () Bool)

(assert (=> b!600089 m!577399))

(declare-fun m!577401 () Bool)

(assert (=> b!600085 m!577401))

(assert (=> b!600104 m!577361))

(assert (=> b!600093 m!577361))

(assert (=> b!600093 m!577361))

(declare-fun m!577403 () Bool)

(assert (=> b!600093 m!577403))

(declare-fun m!577405 () Bool)

(assert (=> b!600101 m!577405))

(assert (=> b!600101 m!577361))

(assert (=> b!600101 m!577361))

(declare-fun m!577407 () Bool)

(assert (=> b!600101 m!577407))

(declare-fun m!577409 () Bool)

(assert (=> b!600098 m!577409))

(assert (=> b!600099 m!577361))

(assert (=> b!600099 m!577361))

(declare-fun m!577411 () Bool)

(assert (=> b!600099 m!577411))

(declare-fun m!577413 () Bool)

(assert (=> b!600099 m!577413))

(declare-fun m!577415 () Bool)

(assert (=> b!600099 m!577415))

(declare-fun m!577417 () Bool)

(assert (=> b!600099 m!577417))

(assert (=> b!600099 m!577361))

(declare-fun m!577419 () Bool)

(assert (=> b!600099 m!577419))

(declare-fun m!577421 () Bool)

(assert (=> b!600099 m!577421))

(push 1)

