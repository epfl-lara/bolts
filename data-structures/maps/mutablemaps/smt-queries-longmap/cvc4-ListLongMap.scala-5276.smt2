; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70834 () Bool)

(assert start!70834)

(declare-fun b_free!13067 () Bool)

(declare-fun b_next!13067 () Bool)

(assert (=> start!70834 (= b_free!13067 (not b_next!13067))))

(declare-fun tp!45946 () Bool)

(declare-fun b_and!21957 () Bool)

(assert (=> start!70834 (= tp!45946 b_and!21957)))

(declare-fun b!822319 () Bool)

(declare-fun e!457235 () Bool)

(assert (=> b!822319 (= e!457235 true)))

(declare-datatypes ((V!24703 0))(
  ( (V!24704 (val!7436 Int)) )
))
(declare-datatypes ((tuple2!9814 0))(
  ( (tuple2!9815 (_1!4917 (_ BitVec 64)) (_2!4917 V!24703)) )
))
(declare-datatypes ((List!15674 0))(
  ( (Nil!15671) (Cons!15670 (h!16799 tuple2!9814) (t!22019 List!15674)) )
))
(declare-datatypes ((ListLongMap!8651 0))(
  ( (ListLongMap!8652 (toList!4341 List!15674)) )
))
(declare-fun lt!370109 () ListLongMap!8651)

(declare-fun lt!370108 () ListLongMap!8651)

(declare-fun lt!370111 () tuple2!9814)

(declare-fun +!1844 (ListLongMap!8651 tuple2!9814) ListLongMap!8651)

(assert (=> b!822319 (= lt!370109 (+!1844 lt!370108 lt!370111))))

(declare-datatypes ((Unit!28124 0))(
  ( (Unit!28125) )
))
(declare-fun lt!370104 () Unit!28124)

(declare-fun lt!370110 () ListLongMap!8651)

(declare-fun zeroValueAfter!34 () V!24703)

(declare-fun minValue!754 () V!24703)

(declare-fun addCommutativeForDiffKeys!439 (ListLongMap!8651 (_ BitVec 64) V!24703 (_ BitVec 64) V!24703) Unit!28124)

(assert (=> b!822319 (= lt!370104 (addCommutativeForDiffKeys!439 lt!370110 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370105 () ListLongMap!8651)

(assert (=> b!822319 (= lt!370105 lt!370109)))

(declare-fun lt!370103 () tuple2!9814)

(assert (=> b!822319 (= lt!370109 (+!1844 (+!1844 lt!370110 lt!370111) lt!370103))))

(assert (=> b!822319 (= lt!370111 (tuple2!9815 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370106 () ListLongMap!8651)

(assert (=> b!822319 (= lt!370106 lt!370108)))

(assert (=> b!822319 (= lt!370108 (+!1844 lt!370110 lt!370103))))

(assert (=> b!822319 (= lt!370103 (tuple2!9815 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-datatypes ((array!45706 0))(
  ( (array!45707 (arr!21899 (Array (_ BitVec 32) (_ BitVec 64))) (size!22320 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45706)

(declare-datatypes ((ValueCell!6973 0))(
  ( (ValueCellFull!6973 (v!9863 V!24703)) (EmptyCell!6973) )
))
(declare-datatypes ((array!45708 0))(
  ( (array!45709 (arr!21900 (Array (_ BitVec 32) ValueCell!6973)) (size!22321 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45708)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2474 (array!45706 array!45708 (_ BitVec 32) (_ BitVec 32) V!24703 V!24703 (_ BitVec 32) Int) ListLongMap!8651)

(assert (=> b!822319 (= lt!370105 (getCurrentListMap!2474 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24703)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822319 (= lt!370106 (getCurrentListMap!2474 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822320 () Bool)

(declare-fun res!560989 () Bool)

(declare-fun e!457230 () Bool)

(assert (=> b!822320 (=> (not res!560989) (not e!457230))))

(declare-datatypes ((List!15675 0))(
  ( (Nil!15672) (Cons!15671 (h!16800 (_ BitVec 64)) (t!22020 List!15675)) )
))
(declare-fun arrayNoDuplicates!0 (array!45706 (_ BitVec 32) List!15675) Bool)

(assert (=> b!822320 (= res!560989 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15672))))

(declare-fun res!560987 () Bool)

(assert (=> start!70834 (=> (not res!560987) (not e!457230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70834 (= res!560987 (validMask!0 mask!1312))))

(assert (=> start!70834 e!457230))

(declare-fun tp_is_empty!14777 () Bool)

(assert (=> start!70834 tp_is_empty!14777))

(declare-fun array_inv!17457 (array!45706) Bool)

(assert (=> start!70834 (array_inv!17457 _keys!976)))

(assert (=> start!70834 true))

(declare-fun e!457231 () Bool)

(declare-fun array_inv!17458 (array!45708) Bool)

(assert (=> start!70834 (and (array_inv!17458 _values!788) e!457231)))

(assert (=> start!70834 tp!45946))

(declare-fun b!822321 () Bool)

(declare-fun res!560988 () Bool)

(assert (=> b!822321 (=> (not res!560988) (not e!457230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45706 (_ BitVec 32)) Bool)

(assert (=> b!822321 (= res!560988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822322 () Bool)

(assert (=> b!822322 (= e!457230 (not e!457235))))

(declare-fun res!560990 () Bool)

(assert (=> b!822322 (=> res!560990 e!457235)))

(assert (=> b!822322 (= res!560990 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!370107 () ListLongMap!8651)

(assert (=> b!822322 (= lt!370110 lt!370107)))

(declare-fun lt!370112 () Unit!28124)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!483 (array!45706 array!45708 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24703 V!24703 V!24703 V!24703 (_ BitVec 32) Int) Unit!28124)

(assert (=> b!822322 (= lt!370112 (lemmaNoChangeToArrayThenSameMapNoExtras!483 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2367 (array!45706 array!45708 (_ BitVec 32) (_ BitVec 32) V!24703 V!24703 (_ BitVec 32) Int) ListLongMap!8651)

(assert (=> b!822322 (= lt!370107 (getCurrentListMapNoExtraKeys!2367 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822322 (= lt!370110 (getCurrentListMapNoExtraKeys!2367 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822323 () Bool)

(declare-fun e!457234 () Bool)

(declare-fun mapRes!23776 () Bool)

(assert (=> b!822323 (= e!457231 (and e!457234 mapRes!23776))))

(declare-fun condMapEmpty!23776 () Bool)

(declare-fun mapDefault!23776 () ValueCell!6973)

