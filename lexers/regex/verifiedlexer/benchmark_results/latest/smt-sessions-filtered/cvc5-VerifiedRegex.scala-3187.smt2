; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!186042 () Bool)

(assert start!186042)

(declare-fun b!1861156 () Bool)

(declare-fun res!833409 () Bool)

(declare-fun e!1188580 () Bool)

(assert (=> b!1861156 (=> (not res!833409) (not e!1188580))))

(declare-datatypes ((T!32890 0))(
  ( (T!32891 (val!5909 Int)) )
))
(declare-datatypes ((List!20726 0))(
  ( (Nil!20644) (Cons!20644 (h!26045 T!32890) (t!172751 List!20726)) )
))
(declare-datatypes ((IArray!13683 0))(
  ( (IArray!13684 (innerList!6899 List!20726)) )
))
(declare-datatypes ((Conc!6839 0))(
  ( (Node!6839 (left!16612 Conc!6839) (right!16942 Conc!6839) (csize!13908 Int) (cheight!7050 Int)) (Leaf!10027 (xs!9715 IArray!13683) (csize!13909 Int)) (Empty!6839) )
))
(declare-fun t!4595 () Conc!6839)

(declare-fun isEmpty!12838 (Conc!6839) Bool)

(assert (=> b!1861156 (= res!833409 (not (isEmpty!12838 t!4595)))))

(declare-fun b!1861157 () Bool)

(declare-fun e!1188579 () Bool)

(declare-fun tp!530357 () Bool)

(assert (=> b!1861157 (= e!1188579 tp!530357)))

(declare-fun res!833410 () Bool)

(assert (=> start!186042 (=> (not res!833410) (not e!1188580))))

(declare-fun isBalanced!2140 (Conc!6839) Bool)

(assert (=> start!186042 (= res!833410 (isBalanced!2140 t!4595))))

(assert (=> start!186042 e!1188580))

(declare-fun e!1188578 () Bool)

(declare-fun inv!27190 (Conc!6839) Bool)

(assert (=> start!186042 (and (inv!27190 t!4595) e!1188578)))

(declare-fun b!1861158 () Bool)

(declare-fun inv!27191 (IArray!13683) Bool)

(assert (=> b!1861158 (= e!1188578 (and (inv!27191 (xs!9715 t!4595)) e!1188579))))

(declare-fun b!1861159 () Bool)

(declare-fun tp!530358 () Bool)

(declare-fun tp!530359 () Bool)

(assert (=> b!1861159 (= e!1188578 (and (inv!27190 (left!16612 t!4595)) tp!530358 (inv!27190 (right!16942 t!4595)) tp!530359))))

(declare-fun b!1861160 () Bool)

(assert (=> b!1861160 (= e!1188580 false)))

(declare-fun lt!717760 () Int)

(declare-fun size!16327 (List!20726) Int)

(declare-fun list!8403 (IArray!13683) List!20726)

(assert (=> b!1861160 (= lt!717760 (size!16327 (list!8403 (xs!9715 t!4595))))))

(declare-fun b!1861161 () Bool)

(declare-fun res!833408 () Bool)

(assert (=> b!1861161 (=> (not res!833408) (not e!1188580))))

(assert (=> b!1861161 (= res!833408 (and (is-Leaf!10027 t!4595) (not (= (csize!13909 t!4595) 1))))))

(assert (= (and start!186042 res!833410) b!1861156))

(assert (= (and b!1861156 res!833409) b!1861161))

(assert (= (and b!1861161 res!833408) b!1861160))

(assert (= (and start!186042 (is-Node!6839 t!4595)) b!1861159))

(assert (= b!1861158 b!1861157))

(assert (= (and start!186042 (is-Leaf!10027 t!4595)) b!1861158))

(declare-fun m!2284863 () Bool)

(assert (=> b!1861159 m!2284863))

(declare-fun m!2284865 () Bool)

(assert (=> b!1861159 m!2284865))

(declare-fun m!2284867 () Bool)

(assert (=> b!1861160 m!2284867))

(assert (=> b!1861160 m!2284867))

(declare-fun m!2284869 () Bool)

(assert (=> b!1861160 m!2284869))

(declare-fun m!2284871 () Bool)

(assert (=> start!186042 m!2284871))

(declare-fun m!2284873 () Bool)

(assert (=> start!186042 m!2284873))

(declare-fun m!2284875 () Bool)

(assert (=> b!1861158 m!2284875))

(declare-fun m!2284877 () Bool)

(assert (=> b!1861156 m!2284877))

(push 1)

(assert (not b!1861157))

(assert (not b!1861159))

(assert (not b!1861158))

(assert (not b!1861156))

(assert (not start!186042))

(assert (not b!1861160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

