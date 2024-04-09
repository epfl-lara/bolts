; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21004 () Bool)

(assert start!21004)

(declare-fun b_free!5563 () Bool)

(declare-fun b_next!5563 () Bool)

(assert (=> start!21004 (= b_free!5563 (not b_next!5563))))

(declare-fun tp!19742 () Bool)

(declare-fun b_and!12375 () Bool)

(assert (=> start!21004 (= tp!19742 b_and!12375)))

(declare-fun res!103013 () Bool)

(declare-fun e!137347 () Bool)

(assert (=> start!21004 (=> (not res!103013) (not e!137347))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21004 (= res!103013 (validMask!0 mask!1149))))

(assert (=> start!21004 e!137347))

(declare-datatypes ((V!6881 0))(
  ( (V!6882 (val!2757 Int)) )
))
(declare-datatypes ((ValueCell!2369 0))(
  ( (ValueCellFull!2369 (v!4739 V!6881)) (EmptyCell!2369) )
))
(declare-datatypes ((array!10048 0))(
  ( (array!10049 (arr!4770 (Array (_ BitVec 32) ValueCell!2369)) (size!5095 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10048)

(declare-fun e!137346 () Bool)

(declare-fun array_inv!3149 (array!10048) Bool)

(assert (=> start!21004 (and (array_inv!3149 _values!649) e!137346)))

(assert (=> start!21004 true))

(declare-fun tp_is_empty!5425 () Bool)

(assert (=> start!21004 tp_is_empty!5425))

(declare-datatypes ((array!10050 0))(
  ( (array!10051 (arr!4771 (Array (_ BitVec 32) (_ BitVec 64))) (size!5096 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10050)

(declare-fun array_inv!3150 (array!10050) Bool)

(assert (=> start!21004 (array_inv!3150 _keys!825)))

(assert (=> start!21004 tp!19742))

(declare-fun mapNonEmpty!9218 () Bool)

(declare-fun mapRes!9218 () Bool)

(declare-fun tp!19741 () Bool)

(declare-fun e!137345 () Bool)

(assert (=> mapNonEmpty!9218 (= mapRes!9218 (and tp!19741 e!137345))))

(declare-fun mapValue!9218 () ValueCell!2369)

(declare-fun mapKey!9218 () (_ BitVec 32))

(declare-fun mapRest!9218 () (Array (_ BitVec 32) ValueCell!2369))

(assert (=> mapNonEmpty!9218 (= (arr!4770 _values!649) (store mapRest!9218 mapKey!9218 mapValue!9218))))

(declare-fun b!210950 () Bool)

(declare-fun res!103012 () Bool)

(assert (=> b!210950 (=> (not res!103012) (not e!137347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10050 (_ BitVec 32)) Bool)

(assert (=> b!210950 (= res!103012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun e!137348 () Bool)

(declare-datatypes ((tuple2!4162 0))(
  ( (tuple2!4163 (_1!2091 (_ BitVec 64)) (_2!2091 V!6881)) )
))
(declare-datatypes ((List!3079 0))(
  ( (Nil!3076) (Cons!3075 (h!3717 tuple2!4162) (t!8026 List!3079)) )
))
(declare-datatypes ((ListLongMap!3089 0))(
  ( (ListLongMap!3090 (toList!1560 List!3079)) )
))
(declare-fun lt!108413 () ListLongMap!3089)

(declare-fun lt!108415 () ListLongMap!3089)

(declare-fun b!210951 () Bool)

(declare-fun zeroValue!615 () V!6881)

(declare-fun +!553 (ListLongMap!3089 tuple2!4162) ListLongMap!3089)

(assert (=> b!210951 (= e!137348 (= lt!108415 (+!553 lt!108413 (tuple2!4163 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(declare-fun b!210952 () Bool)

(declare-fun res!103014 () Bool)

(assert (=> b!210952 (=> (not res!103014) (not e!137347))))

(declare-datatypes ((List!3080 0))(
  ( (Nil!3077) (Cons!3076 (h!3718 (_ BitVec 64)) (t!8027 List!3080)) )
))
(declare-fun arrayNoDuplicates!0 (array!10050 (_ BitVec 32) List!3080) Bool)

(assert (=> b!210952 (= res!103014 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3077))))

(declare-fun b!210953 () Bool)

(declare-fun e!137349 () Bool)

(assert (=> b!210953 (= e!137349 tp_is_empty!5425)))

(declare-fun b!210954 () Bool)

(assert (=> b!210954 (= e!137347 (not e!137348))))

(declare-fun res!103016 () Bool)

(assert (=> b!210954 (=> res!103016 e!137348)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!210954 (= res!103016 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!108416 () ListLongMap!3089)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6881)

(declare-fun getCurrentListMap!1089 (array!10050 array!10048 (_ BitVec 32) (_ BitVec 32) V!6881 V!6881 (_ BitVec 32) Int) ListLongMap!3089)

(assert (=> b!210954 (= lt!108416 (getCurrentListMap!1089 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108417 () array!10048)

(assert (=> b!210954 (= lt!108415 (getCurrentListMap!1089 _keys!825 lt!108417 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108412 () ListLongMap!3089)

(assert (=> b!210954 (and (= lt!108413 lt!108412) (= lt!108412 lt!108413))))

(declare-fun v!520 () V!6881)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun lt!108414 () ListLongMap!3089)

(assert (=> b!210954 (= lt!108412 (+!553 lt!108414 (tuple2!4163 k!843 v!520)))))

(declare-datatypes ((Unit!6403 0))(
  ( (Unit!6404) )
))
(declare-fun lt!108418 () Unit!6403)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!206 (array!10050 array!10048 (_ BitVec 32) (_ BitVec 32) V!6881 V!6881 (_ BitVec 32) (_ BitVec 64) V!6881 (_ BitVec 32) Int) Unit!6403)

(assert (=> b!210954 (= lt!108418 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!206 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!488 (array!10050 array!10048 (_ BitVec 32) (_ BitVec 32) V!6881 V!6881 (_ BitVec 32) Int) ListLongMap!3089)

(assert (=> b!210954 (= lt!108413 (getCurrentListMapNoExtraKeys!488 _keys!825 lt!108417 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210954 (= lt!108417 (array!10049 (store (arr!4770 _values!649) i!601 (ValueCellFull!2369 v!520)) (size!5095 _values!649)))))

(assert (=> b!210954 (= lt!108414 (getCurrentListMapNoExtraKeys!488 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210955 () Bool)

(assert (=> b!210955 (= e!137346 (and e!137349 mapRes!9218))))

(declare-fun condMapEmpty!9218 () Bool)

(declare-fun mapDefault!9218 () ValueCell!2369)

