; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71120 () Bool)

(assert start!71120)

(declare-fun b_free!13283 () Bool)

(declare-fun b_next!13283 () Bool)

(assert (=> start!71120 (= b_free!13283 (not b_next!13283))))

(declare-fun tp!46605 () Bool)

(declare-fun b_and!22215 () Bool)

(assert (=> start!71120 (= tp!46605 b_and!22215)))

(declare-datatypes ((V!24991 0))(
  ( (V!24992 (val!7544 Int)) )
))
(declare-datatypes ((tuple2!9990 0))(
  ( (tuple2!9991 (_1!5005 (_ BitVec 64)) (_2!5005 V!24991)) )
))
(declare-fun lt!372997 () tuple2!9990)

(declare-fun e!459597 () Bool)

(declare-fun b!825549 () Bool)

(declare-datatypes ((List!15834 0))(
  ( (Nil!15831) (Cons!15830 (h!16959 tuple2!9990) (t!22187 List!15834)) )
))
(declare-datatypes ((ListLongMap!8827 0))(
  ( (ListLongMap!8828 (toList!4429 List!15834)) )
))
(declare-fun lt!373003 () ListLongMap!8827)

(declare-fun lt!373006 () tuple2!9990)

(declare-fun lt!373002 () ListLongMap!8827)

(declare-fun +!1890 (ListLongMap!8827 tuple2!9990) ListLongMap!8827)

(assert (=> b!825549 (= e!459597 (= lt!373003 (+!1890 (+!1890 lt!373002 lt!372997) lt!373006)))))

(declare-fun b!825550 () Bool)

(declare-fun res!562902 () Bool)

(declare-fun e!459596 () Bool)

(assert (=> b!825550 (=> (not res!562902) (not e!459596))))

(declare-datatypes ((array!46128 0))(
  ( (array!46129 (arr!22106 (Array (_ BitVec 32) (_ BitVec 64))) (size!22527 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46128)

(declare-datatypes ((List!15835 0))(
  ( (Nil!15832) (Cons!15831 (h!16960 (_ BitVec 64)) (t!22188 List!15835)) )
))
(declare-fun arrayNoDuplicates!0 (array!46128 (_ BitVec 32) List!15835) Bool)

(assert (=> b!825550 (= res!562902 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15832))))

(declare-fun b!825551 () Bool)

(declare-fun e!459594 () Bool)

(assert (=> b!825551 (= e!459596 (not e!459594))))

(declare-fun res!562899 () Bool)

(assert (=> b!825551 (=> res!562899 e!459594)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825551 (= res!562899 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!373000 () ListLongMap!8827)

(assert (=> b!825551 (= lt!373000 lt!373002)))

(declare-fun zeroValueBefore!34 () V!24991)

(declare-datatypes ((Unit!28299 0))(
  ( (Unit!28300) )
))
(declare-fun lt!372996 () Unit!28299)

(declare-fun zeroValueAfter!34 () V!24991)

(declare-fun minValue!754 () V!24991)

(declare-datatypes ((ValueCell!7081 0))(
  ( (ValueCellFull!7081 (v!9973 V!24991)) (EmptyCell!7081) )
))
(declare-datatypes ((array!46130 0))(
  ( (array!46131 (arr!22107 (Array (_ BitVec 32) ValueCell!7081)) (size!22528 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46130)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!561 (array!46128 array!46130 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24991 V!24991 V!24991 V!24991 (_ BitVec 32) Int) Unit!28299)

(assert (=> b!825551 (= lt!372996 (lemmaNoChangeToArrayThenSameMapNoExtras!561 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2445 (array!46128 array!46130 (_ BitVec 32) (_ BitVec 32) V!24991 V!24991 (_ BitVec 32) Int) ListLongMap!8827)

(assert (=> b!825551 (= lt!373002 (getCurrentListMapNoExtraKeys!2445 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825551 (= lt!373000 (getCurrentListMapNoExtraKeys!2445 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825552 () Bool)

(assert (=> b!825552 (= e!459594 true)))

(declare-fun lt!372999 () ListLongMap!8827)

(assert (=> b!825552 (= lt!372999 (+!1890 (+!1890 lt!373000 lt!373006) lt!372997))))

(declare-fun lt!373001 () ListLongMap!8827)

(declare-fun lt!373005 () ListLongMap!8827)

(assert (=> b!825552 (and (= lt!373001 lt!373005) (= lt!373003 lt!373005) (= lt!373003 lt!373001))))

(declare-fun lt!372998 () ListLongMap!8827)

(assert (=> b!825552 (= lt!373005 (+!1890 lt!372998 lt!373006))))

(declare-fun lt!372994 () ListLongMap!8827)

(assert (=> b!825552 (= lt!373001 (+!1890 lt!372994 lt!373006))))

(declare-fun lt!373004 () Unit!28299)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!218 (ListLongMap!8827 (_ BitVec 64) V!24991 V!24991) Unit!28299)

(assert (=> b!825552 (= lt!373004 (addSameAsAddTwiceSameKeyDiffValues!218 lt!372994 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!825552 e!459597))

(declare-fun res!562898 () Bool)

(assert (=> b!825552 (=> (not res!562898) (not e!459597))))

(declare-fun lt!372995 () ListLongMap!8827)

(assert (=> b!825552 (= res!562898 (= lt!372995 lt!372998))))

(declare-fun lt!373007 () tuple2!9990)

(assert (=> b!825552 (= lt!372998 (+!1890 lt!372994 lt!373007))))

(assert (=> b!825552 (= lt!372994 (+!1890 lt!373000 lt!372997))))

(assert (=> b!825552 (= lt!373006 (tuple2!9991 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459592 () Bool)

(assert (=> b!825552 e!459592))

(declare-fun res!562896 () Bool)

(assert (=> b!825552 (=> (not res!562896) (not e!459592))))

(assert (=> b!825552 (= res!562896 (= lt!372995 (+!1890 (+!1890 lt!373000 lt!373007) lt!372997)))))

(assert (=> b!825552 (= lt!372997 (tuple2!9991 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825552 (= lt!373007 (tuple2!9991 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2540 (array!46128 array!46130 (_ BitVec 32) (_ BitVec 32) V!24991 V!24991 (_ BitVec 32) Int) ListLongMap!8827)

(assert (=> b!825552 (= lt!373003 (getCurrentListMap!2540 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825552 (= lt!372995 (getCurrentListMap!2540 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825553 () Bool)

(declare-fun e!459595 () Bool)

(declare-fun e!459599 () Bool)

(declare-fun mapRes!24112 () Bool)

(assert (=> b!825553 (= e!459595 (and e!459599 mapRes!24112))))

(declare-fun condMapEmpty!24112 () Bool)

(declare-fun mapDefault!24112 () ValueCell!7081)

