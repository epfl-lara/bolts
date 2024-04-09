; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70174 () Bool)

(assert start!70174)

(declare-fun b_free!12557 () Bool)

(declare-fun b_next!12557 () Bool)

(assert (=> start!70174 (= b_free!12557 (not b_next!12557))))

(declare-fun tp!44389 () Bool)

(declare-fun b_and!21355 () Bool)

(assert (=> start!70174 (= tp!44389 b_and!21355)))

(declare-fun b!814929 () Bool)

(declare-fun res!556641 () Bool)

(declare-fun e!451856 () Bool)

(assert (=> b!814929 (=> (not res!556641) (not e!451856))))

(declare-datatypes ((array!44722 0))(
  ( (array!44723 (arr!21416 (Array (_ BitVec 32) (_ BitVec 64))) (size!21837 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44722)

(declare-datatypes ((List!15299 0))(
  ( (Nil!15296) (Cons!15295 (h!16424 (_ BitVec 64)) (t!21626 List!15299)) )
))
(declare-fun arrayNoDuplicates!0 (array!44722 (_ BitVec 32) List!15299) Bool)

(assert (=> b!814929 (= res!556641 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15296))))

(declare-fun b!814930 () Bool)

(assert (=> b!814930 (= e!451856 (not true))))

(declare-datatypes ((V!24023 0))(
  ( (V!24024 (val!7181 Int)) )
))
(declare-datatypes ((tuple2!9426 0))(
  ( (tuple2!9427 (_1!4723 (_ BitVec 64)) (_2!4723 V!24023)) )
))
(declare-datatypes ((List!15300 0))(
  ( (Nil!15297) (Cons!15296 (h!16425 tuple2!9426) (t!21627 List!15300)) )
))
(declare-datatypes ((ListLongMap!8263 0))(
  ( (ListLongMap!8264 (toList!4147 List!15300)) )
))
(declare-fun lt!364844 () ListLongMap!8263)

(declare-fun lt!364845 () ListLongMap!8263)

(assert (=> b!814930 (= lt!364844 lt!364845)))

(declare-fun zeroValueBefore!34 () V!24023)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24023)

(declare-fun minValue!754 () V!24023)

(declare-datatypes ((ValueCell!6718 0))(
  ( (ValueCellFull!6718 (v!9604 V!24023)) (EmptyCell!6718) )
))
(declare-datatypes ((array!44724 0))(
  ( (array!44725 (arr!21417 (Array (_ BitVec 32) ValueCell!6718)) (size!21838 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44724)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27750 0))(
  ( (Unit!27751) )
))
(declare-fun lt!364843 () Unit!27750)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!312 (array!44722 array!44724 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24023 V!24023 V!24023 V!24023 (_ BitVec 32) Int) Unit!27750)

(assert (=> b!814930 (= lt!364843 (lemmaNoChangeToArrayThenSameMapNoExtras!312 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2196 (array!44722 array!44724 (_ BitVec 32) (_ BitVec 32) V!24023 V!24023 (_ BitVec 32) Int) ListLongMap!8263)

(assert (=> b!814930 (= lt!364845 (getCurrentListMapNoExtraKeys!2196 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814930 (= lt!364844 (getCurrentListMapNoExtraKeys!2196 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!22984 () Bool)

(declare-fun mapRes!22984 () Bool)

(assert (=> mapIsEmpty!22984 mapRes!22984))

(declare-fun b!814931 () Bool)

(declare-fun e!451859 () Bool)

(declare-fun tp_is_empty!14267 () Bool)

(assert (=> b!814931 (= e!451859 tp_is_empty!14267)))

(declare-fun b!814933 () Bool)

(declare-fun res!556644 () Bool)

(assert (=> b!814933 (=> (not res!556644) (not e!451856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44722 (_ BitVec 32)) Bool)

(assert (=> b!814933 (= res!556644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814934 () Bool)

(declare-fun e!451860 () Bool)

(assert (=> b!814934 (= e!451860 tp_is_empty!14267)))

(declare-fun mapNonEmpty!22984 () Bool)

(declare-fun tp!44388 () Bool)

(assert (=> mapNonEmpty!22984 (= mapRes!22984 (and tp!44388 e!451859))))

(declare-fun mapKey!22984 () (_ BitVec 32))

(declare-fun mapValue!22984 () ValueCell!6718)

(declare-fun mapRest!22984 () (Array (_ BitVec 32) ValueCell!6718))

(assert (=> mapNonEmpty!22984 (= (arr!21417 _values!788) (store mapRest!22984 mapKey!22984 mapValue!22984))))

(declare-fun b!814935 () Bool)

(declare-fun res!556642 () Bool)

(assert (=> b!814935 (=> (not res!556642) (not e!451856))))

(assert (=> b!814935 (= res!556642 (and (= (size!21838 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21837 _keys!976) (size!21838 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814932 () Bool)

(declare-fun e!451858 () Bool)

(assert (=> b!814932 (= e!451858 (and e!451860 mapRes!22984))))

(declare-fun condMapEmpty!22984 () Bool)

(declare-fun mapDefault!22984 () ValueCell!6718)

