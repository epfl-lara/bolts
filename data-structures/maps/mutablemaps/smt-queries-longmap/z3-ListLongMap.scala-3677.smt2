; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50698 () Bool)

(assert start!50698)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun e!319451 () Bool)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34877 0))(
  ( (array!34878 (arr!16744 (Array (_ BitVec 32) (_ BitVec 64))) (size!17108 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34877)

(declare-fun b!553933 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553933 (= e!319451 (validKeyInArray!0 (select (store (arr!16744 a!3118) i!1132 k0!1914) j!142)))))

(declare-fun b!553934 () Bool)

(declare-fun e!319450 () Bool)

(declare-fun e!319452 () Bool)

(assert (=> b!553934 (= e!319450 e!319452)))

(declare-fun res!346498 () Bool)

(assert (=> b!553934 (=> (not res!346498) (not e!319452))))

(declare-datatypes ((SeekEntryResult!5200 0))(
  ( (MissingZero!5200 (index!23027 (_ BitVec 32))) (Found!5200 (index!23028 (_ BitVec 32))) (Intermediate!5200 (undefined!6012 Bool) (index!23029 (_ BitVec 32)) (x!51973 (_ BitVec 32))) (Undefined!5200) (MissingVacant!5200 (index!23030 (_ BitVec 32))) )
))
(declare-fun lt!251657 () SeekEntryResult!5200)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!251654 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34877 (_ BitVec 32)) SeekEntryResult!5200)

(assert (=> b!553934 (= res!346498 (= lt!251657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251654 (select (store (arr!16744 a!3118) i!1132 k0!1914) j!142) (array!34878 (store (arr!16744 a!3118) i!1132 k0!1914) (size!17108 a!3118)) mask!3119)))))

(declare-fun lt!251655 () (_ BitVec 32))

(assert (=> b!553934 (= lt!251657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251655 (select (arr!16744 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553934 (= lt!251654 (toIndex!0 (select (store (arr!16744 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!553934 (= lt!251655 (toIndex!0 (select (arr!16744 a!3118) j!142) mask!3119))))

(declare-fun res!346504 () Bool)

(declare-fun e!319448 () Bool)

(assert (=> start!50698 (=> (not res!346504) (not e!319448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50698 (= res!346504 (validMask!0 mask!3119))))

(assert (=> start!50698 e!319448))

(assert (=> start!50698 true))

(declare-fun array_inv!12518 (array!34877) Bool)

(assert (=> start!50698 (array_inv!12518 a!3118)))

(declare-fun b!553935 () Bool)

(declare-fun res!346495 () Bool)

(assert (=> b!553935 (=> (not res!346495) (not e!319448))))

(assert (=> b!553935 (= res!346495 (validKeyInArray!0 (select (arr!16744 a!3118) j!142)))))

(declare-fun b!553936 () Bool)

(declare-fun res!346500 () Bool)

(assert (=> b!553936 (=> (not res!346500) (not e!319450))))

(declare-datatypes ((List!10877 0))(
  ( (Nil!10874) (Cons!10873 (h!11858 (_ BitVec 64)) (t!17113 List!10877)) )
))
(declare-fun arrayNoDuplicates!0 (array!34877 (_ BitVec 32) List!10877) Bool)

(assert (=> b!553936 (= res!346500 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10874))))

(declare-fun b!553937 () Bool)

(declare-fun e!319449 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34877 (_ BitVec 32)) SeekEntryResult!5200)

(assert (=> b!553937 (= e!319449 (= (seekEntryOrOpen!0 (select (arr!16744 a!3118) j!142) a!3118 mask!3119) (Found!5200 j!142)))))

(declare-fun b!553938 () Bool)

(assert (=> b!553938 (= e!319448 e!319450)))

(declare-fun res!346496 () Bool)

(assert (=> b!553938 (=> (not res!346496) (not e!319450))))

(declare-fun lt!251653 () SeekEntryResult!5200)

(assert (=> b!553938 (= res!346496 (or (= lt!251653 (MissingZero!5200 i!1132)) (= lt!251653 (MissingVacant!5200 i!1132))))))

(assert (=> b!553938 (= lt!251653 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!553939 () Bool)

(declare-fun res!346499 () Bool)

(assert (=> b!553939 (=> (not res!346499) (not e!319448))))

(declare-fun arrayContainsKey!0 (array!34877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553939 (= res!346499 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553940 () Bool)

(assert (=> b!553940 (= e!319452 (not e!319451))))

(declare-fun res!346502 () Bool)

(assert (=> b!553940 (=> res!346502 e!319451)))

(get-info :version)

(assert (=> b!553940 (= res!346502 (or (not ((_ is Intermediate!5200) lt!251657)) (undefined!6012 lt!251657) (not (= (select (arr!16744 a!3118) (index!23029 lt!251657)) (select (arr!16744 a!3118) j!142))) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!553940 e!319449))

(declare-fun res!346503 () Bool)

(assert (=> b!553940 (=> (not res!346503) (not e!319449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34877 (_ BitVec 32)) Bool)

(assert (=> b!553940 (= res!346503 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17174 0))(
  ( (Unit!17175) )
))
(declare-fun lt!251656 () Unit!17174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34877 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17174)

(assert (=> b!553940 (= lt!251656 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553941 () Bool)

(declare-fun res!346497 () Bool)

(assert (=> b!553941 (=> (not res!346497) (not e!319448))))

(assert (=> b!553941 (= res!346497 (validKeyInArray!0 k0!1914))))

(declare-fun b!553942 () Bool)

(declare-fun res!346501 () Bool)

(assert (=> b!553942 (=> (not res!346501) (not e!319450))))

(assert (=> b!553942 (= res!346501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553943 () Bool)

(declare-fun res!346505 () Bool)

(assert (=> b!553943 (=> (not res!346505) (not e!319448))))

(assert (=> b!553943 (= res!346505 (and (= (size!17108 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17108 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17108 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50698 res!346504) b!553943))

(assert (= (and b!553943 res!346505) b!553935))

(assert (= (and b!553935 res!346495) b!553941))

(assert (= (and b!553941 res!346497) b!553939))

(assert (= (and b!553939 res!346499) b!553938))

(assert (= (and b!553938 res!346496) b!553942))

(assert (= (and b!553942 res!346501) b!553936))

(assert (= (and b!553936 res!346500) b!553934))

(assert (= (and b!553934 res!346498) b!553940))

(assert (= (and b!553940 res!346503) b!553937))

(assert (= (and b!553940 (not res!346502)) b!553933))

(declare-fun m!531197 () Bool)

(assert (=> b!553940 m!531197))

(declare-fun m!531199 () Bool)

(assert (=> b!553940 m!531199))

(declare-fun m!531201 () Bool)

(assert (=> b!553940 m!531201))

(declare-fun m!531203 () Bool)

(assert (=> b!553940 m!531203))

(declare-fun m!531205 () Bool)

(assert (=> b!553939 m!531205))

(assert (=> b!553937 m!531199))

(assert (=> b!553937 m!531199))

(declare-fun m!531207 () Bool)

(assert (=> b!553937 m!531207))

(declare-fun m!531209 () Bool)

(assert (=> b!553936 m!531209))

(declare-fun m!531211 () Bool)

(assert (=> b!553934 m!531211))

(declare-fun m!531213 () Bool)

(assert (=> b!553934 m!531213))

(assert (=> b!553934 m!531199))

(declare-fun m!531215 () Bool)

(assert (=> b!553934 m!531215))

(assert (=> b!553934 m!531199))

(assert (=> b!553934 m!531211))

(declare-fun m!531217 () Bool)

(assert (=> b!553934 m!531217))

(assert (=> b!553934 m!531199))

(declare-fun m!531219 () Bool)

(assert (=> b!553934 m!531219))

(assert (=> b!553934 m!531211))

(declare-fun m!531221 () Bool)

(assert (=> b!553934 m!531221))

(assert (=> b!553935 m!531199))

(assert (=> b!553935 m!531199))

(declare-fun m!531223 () Bool)

(assert (=> b!553935 m!531223))

(declare-fun m!531225 () Bool)

(assert (=> b!553941 m!531225))

(assert (=> b!553933 m!531217))

(assert (=> b!553933 m!531211))

(assert (=> b!553933 m!531211))

(declare-fun m!531227 () Bool)

(assert (=> b!553933 m!531227))

(declare-fun m!531229 () Bool)

(assert (=> start!50698 m!531229))

(declare-fun m!531231 () Bool)

(assert (=> start!50698 m!531231))

(declare-fun m!531233 () Bool)

(assert (=> b!553942 m!531233))

(declare-fun m!531235 () Bool)

(assert (=> b!553938 m!531235))

(check-sat (not b!553939) (not b!553935) (not b!553942) (not b!553933) (not b!553934) (not b!553937) (not b!553936) (not b!553941) (not start!50698) (not b!553938) (not b!553940))
(check-sat)
