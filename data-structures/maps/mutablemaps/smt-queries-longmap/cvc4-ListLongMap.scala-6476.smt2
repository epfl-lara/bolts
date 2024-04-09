; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82728 () Bool)

(assert start!82728)

(declare-fun b_free!18833 () Bool)

(declare-fun b_next!18833 () Bool)

(assert (=> start!82728 (= b_free!18833 (not b_next!18833))))

(declare-fun tp!65619 () Bool)

(declare-fun b_and!30339 () Bool)

(assert (=> start!82728 (= tp!65619 b_and!30339)))

(declare-fun b!964202 () Bool)

(declare-fun res!645483 () Bool)

(declare-fun e!543617 () Bool)

(assert (=> b!964202 (=> (not res!645483) (not e!543617))))

(declare-datatypes ((array!59343 0))(
  ( (array!59344 (arr!28536 (Array (_ BitVec 32) (_ BitVec 64))) (size!29016 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59343)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964202 (= res!645483 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29016 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29016 _keys!1686))))))

(declare-fun b!964203 () Bool)

(declare-fun res!645486 () Bool)

(assert (=> b!964203 (=> (not res!645486) (not e!543617))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33829 0))(
  ( (V!33830 (val!10868 Int)) )
))
(declare-datatypes ((ValueCell!10336 0))(
  ( (ValueCellFull!10336 (v!13426 V!33829)) (EmptyCell!10336) )
))
(declare-datatypes ((array!59345 0))(
  ( (array!59346 (arr!28537 (Array (_ BitVec 32) ValueCell!10336)) (size!29017 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59345)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!964203 (= res!645486 (and (= (size!29017 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29016 _keys!1686) (size!29017 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964204 () Bool)

(declare-fun res!645488 () Bool)

(assert (=> b!964204 (=> (not res!645488) (not e!543617))))

(declare-datatypes ((List!19928 0))(
  ( (Nil!19925) (Cons!19924 (h!21086 (_ BitVec 64)) (t!28299 List!19928)) )
))
(declare-fun arrayNoDuplicates!0 (array!59343 (_ BitVec 32) List!19928) Bool)

(assert (=> b!964204 (= res!645488 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19925))))

(declare-fun mapIsEmpty!34447 () Bool)

(declare-fun mapRes!34447 () Bool)

(assert (=> mapIsEmpty!34447 mapRes!34447))

(declare-fun b!964205 () Bool)

(declare-fun e!543618 () Bool)

(declare-fun e!543619 () Bool)

(assert (=> b!964205 (= e!543618 (and e!543619 mapRes!34447))))

(declare-fun condMapEmpty!34447 () Bool)

(declare-fun mapDefault!34447 () ValueCell!10336)

