; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70822 () Bool)

(assert start!70822)

(declare-fun b_free!13055 () Bool)

(declare-fun b_next!13055 () Bool)

(assert (=> start!70822 (= b_free!13055 (not b_next!13055))))

(declare-fun tp!45910 () Bool)

(declare-fun b_and!21945 () Bool)

(assert (=> start!70822 (= tp!45910 b_and!21945)))

(declare-fun mapNonEmpty!23758 () Bool)

(declare-fun mapRes!23758 () Bool)

(declare-fun tp!45909 () Bool)

(declare-fun e!457123 () Bool)

(assert (=> mapNonEmpty!23758 (= mapRes!23758 (and tp!45909 e!457123))))

(declare-fun mapKey!23758 () (_ BitVec 32))

(declare-datatypes ((V!24687 0))(
  ( (V!24688 (val!7430 Int)) )
))
(declare-datatypes ((ValueCell!6967 0))(
  ( (ValueCellFull!6967 (v!9857 V!24687)) (EmptyCell!6967) )
))
(declare-fun mapValue!23758 () ValueCell!6967)

(declare-datatypes ((array!45682 0))(
  ( (array!45683 (arr!21887 (Array (_ BitVec 32) ValueCell!6967)) (size!22308 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45682)

(declare-fun mapRest!23758 () (Array (_ BitVec 32) ValueCell!6967))

(assert (=> mapNonEmpty!23758 (= (arr!21887 _values!788) (store mapRest!23758 mapKey!23758 mapValue!23758))))

(declare-fun b!822175 () Bool)

(declare-fun res!560897 () Bool)

(declare-fun e!457122 () Bool)

(assert (=> b!822175 (=> (not res!560897) (not e!457122))))

(declare-datatypes ((array!45684 0))(
  ( (array!45685 (arr!21888 (Array (_ BitVec 32) (_ BitVec 64))) (size!22309 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45684)

(declare-datatypes ((List!15663 0))(
  ( (Nil!15660) (Cons!15659 (h!16788 (_ BitVec 64)) (t!22008 List!15663)) )
))
(declare-fun arrayNoDuplicates!0 (array!45684 (_ BitVec 32) List!15663) Bool)

(assert (=> b!822175 (= res!560897 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15660))))

(declare-fun b!822176 () Bool)

(declare-fun res!560900 () Bool)

(assert (=> b!822176 (=> (not res!560900) (not e!457122))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!822176 (= res!560900 (and (= (size!22308 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22309 _keys!976) (size!22308 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822177 () Bool)

(declare-fun e!457124 () Bool)

(assert (=> b!822177 (= e!457122 (not e!457124))))

(declare-fun res!560899 () Bool)

(assert (=> b!822177 (=> res!560899 e!457124)))

(assert (=> b!822177 (= res!560899 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9802 0))(
  ( (tuple2!9803 (_1!4911 (_ BitVec 64)) (_2!4911 V!24687)) )
))
(declare-datatypes ((List!15664 0))(
  ( (Nil!15661) (Cons!15660 (h!16789 tuple2!9802) (t!22009 List!15664)) )
))
(declare-datatypes ((ListLongMap!8639 0))(
  ( (ListLongMap!8640 (toList!4335 List!15664)) )
))
(declare-fun lt!369927 () ListLongMap!8639)

(declare-fun lt!369928 () ListLongMap!8639)

(assert (=> b!822177 (= lt!369927 lt!369928)))

(declare-fun zeroValueBefore!34 () V!24687)

(declare-fun zeroValueAfter!34 () V!24687)

(declare-fun minValue!754 () V!24687)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28112 0))(
  ( (Unit!28113) )
))
(declare-fun lt!369931 () Unit!28112)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!477 (array!45684 array!45682 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24687 V!24687 V!24687 V!24687 (_ BitVec 32) Int) Unit!28112)

(assert (=> b!822177 (= lt!369931 (lemmaNoChangeToArrayThenSameMapNoExtras!477 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2361 (array!45684 array!45682 (_ BitVec 32) (_ BitVec 32) V!24687 V!24687 (_ BitVec 32) Int) ListLongMap!8639)

(assert (=> b!822177 (= lt!369928 (getCurrentListMapNoExtraKeys!2361 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822177 (= lt!369927 (getCurrentListMapNoExtraKeys!2361 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23758 () Bool)

(assert (=> mapIsEmpty!23758 mapRes!23758))

(declare-fun b!822178 () Bool)

(assert (=> b!822178 (= e!457124 true)))

(declare-fun lt!369926 () ListLongMap!8639)

(declare-fun lt!369932 () ListLongMap!8639)

(declare-fun lt!369924 () tuple2!9802)

(declare-fun +!1839 (ListLongMap!8639 tuple2!9802) ListLongMap!8639)

(assert (=> b!822178 (= lt!369926 (+!1839 lt!369932 lt!369924))))

(declare-fun lt!369930 () Unit!28112)

(declare-fun addCommutativeForDiffKeys!434 (ListLongMap!8639 (_ BitVec 64) V!24687 (_ BitVec 64) V!24687) Unit!28112)

(assert (=> b!822178 (= lt!369930 (addCommutativeForDiffKeys!434 lt!369927 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369923 () ListLongMap!8639)

(assert (=> b!822178 (= lt!369923 lt!369926)))

(declare-fun lt!369925 () tuple2!9802)

(assert (=> b!822178 (= lt!369926 (+!1839 (+!1839 lt!369927 lt!369924) lt!369925))))

(assert (=> b!822178 (= lt!369924 (tuple2!9803 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369929 () ListLongMap!8639)

(assert (=> b!822178 (= lt!369929 lt!369932)))

(assert (=> b!822178 (= lt!369932 (+!1839 lt!369927 lt!369925))))

(assert (=> b!822178 (= lt!369925 (tuple2!9803 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2469 (array!45684 array!45682 (_ BitVec 32) (_ BitVec 32) V!24687 V!24687 (_ BitVec 32) Int) ListLongMap!8639)

(assert (=> b!822178 (= lt!369923 (getCurrentListMap!2469 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822178 (= lt!369929 (getCurrentListMap!2469 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822179 () Bool)

(declare-fun e!457126 () Bool)

(declare-fun tp_is_empty!14765 () Bool)

(assert (=> b!822179 (= e!457126 tp_is_empty!14765)))

(declare-fun b!822180 () Bool)

(declare-fun e!457127 () Bool)

(assert (=> b!822180 (= e!457127 (and e!457126 mapRes!23758))))

(declare-fun condMapEmpty!23758 () Bool)

(declare-fun mapDefault!23758 () ValueCell!6967)

