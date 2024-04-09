; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27100 () Bool)

(assert start!27100)

(declare-fun b!279825 () Bool)

(declare-fun e!178390 () Bool)

(assert (=> b!279825 (= e!178390 false)))

(declare-fun lt!138761 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4424 0))(
  ( (Nil!4421) (Cons!4420 (h!5090 (_ BitVec 64)) (t!9514 List!4424)) )
))
(declare-fun contains!1974 (List!4424 (_ BitVec 64)) Bool)

(assert (=> b!279825 (= lt!138761 (contains!1974 Nil!4421 k!2581))))

(declare-fun b!279827 () Bool)

(declare-fun res!142933 () Bool)

(declare-fun e!178388 () Bool)

(assert (=> b!279827 (=> (not res!142933) (not e!178388))))

(declare-datatypes ((array!13907 0))(
  ( (array!13908 (arr!6595 (Array (_ BitVec 32) (_ BitVec 64))) (size!6947 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13907)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!279827 (= res!142933 (and (= (size!6947 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6947 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6947 a!3325))))))

(declare-fun b!279828 () Bool)

(declare-fun res!142942 () Bool)

(assert (=> b!279828 (=> (not res!142942) (not e!178390))))

(assert (=> b!279828 (= res!142942 (not (contains!1974 Nil!4421 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279829 () Bool)

(assert (=> b!279829 (= e!178388 e!178390)))

(declare-fun res!142940 () Bool)

(assert (=> b!279829 (=> (not res!142940) (not e!178390))))

(declare-datatypes ((SeekEntryResult!1764 0))(
  ( (MissingZero!1764 (index!9226 (_ BitVec 32))) (Found!1764 (index!9227 (_ BitVec 32))) (Intermediate!1764 (undefined!2576 Bool) (index!9228 (_ BitVec 32)) (x!27442 (_ BitVec 32))) (Undefined!1764) (MissingVacant!1764 (index!9229 (_ BitVec 32))) )
))
(declare-fun lt!138760 () SeekEntryResult!1764)

(assert (=> b!279829 (= res!142940 (or (= lt!138760 (MissingZero!1764 i!1267)) (= lt!138760 (MissingVacant!1764 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13907 (_ BitVec 32)) SeekEntryResult!1764)

(assert (=> b!279829 (= lt!138760 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!279830 () Bool)

(declare-fun res!142936 () Bool)

(assert (=> b!279830 (=> (not res!142936) (not e!178390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13907 (_ BitVec 32)) Bool)

(assert (=> b!279830 (= res!142936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279831 () Bool)

(declare-fun res!142935 () Bool)

(assert (=> b!279831 (=> (not res!142935) (not e!178390))))

(assert (=> b!279831 (= res!142935 (not (= startIndex!26 i!1267)))))

(declare-fun b!279832 () Bool)

(declare-fun res!142939 () Bool)

(assert (=> b!279832 (=> (not res!142939) (not e!178390))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279832 (= res!142939 (validKeyInArray!0 (select (arr!6595 a!3325) startIndex!26)))))

(declare-fun b!279833 () Bool)

(declare-fun res!142938 () Bool)

(assert (=> b!279833 (=> (not res!142938) (not e!178390))))

(declare-fun noDuplicate!158 (List!4424) Bool)

(assert (=> b!279833 (= res!142938 (noDuplicate!158 Nil!4421))))

(declare-fun b!279826 () Bool)

(declare-fun res!142932 () Bool)

(assert (=> b!279826 (=> (not res!142932) (not e!178388))))

(declare-fun arrayContainsKey!0 (array!13907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279826 (= res!142932 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!142943 () Bool)

(assert (=> start!27100 (=> (not res!142943) (not e!178388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27100 (= res!142943 (validMask!0 mask!3868))))

(assert (=> start!27100 e!178388))

(declare-fun array_inv!4549 (array!13907) Bool)

(assert (=> start!27100 (array_inv!4549 a!3325)))

(assert (=> start!27100 true))

(declare-fun b!279834 () Bool)

(declare-fun res!142934 () Bool)

(assert (=> b!279834 (=> (not res!142934) (not e!178388))))

(declare-fun arrayNoDuplicates!0 (array!13907 (_ BitVec 32) List!4424) Bool)

(assert (=> b!279834 (= res!142934 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4421))))

(declare-fun b!279835 () Bool)

(declare-fun res!142937 () Bool)

(assert (=> b!279835 (=> (not res!142937) (not e!178390))))

(assert (=> b!279835 (= res!142937 (not (contains!1974 Nil!4421 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279836 () Bool)

(declare-fun res!142941 () Bool)

(assert (=> b!279836 (=> (not res!142941) (not e!178390))))

(assert (=> b!279836 (= res!142941 (and (bvslt (size!6947 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6947 a!3325))))))

(declare-fun b!279837 () Bool)

(declare-fun res!142944 () Bool)

(assert (=> b!279837 (=> (not res!142944) (not e!178388))))

(assert (=> b!279837 (= res!142944 (validKeyInArray!0 k!2581))))

(assert (= (and start!27100 res!142943) b!279827))

(assert (= (and b!279827 res!142933) b!279837))

(assert (= (and b!279837 res!142944) b!279834))

(assert (= (and b!279834 res!142934) b!279826))

(assert (= (and b!279826 res!142932) b!279829))

(assert (= (and b!279829 res!142940) b!279830))

(assert (= (and b!279830 res!142936) b!279831))

(assert (= (and b!279831 res!142935) b!279832))

(assert (= (and b!279832 res!142939) b!279836))

(assert (= (and b!279836 res!142941) b!279833))

(assert (= (and b!279833 res!142938) b!279828))

(assert (= (and b!279828 res!142942) b!279835))

(assert (= (and b!279835 res!142937) b!279825))

(declare-fun m!294487 () Bool)

(assert (=> b!279833 m!294487))

(declare-fun m!294489 () Bool)

(assert (=> b!279835 m!294489))

(declare-fun m!294491 () Bool)

(assert (=> b!279834 m!294491))

(declare-fun m!294493 () Bool)

(assert (=> b!279826 m!294493))

(declare-fun m!294495 () Bool)

(assert (=> b!279832 m!294495))

(assert (=> b!279832 m!294495))

(declare-fun m!294497 () Bool)

(assert (=> b!279832 m!294497))

(declare-fun m!294499 () Bool)

(assert (=> b!279830 m!294499))

(declare-fun m!294501 () Bool)

(assert (=> b!279828 m!294501))

(declare-fun m!294503 () Bool)

(assert (=> b!279829 m!294503))

(declare-fun m!294505 () Bool)

(assert (=> b!279837 m!294505))

(declare-fun m!294507 () Bool)

(assert (=> start!27100 m!294507))

(declare-fun m!294509 () Bool)

(assert (=> start!27100 m!294509))

(declare-fun m!294511 () Bool)

(assert (=> b!279825 m!294511))

(push 1)

