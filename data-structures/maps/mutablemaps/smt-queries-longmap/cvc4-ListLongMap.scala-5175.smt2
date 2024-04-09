; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70064 () Bool)

(assert start!70064)

(declare-fun b_free!12461 () Bool)

(declare-fun b_next!12461 () Bool)

(assert (=> start!70064 (= b_free!12461 (not b_next!12461))))

(declare-fun tp!44097 () Bool)

(declare-fun b_and!21251 () Bool)

(assert (=> start!70064 (= tp!44097 b_and!21251)))

(declare-fun b!813836 () Bool)

(declare-fun res!556035 () Bool)

(declare-fun e!451082 () Bool)

(assert (=> b!813836 (=> (not res!556035) (not e!451082))))

(declare-datatypes ((array!44530 0))(
  ( (array!44531 (arr!21321 (Array (_ BitVec 32) (_ BitVec 64))) (size!21742 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44530)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44530 (_ BitVec 32)) Bool)

(assert (=> b!813836 (= res!556035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22837 () Bool)

(declare-fun mapRes!22837 () Bool)

(assert (=> mapIsEmpty!22837 mapRes!22837))

(declare-fun b!813837 () Bool)

(declare-fun e!451083 () Bool)

(declare-fun tp_is_empty!14171 () Bool)

(assert (=> b!813837 (= e!451083 tp_is_empty!14171)))

(declare-fun b!813838 () Bool)

(declare-fun e!451085 () Bool)

(assert (=> b!813838 (= e!451085 tp_is_empty!14171)))

(declare-fun b!813839 () Bool)

(declare-fun res!556037 () Bool)

(assert (=> b!813839 (=> (not res!556037) (not e!451082))))

(declare-datatypes ((List!15227 0))(
  ( (Nil!15224) (Cons!15223 (h!16352 (_ BitVec 64)) (t!21552 List!15227)) )
))
(declare-fun arrayNoDuplicates!0 (array!44530 (_ BitVec 32) List!15227) Bool)

(assert (=> b!813839 (= res!556037 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15224))))

(declare-fun b!813840 () Bool)

(assert (=> b!813840 (= e!451082 false)))

(declare-datatypes ((V!23895 0))(
  ( (V!23896 (val!7133 Int)) )
))
(declare-fun minValue!754 () V!23895)

(declare-datatypes ((ValueCell!6670 0))(
  ( (ValueCellFull!6670 (v!9556 V!23895)) (EmptyCell!6670) )
))
(declare-datatypes ((array!44532 0))(
  ( (array!44533 (arr!21322 (Array (_ BitVec 32) ValueCell!6670)) (size!21743 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44532)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9350 0))(
  ( (tuple2!9351 (_1!4685 (_ BitVec 64)) (_2!4685 V!23895)) )
))
(declare-datatypes ((List!15228 0))(
  ( (Nil!15225) (Cons!15224 (h!16353 tuple2!9350) (t!21553 List!15228)) )
))
(declare-datatypes ((ListLongMap!8187 0))(
  ( (ListLongMap!8188 (toList!4109 List!15228)) )
))
(declare-fun lt!364399 () ListLongMap!8187)

(declare-fun zeroValueAfter!34 () V!23895)

(declare-fun getCurrentListMapNoExtraKeys!2158 (array!44530 array!44532 (_ BitVec 32) (_ BitVec 32) V!23895 V!23895 (_ BitVec 32) Int) ListLongMap!8187)

(assert (=> b!813840 (= lt!364399 (getCurrentListMapNoExtraKeys!2158 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23895)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364400 () ListLongMap!8187)

(assert (=> b!813840 (= lt!364400 (getCurrentListMapNoExtraKeys!2158 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813841 () Bool)

(declare-fun e!451081 () Bool)

(assert (=> b!813841 (= e!451081 (and e!451085 mapRes!22837))))

(declare-fun condMapEmpty!22837 () Bool)

(declare-fun mapDefault!22837 () ValueCell!6670)

