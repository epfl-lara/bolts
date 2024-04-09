; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42580 () Bool)

(assert start!42580)

(declare-fun b_free!12007 () Bool)

(declare-fun b_next!12007 () Bool)

(assert (=> start!42580 (= b_free!12007 (not b_next!12007))))

(declare-fun tp!42061 () Bool)

(declare-fun b_and!20505 () Bool)

(assert (=> start!42580 (= tp!42061 b_and!20505)))

(declare-fun res!283616 () Bool)

(declare-fun e!278728 () Bool)

(assert (=> start!42580 (=> (not res!283616) (not e!278728))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42580 (= res!283616 (validMask!0 mask!1365))))

(assert (=> start!42580 e!278728))

(declare-fun tp_is_empty!13435 () Bool)

(assert (=> start!42580 tp_is_empty!13435))

(assert (=> start!42580 tp!42061))

(assert (=> start!42580 true))

(declare-datatypes ((array!30589 0))(
  ( (array!30590 (arr!14709 (Array (_ BitVec 32) (_ BitVec 64))) (size!15061 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30589)

(declare-fun array_inv!10600 (array!30589) Bool)

(assert (=> start!42580 (array_inv!10600 _keys!1025)))

(declare-datatypes ((V!19019 0))(
  ( (V!19020 (val!6762 Int)) )
))
(declare-datatypes ((ValueCell!6374 0))(
  ( (ValueCellFull!6374 (v!9051 V!19019)) (EmptyCell!6374) )
))
(declare-datatypes ((array!30591 0))(
  ( (array!30592 (arr!14710 (Array (_ BitVec 32) ValueCell!6374)) (size!15062 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30591)

(declare-fun e!278729 () Bool)

(declare-fun array_inv!10601 (array!30591) Bool)

(assert (=> start!42580 (and (array_inv!10601 _values!833) e!278729)))

(declare-fun b!474767 () Bool)

(declare-fun res!283614 () Bool)

(assert (=> b!474767 (=> (not res!283614) (not e!278728))))

(declare-datatypes ((List!9028 0))(
  ( (Nil!9025) (Cons!9024 (h!9880 (_ BitVec 64)) (t!15010 List!9028)) )
))
(declare-fun arrayNoDuplicates!0 (array!30589 (_ BitVec 32) List!9028) Bool)

(assert (=> b!474767 (= res!283614 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9025))))

(declare-fun mapNonEmpty!21871 () Bool)

(declare-fun mapRes!21871 () Bool)

(declare-fun tp!42060 () Bool)

(declare-fun e!278730 () Bool)

(assert (=> mapNonEmpty!21871 (= mapRes!21871 (and tp!42060 e!278730))))

(declare-fun mapKey!21871 () (_ BitVec 32))

(declare-fun mapRest!21871 () (Array (_ BitVec 32) ValueCell!6374))

(declare-fun mapValue!21871 () ValueCell!6374)

(assert (=> mapNonEmpty!21871 (= (arr!14710 _values!833) (store mapRest!21871 mapKey!21871 mapValue!21871))))

(declare-fun b!474768 () Bool)

(declare-fun res!283617 () Bool)

(assert (=> b!474768 (=> (not res!283617) (not e!278728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30589 (_ BitVec 32)) Bool)

(assert (=> b!474768 (= res!283617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474769 () Bool)

(declare-fun e!278727 () Bool)

(assert (=> b!474769 (= e!278727 tp_is_empty!13435)))

(declare-fun b!474770 () Bool)

(assert (=> b!474770 (= e!278728 false)))

(declare-fun zeroValue!794 () V!19019)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8916 0))(
  ( (tuple2!8917 (_1!4468 (_ BitVec 64)) (_2!4468 V!19019)) )
))
(declare-datatypes ((List!9029 0))(
  ( (Nil!9026) (Cons!9025 (h!9881 tuple2!8916) (t!15011 List!9029)) )
))
(declare-datatypes ((ListLongMap!7843 0))(
  ( (ListLongMap!7844 (toList!3937 List!9029)) )
))
(declare-fun lt!216302 () ListLongMap!7843)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!19019)

(declare-fun getCurrentListMapNoExtraKeys!2091 (array!30589 array!30591 (_ BitVec 32) (_ BitVec 32) V!19019 V!19019 (_ BitVec 32) Int) ListLongMap!7843)

(assert (=> b!474770 (= lt!216302 (getCurrentListMapNoExtraKeys!2091 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19019)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!216303 () ListLongMap!7843)

(assert (=> b!474770 (= lt!216303 (getCurrentListMapNoExtraKeys!2091 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474771 () Bool)

(assert (=> b!474771 (= e!278729 (and e!278727 mapRes!21871))))

(declare-fun condMapEmpty!21871 () Bool)

(declare-fun mapDefault!21871 () ValueCell!6374)

