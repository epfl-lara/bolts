; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51422 () Bool)

(assert start!51422)

(declare-fun b!561374 () Bool)

(declare-fun e!323498 () Bool)

(declare-fun e!323493 () Bool)

(assert (=> b!561374 (= e!323498 e!323493)))

(declare-fun res!352680 () Bool)

(assert (=> b!561374 (=> (not res!352680) (not e!323493))))

(declare-datatypes ((SeekEntryResult!5373 0))(
  ( (MissingZero!5373 (index!23719 (_ BitVec 32))) (Found!5373 (index!23720 (_ BitVec 32))) (Intermediate!5373 (undefined!6185 Bool) (index!23721 (_ BitVec 32)) (x!52655 (_ BitVec 32))) (Undefined!5373) (MissingVacant!5373 (index!23722 (_ BitVec 32))) )
))
(declare-fun lt!255566 () SeekEntryResult!5373)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!255564 () SeekEntryResult!5373)

(declare-datatypes ((array!35241 0))(
  ( (array!35242 (arr!16917 (Array (_ BitVec 32) (_ BitVec 64))) (size!17281 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35241)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35241 (_ BitVec 32)) SeekEntryResult!5373)

(assert (=> b!561374 (= res!352680 (= lt!255564 (seekKeyOrZeroReturnVacant!0 (x!52655 lt!255566) (index!23721 lt!255566) (index!23721 lt!255566) (select (arr!16917 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561375 () Bool)

(declare-fun e!323495 () Bool)

(declare-fun e!323500 () Bool)

(assert (=> b!561375 (= e!323495 e!323500)))

(declare-fun res!352683 () Bool)

(assert (=> b!561375 (=> (not res!352683) (not e!323500))))

(declare-fun lt!255569 () (_ BitVec 64))

(declare-fun lt!255563 () array!35241)

(declare-fun lt!255565 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35241 (_ BitVec 32)) SeekEntryResult!5373)

(assert (=> b!561375 (= res!352683 (= lt!255566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255565 lt!255569 lt!255563 mask!3119)))))

(declare-fun lt!255561 () (_ BitVec 32))

(assert (=> b!561375 (= lt!255566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255561 (select (arr!16917 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561375 (= lt!255565 (toIndex!0 lt!255569 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561375 (= lt!255569 (select (store (arr!16917 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561375 (= lt!255561 (toIndex!0 (select (arr!16917 a!3118) j!142) mask!3119))))

(assert (=> b!561375 (= lt!255563 (array!35242 (store (arr!16917 a!3118) i!1132 k!1914) (size!17281 a!3118)))))

(declare-fun b!561376 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35241 (_ BitVec 32)) SeekEntryResult!5373)

(assert (=> b!561376 (= e!323493 (= (seekEntryOrOpen!0 lt!255569 lt!255563 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52655 lt!255566) (index!23721 lt!255566) (index!23721 lt!255566) lt!255569 lt!255563 mask!3119)))))

(declare-fun b!561377 () Bool)

(declare-fun e!323499 () Bool)

(assert (=> b!561377 (= e!323499 e!323498)))

(declare-fun res!352687 () Bool)

(assert (=> b!561377 (=> res!352687 e!323498)))

(declare-fun lt!255562 () (_ BitVec 64))

(assert (=> b!561377 (= res!352687 (or (= lt!255562 (select (arr!16917 a!3118) j!142)) (= lt!255562 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561377 (= lt!255562 (select (arr!16917 a!3118) (index!23721 lt!255566)))))

(declare-fun b!561378 () Bool)

(assert (=> b!561378 (= e!323500 (not true))))

(declare-fun e!323497 () Bool)

(assert (=> b!561378 e!323497))

(declare-fun res!352685 () Bool)

(assert (=> b!561378 (=> (not res!352685) (not e!323497))))

(assert (=> b!561378 (= res!352685 (= lt!255564 (Found!5373 j!142)))))

(assert (=> b!561378 (= lt!255564 (seekEntryOrOpen!0 (select (arr!16917 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35241 (_ BitVec 32)) Bool)

(assert (=> b!561378 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17520 0))(
  ( (Unit!17521) )
))
(declare-fun lt!255567 () Unit!17520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35241 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17520)

(assert (=> b!561378 (= lt!255567 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561379 () Bool)

(declare-fun res!352678 () Bool)

(declare-fun e!323494 () Bool)

(assert (=> b!561379 (=> (not res!352678) (not e!323494))))

(declare-fun arrayContainsKey!0 (array!35241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561379 (= res!352678 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561380 () Bool)

(declare-fun res!352686 () Bool)

(assert (=> b!561380 (=> (not res!352686) (not e!323495))))

(assert (=> b!561380 (= res!352686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561381 () Bool)

(declare-fun res!352677 () Bool)

(assert (=> b!561381 (=> (not res!352677) (not e!323494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561381 (= res!352677 (validKeyInArray!0 (select (arr!16917 a!3118) j!142)))))

(declare-fun b!561383 () Bool)

(assert (=> b!561383 (= e!323497 e!323499)))

(declare-fun res!352688 () Bool)

(assert (=> b!561383 (=> res!352688 e!323499)))

(assert (=> b!561383 (= res!352688 (or (undefined!6185 lt!255566) (not (is-Intermediate!5373 lt!255566))))))

(declare-fun b!561384 () Bool)

(declare-fun res!352676 () Bool)

(assert (=> b!561384 (=> (not res!352676) (not e!323494))))

(assert (=> b!561384 (= res!352676 (validKeyInArray!0 k!1914))))

(declare-fun b!561385 () Bool)

(assert (=> b!561385 (= e!323494 e!323495)))

(declare-fun res!352681 () Bool)

(assert (=> b!561385 (=> (not res!352681) (not e!323495))))

(declare-fun lt!255568 () SeekEntryResult!5373)

(assert (=> b!561385 (= res!352681 (or (= lt!255568 (MissingZero!5373 i!1132)) (= lt!255568 (MissingVacant!5373 i!1132))))))

(assert (=> b!561385 (= lt!255568 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561386 () Bool)

(declare-fun res!352682 () Bool)

(assert (=> b!561386 (=> (not res!352682) (not e!323495))))

(declare-datatypes ((List!11050 0))(
  ( (Nil!11047) (Cons!11046 (h!12049 (_ BitVec 64)) (t!17286 List!11050)) )
))
(declare-fun arrayNoDuplicates!0 (array!35241 (_ BitVec 32) List!11050) Bool)

(assert (=> b!561386 (= res!352682 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11047))))

(declare-fun res!352679 () Bool)

(assert (=> start!51422 (=> (not res!352679) (not e!323494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51422 (= res!352679 (validMask!0 mask!3119))))

(assert (=> start!51422 e!323494))

(assert (=> start!51422 true))

(declare-fun array_inv!12691 (array!35241) Bool)

(assert (=> start!51422 (array_inv!12691 a!3118)))

(declare-fun b!561382 () Bool)

(declare-fun res!352684 () Bool)

(assert (=> b!561382 (=> (not res!352684) (not e!323494))))

(assert (=> b!561382 (= res!352684 (and (= (size!17281 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17281 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17281 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51422 res!352679) b!561382))

(assert (= (and b!561382 res!352684) b!561381))

(assert (= (and b!561381 res!352677) b!561384))

(assert (= (and b!561384 res!352676) b!561379))

(assert (= (and b!561379 res!352678) b!561385))

(assert (= (and b!561385 res!352681) b!561380))

(assert (= (and b!561380 res!352686) b!561386))

(assert (= (and b!561386 res!352682) b!561375))

(assert (= (and b!561375 res!352683) b!561378))

(assert (= (and b!561378 res!352685) b!561383))

(assert (= (and b!561383 (not res!352688)) b!561377))

(assert (= (and b!561377 (not res!352687)) b!561374))

(assert (= (and b!561374 res!352680) b!561376))

(declare-fun m!539323 () Bool)

(assert (=> b!561381 m!539323))

(assert (=> b!561381 m!539323))

(declare-fun m!539325 () Bool)

(assert (=> b!561381 m!539325))

(assert (=> b!561374 m!539323))

(assert (=> b!561374 m!539323))

(declare-fun m!539327 () Bool)

(assert (=> b!561374 m!539327))

(declare-fun m!539329 () Bool)

(assert (=> b!561379 m!539329))

(declare-fun m!539331 () Bool)

(assert (=> start!51422 m!539331))

(declare-fun m!539333 () Bool)

(assert (=> start!51422 m!539333))

(declare-fun m!539335 () Bool)

(assert (=> b!561380 m!539335))

(declare-fun m!539337 () Bool)

(assert (=> b!561376 m!539337))

(declare-fun m!539339 () Bool)

(assert (=> b!561376 m!539339))

(assert (=> b!561377 m!539323))

(declare-fun m!539341 () Bool)

(assert (=> b!561377 m!539341))

(declare-fun m!539343 () Bool)

(assert (=> b!561384 m!539343))

(declare-fun m!539345 () Bool)

(assert (=> b!561386 m!539345))

(assert (=> b!561375 m!539323))

(declare-fun m!539347 () Bool)

(assert (=> b!561375 m!539347))

(assert (=> b!561375 m!539323))

(declare-fun m!539349 () Bool)

(assert (=> b!561375 m!539349))

(assert (=> b!561375 m!539323))

(declare-fun m!539351 () Bool)

(assert (=> b!561375 m!539351))

(declare-fun m!539353 () Bool)

(assert (=> b!561375 m!539353))

(declare-fun m!539355 () Bool)

(assert (=> b!561375 m!539355))

(declare-fun m!539357 () Bool)

(assert (=> b!561375 m!539357))

(assert (=> b!561378 m!539323))

(assert (=> b!561378 m!539323))

(declare-fun m!539359 () Bool)

(assert (=> b!561378 m!539359))

(declare-fun m!539361 () Bool)

(assert (=> b!561378 m!539361))

(declare-fun m!539363 () Bool)

(assert (=> b!561378 m!539363))

(declare-fun m!539365 () Bool)

(assert (=> b!561385 m!539365))

(push 1)

