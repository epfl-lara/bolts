; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70310 () Bool)

(assert start!70310)

(declare-fun b_free!12661 () Bool)

(declare-fun b_next!12661 () Bool)

(assert (=> start!70310 (= b_free!12661 (not b_next!12661))))

(declare-fun tp!44706 () Bool)

(declare-fun b_and!21479 () Bool)

(assert (=> start!70310 (= tp!44706 b_and!21479)))

(declare-fun b!816400 () Bool)

(declare-fun res!557488 () Bool)

(declare-fun e!452914 () Bool)

(assert (=> b!816400 (=> (not res!557488) (not e!452914))))

(declare-datatypes ((array!44922 0))(
  ( (array!44923 (arr!21514 (Array (_ BitVec 32) (_ BitVec 64))) (size!21935 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44922)

(declare-datatypes ((List!15376 0))(
  ( (Nil!15373) (Cons!15372 (h!16501 (_ BitVec 64)) (t!21707 List!15376)) )
))
(declare-fun arrayNoDuplicates!0 (array!44922 (_ BitVec 32) List!15376) Bool)

(assert (=> b!816400 (= res!557488 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15373))))

(declare-fun b!816401 () Bool)

(declare-fun e!452913 () Bool)

(assert (=> b!816401 (= e!452913 true)))

(declare-datatypes ((V!24163 0))(
  ( (V!24164 (val!7233 Int)) )
))
(declare-fun minValue!754 () V!24163)

(declare-datatypes ((ValueCell!6770 0))(
  ( (ValueCellFull!6770 (v!9657 V!24163)) (EmptyCell!6770) )
))
(declare-datatypes ((array!44924 0))(
  ( (array!44925 (arr!21515 (Array (_ BitVec 32) ValueCell!6770)) (size!21936 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44924)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9506 0))(
  ( (tuple2!9507 (_1!4763 (_ BitVec 64)) (_2!4763 V!24163)) )
))
(declare-datatypes ((List!15377 0))(
  ( (Nil!15374) (Cons!15373 (h!16502 tuple2!9506) (t!21708 List!15377)) )
))
(declare-datatypes ((ListLongMap!8343 0))(
  ( (ListLongMap!8344 (toList!4187 List!15377)) )
))
(declare-fun lt!365697 () ListLongMap!8343)

(declare-fun zeroValueAfter!34 () V!24163)

(declare-fun getCurrentListMap!2374 (array!44922 array!44924 (_ BitVec 32) (_ BitVec 32) V!24163 V!24163 (_ BitVec 32) Int) ListLongMap!8343)

(assert (=> b!816401 (= lt!365697 (getCurrentListMap!2374 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24163)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!365693 () ListLongMap!8343)

(declare-fun +!1773 (ListLongMap!8343 tuple2!9506) ListLongMap!8343)

(assert (=> b!816401 (= lt!365693 (+!1773 (getCurrentListMap!2374 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9507 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!816402 () Bool)

(assert (=> b!816402 (= e!452914 (not e!452913))))

(declare-fun res!557491 () Bool)

(assert (=> b!816402 (=> res!557491 e!452913)))

(assert (=> b!816402 (= res!557491 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365694 () ListLongMap!8343)

(declare-fun lt!365696 () ListLongMap!8343)

(assert (=> b!816402 (= lt!365694 lt!365696)))

(declare-datatypes ((Unit!27830 0))(
  ( (Unit!27831) )
))
(declare-fun lt!365695 () Unit!27830)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!351 (array!44922 array!44924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24163 V!24163 V!24163 V!24163 (_ BitVec 32) Int) Unit!27830)

(assert (=> b!816402 (= lt!365695 (lemmaNoChangeToArrayThenSameMapNoExtras!351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2235 (array!44922 array!44924 (_ BitVec 32) (_ BitVec 32) V!24163 V!24163 (_ BitVec 32) Int) ListLongMap!8343)

(assert (=> b!816402 (= lt!365696 (getCurrentListMapNoExtraKeys!2235 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816402 (= lt!365694 (getCurrentListMapNoExtraKeys!2235 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816403 () Bool)

(declare-fun res!557492 () Bool)

(assert (=> b!816403 (=> (not res!557492) (not e!452914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44922 (_ BitVec 32)) Bool)

(assert (=> b!816403 (= res!557492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816404 () Bool)

(declare-fun e!452911 () Bool)

(declare-fun e!452915 () Bool)

(declare-fun mapRes!23146 () Bool)

(assert (=> b!816404 (= e!452911 (and e!452915 mapRes!23146))))

(declare-fun condMapEmpty!23146 () Bool)

(declare-fun mapDefault!23146 () ValueCell!6770)

