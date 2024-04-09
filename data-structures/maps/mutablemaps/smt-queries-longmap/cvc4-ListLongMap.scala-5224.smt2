; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70436 () Bool)

(assert start!70436)

(declare-fun b_free!12755 () Bool)

(declare-fun b_next!12755 () Bool)

(assert (=> start!70436 (= b_free!12755 (not b_next!12755))))

(declare-fun tp!44995 () Bool)

(declare-fun b_and!21593 () Bool)

(assert (=> start!70436 (= tp!44995 b_and!21593)))

(declare-fun res!558228 () Bool)

(declare-fun e!453842 () Bool)

(assert (=> start!70436 (=> (not res!558228) (not e!453842))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70436 (= res!558228 (validMask!0 mask!1312))))

(assert (=> start!70436 e!453842))

(declare-fun tp_is_empty!14465 () Bool)

(assert (=> start!70436 tp_is_empty!14465))

(declare-datatypes ((array!45106 0))(
  ( (array!45107 (arr!21604 (Array (_ BitVec 32) (_ BitVec 64))) (size!22025 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45106)

(declare-fun array_inv!17255 (array!45106) Bool)

(assert (=> start!70436 (array_inv!17255 _keys!976)))

(assert (=> start!70436 true))

(declare-datatypes ((V!24287 0))(
  ( (V!24288 (val!7280 Int)) )
))
(declare-datatypes ((ValueCell!6817 0))(
  ( (ValueCellFull!6817 (v!9705 V!24287)) (EmptyCell!6817) )
))
(declare-datatypes ((array!45108 0))(
  ( (array!45109 (arr!21605 (Array (_ BitVec 32) ValueCell!6817)) (size!22026 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45108)

(declare-fun e!453843 () Bool)

(declare-fun array_inv!17256 (array!45108) Bool)

(assert (=> start!70436 (and (array_inv!17256 _values!788) e!453843)))

(assert (=> start!70436 tp!44995))

(declare-fun b!817716 () Bool)

(declare-fun e!453845 () Bool)

(assert (=> b!817716 (= e!453845 tp_is_empty!14465)))

(declare-fun mapNonEmpty!23293 () Bool)

(declare-fun mapRes!23293 () Bool)

(declare-fun tp!44994 () Bool)

(assert (=> mapNonEmpty!23293 (= mapRes!23293 (and tp!44994 e!453845))))

(declare-fun mapKey!23293 () (_ BitVec 32))

(declare-fun mapRest!23293 () (Array (_ BitVec 32) ValueCell!6817))

(declare-fun mapValue!23293 () ValueCell!6817)

(assert (=> mapNonEmpty!23293 (= (arr!21605 _values!788) (store mapRest!23293 mapKey!23293 mapValue!23293))))

(declare-fun b!817717 () Bool)

(declare-fun e!453846 () Bool)

(assert (=> b!817717 (= e!453846 tp_is_empty!14465)))

(declare-fun b!817718 () Bool)

(declare-fun e!453844 () Bool)

(assert (=> b!817718 (= e!453844 true)))

(declare-fun zeroValueBefore!34 () V!24287)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24287)

(declare-datatypes ((tuple2!9576 0))(
  ( (tuple2!9577 (_1!4798 (_ BitVec 64)) (_2!4798 V!24287)) )
))
(declare-datatypes ((List!15444 0))(
  ( (Nil!15441) (Cons!15440 (h!16569 tuple2!9576) (t!21779 List!15444)) )
))
(declare-datatypes ((ListLongMap!8413 0))(
  ( (ListLongMap!8414 (toList!4222 List!15444)) )
))
(declare-fun lt!366393 () ListLongMap!8413)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2387 (array!45106 array!45108 (_ BitVec 32) (_ BitVec 32) V!24287 V!24287 (_ BitVec 32) Int) ListLongMap!8413)

(assert (=> b!817718 (= lt!366393 (getCurrentListMap!2387 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817719 () Bool)

(declare-fun res!558226 () Bool)

(assert (=> b!817719 (=> (not res!558226) (not e!453842))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45106 (_ BitVec 32)) Bool)

(assert (=> b!817719 (= res!558226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817720 () Bool)

(declare-fun res!558229 () Bool)

(assert (=> b!817720 (=> (not res!558229) (not e!453842))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817720 (= res!558229 (and (= (size!22026 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22025 _keys!976) (size!22026 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23293 () Bool)

(assert (=> mapIsEmpty!23293 mapRes!23293))

(declare-fun b!817721 () Bool)

(assert (=> b!817721 (= e!453842 (not e!453844))))

(declare-fun res!558227 () Bool)

(assert (=> b!817721 (=> res!558227 e!453844)))

(assert (=> b!817721 (= res!558227 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366390 () ListLongMap!8413)

(declare-fun lt!366391 () ListLongMap!8413)

(assert (=> b!817721 (= lt!366390 lt!366391)))

(declare-fun zeroValueAfter!34 () V!24287)

(declare-datatypes ((Unit!27896 0))(
  ( (Unit!27897) )
))
(declare-fun lt!366392 () Unit!27896)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!383 (array!45106 array!45108 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24287 V!24287 V!24287 V!24287 (_ BitVec 32) Int) Unit!27896)

(assert (=> b!817721 (= lt!366392 (lemmaNoChangeToArrayThenSameMapNoExtras!383 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2267 (array!45106 array!45108 (_ BitVec 32) (_ BitVec 32) V!24287 V!24287 (_ BitVec 32) Int) ListLongMap!8413)

(assert (=> b!817721 (= lt!366391 (getCurrentListMapNoExtraKeys!2267 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817721 (= lt!366390 (getCurrentListMapNoExtraKeys!2267 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817722 () Bool)

(declare-fun res!558225 () Bool)

(assert (=> b!817722 (=> (not res!558225) (not e!453842))))

(declare-datatypes ((List!15445 0))(
  ( (Nil!15442) (Cons!15441 (h!16570 (_ BitVec 64)) (t!21780 List!15445)) )
))
(declare-fun arrayNoDuplicates!0 (array!45106 (_ BitVec 32) List!15445) Bool)

(assert (=> b!817722 (= res!558225 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15442))))

(declare-fun b!817723 () Bool)

(assert (=> b!817723 (= e!453843 (and e!453846 mapRes!23293))))

(declare-fun condMapEmpty!23293 () Bool)

(declare-fun mapDefault!23293 () ValueCell!6817)

