; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71034 () Bool)

(assert start!71034)

(declare-fun b_free!13213 () Bool)

(declare-fun b_next!13213 () Bool)

(assert (=> start!71034 (= b_free!13213 (not b_next!13213))))

(declare-fun tp!46392 () Bool)

(declare-fun b_and!22135 () Bool)

(assert (=> start!71034 (= tp!46392 b_and!22135)))

(declare-fun res!562190 () Bool)

(declare-fun e!458744 () Bool)

(assert (=> start!71034 (=> (not res!562190) (not e!458744))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71034 (= res!562190 (validMask!0 mask!1312))))

(assert (=> start!71034 e!458744))

(declare-fun tp_is_empty!14923 () Bool)

(assert (=> start!71034 tp_is_empty!14923))

(declare-datatypes ((array!45992 0))(
  ( (array!45993 (arr!22039 (Array (_ BitVec 32) (_ BitVec 64))) (size!22460 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45992)

(declare-fun array_inv!17563 (array!45992) Bool)

(assert (=> start!71034 (array_inv!17563 _keys!976)))

(assert (=> start!71034 true))

(declare-datatypes ((V!24899 0))(
  ( (V!24900 (val!7509 Int)) )
))
(declare-datatypes ((ValueCell!7046 0))(
  ( (ValueCellFull!7046 (v!9938 V!24899)) (EmptyCell!7046) )
))
(declare-datatypes ((array!45994 0))(
  ( (array!45995 (arr!22040 (Array (_ BitVec 32) ValueCell!7046)) (size!22461 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45994)

(declare-fun e!458745 () Bool)

(declare-fun array_inv!17564 (array!45994) Bool)

(assert (=> start!71034 (and (array_inv!17564 _values!788) e!458745)))

(assert (=> start!71034 tp!46392))

(declare-fun mapNonEmpty!24004 () Bool)

(declare-fun mapRes!24004 () Bool)

(declare-fun tp!46393 () Bool)

(declare-fun e!458747 () Bool)

(assert (=> mapNonEmpty!24004 (= mapRes!24004 (and tp!46393 e!458747))))

(declare-fun mapRest!24004 () (Array (_ BitVec 32) ValueCell!7046))

(declare-fun mapValue!24004 () ValueCell!7046)

(declare-fun mapKey!24004 () (_ BitVec 32))

(assert (=> mapNonEmpty!24004 (= (arr!22040 _values!788) (store mapRest!24004 mapKey!24004 mapValue!24004))))

(declare-fun b!824437 () Bool)

(declare-fun e!458749 () Bool)

(assert (=> b!824437 (= e!458744 (not e!458749))))

(declare-fun res!562193 () Bool)

(assert (=> b!824437 (=> res!562193 e!458749)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824437 (= res!562193 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9926 0))(
  ( (tuple2!9927 (_1!4973 (_ BitVec 64)) (_2!4973 V!24899)) )
))
(declare-datatypes ((List!15779 0))(
  ( (Nil!15776) (Cons!15775 (h!16904 tuple2!9926) (t!22130 List!15779)) )
))
(declare-datatypes ((ListLongMap!8763 0))(
  ( (ListLongMap!8764 (toList!4397 List!15779)) )
))
(declare-fun lt!371849 () ListLongMap!8763)

(declare-fun lt!371848 () ListLongMap!8763)

(assert (=> b!824437 (= lt!371849 lt!371848)))

(declare-fun zeroValueBefore!34 () V!24899)

(declare-fun zeroValueAfter!34 () V!24899)

(declare-fun minValue!754 () V!24899)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28238 0))(
  ( (Unit!28239) )
))
(declare-fun lt!371851 () Unit!28238)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!534 (array!45992 array!45994 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24899 V!24899 V!24899 V!24899 (_ BitVec 32) Int) Unit!28238)

(assert (=> b!824437 (= lt!371851 (lemmaNoChangeToArrayThenSameMapNoExtras!534 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2418 (array!45992 array!45994 (_ BitVec 32) (_ BitVec 32) V!24899 V!24899 (_ BitVec 32) Int) ListLongMap!8763)

(assert (=> b!824437 (= lt!371848 (getCurrentListMapNoExtraKeys!2418 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824437 (= lt!371849 (getCurrentListMapNoExtraKeys!2418 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824438 () Bool)

(assert (=> b!824438 (= e!458747 tp_is_empty!14923)))

(declare-fun b!824439 () Bool)

(assert (=> b!824439 (= e!458749 true)))

(declare-fun lt!371850 () ListLongMap!8763)

(declare-fun getCurrentListMap!2510 (array!45992 array!45994 (_ BitVec 32) (_ BitVec 32) V!24899 V!24899 (_ BitVec 32) Int) ListLongMap!8763)

(assert (=> b!824439 (= lt!371850 (getCurrentListMap!2510 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24004 () Bool)

(assert (=> mapIsEmpty!24004 mapRes!24004))

(declare-fun b!824440 () Bool)

(declare-fun res!562192 () Bool)

(assert (=> b!824440 (=> (not res!562192) (not e!458744))))

(assert (=> b!824440 (= res!562192 (and (= (size!22461 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22460 _keys!976) (size!22461 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824441 () Bool)

(declare-fun e!458746 () Bool)

(assert (=> b!824441 (= e!458745 (and e!458746 mapRes!24004))))

(declare-fun condMapEmpty!24004 () Bool)

(declare-fun mapDefault!24004 () ValueCell!7046)

