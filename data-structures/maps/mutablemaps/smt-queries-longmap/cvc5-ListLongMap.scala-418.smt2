; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7846 () Bool)

(assert start!7846)

(declare-fun res!28667 () Bool)

(declare-fun e!31914 () Bool)

(assert (=> start!7846 (=> (not res!28667) (not e!31914))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7846 (= res!28667 (validMask!0 mask!2234))))

(assert (=> start!7846 e!31914))

(assert (=> start!7846 true))

(declare-datatypes ((array!3192 0))(
  ( (array!3193 (arr!1529 (Array (_ BitVec 32) (_ BitVec 64))) (size!1751 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3192)

(declare-fun array_inv!880 (array!3192) Bool)

(assert (=> start!7846 (array_inv!880 _keys!1794)))

(declare-fun b!49646 () Bool)

(declare-fun res!28668 () Bool)

(assert (=> b!49646 (=> (not res!28668) (not e!31914))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49646 (= res!28668 (and (= (size!1751 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3193 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1751 _keys!1794)) (bvslt i!836 (size!1751 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49647 () Bool)

(assert (=> b!49647 (= e!31914 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3192 (_ BitVec 32)) Bool)

(assert (=> b!49647 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1382 0))(
  ( (Unit!1383) )
))
(declare-fun lt!20835 () Unit!1382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3192 (_ BitVec 32) (_ BitVec 32)) Unit!1382)

(assert (=> b!49647 (= lt!20835 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7846 res!28667) b!49646))

(assert (= (and b!49646 res!28668) b!49647))

(declare-fun m!43005 () Bool)

(assert (=> start!7846 m!43005))

(declare-fun m!43007 () Bool)

(assert (=> start!7846 m!43007))

(declare-fun m!43009 () Bool)

(assert (=> b!49647 m!43009))

(declare-fun m!43011 () Bool)

(assert (=> b!49647 m!43011))

(push 1)

(assert (not b!49647))

(assert (not start!7846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

