; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25856 () Bool)

(assert start!25856)

(declare-fun res!131781 () Bool)

(declare-fun e!172887 () Bool)

(assert (=> start!25856 (=> (not res!131781) (not e!172887))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25856 (= res!131781 (validMask!0 mask!3868))))

(assert (=> start!25856 e!172887))

(declare-datatypes ((array!12990 0))(
  ( (array!12991 (arr!6147 (Array (_ BitVec 32) (_ BitVec 64))) (size!6499 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12990)

(declare-fun array_inv!4101 (array!12990) Bool)

(assert (=> start!25856 (array_inv!4101 a!3325)))

(assert (=> start!25856 true))

(declare-fun b!267445 () Bool)

(declare-fun res!131783 () Bool)

(assert (=> b!267445 (=> (not res!131783) (not e!172887))))

(declare-datatypes ((List!3976 0))(
  ( (Nil!3973) (Cons!3972 (h!4639 (_ BitVec 64)) (t!9066 List!3976)) )
))
(declare-fun noDuplicate!115 (List!3976) Bool)

(assert (=> b!267445 (= res!131783 (noDuplicate!115 Nil!3973))))

(declare-fun b!267446 () Bool)

(declare-fun res!131780 () Bool)

(assert (=> b!267446 (=> (not res!131780) (not e!172887))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267446 (= res!131780 (validKeyInArray!0 k!2581))))

(declare-fun b!267447 () Bool)

(declare-fun res!131784 () Bool)

(assert (=> b!267447 (=> (not res!131784) (not e!172887))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267447 (= res!131784 (and (= (size!6499 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6499 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6499 a!3325))))))

(declare-fun b!267448 () Bool)

(declare-fun res!131782 () Bool)

(assert (=> b!267448 (=> (not res!131782) (not e!172887))))

(assert (=> b!267448 (= res!131782 (and (bvsle #b00000000000000000000000000000000 (size!6499 a!3325)) (bvslt (size!6499 a!3325) #b01111111111111111111111111111111)))))

(declare-fun b!267449 () Bool)

(declare-fun e!172886 () Bool)

(declare-fun contains!1924 (List!3976 (_ BitVec 64)) Bool)

(assert (=> b!267449 (= e!172886 (contains!1924 Nil!3973 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!267450 () Bool)

(assert (=> b!267450 (= e!172887 e!172886)))

(declare-fun res!131779 () Bool)

(assert (=> b!267450 (=> res!131779 e!172886)))

(assert (=> b!267450 (= res!131779 (contains!1924 Nil!3973 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!25856 res!131781) b!267447))

(assert (= (and b!267447 res!131784) b!267446))

(assert (= (and b!267446 res!131780) b!267448))

(assert (= (and b!267448 res!131782) b!267445))

(assert (= (and b!267445 res!131783) b!267450))

(assert (= (and b!267450 (not res!131779)) b!267449))

(declare-fun m!283837 () Bool)

(assert (=> start!25856 m!283837))

(declare-fun m!283839 () Bool)

(assert (=> start!25856 m!283839))

(declare-fun m!283841 () Bool)

(assert (=> b!267449 m!283841))

(declare-fun m!283843 () Bool)

(assert (=> b!267450 m!283843))

(declare-fun m!283845 () Bool)

(assert (=> b!267445 m!283845))

(declare-fun m!283847 () Bool)

(assert (=> b!267446 m!283847))

(push 1)

(assert (not b!267450))

(assert (not b!267445))

(assert (not b!267446))

(assert (not start!25856))

(assert (not b!267449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64271 () Bool)

(declare-fun lt!134717 () Bool)

(declare-fun content!182 (List!3976) (Set (_ BitVec 64)))

(assert (=> d!64271 (= lt!134717 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!182 Nil!3973)))))

(declare-fun e!172906 () Bool)

(assert (=> d!64271 (= lt!134717 e!172906)))

(declare-fun res!131802 () Bool)

(assert (=> d!64271 (=> (not res!131802) (not e!172906))))

(assert (=> d!64271 (= res!131802 (is-Cons!3972 Nil!3973))))

(assert (=> d!64271 (= (contains!1924 Nil!3973 #b1000000000000000000000000000000000000000000000000000000000000000) lt!134717)))

(declare-fun b!267467 () Bool)

(declare-fun e!172905 () Bool)

(assert (=> b!267467 (= e!172906 e!172905)))

(declare-fun res!131801 () Bool)

(assert (=> b!267467 (=> res!131801 e!172905)))

(assert (=> b!267467 (= res!131801 (= (h!4639 Nil!3973) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!267468 () Bool)

(assert (=> b!267468 (= e!172905 (contains!1924 (t!9066 Nil!3973) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64271 res!131802) b!267467))

(assert (= (and b!267467 (not res!131801)) b!267468))

