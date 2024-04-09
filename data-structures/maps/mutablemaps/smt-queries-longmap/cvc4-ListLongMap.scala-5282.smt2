; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70890 () Bool)

(assert start!70890)

(declare-fun b_free!13103 () Bool)

(declare-fun b_next!13103 () Bool)

(assert (=> start!70890 (= b_free!13103 (not b_next!13103))))

(declare-fun tp!46057 () Bool)

(declare-fun b_and!22005 () Bool)

(assert (=> start!70890 (= tp!46057 b_and!22005)))

(declare-fun b!822932 () Bool)

(declare-fun e!457672 () Bool)

(declare-fun e!457669 () Bool)

(assert (=> b!822932 (= e!457672 (not e!457669))))

(declare-fun res!561336 () Bool)

(assert (=> b!822932 (=> res!561336 e!457669)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822932 (= res!561336 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24751 0))(
  ( (V!24752 (val!7454 Int)) )
))
(declare-datatypes ((tuple2!9846 0))(
  ( (tuple2!9847 (_1!4933 (_ BitVec 64)) (_2!4933 V!24751)) )
))
(declare-datatypes ((List!15704 0))(
  ( (Nil!15701) (Cons!15700 (h!16829 tuple2!9846) (t!22051 List!15704)) )
))
(declare-datatypes ((ListLongMap!8683 0))(
  ( (ListLongMap!8684 (toList!4357 List!15704)) )
))
(declare-fun lt!370806 () ListLongMap!8683)

(declare-fun lt!370799 () ListLongMap!8683)

(assert (=> b!822932 (= lt!370806 lt!370799)))

(declare-fun zeroValueBefore!34 () V!24751)

(declare-datatypes ((array!45780 0))(
  ( (array!45781 (arr!21935 (Array (_ BitVec 32) (_ BitVec 64))) (size!22356 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45780)

(declare-fun zeroValueAfter!34 () V!24751)

(declare-fun minValue!754 () V!24751)

(declare-datatypes ((ValueCell!6991 0))(
  ( (ValueCellFull!6991 (v!9882 V!24751)) (EmptyCell!6991) )
))
(declare-datatypes ((array!45782 0))(
  ( (array!45783 (arr!21936 (Array (_ BitVec 32) ValueCell!6991)) (size!22357 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45782)

(declare-datatypes ((Unit!28158 0))(
  ( (Unit!28159) )
))
(declare-fun lt!370801 () Unit!28158)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!497 (array!45780 array!45782 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24751 V!24751 V!24751 V!24751 (_ BitVec 32) Int) Unit!28158)

(assert (=> b!822932 (= lt!370801 (lemmaNoChangeToArrayThenSameMapNoExtras!497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2381 (array!45780 array!45782 (_ BitVec 32) (_ BitVec 32) V!24751 V!24751 (_ BitVec 32) Int) ListLongMap!8683)

(assert (=> b!822932 (= lt!370799 (getCurrentListMapNoExtraKeys!2381 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822932 (= lt!370806 (getCurrentListMapNoExtraKeys!2381 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822933 () Bool)

(declare-fun res!561338 () Bool)

(assert (=> b!822933 (=> (not res!561338) (not e!457672))))

(declare-datatypes ((List!15705 0))(
  ( (Nil!15702) (Cons!15701 (h!16830 (_ BitVec 64)) (t!22052 List!15705)) )
))
(declare-fun arrayNoDuplicates!0 (array!45780 (_ BitVec 32) List!15705) Bool)

(assert (=> b!822933 (= res!561338 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15702))))

(declare-fun b!822934 () Bool)

(declare-fun e!457671 () Bool)

(declare-fun tp_is_empty!14813 () Bool)

(assert (=> b!822934 (= e!457671 tp_is_empty!14813)))

(declare-fun b!822935 () Bool)

(declare-fun res!561337 () Bool)

(assert (=> b!822935 (=> (not res!561337) (not e!457672))))

(assert (=> b!822935 (= res!561337 (and (= (size!22357 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22356 _keys!976) (size!22357 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822936 () Bool)

(declare-fun e!457668 () Bool)

(assert (=> b!822936 (= e!457668 tp_is_empty!14813)))

(declare-fun b!822937 () Bool)

(declare-fun res!561335 () Bool)

(assert (=> b!822937 (=> (not res!561335) (not e!457672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45780 (_ BitVec 32)) Bool)

(assert (=> b!822937 (= res!561335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822938 () Bool)

(assert (=> b!822938 (= e!457669 true)))

(declare-fun lt!370798 () ListLongMap!8683)

(declare-fun lt!370805 () ListLongMap!8683)

(declare-fun lt!370804 () tuple2!9846)

(declare-fun +!1859 (ListLongMap!8683 tuple2!9846) ListLongMap!8683)

(assert (=> b!822938 (= lt!370798 (+!1859 lt!370805 lt!370804))))

(declare-fun lt!370803 () Unit!28158)

(declare-fun addCommutativeForDiffKeys!454 (ListLongMap!8683 (_ BitVec 64) V!24751 (_ BitVec 64) V!24751) Unit!28158)

(assert (=> b!822938 (= lt!370803 (addCommutativeForDiffKeys!454 lt!370806 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370807 () ListLongMap!8683)

(assert (=> b!822938 (= lt!370807 lt!370798)))

(declare-fun lt!370800 () tuple2!9846)

(assert (=> b!822938 (= lt!370798 (+!1859 (+!1859 lt!370806 lt!370804) lt!370800))))

(assert (=> b!822938 (= lt!370804 (tuple2!9847 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370802 () ListLongMap!8683)

(assert (=> b!822938 (= lt!370802 lt!370805)))

(assert (=> b!822938 (= lt!370805 (+!1859 lt!370806 lt!370800))))

(assert (=> b!822938 (= lt!370800 (tuple2!9847 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2489 (array!45780 array!45782 (_ BitVec 32) (_ BitVec 32) V!24751 V!24751 (_ BitVec 32) Int) ListLongMap!8683)

(assert (=> b!822938 (= lt!370807 (getCurrentListMap!2489 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822938 (= lt!370802 (getCurrentListMap!2489 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822939 () Bool)

(declare-fun e!457667 () Bool)

(declare-fun mapRes!23833 () Bool)

(assert (=> b!822939 (= e!457667 (and e!457668 mapRes!23833))))

(declare-fun condMapEmpty!23833 () Bool)

(declare-fun mapDefault!23833 () ValueCell!6991)

