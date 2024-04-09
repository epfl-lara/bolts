; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93968 () Bool)

(assert start!93968)

(declare-fun b_free!21391 () Bool)

(declare-fun b_next!21391 () Bool)

(assert (=> start!93968 (= b_free!21391 (not b_next!21391))))

(declare-fun tp!75599 () Bool)

(declare-fun b_and!34131 () Bool)

(assert (=> start!93968 (= tp!75599 b_and!34131)))

(declare-fun b!1062305 () Bool)

(declare-fun e!605140 () Bool)

(declare-fun tp_is_empty!25201 () Bool)

(assert (=> b!1062305 (= e!605140 tp_is_empty!25201)))

(declare-fun b!1062306 () Bool)

(declare-fun res!709434 () Bool)

(declare-fun e!605138 () Bool)

(assert (=> b!1062306 (=> (not res!709434) (not e!605138))))

(declare-datatypes ((array!67378 0))(
  ( (array!67379 (arr!32392 (Array (_ BitVec 32) (_ BitVec 64))) (size!32929 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67378)

(declare-datatypes ((List!22703 0))(
  ( (Nil!22700) (Cons!22699 (h!23908 (_ BitVec 64)) (t!32021 List!22703)) )
))
(declare-fun arrayNoDuplicates!0 (array!67378 (_ BitVec 32) List!22703) Bool)

(assert (=> b!1062306 (= res!709434 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22700))))

(declare-fun res!709430 () Bool)

(assert (=> start!93968 (=> (not res!709430) (not e!605138))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93968 (= res!709430 (validMask!0 mask!1515))))

(assert (=> start!93968 e!605138))

(assert (=> start!93968 true))

(assert (=> start!93968 tp_is_empty!25201))

(declare-datatypes ((V!38737 0))(
  ( (V!38738 (val!12651 Int)) )
))
(declare-datatypes ((ValueCell!11897 0))(
  ( (ValueCellFull!11897 (v!15262 V!38737)) (EmptyCell!11897) )
))
(declare-datatypes ((array!67380 0))(
  ( (array!67381 (arr!32393 (Array (_ BitVec 32) ValueCell!11897)) (size!32930 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67380)

(declare-fun e!605136 () Bool)

(declare-fun array_inv!24932 (array!67380) Bool)

(assert (=> start!93968 (and (array_inv!24932 _values!955) e!605136)))

(assert (=> start!93968 tp!75599))

(declare-fun array_inv!24933 (array!67378) Bool)

(assert (=> start!93968 (array_inv!24933 _keys!1163)))

(declare-fun mapNonEmpty!39475 () Bool)

(declare-fun mapRes!39475 () Bool)

(declare-fun tp!75600 () Bool)

(assert (=> mapNonEmpty!39475 (= mapRes!39475 (and tp!75600 e!605140))))

(declare-fun mapRest!39475 () (Array (_ BitVec 32) ValueCell!11897))

(declare-fun mapKey!39475 () (_ BitVec 32))

(declare-fun mapValue!39475 () ValueCell!11897)

(assert (=> mapNonEmpty!39475 (= (arr!32393 _values!955) (store mapRest!39475 mapKey!39475 mapValue!39475))))

(declare-fun b!1062307 () Bool)

(declare-fun e!605142 () Bool)

(declare-fun e!605139 () Bool)

(assert (=> b!1062307 (= e!605142 e!605139)))

(declare-fun res!709435 () Bool)

(assert (=> b!1062307 (=> res!709435 e!605139)))

(declare-datatypes ((tuple2!16090 0))(
  ( (tuple2!16091 (_1!8055 (_ BitVec 64)) (_2!8055 V!38737)) )
))
(declare-datatypes ((List!22704 0))(
  ( (Nil!22701) (Cons!22700 (h!23909 tuple2!16090) (t!32022 List!22704)) )
))
(declare-datatypes ((ListLongMap!14071 0))(
  ( (ListLongMap!14072 (toList!7051 List!22704)) )
))
(declare-fun lt!468032 () ListLongMap!14071)

(declare-fun contains!6247 (ListLongMap!14071 (_ BitVec 64)) Bool)

(assert (=> b!1062307 (= res!709435 (contains!6247 lt!468032 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38737)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38737)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!3997 (array!67378 array!67380 (_ BitVec 32) (_ BitVec 32) V!38737 V!38737 (_ BitVec 32) Int) ListLongMap!14071)

(assert (=> b!1062307 (= lt!468032 (getCurrentListMap!3997 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062308 () Bool)

(assert (=> b!1062308 (= e!605139 true)))

(declare-fun -!566 (ListLongMap!14071 (_ BitVec 64)) ListLongMap!14071)

(assert (=> b!1062308 (= (-!566 lt!468032 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468032)))

(declare-datatypes ((Unit!34775 0))(
  ( (Unit!34776) )
))
(declare-fun lt!468030 () Unit!34775)

(declare-fun removeNotPresentStillSame!12 (ListLongMap!14071 (_ BitVec 64)) Unit!34775)

(assert (=> b!1062308 (= lt!468030 (removeNotPresentStillSame!12 lt!468032 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062309 () Bool)

(declare-fun e!605141 () Bool)

(assert (=> b!1062309 (= e!605141 tp_is_empty!25201)))

(declare-fun b!1062310 () Bool)

(declare-fun res!709431 () Bool)

(assert (=> b!1062310 (=> (not res!709431) (not e!605138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67378 (_ BitVec 32)) Bool)

(assert (=> b!1062310 (= res!709431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39475 () Bool)

(assert (=> mapIsEmpty!39475 mapRes!39475))

(declare-fun b!1062311 () Bool)

(assert (=> b!1062311 (= e!605138 (not e!605142))))

(declare-fun res!709432 () Bool)

(assert (=> b!1062311 (=> res!709432 e!605142)))

(assert (=> b!1062311 (= res!709432 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468033 () ListLongMap!14071)

(declare-fun lt!468029 () ListLongMap!14071)

(assert (=> b!1062311 (= lt!468033 lt!468029)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38737)

(declare-fun lt!468031 () Unit!34775)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!653 (array!67378 array!67380 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38737 V!38737 V!38737 V!38737 (_ BitVec 32) Int) Unit!34775)

(assert (=> b!1062311 (= lt!468031 (lemmaNoChangeToArrayThenSameMapNoExtras!653 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3614 (array!67378 array!67380 (_ BitVec 32) (_ BitVec 32) V!38737 V!38737 (_ BitVec 32) Int) ListLongMap!14071)

(assert (=> b!1062311 (= lt!468029 (getCurrentListMapNoExtraKeys!3614 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062311 (= lt!468033 (getCurrentListMapNoExtraKeys!3614 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062312 () Bool)

(assert (=> b!1062312 (= e!605136 (and e!605141 mapRes!39475))))

(declare-fun condMapEmpty!39475 () Bool)

(declare-fun mapDefault!39475 () ValueCell!11897)

