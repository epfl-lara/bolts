; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82794 () Bool)

(assert start!82794)

(declare-fun b_free!18899 () Bool)

(declare-fun b_next!18899 () Bool)

(assert (=> start!82794 (= b_free!18899 (not b_next!18899))))

(declare-fun tp!65817 () Bool)

(declare-fun b_and!30405 () Bool)

(assert (=> start!82794 (= tp!65817 b_and!30405)))

(declare-fun mapIsEmpty!34546 () Bool)

(declare-fun mapRes!34546 () Bool)

(assert (=> mapIsEmpty!34546 mapRes!34546))

(declare-fun b!965231 () Bool)

(declare-fun e!544156 () Bool)

(declare-fun tp_is_empty!21701 () Bool)

(assert (=> b!965231 (= e!544156 tp_is_empty!21701)))

(declare-fun b!965232 () Bool)

(declare-fun res!646217 () Bool)

(declare-fun e!544159 () Bool)

(assert (=> b!965232 (=> (not res!646217) (not e!544159))))

(declare-datatypes ((array!59467 0))(
  ( (array!59468 (arr!28598 (Array (_ BitVec 32) (_ BitVec 64))) (size!29078 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59467)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965232 (= res!646217 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29078 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29078 _keys!1686))))))

(declare-fun res!646212 () Bool)

(assert (=> start!82794 (=> (not res!646212) (not e!544159))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82794 (= res!646212 (validMask!0 mask!2110))))

(assert (=> start!82794 e!544159))

(assert (=> start!82794 true))

(declare-datatypes ((V!33917 0))(
  ( (V!33918 (val!10901 Int)) )
))
(declare-datatypes ((ValueCell!10369 0))(
  ( (ValueCellFull!10369 (v!13459 V!33917)) (EmptyCell!10369) )
))
(declare-datatypes ((array!59469 0))(
  ( (array!59470 (arr!28599 (Array (_ BitVec 32) ValueCell!10369)) (size!29079 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59469)

(declare-fun e!544155 () Bool)

(declare-fun array_inv!22053 (array!59469) Bool)

(assert (=> start!82794 (and (array_inv!22053 _values!1400) e!544155)))

(declare-fun array_inv!22054 (array!59467) Bool)

(assert (=> start!82794 (array_inv!22054 _keys!1686)))

(assert (=> start!82794 tp!65817))

(assert (=> start!82794 tp_is_empty!21701))

(declare-fun b!965233 () Bool)

(declare-fun res!646216 () Bool)

(assert (=> b!965233 (=> (not res!646216) (not e!544159))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!965233 (= res!646216 (and (= (size!29079 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29078 _keys!1686) (size!29079 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965234 () Bool)

(declare-fun res!646215 () Bool)

(assert (=> b!965234 (=> (not res!646215) (not e!544159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59467 (_ BitVec 32)) Bool)

(assert (=> b!965234 (= res!646215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965235 () Bool)

(declare-fun res!646213 () Bool)

(assert (=> b!965235 (=> (not res!646213) (not e!544159))))

(declare-datatypes ((List!19971 0))(
  ( (Nil!19968) (Cons!19967 (h!21129 (_ BitVec 64)) (t!28342 List!19971)) )
))
(declare-fun arrayNoDuplicates!0 (array!59467 (_ BitVec 32) List!19971) Bool)

(assert (=> b!965235 (= res!646213 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19968))))

(declare-fun b!965236 () Bool)

(assert (=> b!965236 (= e!544155 (and e!544156 mapRes!34546))))

(declare-fun condMapEmpty!34546 () Bool)

(declare-fun mapDefault!34546 () ValueCell!10369)

