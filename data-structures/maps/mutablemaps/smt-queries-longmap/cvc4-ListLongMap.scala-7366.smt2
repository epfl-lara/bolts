; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93954 () Bool)

(assert start!93954)

(declare-fun b_free!21377 () Bool)

(declare-fun b_next!21377 () Bool)

(assert (=> start!93954 (= b_free!21377 (not b_next!21377))))

(declare-fun tp!75557 () Bool)

(declare-fun b_and!34117 () Bool)

(assert (=> start!93954 (= tp!75557 b_and!34117)))

(declare-fun b!1062116 () Bool)

(declare-fun e!604991 () Bool)

(assert (=> b!1062116 (= e!604991 true)))

(declare-datatypes ((V!38717 0))(
  ( (V!38718 (val!12644 Int)) )
))
(declare-datatypes ((tuple2!16082 0))(
  ( (tuple2!16083 (_1!8051 (_ BitVec 64)) (_2!8051 V!38717)) )
))
(declare-datatypes ((List!22695 0))(
  ( (Nil!22692) (Cons!22691 (h!23900 tuple2!16082) (t!32013 List!22695)) )
))
(declare-datatypes ((ListLongMap!14063 0))(
  ( (ListLongMap!14064 (toList!7047 List!22695)) )
))
(declare-fun lt!467926 () ListLongMap!14063)

(declare-fun -!562 (ListLongMap!14063 (_ BitVec 64)) ListLongMap!14063)

(assert (=> b!1062116 (= (-!562 lt!467926 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467926)))

(declare-datatypes ((Unit!34767 0))(
  ( (Unit!34768) )
))
(declare-fun lt!467927 () Unit!34767)

(declare-fun removeNotPresentStillSame!8 (ListLongMap!14063 (_ BitVec 64)) Unit!34767)

(assert (=> b!1062116 (= lt!467927 (removeNotPresentStillSame!8 lt!467926 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!39454 () Bool)

(declare-fun mapRes!39454 () Bool)

(assert (=> mapIsEmpty!39454 mapRes!39454))

(declare-fun b!1062118 () Bool)

(declare-fun e!604989 () Bool)

(declare-fun tp_is_empty!25187 () Bool)

(assert (=> b!1062118 (= e!604989 tp_is_empty!25187)))

(declare-fun b!1062119 () Bool)

(declare-fun res!709304 () Bool)

(declare-fun e!604994 () Bool)

(assert (=> b!1062119 (=> (not res!709304) (not e!604994))))

(declare-datatypes ((array!67354 0))(
  ( (array!67355 (arr!32380 (Array (_ BitVec 32) (_ BitVec 64))) (size!32917 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67354)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67354 (_ BitVec 32)) Bool)

(assert (=> b!1062119 (= res!709304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062120 () Bool)

(declare-fun e!604990 () Bool)

(assert (=> b!1062120 (= e!604994 (not e!604990))))

(declare-fun res!709309 () Bool)

(assert (=> b!1062120 (=> res!709309 e!604990)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062120 (= res!709309 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!467928 () ListLongMap!14063)

(declare-fun lt!467925 () ListLongMap!14063)

(assert (=> b!1062120 (= lt!467928 lt!467925)))

(declare-datatypes ((ValueCell!11890 0))(
  ( (ValueCellFull!11890 (v!15255 V!38717)) (EmptyCell!11890) )
))
(declare-datatypes ((array!67356 0))(
  ( (array!67357 (arr!32381 (Array (_ BitVec 32) ValueCell!11890)) (size!32918 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67356)

(declare-fun minValue!907 () V!38717)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38717)

(declare-fun lt!467924 () Unit!34767)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38717)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!649 (array!67354 array!67356 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38717 V!38717 V!38717 V!38717 (_ BitVec 32) Int) Unit!34767)

(assert (=> b!1062120 (= lt!467924 (lemmaNoChangeToArrayThenSameMapNoExtras!649 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3610 (array!67354 array!67356 (_ BitVec 32) (_ BitVec 32) V!38717 V!38717 (_ BitVec 32) Int) ListLongMap!14063)

(assert (=> b!1062120 (= lt!467925 (getCurrentListMapNoExtraKeys!3610 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062120 (= lt!467928 (getCurrentListMapNoExtraKeys!3610 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062121 () Bool)

(assert (=> b!1062121 (= e!604990 e!604991)))

(declare-fun res!709308 () Bool)

(assert (=> b!1062121 (=> res!709308 e!604991)))

(declare-fun contains!6243 (ListLongMap!14063 (_ BitVec 64)) Bool)

(assert (=> b!1062121 (= res!709308 (contains!6243 lt!467926 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!3993 (array!67354 array!67356 (_ BitVec 32) (_ BitVec 32) V!38717 V!38717 (_ BitVec 32) Int) ListLongMap!14063)

(assert (=> b!1062121 (= lt!467926 (getCurrentListMap!3993 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062122 () Bool)

(declare-fun e!604995 () Bool)

(assert (=> b!1062122 (= e!604995 (and e!604989 mapRes!39454))))

(declare-fun condMapEmpty!39454 () Bool)

(declare-fun mapDefault!39454 () ValueCell!11890)

