; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134284 () Bool)

(assert start!134284)

(declare-fun b!1567974 () Bool)

(declare-fun res!1071802 () Bool)

(declare-fun e!874124 () Bool)

(assert (=> b!1567974 (=> (not res!1071802) (not e!874124))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104715 0))(
  ( (array!104716 (arr!50533 (Array (_ BitVec 32) (_ BitVec 64))) (size!51084 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104715)

(assert (=> b!1567974 (= res!1071802 (bvslt from!2856 (size!51084 a!3481)))))

(declare-fun b!1567975 () Bool)

(declare-fun res!1071800 () Bool)

(assert (=> b!1567975 (=> (not res!1071800) (not e!874124))))

(declare-datatypes ((List!36844 0))(
  ( (Nil!36841) (Cons!36840 (h!38288 (_ BitVec 64)) (t!51759 List!36844)) )
))
(declare-fun acc!619 () List!36844)

(declare-fun contains!10403 (List!36844 (_ BitVec 64)) Bool)

(assert (=> b!1567975 (= res!1071800 (not (contains!10403 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1071798 () Bool)

(assert (=> start!134284 (=> (not res!1071798) (not e!874124))))

(assert (=> start!134284 (= res!1071798 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51084 a!3481)) (bvslt (size!51084 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134284 e!874124))

(assert (=> start!134284 true))

(declare-fun array_inv!39178 (array!104715) Bool)

(assert (=> start!134284 (array_inv!39178 a!3481)))

(declare-fun e!874125 () Bool)

(declare-fun b!1567976 () Bool)

(assert (=> b!1567976 (= e!874125 (not (contains!10403 acc!619 (select (arr!50533 a!3481) from!2856))))))

(declare-fun b!1567977 () Bool)

(declare-fun res!1071799 () Bool)

(assert (=> b!1567977 (=> (not res!1071799) (not e!874124))))

(declare-fun noDuplicate!2694 (List!36844) Bool)

(assert (=> b!1567977 (= res!1071799 (noDuplicate!2694 acc!619))))

(declare-fun b!1567978 () Bool)

(assert (=> b!1567978 (= e!874124 false)))

(declare-fun lt!673036 () Bool)

(assert (=> b!1567978 (= lt!673036 e!874125)))

(declare-fun res!1071801 () Bool)

(assert (=> b!1567978 (=> res!1071801 e!874125)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567978 (= res!1071801 (not (validKeyInArray!0 (select (arr!50533 a!3481) from!2856))))))

(declare-fun b!1567979 () Bool)

(declare-fun res!1071803 () Bool)

(assert (=> b!1567979 (=> (not res!1071803) (not e!874124))))

(assert (=> b!1567979 (= res!1071803 (not (contains!10403 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!134284 res!1071798) b!1567977))

(assert (= (and b!1567977 res!1071799) b!1567979))

(assert (= (and b!1567979 res!1071803) b!1567975))

(assert (= (and b!1567975 res!1071800) b!1567974))

(assert (= (and b!1567974 res!1071802) b!1567978))

(assert (= (and b!1567978 (not res!1071801)) b!1567976))

(declare-fun m!1442755 () Bool)

(assert (=> start!134284 m!1442755))

(declare-fun m!1442757 () Bool)

(assert (=> b!1567979 m!1442757))

(declare-fun m!1442759 () Bool)

(assert (=> b!1567978 m!1442759))

(assert (=> b!1567978 m!1442759))

(declare-fun m!1442761 () Bool)

(assert (=> b!1567978 m!1442761))

(declare-fun m!1442763 () Bool)

(assert (=> b!1567975 m!1442763))

(declare-fun m!1442765 () Bool)

(assert (=> b!1567977 m!1442765))

(assert (=> b!1567976 m!1442759))

(assert (=> b!1567976 m!1442759))

(declare-fun m!1442767 () Bool)

(assert (=> b!1567976 m!1442767))

(push 1)

(assert (not b!1567975))

(assert (not start!134284))

(assert (not b!1567979))

(assert (not b!1567976))

(assert (not b!1567978))

(assert (not b!1567977))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

