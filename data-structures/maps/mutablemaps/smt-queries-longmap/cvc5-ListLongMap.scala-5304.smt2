; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71052 () Bool)

(assert start!71052)

(declare-fun b_free!13231 () Bool)

(declare-fun b_next!13231 () Bool)

(assert (=> start!71052 (= b_free!13231 (not b_next!13231))))

(declare-fun tp!46446 () Bool)

(declare-fun b_and!22153 () Bool)

(assert (=> start!71052 (= tp!46446 b_and!22153)))

(declare-fun b!824653 () Bool)

(declare-fun e!458908 () Bool)

(declare-fun e!458911 () Bool)

(assert (=> b!824653 (= e!458908 (not e!458911))))

(declare-fun res!562326 () Bool)

(assert (=> b!824653 (=> res!562326 e!458911)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824653 (= res!562326 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24923 0))(
  ( (V!24924 (val!7518 Int)) )
))
(declare-datatypes ((tuple2!9944 0))(
  ( (tuple2!9945 (_1!4982 (_ BitVec 64)) (_2!4982 V!24923)) )
))
(declare-datatypes ((List!15793 0))(
  ( (Nil!15790) (Cons!15789 (h!16918 tuple2!9944) (t!22144 List!15793)) )
))
(declare-datatypes ((ListLongMap!8781 0))(
  ( (ListLongMap!8782 (toList!4406 List!15793)) )
))
(declare-fun lt!371957 () ListLongMap!8781)

(declare-fun lt!371959 () ListLongMap!8781)

(assert (=> b!824653 (= lt!371957 lt!371959)))

(declare-fun zeroValueBefore!34 () V!24923)

(declare-datatypes ((array!46028 0))(
  ( (array!46029 (arr!22057 (Array (_ BitVec 32) (_ BitVec 64))) (size!22478 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46028)

(declare-fun minValue!754 () V!24923)

(declare-datatypes ((ValueCell!7055 0))(
  ( (ValueCellFull!7055 (v!9947 V!24923)) (EmptyCell!7055) )
))
(declare-datatypes ((array!46030 0))(
  ( (array!46031 (arr!22058 (Array (_ BitVec 32) ValueCell!7055)) (size!22479 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46030)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28254 0))(
  ( (Unit!28255) )
))
(declare-fun lt!371958 () Unit!28254)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24923)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!542 (array!46028 array!46030 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24923 V!24923 V!24923 V!24923 (_ BitVec 32) Int) Unit!28254)

(assert (=> b!824653 (= lt!371958 (lemmaNoChangeToArrayThenSameMapNoExtras!542 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2426 (array!46028 array!46030 (_ BitVec 32) (_ BitVec 32) V!24923 V!24923 (_ BitVec 32) Int) ListLongMap!8781)

(assert (=> b!824653 (= lt!371959 (getCurrentListMapNoExtraKeys!2426 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824653 (= lt!371957 (getCurrentListMapNoExtraKeys!2426 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824654 () Bool)

(assert (=> b!824654 (= e!458911 true)))

(declare-fun lt!371956 () ListLongMap!8781)

(declare-fun getCurrentListMap!2518 (array!46028 array!46030 (_ BitVec 32) (_ BitVec 32) V!24923 V!24923 (_ BitVec 32) Int) ListLongMap!8781)

(assert (=> b!824654 (= lt!371956 (getCurrentListMap!2518 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24031 () Bool)

(declare-fun mapRes!24031 () Bool)

(declare-fun tp!46447 () Bool)

(declare-fun e!458906 () Bool)

(assert (=> mapNonEmpty!24031 (= mapRes!24031 (and tp!46447 e!458906))))

(declare-fun mapRest!24031 () (Array (_ BitVec 32) ValueCell!7055))

(declare-fun mapKey!24031 () (_ BitVec 32))

(declare-fun mapValue!24031 () ValueCell!7055)

(assert (=> mapNonEmpty!24031 (= (arr!22058 _values!788) (store mapRest!24031 mapKey!24031 mapValue!24031))))

(declare-fun b!824655 () Bool)

(declare-fun res!562324 () Bool)

(assert (=> b!824655 (=> (not res!562324) (not e!458908))))

(declare-datatypes ((List!15794 0))(
  ( (Nil!15791) (Cons!15790 (h!16919 (_ BitVec 64)) (t!22145 List!15794)) )
))
(declare-fun arrayNoDuplicates!0 (array!46028 (_ BitVec 32) List!15794) Bool)

(assert (=> b!824655 (= res!562324 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15791))))

(declare-fun b!824656 () Bool)

(declare-fun e!458907 () Bool)

(declare-fun e!458910 () Bool)

(assert (=> b!824656 (= e!458907 (and e!458910 mapRes!24031))))

(declare-fun condMapEmpty!24031 () Bool)

(declare-fun mapDefault!24031 () ValueCell!7055)

