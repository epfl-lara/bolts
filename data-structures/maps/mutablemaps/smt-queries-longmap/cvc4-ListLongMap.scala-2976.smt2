; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42144 () Bool)

(assert start!42144)

(declare-fun b_free!11669 () Bool)

(declare-fun b_next!11669 () Bool)

(assert (=> start!42144 (= b_free!11669 (not b_next!11669))))

(declare-fun tp!41029 () Bool)

(declare-fun b_and!20109 () Bool)

(assert (=> start!42144 (= tp!41029 b_and!20109)))

(declare-fun res!281037 () Bool)

(declare-fun e!275464 () Bool)

(assert (=> start!42144 (=> (not res!281037) (not e!275464))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42144 (= res!281037 (validMask!0 mask!1365))))

(assert (=> start!42144 e!275464))

(declare-fun tp_is_empty!13097 () Bool)

(assert (=> start!42144 tp_is_empty!13097))

(assert (=> start!42144 tp!41029))

(assert (=> start!42144 true))

(declare-datatypes ((array!29925 0))(
  ( (array!29926 (arr!14383 (Array (_ BitVec 32) (_ BitVec 64))) (size!14735 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29925)

(declare-fun array_inv!10376 (array!29925) Bool)

(assert (=> start!42144 (array_inv!10376 _keys!1025)))

(declare-datatypes ((V!18567 0))(
  ( (V!18568 (val!6593 Int)) )
))
(declare-datatypes ((ValueCell!6205 0))(
  ( (ValueCellFull!6205 (v!8880 V!18567)) (EmptyCell!6205) )
))
(declare-datatypes ((array!29927 0))(
  ( (array!29928 (arr!14384 (Array (_ BitVec 32) ValueCell!6205)) (size!14736 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29927)

(declare-fun e!275465 () Bool)

(declare-fun array_inv!10377 (array!29927) Bool)

(assert (=> start!42144 (and (array_inv!10377 _values!833) e!275465)))

(declare-fun mapIsEmpty!21346 () Bool)

(declare-fun mapRes!21346 () Bool)

(assert (=> mapIsEmpty!21346 mapRes!21346))

(declare-fun b!470210 () Bool)

(declare-fun res!281034 () Bool)

(assert (=> b!470210 (=> (not res!281034) (not e!275464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29925 (_ BitVec 32)) Bool)

(assert (=> b!470210 (= res!281034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470211 () Bool)

(assert (=> b!470211 (= e!275464 (not true))))

(declare-datatypes ((tuple2!8652 0))(
  ( (tuple2!8653 (_1!4336 (_ BitVec 64)) (_2!4336 V!18567)) )
))
(declare-datatypes ((List!8774 0))(
  ( (Nil!8771) (Cons!8770 (h!9626 tuple2!8652) (t!14744 List!8774)) )
))
(declare-datatypes ((ListLongMap!7579 0))(
  ( (ListLongMap!7580 (toList!3805 List!8774)) )
))
(declare-fun lt!213401 () ListLongMap!7579)

(declare-fun lt!213403 () ListLongMap!7579)

(assert (=> b!470211 (= lt!213401 lt!213403)))

(declare-fun minValueBefore!38 () V!18567)

(declare-fun zeroValue!794 () V!18567)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13736 0))(
  ( (Unit!13737) )
))
(declare-fun lt!213402 () Unit!13736)

(declare-fun minValueAfter!38 () V!18567)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!162 (array!29925 array!29927 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18567 V!18567 V!18567 V!18567 (_ BitVec 32) Int) Unit!13736)

(assert (=> b!470211 (= lt!213402 (lemmaNoChangeToArrayThenSameMapNoExtras!162 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1967 (array!29925 array!29927 (_ BitVec 32) (_ BitVec 32) V!18567 V!18567 (_ BitVec 32) Int) ListLongMap!7579)

(assert (=> b!470211 (= lt!213403 (getCurrentListMapNoExtraKeys!1967 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470211 (= lt!213401 (getCurrentListMapNoExtraKeys!1967 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470212 () Bool)

(declare-fun e!275468 () Bool)

(assert (=> b!470212 (= e!275468 tp_is_empty!13097)))

(declare-fun b!470213 () Bool)

(declare-fun res!281035 () Bool)

(assert (=> b!470213 (=> (not res!281035) (not e!275464))))

(assert (=> b!470213 (= res!281035 (and (= (size!14736 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14735 _keys!1025) (size!14736 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470214 () Bool)

(declare-fun res!281036 () Bool)

(assert (=> b!470214 (=> (not res!281036) (not e!275464))))

(declare-datatypes ((List!8775 0))(
  ( (Nil!8772) (Cons!8771 (h!9627 (_ BitVec 64)) (t!14745 List!8775)) )
))
(declare-fun arrayNoDuplicates!0 (array!29925 (_ BitVec 32) List!8775) Bool)

(assert (=> b!470214 (= res!281036 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8772))))

(declare-fun b!470215 () Bool)

(assert (=> b!470215 (= e!275465 (and e!275468 mapRes!21346))))

(declare-fun condMapEmpty!21346 () Bool)

(declare-fun mapDefault!21346 () ValueCell!6205)

