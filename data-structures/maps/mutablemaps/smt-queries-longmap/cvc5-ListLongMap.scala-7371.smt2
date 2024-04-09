; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93980 () Bool)

(assert start!93980)

(declare-fun b_free!21403 () Bool)

(declare-fun b_next!21403 () Bool)

(assert (=> start!93980 (= b_free!21403 (not b_next!21403))))

(declare-fun tp!75635 () Bool)

(declare-fun b_and!34143 () Bool)

(assert (=> start!93980 (= tp!75635 b_and!34143)))

(declare-fun b!1062467 () Bool)

(declare-fun res!709542 () Bool)

(declare-fun e!605268 () Bool)

(assert (=> b!1062467 (=> (not res!709542) (not e!605268))))

(declare-datatypes ((array!67400 0))(
  ( (array!67401 (arr!32403 (Array (_ BitVec 32) (_ BitVec 64))) (size!32940 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67400)

(declare-datatypes ((List!22711 0))(
  ( (Nil!22708) (Cons!22707 (h!23916 (_ BitVec 64)) (t!32029 List!22711)) )
))
(declare-fun arrayNoDuplicates!0 (array!67400 (_ BitVec 32) List!22711) Bool)

(assert (=> b!1062467 (= res!709542 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22708))))

(declare-fun res!709543 () Bool)

(assert (=> start!93980 (=> (not res!709543) (not e!605268))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93980 (= res!709543 (validMask!0 mask!1515))))

(assert (=> start!93980 e!605268))

(assert (=> start!93980 true))

(declare-fun tp_is_empty!25213 () Bool)

(assert (=> start!93980 tp_is_empty!25213))

(declare-datatypes ((V!38753 0))(
  ( (V!38754 (val!12657 Int)) )
))
(declare-datatypes ((ValueCell!11903 0))(
  ( (ValueCellFull!11903 (v!15268 V!38753)) (EmptyCell!11903) )
))
(declare-datatypes ((array!67402 0))(
  ( (array!67403 (arr!32404 (Array (_ BitVec 32) ValueCell!11903)) (size!32941 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67402)

(declare-fun e!605264 () Bool)

(declare-fun array_inv!24938 (array!67402) Bool)

(assert (=> start!93980 (and (array_inv!24938 _values!955) e!605264)))

(assert (=> start!93980 tp!75635))

(declare-fun array_inv!24939 (array!67400) Bool)

(assert (=> start!93980 (array_inv!24939 _keys!1163)))

(declare-fun b!1062468 () Bool)

(declare-fun e!605266 () Bool)

(assert (=> b!1062468 (= e!605266 true)))

(declare-datatypes ((tuple2!16100 0))(
  ( (tuple2!16101 (_1!8060 (_ BitVec 64)) (_2!8060 V!38753)) )
))
(declare-datatypes ((List!22712 0))(
  ( (Nil!22709) (Cons!22708 (h!23917 tuple2!16100) (t!32030 List!22712)) )
))
(declare-datatypes ((ListLongMap!14081 0))(
  ( (ListLongMap!14082 (toList!7056 List!22712)) )
))
(declare-fun lt!468123 () ListLongMap!14081)

(declare-fun -!570 (ListLongMap!14081 (_ BitVec 64)) ListLongMap!14081)

(assert (=> b!1062468 (= (-!570 lt!468123 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468123)))

(declare-datatypes ((Unit!34783 0))(
  ( (Unit!34784) )
))
(declare-fun lt!468119 () Unit!34783)

(declare-fun removeNotPresentStillSame!16 (ListLongMap!14081 (_ BitVec 64)) Unit!34783)

(assert (=> b!1062468 (= lt!468119 (removeNotPresentStillSame!16 lt!468123 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!39493 () Bool)

(declare-fun mapRes!39493 () Bool)

(declare-fun tp!75636 () Bool)

(declare-fun e!605267 () Bool)

(assert (=> mapNonEmpty!39493 (= mapRes!39493 (and tp!75636 e!605267))))

(declare-fun mapValue!39493 () ValueCell!11903)

(declare-fun mapKey!39493 () (_ BitVec 32))

(declare-fun mapRest!39493 () (Array (_ BitVec 32) ValueCell!11903))

(assert (=> mapNonEmpty!39493 (= (arr!32404 _values!955) (store mapRest!39493 mapKey!39493 mapValue!39493))))

(declare-fun b!1062469 () Bool)

(declare-fun e!605265 () Bool)

(assert (=> b!1062469 (= e!605265 tp_is_empty!25213)))

(declare-fun mapIsEmpty!39493 () Bool)

(assert (=> mapIsEmpty!39493 mapRes!39493))

(declare-fun b!1062470 () Bool)

(declare-fun e!605262 () Bool)

(assert (=> b!1062470 (= e!605262 e!605266)))

(declare-fun res!709540 () Bool)

(assert (=> b!1062470 (=> res!709540 e!605266)))

(declare-fun contains!6251 (ListLongMap!14081 (_ BitVec 64)) Bool)

(assert (=> b!1062470 (= res!709540 (contains!6251 lt!468123 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38753)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38753)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4001 (array!67400 array!67402 (_ BitVec 32) (_ BitVec 32) V!38753 V!38753 (_ BitVec 32) Int) ListLongMap!14081)

(assert (=> b!1062470 (= lt!468123 (getCurrentListMap!4001 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062471 () Bool)

(declare-fun res!709538 () Bool)

(assert (=> b!1062471 (=> (not res!709538) (not e!605268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67400 (_ BitVec 32)) Bool)

(assert (=> b!1062471 (= res!709538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062472 () Bool)

(assert (=> b!1062472 (= e!605268 (not e!605262))))

(declare-fun res!709539 () Bool)

(assert (=> b!1062472 (=> res!709539 e!605262)))

(assert (=> b!1062472 (= res!709539 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468121 () ListLongMap!14081)

(declare-fun lt!468120 () ListLongMap!14081)

(assert (=> b!1062472 (= lt!468121 lt!468120)))

(declare-fun lt!468122 () Unit!34783)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38753)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!656 (array!67400 array!67402 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38753 V!38753 V!38753 V!38753 (_ BitVec 32) Int) Unit!34783)

(assert (=> b!1062472 (= lt!468122 (lemmaNoChangeToArrayThenSameMapNoExtras!656 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3617 (array!67400 array!67402 (_ BitVec 32) (_ BitVec 32) V!38753 V!38753 (_ BitVec 32) Int) ListLongMap!14081)

(assert (=> b!1062472 (= lt!468120 (getCurrentListMapNoExtraKeys!3617 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062472 (= lt!468121 (getCurrentListMapNoExtraKeys!3617 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062473 () Bool)

(assert (=> b!1062473 (= e!605267 tp_is_empty!25213)))

(declare-fun b!1062474 () Bool)

(assert (=> b!1062474 (= e!605264 (and e!605265 mapRes!39493))))

(declare-fun condMapEmpty!39493 () Bool)

(declare-fun mapDefault!39493 () ValueCell!11903)

