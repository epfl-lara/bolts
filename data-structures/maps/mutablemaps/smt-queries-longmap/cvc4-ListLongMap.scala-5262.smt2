; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70734 () Bool)

(assert start!70734)

(declare-fun b_free!12983 () Bool)

(declare-fun b_next!12983 () Bool)

(assert (=> start!70734 (= b_free!12983 (not b_next!12983))))

(declare-fun tp!45691 () Bool)

(declare-fun b_and!21863 () Bool)

(assert (=> start!70734 (= tp!45691 b_and!21863)))

(declare-fun b!821154 () Bool)

(declare-fun res!560292 () Bool)

(declare-fun e!456375 () Bool)

(assert (=> b!821154 (=> (not res!560292) (not e!456375))))

(declare-datatypes ((array!45544 0))(
  ( (array!45545 (arr!21819 (Array (_ BitVec 32) (_ BitVec 64))) (size!22240 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45544)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24591 0))(
  ( (V!24592 (val!7394 Int)) )
))
(declare-datatypes ((ValueCell!6931 0))(
  ( (ValueCellFull!6931 (v!9821 V!24591)) (EmptyCell!6931) )
))
(declare-datatypes ((array!45546 0))(
  ( (array!45547 (arr!21820 (Array (_ BitVec 32) ValueCell!6931)) (size!22241 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45546)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821154 (= res!560292 (and (= (size!22241 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22240 _keys!976) (size!22241 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821155 () Bool)

(declare-fun e!456372 () Bool)

(assert (=> b!821155 (= e!456372 true)))

(declare-fun zeroValueBefore!34 () V!24591)

(declare-fun minValue!754 () V!24591)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9746 0))(
  ( (tuple2!9747 (_1!4883 (_ BitVec 64)) (_2!4883 V!24591)) )
))
(declare-datatypes ((List!15607 0))(
  ( (Nil!15604) (Cons!15603 (h!16732 tuple2!9746) (t!21950 List!15607)) )
))
(declare-datatypes ((ListLongMap!8583 0))(
  ( (ListLongMap!8584 (toList!4307 List!15607)) )
))
(declare-fun lt!369106 () ListLongMap!8583)

(declare-fun getCurrentListMap!2442 (array!45544 array!45546 (_ BitVec 32) (_ BitVec 32) V!24591 V!24591 (_ BitVec 32) Int) ListLongMap!8583)

(assert (=> b!821155 (= lt!369106 (getCurrentListMap!2442 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!560291 () Bool)

(assert (=> start!70734 (=> (not res!560291) (not e!456375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70734 (= res!560291 (validMask!0 mask!1312))))

(assert (=> start!70734 e!456375))

(declare-fun tp_is_empty!14693 () Bool)

(assert (=> start!70734 tp_is_empty!14693))

(declare-fun array_inv!17405 (array!45544) Bool)

(assert (=> start!70734 (array_inv!17405 _keys!976)))

(assert (=> start!70734 true))

(declare-fun e!456371 () Bool)

(declare-fun array_inv!17406 (array!45546) Bool)

(assert (=> start!70734 (and (array_inv!17406 _values!788) e!456371)))

(assert (=> start!70734 tp!45691))

(declare-fun b!821156 () Bool)

(assert (=> b!821156 (= e!456375 (not e!456372))))

(declare-fun res!560293 () Bool)

(assert (=> b!821156 (=> res!560293 e!456372)))

(assert (=> b!821156 (= res!560293 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369105 () ListLongMap!8583)

(declare-fun lt!369103 () ListLongMap!8583)

(assert (=> b!821156 (= lt!369105 lt!369103)))

(declare-fun zeroValueAfter!34 () V!24591)

(declare-datatypes ((Unit!28065 0))(
  ( (Unit!28066) )
))
(declare-fun lt!369104 () Unit!28065)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!456 (array!45544 array!45546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24591 V!24591 V!24591 V!24591 (_ BitVec 32) Int) Unit!28065)

(assert (=> b!821156 (= lt!369104 (lemmaNoChangeToArrayThenSameMapNoExtras!456 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2340 (array!45544 array!45546 (_ BitVec 32) (_ BitVec 32) V!24591 V!24591 (_ BitVec 32) Int) ListLongMap!8583)

(assert (=> b!821156 (= lt!369103 (getCurrentListMapNoExtraKeys!2340 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821156 (= lt!369105 (getCurrentListMapNoExtraKeys!2340 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821157 () Bool)

(declare-fun res!560289 () Bool)

(assert (=> b!821157 (=> (not res!560289) (not e!456375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45544 (_ BitVec 32)) Bool)

(assert (=> b!821157 (= res!560289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821158 () Bool)

(declare-fun res!560290 () Bool)

(assert (=> b!821158 (=> (not res!560290) (not e!456375))))

(declare-datatypes ((List!15608 0))(
  ( (Nil!15605) (Cons!15604 (h!16733 (_ BitVec 64)) (t!21951 List!15608)) )
))
(declare-fun arrayNoDuplicates!0 (array!45544 (_ BitVec 32) List!15608) Bool)

(assert (=> b!821158 (= res!560290 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15605))))

(declare-fun mapNonEmpty!23647 () Bool)

(declare-fun mapRes!23647 () Bool)

(declare-fun tp!45690 () Bool)

(declare-fun e!456376 () Bool)

(assert (=> mapNonEmpty!23647 (= mapRes!23647 (and tp!45690 e!456376))))

(declare-fun mapRest!23647 () (Array (_ BitVec 32) ValueCell!6931))

(declare-fun mapValue!23647 () ValueCell!6931)

(declare-fun mapKey!23647 () (_ BitVec 32))

(assert (=> mapNonEmpty!23647 (= (arr!21820 _values!788) (store mapRest!23647 mapKey!23647 mapValue!23647))))

(declare-fun b!821159 () Bool)

(assert (=> b!821159 (= e!456376 tp_is_empty!14693)))

(declare-fun b!821160 () Bool)

(declare-fun e!456374 () Bool)

(assert (=> b!821160 (= e!456374 tp_is_empty!14693)))

(declare-fun b!821161 () Bool)

(assert (=> b!821161 (= e!456371 (and e!456374 mapRes!23647))))

(declare-fun condMapEmpty!23647 () Bool)

(declare-fun mapDefault!23647 () ValueCell!6931)

