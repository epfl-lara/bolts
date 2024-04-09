; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70824 () Bool)

(assert start!70824)

(declare-fun b_free!13057 () Bool)

(declare-fun b_next!13057 () Bool)

(assert (=> start!70824 (= b_free!13057 (not b_next!13057))))

(declare-fun tp!45915 () Bool)

(declare-fun b_and!21947 () Bool)

(assert (=> start!70824 (= tp!45915 b_and!21947)))

(declare-fun b!822199 () Bool)

(declare-fun e!457144 () Bool)

(declare-fun tp_is_empty!14767 () Bool)

(assert (=> b!822199 (= e!457144 tp_is_empty!14767)))

(declare-fun b!822200 () Bool)

(declare-fun e!457145 () Bool)

(declare-fun e!457140 () Bool)

(assert (=> b!822200 (= e!457145 (not e!457140))))

(declare-fun res!560914 () Bool)

(assert (=> b!822200 (=> res!560914 e!457140)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822200 (= res!560914 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24691 0))(
  ( (V!24692 (val!7431 Int)) )
))
(declare-datatypes ((tuple2!9804 0))(
  ( (tuple2!9805 (_1!4912 (_ BitVec 64)) (_2!4912 V!24691)) )
))
(declare-datatypes ((List!15665 0))(
  ( (Nil!15662) (Cons!15661 (h!16790 tuple2!9804) (t!22010 List!15665)) )
))
(declare-datatypes ((ListLongMap!8641 0))(
  ( (ListLongMap!8642 (toList!4336 List!15665)) )
))
(declare-fun lt!369961 () ListLongMap!8641)

(declare-fun lt!369957 () ListLongMap!8641)

(assert (=> b!822200 (= lt!369961 lt!369957)))

(declare-fun zeroValueBefore!34 () V!24691)

(declare-datatypes ((array!45686 0))(
  ( (array!45687 (arr!21889 (Array (_ BitVec 32) (_ BitVec 64))) (size!22310 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45686)

(declare-fun zeroValueAfter!34 () V!24691)

(declare-fun minValue!754 () V!24691)

(declare-datatypes ((ValueCell!6968 0))(
  ( (ValueCellFull!6968 (v!9858 V!24691)) (EmptyCell!6968) )
))
(declare-datatypes ((array!45688 0))(
  ( (array!45689 (arr!21890 (Array (_ BitVec 32) ValueCell!6968)) (size!22311 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45688)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28114 0))(
  ( (Unit!28115) )
))
(declare-fun lt!369954 () Unit!28114)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!478 (array!45686 array!45688 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24691 V!24691 V!24691 V!24691 (_ BitVec 32) Int) Unit!28114)

(assert (=> b!822200 (= lt!369954 (lemmaNoChangeToArrayThenSameMapNoExtras!478 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2362 (array!45686 array!45688 (_ BitVec 32) (_ BitVec 32) V!24691 V!24691 (_ BitVec 32) Int) ListLongMap!8641)

(assert (=> b!822200 (= lt!369957 (getCurrentListMapNoExtraKeys!2362 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822200 (= lt!369961 (getCurrentListMapNoExtraKeys!2362 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23761 () Bool)

(declare-fun mapRes!23761 () Bool)

(declare-fun tp!45916 () Bool)

(assert (=> mapNonEmpty!23761 (= mapRes!23761 (and tp!45916 e!457144))))

(declare-fun mapValue!23761 () ValueCell!6968)

(declare-fun mapRest!23761 () (Array (_ BitVec 32) ValueCell!6968))

(declare-fun mapKey!23761 () (_ BitVec 32))

(assert (=> mapNonEmpty!23761 (= (arr!21890 _values!788) (store mapRest!23761 mapKey!23761 mapValue!23761))))

(declare-fun b!822201 () Bool)

(declare-fun res!560912 () Bool)

(assert (=> b!822201 (=> (not res!560912) (not e!457145))))

(declare-datatypes ((List!15666 0))(
  ( (Nil!15663) (Cons!15662 (h!16791 (_ BitVec 64)) (t!22011 List!15666)) )
))
(declare-fun arrayNoDuplicates!0 (array!45686 (_ BitVec 32) List!15666) Bool)

(assert (=> b!822201 (= res!560912 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15663))))

(declare-fun mapIsEmpty!23761 () Bool)

(assert (=> mapIsEmpty!23761 mapRes!23761))

(declare-fun b!822202 () Bool)

(declare-fun res!560915 () Bool)

(assert (=> b!822202 (=> (not res!560915) (not e!457145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45686 (_ BitVec 32)) Bool)

(assert (=> b!822202 (= res!560915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822203 () Bool)

(declare-fun res!560913 () Bool)

(assert (=> b!822203 (=> (not res!560913) (not e!457145))))

(assert (=> b!822203 (= res!560913 (and (= (size!22311 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22310 _keys!976) (size!22311 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822204 () Bool)

(assert (=> b!822204 (= e!457140 true)))

(declare-fun lt!369955 () ListLongMap!8641)

(declare-fun lt!369959 () ListLongMap!8641)

(declare-fun lt!369962 () tuple2!9804)

(declare-fun +!1840 (ListLongMap!8641 tuple2!9804) ListLongMap!8641)

(assert (=> b!822204 (= lt!369955 (+!1840 lt!369959 lt!369962))))

(declare-fun lt!369953 () Unit!28114)

(declare-fun addCommutativeForDiffKeys!435 (ListLongMap!8641 (_ BitVec 64) V!24691 (_ BitVec 64) V!24691) Unit!28114)

(assert (=> b!822204 (= lt!369953 (addCommutativeForDiffKeys!435 lt!369961 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369960 () ListLongMap!8641)

(assert (=> b!822204 (= lt!369960 lt!369955)))

(declare-fun lt!369956 () tuple2!9804)

(assert (=> b!822204 (= lt!369955 (+!1840 (+!1840 lt!369961 lt!369962) lt!369956))))

(assert (=> b!822204 (= lt!369962 (tuple2!9805 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369958 () ListLongMap!8641)

(assert (=> b!822204 (= lt!369958 lt!369959)))

(assert (=> b!822204 (= lt!369959 (+!1840 lt!369961 lt!369956))))

(assert (=> b!822204 (= lt!369956 (tuple2!9805 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2470 (array!45686 array!45688 (_ BitVec 32) (_ BitVec 32) V!24691 V!24691 (_ BitVec 32) Int) ListLongMap!8641)

(assert (=> b!822204 (= lt!369960 (getCurrentListMap!2470 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822204 (= lt!369958 (getCurrentListMap!2470 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822205 () Bool)

(declare-fun e!457142 () Bool)

(declare-fun e!457141 () Bool)

(assert (=> b!822205 (= e!457142 (and e!457141 mapRes!23761))))

(declare-fun condMapEmpty!23761 () Bool)

(declare-fun mapDefault!23761 () ValueCell!6968)

