; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71086 () Bool)

(assert start!71086)

(declare-fun b_free!13249 () Bool)

(declare-fun b_next!13249 () Bool)

(assert (=> start!71086 (= b_free!13249 (not b_next!13249))))

(declare-fun tp!46503 () Bool)

(declare-fun b_and!22181 () Bool)

(assert (=> start!71086 (= tp!46503 b_and!22181)))

(declare-fun b!825039 () Bool)

(declare-fun e!459188 () Bool)

(declare-fun tp_is_empty!14959 () Bool)

(assert (=> b!825039 (= e!459188 tp_is_empty!14959)))

(declare-fun mapNonEmpty!24061 () Bool)

(declare-fun mapRes!24061 () Bool)

(declare-fun tp!46504 () Bool)

(declare-fun e!459186 () Bool)

(assert (=> mapNonEmpty!24061 (= mapRes!24061 (and tp!46504 e!459186))))

(declare-datatypes ((V!24947 0))(
  ( (V!24948 (val!7527 Int)) )
))
(declare-datatypes ((ValueCell!7064 0))(
  ( (ValueCellFull!7064 (v!9956 V!24947)) (EmptyCell!7064) )
))
(declare-fun mapValue!24061 () ValueCell!7064)

(declare-datatypes ((array!46066 0))(
  ( (array!46067 (arr!22075 (Array (_ BitVec 32) ValueCell!7064)) (size!22496 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46066)

(declare-fun mapRest!24061 () (Array (_ BitVec 32) ValueCell!7064))

(declare-fun mapKey!24061 () (_ BitVec 32))

(assert (=> mapNonEmpty!24061 (= (arr!22075 _values!788) (store mapRest!24061 mapKey!24061 mapValue!24061))))

(declare-fun res!562539 () Bool)

(declare-fun e!459184 () Bool)

(assert (=> start!71086 (=> (not res!562539) (not e!459184))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71086 (= res!562539 (validMask!0 mask!1312))))

(assert (=> start!71086 e!459184))

(assert (=> start!71086 tp_is_empty!14959))

(declare-datatypes ((array!46068 0))(
  ( (array!46069 (arr!22076 (Array (_ BitVec 32) (_ BitVec 64))) (size!22497 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46068)

(declare-fun array_inv!17587 (array!46068) Bool)

(assert (=> start!71086 (array_inv!17587 _keys!976)))

(assert (=> start!71086 true))

(declare-fun e!459191 () Bool)

(declare-fun array_inv!17588 (array!46066) Bool)

(assert (=> start!71086 (and (array_inv!17588 _values!788) e!459191)))

(assert (=> start!71086 tp!46503))

(declare-fun b!825040 () Bool)

(declare-fun res!562543 () Bool)

(assert (=> b!825040 (=> (not res!562543) (not e!459184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46068 (_ BitVec 32)) Bool)

(assert (=> b!825040 (= res!562543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825041 () Bool)

(declare-fun res!562542 () Bool)

(assert (=> b!825041 (=> (not res!562542) (not e!459184))))

(declare-datatypes ((List!15808 0))(
  ( (Nil!15805) (Cons!15804 (h!16933 (_ BitVec 64)) (t!22161 List!15808)) )
))
(declare-fun arrayNoDuplicates!0 (array!46068 (_ BitVec 32) List!15808) Bool)

(assert (=> b!825041 (= res!562542 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15805))))

(declare-fun b!825042 () Bool)

(declare-fun e!459189 () Bool)

(assert (=> b!825042 (= e!459184 (not e!459189))))

(declare-fun res!562541 () Bool)

(assert (=> b!825042 (=> res!562541 e!459189)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825042 (= res!562541 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9962 0))(
  ( (tuple2!9963 (_1!4991 (_ BitVec 64)) (_2!4991 V!24947)) )
))
(declare-datatypes ((List!15809 0))(
  ( (Nil!15806) (Cons!15805 (h!16934 tuple2!9962) (t!22162 List!15809)) )
))
(declare-datatypes ((ListLongMap!8799 0))(
  ( (ListLongMap!8800 (toList!4415 List!15809)) )
))
(declare-fun lt!372283 () ListLongMap!8799)

(declare-fun lt!372291 () ListLongMap!8799)

(assert (=> b!825042 (= lt!372283 lt!372291)))

(declare-fun zeroValueBefore!34 () V!24947)

(declare-fun zeroValueAfter!34 () V!24947)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24947)

(declare-datatypes ((Unit!28271 0))(
  ( (Unit!28272) )
))
(declare-fun lt!372285 () Unit!28271)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!548 (array!46068 array!46066 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24947 V!24947 V!24947 V!24947 (_ BitVec 32) Int) Unit!28271)

(assert (=> b!825042 (= lt!372285 (lemmaNoChangeToArrayThenSameMapNoExtras!548 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2432 (array!46068 array!46066 (_ BitVec 32) (_ BitVec 32) V!24947 V!24947 (_ BitVec 32) Int) ListLongMap!8799)

(assert (=> b!825042 (= lt!372291 (getCurrentListMapNoExtraKeys!2432 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825042 (= lt!372283 (getCurrentListMapNoExtraKeys!2432 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825043 () Bool)

(declare-fun res!562544 () Bool)

(assert (=> b!825043 (=> (not res!562544) (not e!459184))))

(assert (=> b!825043 (= res!562544 (and (= (size!22496 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22497 _keys!976) (size!22496 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825044 () Bool)

(assert (=> b!825044 (= e!459189 true)))

(declare-fun lt!372284 () tuple2!9962)

(declare-fun lt!372293 () tuple2!9962)

(declare-fun lt!372286 () ListLongMap!8799)

(declare-fun +!1877 (ListLongMap!8799 tuple2!9962) ListLongMap!8799)

(assert (=> b!825044 (= lt!372286 (+!1877 (+!1877 lt!372283 lt!372293) lt!372284))))

(declare-fun lt!372288 () ListLongMap!8799)

(declare-fun lt!372287 () ListLongMap!8799)

(declare-fun lt!372280 () ListLongMap!8799)

(assert (=> b!825044 (and (= lt!372288 lt!372287) (= lt!372280 lt!372287) (= lt!372280 lt!372288))))

(declare-fun lt!372289 () ListLongMap!8799)

(assert (=> b!825044 (= lt!372287 (+!1877 lt!372289 lt!372293))))

(declare-fun lt!372282 () ListLongMap!8799)

(assert (=> b!825044 (= lt!372288 (+!1877 lt!372282 lt!372293))))

(declare-fun lt!372292 () Unit!28271)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!205 (ListLongMap!8799 (_ BitVec 64) V!24947 V!24947) Unit!28271)

(assert (=> b!825044 (= lt!372292 (addSameAsAddTwiceSameKeyDiffValues!205 lt!372282 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459187 () Bool)

(assert (=> b!825044 e!459187))

(declare-fun res!562545 () Bool)

(assert (=> b!825044 (=> (not res!562545) (not e!459187))))

(declare-fun lt!372281 () ListLongMap!8799)

(assert (=> b!825044 (= res!562545 (= lt!372281 lt!372289))))

(declare-fun lt!372290 () tuple2!9962)

(assert (=> b!825044 (= lt!372289 (+!1877 lt!372282 lt!372290))))

(assert (=> b!825044 (= lt!372282 (+!1877 lt!372283 lt!372284))))

(assert (=> b!825044 (= lt!372293 (tuple2!9963 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459190 () Bool)

(assert (=> b!825044 e!459190))

(declare-fun res!562540 () Bool)

(assert (=> b!825044 (=> (not res!562540) (not e!459190))))

(assert (=> b!825044 (= res!562540 (= lt!372281 (+!1877 (+!1877 lt!372283 lt!372290) lt!372284)))))

(assert (=> b!825044 (= lt!372284 (tuple2!9963 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825044 (= lt!372290 (tuple2!9963 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2527 (array!46068 array!46066 (_ BitVec 32) (_ BitVec 32) V!24947 V!24947 (_ BitVec 32) Int) ListLongMap!8799)

(assert (=> b!825044 (= lt!372280 (getCurrentListMap!2527 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825044 (= lt!372281 (getCurrentListMap!2527 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825045 () Bool)

(assert (=> b!825045 (= e!459186 tp_is_empty!14959)))

(declare-fun mapIsEmpty!24061 () Bool)

(assert (=> mapIsEmpty!24061 mapRes!24061))

(declare-fun b!825046 () Bool)

(assert (=> b!825046 (= e!459190 (= lt!372280 (+!1877 (+!1877 lt!372291 (tuple2!9963 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372284)))))

(declare-fun b!825047 () Bool)

(assert (=> b!825047 (= e!459191 (and e!459188 mapRes!24061))))

(declare-fun condMapEmpty!24061 () Bool)

(declare-fun mapDefault!24061 () ValueCell!7064)

