; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94798 () Bool)

(assert start!94798)

(declare-fun b_free!22015 () Bool)

(declare-fun b_next!22015 () Bool)

(assert (=> start!94798 (= b_free!22015 (not b_next!22015))))

(declare-fun tp!77504 () Bool)

(declare-fun b_and!34863 () Bool)

(assert (=> start!94798 (= tp!77504 b_and!34863)))

(declare-datatypes ((V!39569 0))(
  ( (V!39570 (val!12963 Int)) )
))
(declare-datatypes ((tuple2!16560 0))(
  ( (tuple2!16561 (_1!8290 (_ BitVec 64)) (_2!8290 V!39569)) )
))
(declare-datatypes ((List!23143 0))(
  ( (Nil!23140) (Cons!23139 (h!24348 tuple2!16560) (t!32483 List!23143)) )
))
(declare-datatypes ((ListLongMap!14541 0))(
  ( (ListLongMap!14542 (toList!7286 List!23143)) )
))
(declare-fun lt!474153 () ListLongMap!14541)

(declare-fun e!611862 () Bool)

(declare-fun lt!474162 () ListLongMap!14541)

(declare-fun b!1071457 () Bool)

(declare-fun lt!474160 () tuple2!16560)

(declare-fun +!3142 (ListLongMap!14541 tuple2!16560) ListLongMap!14541)

(assert (=> b!1071457 (= e!611862 (= lt!474162 (+!3142 lt!474153 lt!474160)))))

(declare-fun res!714848 () Bool)

(declare-fun e!611860 () Bool)

(assert (=> start!94798 (=> (not res!714848) (not e!611860))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94798 (= res!714848 (validMask!0 mask!1515))))

(assert (=> start!94798 e!611860))

(assert (=> start!94798 true))

(declare-fun tp_is_empty!25825 () Bool)

(assert (=> start!94798 tp_is_empty!25825))

(declare-datatypes ((ValueCell!12209 0))(
  ( (ValueCellFull!12209 (v!15580 V!39569)) (EmptyCell!12209) )
))
(declare-datatypes ((array!68580 0))(
  ( (array!68581 (arr!32982 (Array (_ BitVec 32) ValueCell!12209)) (size!33519 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68580)

(declare-fun e!611861 () Bool)

(declare-fun array_inv!25358 (array!68580) Bool)

(assert (=> start!94798 (and (array_inv!25358 _values!955) e!611861)))

(assert (=> start!94798 tp!77504))

(declare-datatypes ((array!68582 0))(
  ( (array!68583 (arr!32983 (Array (_ BitVec 32) (_ BitVec 64))) (size!33520 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68582)

(declare-fun array_inv!25359 (array!68582) Bool)

(assert (=> start!94798 (array_inv!25359 _keys!1163)))

(declare-fun b!1071458 () Bool)

(declare-fun e!611864 () Bool)

(assert (=> b!1071458 (= e!611864 tp_is_empty!25825)))

(declare-fun b!1071459 () Bool)

(declare-fun res!714844 () Bool)

(assert (=> b!1071459 (=> (not res!714844) (not e!611860))))

(declare-datatypes ((List!23144 0))(
  ( (Nil!23141) (Cons!23140 (h!24349 (_ BitVec 64)) (t!32484 List!23144)) )
))
(declare-fun arrayNoDuplicates!0 (array!68582 (_ BitVec 32) List!23144) Bool)

(assert (=> b!1071459 (= res!714844 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23141))))

(declare-fun b!1071460 () Bool)

(declare-fun res!714847 () Bool)

(assert (=> b!1071460 (=> (not res!714847) (not e!611860))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071460 (= res!714847 (and (= (size!33519 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33520 _keys!1163) (size!33519 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40444 () Bool)

(declare-fun mapRes!40444 () Bool)

(declare-fun tp!77505 () Bool)

(declare-fun e!611865 () Bool)

(assert (=> mapNonEmpty!40444 (= mapRes!40444 (and tp!77505 e!611865))))

(declare-fun mapKey!40444 () (_ BitVec 32))

(declare-fun mapRest!40444 () (Array (_ BitVec 32) ValueCell!12209))

(declare-fun mapValue!40444 () ValueCell!12209)

(assert (=> mapNonEmpty!40444 (= (arr!32982 _values!955) (store mapRest!40444 mapKey!40444 mapValue!40444))))

(declare-fun b!1071461 () Bool)

(declare-fun res!714846 () Bool)

(assert (=> b!1071461 (=> (not res!714846) (not e!611860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68582 (_ BitVec 32)) Bool)

(assert (=> b!1071461 (= res!714846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071462 () Bool)

(assert (=> b!1071462 (= e!611861 (and e!611864 mapRes!40444))))

(declare-fun condMapEmpty!40444 () Bool)

(declare-fun mapDefault!40444 () ValueCell!12209)

