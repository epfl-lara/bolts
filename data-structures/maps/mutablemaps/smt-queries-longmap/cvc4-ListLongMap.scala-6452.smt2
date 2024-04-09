; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82584 () Bool)

(assert start!82584)

(declare-fun b_free!18689 () Bool)

(declare-fun b_next!18689 () Bool)

(assert (=> start!82584 (= b_free!18689 (not b_next!18689))))

(declare-fun tp!65188 () Bool)

(declare-fun b_and!30195 () Bool)

(assert (=> start!82584 (= tp!65188 b_and!30195)))

(declare-fun b!961937 () Bool)

(declare-fun res!643864 () Bool)

(declare-fun e!542501 () Bool)

(assert (=> b!961937 (=> (not res!643864) (not e!542501))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-datatypes ((array!59067 0))(
  ( (array!59068 (arr!28398 (Array (_ BitVec 32) (_ BitVec 64))) (size!28878 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59067)

(assert (=> b!961937 (= res!643864 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28878 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28878 _keys!1686))))))

(declare-fun b!961938 () Bool)

(declare-fun res!643866 () Bool)

(assert (=> b!961938 (=> (not res!643866) (not e!542501))))

(declare-datatypes ((List!19834 0))(
  ( (Nil!19831) (Cons!19830 (h!20992 (_ BitVec 64)) (t!28205 List!19834)) )
))
(declare-fun arrayNoDuplicates!0 (array!59067 (_ BitVec 32) List!19834) Bool)

(assert (=> b!961938 (= res!643866 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19831))))

(declare-fun mapNonEmpty!34231 () Bool)

(declare-fun mapRes!34231 () Bool)

(declare-fun tp!65187 () Bool)

(declare-fun e!542503 () Bool)

(assert (=> mapNonEmpty!34231 (= mapRes!34231 (and tp!65187 e!542503))))

(declare-fun mapKey!34231 () (_ BitVec 32))

(declare-datatypes ((V!33637 0))(
  ( (V!33638 (val!10796 Int)) )
))
(declare-datatypes ((ValueCell!10264 0))(
  ( (ValueCellFull!10264 (v!13354 V!33637)) (EmptyCell!10264) )
))
(declare-datatypes ((array!59069 0))(
  ( (array!59070 (arr!28399 (Array (_ BitVec 32) ValueCell!10264)) (size!28879 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59069)

(declare-fun mapValue!34231 () ValueCell!10264)

(declare-fun mapRest!34231 () (Array (_ BitVec 32) ValueCell!10264))

(assert (=> mapNonEmpty!34231 (= (arr!28399 _values!1400) (store mapRest!34231 mapKey!34231 mapValue!34231))))

(declare-fun b!961939 () Bool)

(declare-fun e!542500 () Bool)

(declare-fun tp_is_empty!21491 () Bool)

(assert (=> b!961939 (= e!542500 tp_is_empty!21491)))

(declare-fun b!961940 () Bool)

(declare-fun res!643868 () Bool)

(assert (=> b!961940 (=> (not res!643868) (not e!542501))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961940 (= res!643868 (and (= (size!28879 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28878 _keys!1686) (size!28879 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34231 () Bool)

(assert (=> mapIsEmpty!34231 mapRes!34231))

(declare-fun b!961941 () Bool)

(declare-fun res!643867 () Bool)

(assert (=> b!961941 (=> (not res!643867) (not e!542501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59067 (_ BitVec 32)) Bool)

(assert (=> b!961941 (= res!643867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961942 () Bool)

(declare-fun res!643863 () Bool)

(assert (=> b!961942 (=> (not res!643863) (not e!542501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961942 (= res!643863 (validKeyInArray!0 (select (arr!28398 _keys!1686) i!803)))))

(declare-fun res!643865 () Bool)

(assert (=> start!82584 (=> (not res!643865) (not e!542501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82584 (= res!643865 (validMask!0 mask!2110))))

(assert (=> start!82584 e!542501))

(assert (=> start!82584 true))

(declare-fun e!542499 () Bool)

(declare-fun array_inv!21929 (array!59069) Bool)

(assert (=> start!82584 (and (array_inv!21929 _values!1400) e!542499)))

(declare-fun array_inv!21930 (array!59067) Bool)

(assert (=> start!82584 (array_inv!21930 _keys!1686)))

(assert (=> start!82584 tp!65188))

(assert (=> start!82584 tp_is_empty!21491))

(declare-fun b!961943 () Bool)

(assert (=> b!961943 (= e!542503 tp_is_empty!21491)))

(declare-fun b!961944 () Bool)

(assert (=> b!961944 (= e!542499 (and e!542500 mapRes!34231))))

(declare-fun condMapEmpty!34231 () Bool)

(declare-fun mapDefault!34231 () ValueCell!10264)

