; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82862 () Bool)

(assert start!82862)

(declare-fun b_free!18961 () Bool)

(declare-fun b_next!18961 () Bool)

(assert (=> start!82862 (= b_free!18961 (not b_next!18961))))

(declare-fun tp!66012 () Bool)

(declare-fun b_and!30467 () Bool)

(assert (=> start!82862 (= tp!66012 b_and!30467)))

(declare-fun b!966140 () Bool)

(declare-fun res!646815 () Bool)

(declare-fun e!544667 () Bool)

(assert (=> b!966140 (=> (not res!646815) (not e!544667))))

(declare-datatypes ((array!59601 0))(
  ( (array!59602 (arr!28665 (Array (_ BitVec 32) (_ BitVec 64))) (size!29145 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59601)

(declare-datatypes ((List!20020 0))(
  ( (Nil!20017) (Cons!20016 (h!21178 (_ BitVec 64)) (t!28391 List!20020)) )
))
(declare-fun arrayNoDuplicates!0 (array!59601 (_ BitVec 32) List!20020) Bool)

(assert (=> b!966140 (= res!646815 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20017))))

(declare-fun b!966141 () Bool)

(declare-fun res!646817 () Bool)

(assert (=> b!966141 (=> (not res!646817) (not e!544667))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34009 0))(
  ( (V!34010 (val!10935 Int)) )
))
(declare-datatypes ((ValueCell!10403 0))(
  ( (ValueCellFull!10403 (v!13493 V!34009)) (EmptyCell!10403) )
))
(declare-datatypes ((array!59603 0))(
  ( (array!59604 (arr!28666 (Array (_ BitVec 32) ValueCell!10403)) (size!29146 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59603)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!966141 (= res!646817 (and (= (size!29146 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29145 _keys!1686) (size!29146 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966142 () Bool)

(assert (=> b!966142 (= e!544667 false)))

(declare-fun minValue!1342 () V!34009)

(declare-fun lt!431262 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34009)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14144 0))(
  ( (tuple2!14145 (_1!7082 (_ BitVec 64)) (_2!7082 V!34009)) )
))
(declare-datatypes ((List!20021 0))(
  ( (Nil!20018) (Cons!20017 (h!21179 tuple2!14144) (t!28392 List!20021)) )
))
(declare-datatypes ((ListLongMap!12855 0))(
  ( (ListLongMap!12856 (toList!6443 List!20021)) )
))
(declare-fun contains!5494 (ListLongMap!12855 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3628 (array!59601 array!59603 (_ BitVec 32) (_ BitVec 32) V!34009 V!34009 (_ BitVec 32) Int) ListLongMap!12855)

(assert (=> b!966142 (= lt!431262 (contains!5494 (getCurrentListMap!3628 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28665 _keys!1686) i!803)))))

(declare-fun res!646816 () Bool)

(assert (=> start!82862 (=> (not res!646816) (not e!544667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82862 (= res!646816 (validMask!0 mask!2110))))

(assert (=> start!82862 e!544667))

(assert (=> start!82862 true))

(declare-fun e!544669 () Bool)

(declare-fun array_inv!22103 (array!59603) Bool)

(assert (=> start!82862 (and (array_inv!22103 _values!1400) e!544669)))

(declare-fun array_inv!22104 (array!59601) Bool)

(assert (=> start!82862 (array_inv!22104 _keys!1686)))

(assert (=> start!82862 tp!66012))

(declare-fun tp_is_empty!21769 () Bool)

(assert (=> start!82862 tp_is_empty!21769))

(declare-fun b!966143 () Bool)

(declare-fun e!544665 () Bool)

(declare-fun mapRes!34648 () Bool)

(assert (=> b!966143 (= e!544669 (and e!544665 mapRes!34648))))

(declare-fun condMapEmpty!34648 () Bool)

(declare-fun mapDefault!34648 () ValueCell!10403)

