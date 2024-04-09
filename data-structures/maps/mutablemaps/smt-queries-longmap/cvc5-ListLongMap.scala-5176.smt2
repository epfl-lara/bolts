; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70066 () Bool)

(assert start!70066)

(declare-fun b_free!12463 () Bool)

(declare-fun b_next!12463 () Bool)

(assert (=> start!70066 (= b_free!12463 (not b_next!12463))))

(declare-fun tp!44103 () Bool)

(declare-fun b_and!21253 () Bool)

(assert (=> start!70066 (= tp!44103 b_and!21253)))

(declare-fun mapIsEmpty!22840 () Bool)

(declare-fun mapRes!22840 () Bool)

(assert (=> mapIsEmpty!22840 mapRes!22840))

(declare-fun b!813857 () Bool)

(declare-fun res!556049 () Bool)

(declare-fun e!451097 () Bool)

(assert (=> b!813857 (=> (not res!556049) (not e!451097))))

(declare-datatypes ((array!44534 0))(
  ( (array!44535 (arr!21323 (Array (_ BitVec 32) (_ BitVec 64))) (size!21744 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44534)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23899 0))(
  ( (V!23900 (val!7134 Int)) )
))
(declare-datatypes ((ValueCell!6671 0))(
  ( (ValueCellFull!6671 (v!9557 V!23899)) (EmptyCell!6671) )
))
(declare-datatypes ((array!44536 0))(
  ( (array!44537 (arr!21324 (Array (_ BitVec 32) ValueCell!6671)) (size!21745 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44536)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813857 (= res!556049 (and (= (size!21745 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21744 _keys!976) (size!21745 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813858 () Bool)

(declare-fun e!451099 () Bool)

(declare-fun tp_is_empty!14173 () Bool)

(assert (=> b!813858 (= e!451099 tp_is_empty!14173)))

(declare-fun b!813859 () Bool)

(assert (=> b!813859 (= e!451097 false)))

(declare-datatypes ((tuple2!9352 0))(
  ( (tuple2!9353 (_1!4686 (_ BitVec 64)) (_2!4686 V!23899)) )
))
(declare-datatypes ((List!15229 0))(
  ( (Nil!15226) (Cons!15225 (h!16354 tuple2!9352) (t!21554 List!15229)) )
))
(declare-datatypes ((ListLongMap!8189 0))(
  ( (ListLongMap!8190 (toList!4110 List!15229)) )
))
(declare-fun lt!364405 () ListLongMap!8189)

(declare-fun zeroValueAfter!34 () V!23899)

(declare-fun minValue!754 () V!23899)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2159 (array!44534 array!44536 (_ BitVec 32) (_ BitVec 32) V!23899 V!23899 (_ BitVec 32) Int) ListLongMap!8189)

(assert (=> b!813859 (= lt!364405 (getCurrentListMapNoExtraKeys!2159 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23899)

(declare-fun lt!364406 () ListLongMap!8189)

(assert (=> b!813859 (= lt!364406 (getCurrentListMapNoExtraKeys!2159 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813860 () Bool)

(declare-fun e!451100 () Bool)

(assert (=> b!813860 (= e!451100 tp_is_empty!14173)))

(declare-fun b!813861 () Bool)

(declare-fun e!451098 () Bool)

(assert (=> b!813861 (= e!451098 (and e!451099 mapRes!22840))))

(declare-fun condMapEmpty!22840 () Bool)

(declare-fun mapDefault!22840 () ValueCell!6671)

