; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71098 () Bool)

(assert start!71098)

(declare-fun b_free!13261 () Bool)

(declare-fun b_next!13261 () Bool)

(assert (=> start!71098 (= b_free!13261 (not b_next!13261))))

(declare-fun tp!46539 () Bool)

(declare-fun b_and!22193 () Bool)

(assert (=> start!71098 (= tp!46539 b_and!22193)))

(declare-fun b!825219 () Bool)

(declare-fun e!459332 () Bool)

(declare-fun e!459331 () Bool)

(assert (=> b!825219 (= e!459332 (not e!459331))))

(declare-fun res!562666 () Bool)

(assert (=> b!825219 (=> res!562666 e!459331)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825219 (= res!562666 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24963 0))(
  ( (V!24964 (val!7533 Int)) )
))
(declare-datatypes ((tuple2!9970 0))(
  ( (tuple2!9971 (_1!4995 (_ BitVec 64)) (_2!4995 V!24963)) )
))
(declare-datatypes ((List!15815 0))(
  ( (Nil!15812) (Cons!15811 (h!16940 tuple2!9970) (t!22168 List!15815)) )
))
(declare-datatypes ((ListLongMap!8807 0))(
  ( (ListLongMap!8808 (toList!4419 List!15815)) )
))
(declare-fun lt!372545 () ListLongMap!8807)

(declare-fun lt!372532 () ListLongMap!8807)

(assert (=> b!825219 (= lt!372545 lt!372532)))

(declare-fun zeroValueBefore!34 () V!24963)

(declare-datatypes ((array!46086 0))(
  ( (array!46087 (arr!22085 (Array (_ BitVec 32) (_ BitVec 64))) (size!22506 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46086)

(declare-fun zeroValueAfter!34 () V!24963)

(declare-fun minValue!754 () V!24963)

(declare-datatypes ((ValueCell!7070 0))(
  ( (ValueCellFull!7070 (v!9962 V!24963)) (EmptyCell!7070) )
))
(declare-datatypes ((array!46088 0))(
  ( (array!46089 (arr!22086 (Array (_ BitVec 32) ValueCell!7070)) (size!22507 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46088)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28279 0))(
  ( (Unit!28280) )
))
(declare-fun lt!372534 () Unit!28279)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!551 (array!46086 array!46088 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24963 V!24963 V!24963 V!24963 (_ BitVec 32) Int) Unit!28279)

(assert (=> b!825219 (= lt!372534 (lemmaNoChangeToArrayThenSameMapNoExtras!551 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2435 (array!46086 array!46088 (_ BitVec 32) (_ BitVec 32) V!24963 V!24963 (_ BitVec 32) Int) ListLongMap!8807)

(assert (=> b!825219 (= lt!372532 (getCurrentListMapNoExtraKeys!2435 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825219 (= lt!372545 (getCurrentListMapNoExtraKeys!2435 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825220 () Bool)

(declare-fun e!459333 () Bool)

(declare-fun tp_is_empty!14971 () Bool)

(assert (=> b!825220 (= e!459333 tp_is_empty!14971)))

(declare-fun b!825221 () Bool)

(declare-fun res!562665 () Bool)

(assert (=> b!825221 (=> (not res!562665) (not e!459332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46086 (_ BitVec 32)) Bool)

(assert (=> b!825221 (= res!562665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825222 () Bool)

(declare-fun e!459334 () Bool)

(assert (=> b!825222 (= e!459334 tp_is_empty!14971)))

(declare-fun lt!372533 () tuple2!9970)

(declare-fun lt!372542 () tuple2!9970)

(declare-fun e!459328 () Bool)

(declare-fun b!825223 () Bool)

(declare-fun lt!372544 () ListLongMap!8807)

(declare-fun +!1881 (ListLongMap!8807 tuple2!9970) ListLongMap!8807)

(assert (=> b!825223 (= e!459328 (= lt!372544 (+!1881 (+!1881 lt!372532 lt!372533) lt!372542)))))

(declare-fun b!825224 () Bool)

(declare-fun e!459330 () Bool)

(assert (=> b!825224 (= e!459330 (= lt!372544 (+!1881 (+!1881 lt!372532 (tuple2!9971 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372533)))))

(declare-fun res!562667 () Bool)

(assert (=> start!71098 (=> (not res!562667) (not e!459332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71098 (= res!562667 (validMask!0 mask!1312))))

(assert (=> start!71098 e!459332))

(assert (=> start!71098 tp_is_empty!14971))

(declare-fun array_inv!17595 (array!46086) Bool)

(assert (=> start!71098 (array_inv!17595 _keys!976)))

(assert (=> start!71098 true))

(declare-fun e!459329 () Bool)

(declare-fun array_inv!17596 (array!46088) Bool)

(assert (=> start!71098 (and (array_inv!17596 _values!788) e!459329)))

(assert (=> start!71098 tp!46539))

(declare-fun mapNonEmpty!24079 () Bool)

(declare-fun mapRes!24079 () Bool)

(declare-fun tp!46540 () Bool)

(assert (=> mapNonEmpty!24079 (= mapRes!24079 (and tp!46540 e!459333))))

(declare-fun mapRest!24079 () (Array (_ BitVec 32) ValueCell!7070))

(declare-fun mapKey!24079 () (_ BitVec 32))

(declare-fun mapValue!24079 () ValueCell!7070)

(assert (=> mapNonEmpty!24079 (= (arr!22086 _values!788) (store mapRest!24079 mapKey!24079 mapValue!24079))))

(declare-fun mapIsEmpty!24079 () Bool)

(assert (=> mapIsEmpty!24079 mapRes!24079))

(declare-fun b!825225 () Bool)

(assert (=> b!825225 (= e!459331 true)))

(declare-fun lt!372541 () ListLongMap!8807)

(assert (=> b!825225 (= lt!372541 (+!1881 (+!1881 lt!372545 lt!372542) lt!372533))))

(declare-fun lt!372537 () ListLongMap!8807)

(declare-fun lt!372535 () ListLongMap!8807)

(assert (=> b!825225 (and (= lt!372537 lt!372535) (= lt!372544 lt!372535) (= lt!372544 lt!372537))))

(declare-fun lt!372538 () ListLongMap!8807)

(assert (=> b!825225 (= lt!372535 (+!1881 lt!372538 lt!372542))))

(declare-fun lt!372539 () ListLongMap!8807)

(assert (=> b!825225 (= lt!372537 (+!1881 lt!372539 lt!372542))))

(declare-fun lt!372540 () Unit!28279)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!209 (ListLongMap!8807 (_ BitVec 64) V!24963 V!24963) Unit!28279)

(assert (=> b!825225 (= lt!372540 (addSameAsAddTwiceSameKeyDiffValues!209 lt!372539 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!825225 e!459328))

(declare-fun res!562671 () Bool)

(assert (=> b!825225 (=> (not res!562671) (not e!459328))))

(declare-fun lt!372536 () ListLongMap!8807)

(assert (=> b!825225 (= res!562671 (= lt!372536 lt!372538))))

(declare-fun lt!372543 () tuple2!9970)

(assert (=> b!825225 (= lt!372538 (+!1881 lt!372539 lt!372543))))

(assert (=> b!825225 (= lt!372539 (+!1881 lt!372545 lt!372533))))

(assert (=> b!825225 (= lt!372542 (tuple2!9971 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!825225 e!459330))

(declare-fun res!562668 () Bool)

(assert (=> b!825225 (=> (not res!562668) (not e!459330))))

(assert (=> b!825225 (= res!562668 (= lt!372536 (+!1881 (+!1881 lt!372545 lt!372543) lt!372533)))))

(assert (=> b!825225 (= lt!372533 (tuple2!9971 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825225 (= lt!372543 (tuple2!9971 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2531 (array!46086 array!46088 (_ BitVec 32) (_ BitVec 32) V!24963 V!24963 (_ BitVec 32) Int) ListLongMap!8807)

(assert (=> b!825225 (= lt!372544 (getCurrentListMap!2531 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825225 (= lt!372536 (getCurrentListMap!2531 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825226 () Bool)

(declare-fun res!562669 () Bool)

(assert (=> b!825226 (=> (not res!562669) (not e!459332))))

(declare-datatypes ((List!15816 0))(
  ( (Nil!15813) (Cons!15812 (h!16941 (_ BitVec 64)) (t!22169 List!15816)) )
))
(declare-fun arrayNoDuplicates!0 (array!46086 (_ BitVec 32) List!15816) Bool)

(assert (=> b!825226 (= res!562669 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15813))))

(declare-fun b!825227 () Bool)

(declare-fun res!562670 () Bool)

(assert (=> b!825227 (=> (not res!562670) (not e!459332))))

(assert (=> b!825227 (= res!562670 (and (= (size!22507 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22506 _keys!976) (size!22507 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825228 () Bool)

(assert (=> b!825228 (= e!459329 (and e!459334 mapRes!24079))))

(declare-fun condMapEmpty!24079 () Bool)

(declare-fun mapDefault!24079 () ValueCell!7070)

