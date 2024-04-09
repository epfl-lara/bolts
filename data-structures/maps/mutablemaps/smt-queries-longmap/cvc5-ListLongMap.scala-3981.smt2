; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53974 () Bool)

(assert start!53974)

(declare-fun b!588928 () Bool)

(declare-fun res!376642 () Bool)

(declare-fun e!336254 () Bool)

(assert (=> b!588928 (=> (not res!376642) (not e!336254))))

(declare-datatypes ((array!36772 0))(
  ( (array!36773 (arr!17655 (Array (_ BitVec 32) (_ BitVec 64))) (size!18019 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36772)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36772 (_ BitVec 32)) Bool)

(assert (=> b!588928 (= res!376642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588929 () Bool)

(declare-fun e!336258 () Bool)

(assert (=> b!588929 (= e!336254 e!336258)))

(declare-fun res!376639 () Bool)

(assert (=> b!588929 (=> (not res!376639) (not e!336258))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!588929 (= res!376639 (= (select (store (arr!17655 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267128 () array!36772)

(assert (=> b!588929 (= lt!267128 (array!36773 (store (arr!17655 a!2986) i!1108 k!1786) (size!18019 a!2986)))))

(declare-fun b!588930 () Bool)

(declare-fun res!376640 () Bool)

(declare-fun e!336259 () Bool)

(assert (=> b!588930 (=> (not res!376640) (not e!336259))))

(declare-fun arrayContainsKey!0 (array!36772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588930 (= res!376640 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588931 () Bool)

(declare-fun res!376648 () Bool)

(assert (=> b!588931 (=> (not res!376648) (not e!336259))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588931 (= res!376648 (validKeyInArray!0 (select (arr!17655 a!2986) j!136)))))

(declare-fun b!588932 () Bool)

(declare-datatypes ((Unit!18352 0))(
  ( (Unit!18353) )
))
(declare-fun e!336253 () Unit!18352)

(declare-fun Unit!18354 () Unit!18352)

(assert (=> b!588932 (= e!336253 Unit!18354)))

(declare-fun b!588933 () Bool)

(declare-fun res!376644 () Bool)

(assert (=> b!588933 (=> (not res!376644) (not e!336259))))

(assert (=> b!588933 (= res!376644 (validKeyInArray!0 k!1786))))

(declare-fun b!588934 () Bool)

(declare-fun e!336256 () Bool)

(assert (=> b!588934 (= e!336258 e!336256)))

(declare-fun res!376647 () Bool)

(assert (=> b!588934 (=> (not res!376647) (not e!336256))))

(declare-datatypes ((SeekEntryResult!6102 0))(
  ( (MissingZero!6102 (index!26638 (_ BitVec 32))) (Found!6102 (index!26639 (_ BitVec 32))) (Intermediate!6102 (undefined!6914 Bool) (index!26640 (_ BitVec 32)) (x!55463 (_ BitVec 32))) (Undefined!6102) (MissingVacant!6102 (index!26641 (_ BitVec 32))) )
))
(declare-fun lt!267126 () SeekEntryResult!6102)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588934 (= res!376647 (and (= lt!267126 (Found!6102 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17655 a!2986) index!984) (select (arr!17655 a!2986) j!136))) (not (= (select (arr!17655 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36772 (_ BitVec 32)) SeekEntryResult!6102)

(assert (=> b!588934 (= lt!267126 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17655 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588935 () Bool)

(declare-fun Unit!18355 () Unit!18352)

(assert (=> b!588935 (= e!336253 Unit!18355)))

(assert (=> b!588935 false))

(declare-fun b!588936 () Bool)

(declare-fun res!376641 () Bool)

(assert (=> b!588936 (=> (not res!376641) (not e!336259))))

(assert (=> b!588936 (= res!376641 (and (= (size!18019 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18019 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18019 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588937 () Bool)

(assert (=> b!588937 (= e!336259 e!336254)))

(declare-fun res!376649 () Bool)

(assert (=> b!588937 (=> (not res!376649) (not e!336254))))

(declare-fun lt!267122 () SeekEntryResult!6102)

(assert (=> b!588937 (= res!376649 (or (= lt!267122 (MissingZero!6102 i!1108)) (= lt!267122 (MissingVacant!6102 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36772 (_ BitVec 32)) SeekEntryResult!6102)

(assert (=> b!588937 (= lt!267122 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!376638 () Bool)

(assert (=> start!53974 (=> (not res!376638) (not e!336259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53974 (= res!376638 (validMask!0 mask!3053))))

(assert (=> start!53974 e!336259))

(assert (=> start!53974 true))

(declare-fun array_inv!13429 (array!36772) Bool)

(assert (=> start!53974 (array_inv!13429 a!2986)))

(declare-fun b!588938 () Bool)

(declare-fun e!336255 () Bool)

(declare-fun lt!267121 () SeekEntryResult!6102)

(assert (=> b!588938 (= e!336255 (= lt!267126 lt!267121))))

(declare-fun b!588939 () Bool)

(declare-fun res!376646 () Bool)

(assert (=> b!588939 (=> (not res!376646) (not e!336254))))

(assert (=> b!588939 (= res!376646 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17655 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588940 () Bool)

(declare-fun res!376645 () Bool)

(assert (=> b!588940 (=> (not res!376645) (not e!336254))))

(declare-datatypes ((List!11749 0))(
  ( (Nil!11746) (Cons!11745 (h!12790 (_ BitVec 64)) (t!17985 List!11749)) )
))
(declare-fun arrayNoDuplicates!0 (array!36772 (_ BitVec 32) List!11749) Bool)

(assert (=> b!588940 (= res!376645 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11746))))

(declare-fun b!588941 () Bool)

(assert (=> b!588941 (= e!336256 (not true))))

(declare-fun lt!267125 () Unit!18352)

(assert (=> b!588941 (= lt!267125 e!336253)))

(declare-fun c!66512 () Bool)

(declare-fun lt!267123 () (_ BitVec 64))

(assert (=> b!588941 (= c!66512 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267123 lt!267128 mask!3053) Undefined!6102))))

(assert (=> b!588941 e!336255))

(declare-fun res!376643 () Bool)

(assert (=> b!588941 (=> (not res!376643) (not e!336255))))

(declare-fun lt!267124 () (_ BitVec 32))

(assert (=> b!588941 (= res!376643 (= lt!267121 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267124 vacantSpotIndex!68 lt!267123 lt!267128 mask!3053)))))

(assert (=> b!588941 (= lt!267121 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267124 vacantSpotIndex!68 (select (arr!17655 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588941 (= lt!267123 (select (store (arr!17655 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267127 () Unit!18352)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36772 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18352)

(assert (=> b!588941 (= lt!267127 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267124 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588941 (= lt!267124 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53974 res!376638) b!588936))

(assert (= (and b!588936 res!376641) b!588931))

(assert (= (and b!588931 res!376648) b!588933))

(assert (= (and b!588933 res!376644) b!588930))

(assert (= (and b!588930 res!376640) b!588937))

(assert (= (and b!588937 res!376649) b!588928))

(assert (= (and b!588928 res!376642) b!588940))

(assert (= (and b!588940 res!376645) b!588939))

(assert (= (and b!588939 res!376646) b!588929))

(assert (= (and b!588929 res!376639) b!588934))

(assert (= (and b!588934 res!376647) b!588941))

(assert (= (and b!588941 res!376643) b!588938))

(assert (= (and b!588941 c!66512) b!588935))

(assert (= (and b!588941 (not c!66512)) b!588932))

(declare-fun m!567523 () Bool)

(assert (=> b!588928 m!567523))

(declare-fun m!567525 () Bool)

(assert (=> b!588940 m!567525))

(declare-fun m!567527 () Bool)

(assert (=> b!588937 m!567527))

(declare-fun m!567529 () Bool)

(assert (=> b!588931 m!567529))

(assert (=> b!588931 m!567529))

(declare-fun m!567531 () Bool)

(assert (=> b!588931 m!567531))

(declare-fun m!567533 () Bool)

(assert (=> b!588930 m!567533))

(declare-fun m!567535 () Bool)

(assert (=> b!588933 m!567535))

(declare-fun m!567537 () Bool)

(assert (=> b!588941 m!567537))

(declare-fun m!567539 () Bool)

(assert (=> b!588941 m!567539))

(assert (=> b!588941 m!567529))

(declare-fun m!567541 () Bool)

(assert (=> b!588941 m!567541))

(declare-fun m!567543 () Bool)

(assert (=> b!588941 m!567543))

(declare-fun m!567545 () Bool)

(assert (=> b!588941 m!567545))

(assert (=> b!588941 m!567529))

(declare-fun m!567547 () Bool)

(assert (=> b!588941 m!567547))

(declare-fun m!567549 () Bool)

(assert (=> b!588941 m!567549))

(declare-fun m!567551 () Bool)

(assert (=> b!588939 m!567551))

(declare-fun m!567553 () Bool)

(assert (=> b!588934 m!567553))

(assert (=> b!588934 m!567529))

(assert (=> b!588934 m!567529))

(declare-fun m!567555 () Bool)

(assert (=> b!588934 m!567555))

(assert (=> b!588929 m!567541))

(declare-fun m!567557 () Bool)

(assert (=> b!588929 m!567557))

(declare-fun m!567559 () Bool)

(assert (=> start!53974 m!567559))

(declare-fun m!567561 () Bool)

(assert (=> start!53974 m!567561))

(push 1)

