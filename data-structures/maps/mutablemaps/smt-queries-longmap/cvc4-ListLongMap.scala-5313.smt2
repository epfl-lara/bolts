; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71126 () Bool)

(assert start!71126)

(declare-fun b_free!13289 () Bool)

(declare-fun b_next!13289 () Bool)

(assert (=> start!71126 (= b_free!13289 (not b_next!13289))))

(declare-fun tp!46623 () Bool)

(declare-fun b_and!22221 () Bool)

(assert (=> start!71126 (= tp!46623 b_and!22221)))

(declare-fun b!825639 () Bool)

(declare-fun res!562965 () Bool)

(declare-fun e!459671 () Bool)

(assert (=> b!825639 (=> (not res!562965) (not e!459671))))

(declare-datatypes ((array!46140 0))(
  ( (array!46141 (arr!22112 (Array (_ BitVec 32) (_ BitVec 64))) (size!22533 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46140)

(declare-datatypes ((List!15839 0))(
  ( (Nil!15836) (Cons!15835 (h!16964 (_ BitVec 64)) (t!22192 List!15839)) )
))
(declare-fun arrayNoDuplicates!0 (array!46140 (_ BitVec 32) List!15839) Bool)

(assert (=> b!825639 (= res!562965 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15836))))

(declare-fun b!825640 () Bool)

(declare-fun res!562964 () Bool)

(assert (=> b!825640 (=> (not res!562964) (not e!459671))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24999 0))(
  ( (V!25000 (val!7547 Int)) )
))
(declare-datatypes ((ValueCell!7084 0))(
  ( (ValueCellFull!7084 (v!9976 V!24999)) (EmptyCell!7084) )
))
(declare-datatypes ((array!46142 0))(
  ( (array!46143 (arr!22113 (Array (_ BitVec 32) ValueCell!7084)) (size!22534 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46142)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!825640 (= res!562964 (and (= (size!22534 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22533 _keys!976) (size!22534 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825641 () Bool)

(declare-fun e!459670 () Bool)

(assert (=> b!825641 (= e!459670 true)))

(declare-datatypes ((tuple2!9996 0))(
  ( (tuple2!9997 (_1!5008 (_ BitVec 64)) (_2!5008 V!24999)) )
))
(declare-datatypes ((List!15840 0))(
  ( (Nil!15837) (Cons!15836 (h!16965 tuple2!9996) (t!22193 List!15840)) )
))
(declare-datatypes ((ListLongMap!8833 0))(
  ( (ListLongMap!8834 (toList!4432 List!15840)) )
))
(declare-fun lt!373121 () ListLongMap!8833)

(declare-fun lt!373130 () ListLongMap!8833)

(declare-fun lt!373126 () tuple2!9996)

(declare-fun lt!373120 () tuple2!9996)

(declare-fun +!1893 (ListLongMap!8833 tuple2!9996) ListLongMap!8833)

(assert (=> b!825641 (= lt!373130 (+!1893 (+!1893 lt!373121 lt!373126) lt!373120))))

(declare-fun lt!373122 () ListLongMap!8833)

(declare-fun lt!373132 () ListLongMap!8833)

(declare-fun lt!373128 () ListLongMap!8833)

(assert (=> b!825641 (and (= lt!373122 lt!373132) (= lt!373128 lt!373132) (= lt!373128 lt!373122))))

(declare-fun lt!373123 () ListLongMap!8833)

(assert (=> b!825641 (= lt!373132 (+!1893 lt!373123 lt!373126))))

(declare-fun lt!373131 () ListLongMap!8833)

(assert (=> b!825641 (= lt!373122 (+!1893 lt!373131 lt!373126))))

(declare-fun zeroValueBefore!34 () V!24999)

(declare-datatypes ((Unit!28305 0))(
  ( (Unit!28306) )
))
(declare-fun lt!373127 () Unit!28305)

(declare-fun zeroValueAfter!34 () V!24999)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!221 (ListLongMap!8833 (_ BitVec 64) V!24999 V!24999) Unit!28305)

(assert (=> b!825641 (= lt!373127 (addSameAsAddTwiceSameKeyDiffValues!221 lt!373131 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459667 () Bool)

(assert (=> b!825641 e!459667))

(declare-fun res!562961 () Bool)

(assert (=> b!825641 (=> (not res!562961) (not e!459667))))

(declare-fun lt!373129 () ListLongMap!8833)

(assert (=> b!825641 (= res!562961 (= lt!373129 lt!373123))))

(declare-fun lt!373124 () tuple2!9996)

(assert (=> b!825641 (= lt!373123 (+!1893 lt!373131 lt!373124))))

(assert (=> b!825641 (= lt!373131 (+!1893 lt!373121 lt!373120))))

(assert (=> b!825641 (= lt!373126 (tuple2!9997 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459669 () Bool)

(assert (=> b!825641 e!459669))

(declare-fun res!562963 () Bool)

(assert (=> b!825641 (=> (not res!562963) (not e!459669))))

(assert (=> b!825641 (= res!562963 (= lt!373129 (+!1893 (+!1893 lt!373121 lt!373124) lt!373120)))))

(declare-fun minValue!754 () V!24999)

(assert (=> b!825641 (= lt!373120 (tuple2!9997 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825641 (= lt!373124 (tuple2!9997 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2543 (array!46140 array!46142 (_ BitVec 32) (_ BitVec 32) V!24999 V!24999 (_ BitVec 32) Int) ListLongMap!8833)

(assert (=> b!825641 (= lt!373128 (getCurrentListMap!2543 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825641 (= lt!373129 (getCurrentListMap!2543 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825643 () Bool)

(declare-fun lt!373133 () ListLongMap!8833)

(assert (=> b!825643 (= e!459667 (= lt!373128 (+!1893 (+!1893 lt!373133 lt!373120) lt!373126)))))

(declare-fun b!825644 () Bool)

(declare-fun res!562960 () Bool)

(assert (=> b!825644 (=> (not res!562960) (not e!459671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46140 (_ BitVec 32)) Bool)

(assert (=> b!825644 (= res!562960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!24121 () Bool)

(declare-fun mapRes!24121 () Bool)

(declare-fun tp!46624 () Bool)

(declare-fun e!459666 () Bool)

(assert (=> mapNonEmpty!24121 (= mapRes!24121 (and tp!46624 e!459666))))

(declare-fun mapRest!24121 () (Array (_ BitVec 32) ValueCell!7084))

(declare-fun mapValue!24121 () ValueCell!7084)

(declare-fun mapKey!24121 () (_ BitVec 32))

(assert (=> mapNonEmpty!24121 (= (arr!22113 _values!788) (store mapRest!24121 mapKey!24121 mapValue!24121))))

(declare-fun mapIsEmpty!24121 () Bool)

(assert (=> mapIsEmpty!24121 mapRes!24121))

(declare-fun b!825645 () Bool)

(declare-fun e!459664 () Bool)

(declare-fun e!459668 () Bool)

(assert (=> b!825645 (= e!459664 (and e!459668 mapRes!24121))))

(declare-fun condMapEmpty!24121 () Bool)

(declare-fun mapDefault!24121 () ValueCell!7084)

