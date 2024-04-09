; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82824 () Bool)

(assert start!82824)

(declare-fun b_free!18923 () Bool)

(declare-fun b_next!18923 () Bool)

(assert (=> start!82824 (= b_free!18923 (not b_next!18923))))

(declare-fun tp!65899 () Bool)

(declare-fun b_and!30429 () Bool)

(assert (=> start!82824 (= tp!65899 b_and!30429)))

(declare-fun b!965627 () Bool)

(declare-fun res!646473 () Bool)

(declare-fun e!544383 () Bool)

(assert (=> b!965627 (=> (not res!646473) (not e!544383))))

(declare-datatypes ((array!59527 0))(
  ( (array!59528 (arr!28628 (Array (_ BitVec 32) (_ BitVec 64))) (size!29108 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59527)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59527 (_ BitVec 32)) Bool)

(assert (=> b!965627 (= res!646473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965628 () Bool)

(declare-fun res!646474 () Bool)

(assert (=> b!965628 (=> (not res!646474) (not e!544383))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965628 (= res!646474 (validKeyInArray!0 (select (arr!28628 _keys!1686) i!803)))))

(declare-fun b!965629 () Bool)

(declare-fun res!646475 () Bool)

(assert (=> b!965629 (=> (not res!646475) (not e!544383))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!965629 (= res!646475 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29108 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29108 _keys!1686))))))

(declare-fun b!965630 () Bool)

(assert (=> b!965630 (= e!544383 (bvslt i!803 #b00000000000000000000000000000000))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33957 0))(
  ( (V!33958 (val!10916 Int)) )
))
(declare-datatypes ((ValueCell!10384 0))(
  ( (ValueCellFull!10384 (v!13474 V!33957)) (EmptyCell!10384) )
))
(declare-datatypes ((array!59529 0))(
  ( (array!59530 (arr!28629 (Array (_ BitVec 32) ValueCell!10384)) (size!29109 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59529)

(declare-fun minValue!1342 () V!33957)

(declare-fun defaultEntry!1403 () Int)

(declare-datatypes ((tuple2!14114 0))(
  ( (tuple2!14115 (_1!7067 (_ BitVec 64)) (_2!7067 V!33957)) )
))
(declare-datatypes ((List!19995 0))(
  ( (Nil!19992) (Cons!19991 (h!21153 tuple2!14114) (t!28366 List!19995)) )
))
(declare-datatypes ((ListLongMap!12825 0))(
  ( (ListLongMap!12826 (toList!6428 List!19995)) )
))
(declare-fun lt!431205 () ListLongMap!12825)

(declare-fun zeroValue!1342 () V!33957)

(declare-fun getCurrentListMap!3613 (array!59527 array!59529 (_ BitVec 32) (_ BitVec 32) V!33957 V!33957 (_ BitVec 32) Int) ListLongMap!12825)

(assert (=> b!965630 (= lt!431205 (getCurrentListMap!3613 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403))))

(declare-fun b!965631 () Bool)

(declare-fun e!544384 () Bool)

(declare-fun tp_is_empty!21731 () Bool)

(assert (=> b!965631 (= e!544384 tp_is_empty!21731)))

(declare-fun res!646476 () Bool)

(assert (=> start!82824 (=> (not res!646476) (not e!544383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82824 (= res!646476 (validMask!0 mask!2110))))

(assert (=> start!82824 e!544383))

(assert (=> start!82824 true))

(declare-fun e!544382 () Bool)

(declare-fun array_inv!22077 (array!59529) Bool)

(assert (=> start!82824 (and (array_inv!22077 _values!1400) e!544382)))

(declare-fun array_inv!22078 (array!59527) Bool)

(assert (=> start!82824 (array_inv!22078 _keys!1686)))

(assert (=> start!82824 tp!65899))

(assert (=> start!82824 tp_is_empty!21731))

(declare-fun mapIsEmpty!34591 () Bool)

(declare-fun mapRes!34591 () Bool)

(assert (=> mapIsEmpty!34591 mapRes!34591))

(declare-fun b!965632 () Bool)

(declare-fun e!544381 () Bool)

(assert (=> b!965632 (= e!544382 (and e!544381 mapRes!34591))))

(declare-fun condMapEmpty!34591 () Bool)

(declare-fun mapDefault!34591 () ValueCell!10384)

