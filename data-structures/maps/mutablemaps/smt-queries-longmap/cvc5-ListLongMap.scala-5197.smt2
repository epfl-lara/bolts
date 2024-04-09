; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70220 () Bool)

(assert start!70220)

(declare-fun b_free!12589 () Bool)

(declare-fun b_next!12589 () Bool)

(assert (=> start!70220 (= b_free!12589 (not b_next!12589))))

(declare-fun tp!44488 () Bool)

(declare-fun b_and!21395 () Bool)

(assert (=> start!70220 (= tp!44488 b_and!21395)))

(declare-fun mapIsEmpty!23035 () Bool)

(declare-fun mapRes!23035 () Bool)

(assert (=> mapIsEmpty!23035 mapRes!23035))

(declare-fun b!815352 () Bool)

(declare-fun e!452154 () Bool)

(declare-fun e!452153 () Bool)

(assert (=> b!815352 (= e!452154 (not e!452153))))

(declare-fun res!556868 () Bool)

(assert (=> b!815352 (=> res!556868 e!452153)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815352 (= res!556868 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24067 0))(
  ( (V!24068 (val!7197 Int)) )
))
(declare-datatypes ((tuple2!9452 0))(
  ( (tuple2!9453 (_1!4736 (_ BitVec 64)) (_2!4736 V!24067)) )
))
(declare-datatypes ((List!15324 0))(
  ( (Nil!15321) (Cons!15320 (h!16449 tuple2!9452) (t!21653 List!15324)) )
))
(declare-datatypes ((ListLongMap!8289 0))(
  ( (ListLongMap!8290 (toList!4160 List!15324)) )
))
(declare-fun lt!365034 () ListLongMap!8289)

(declare-fun lt!365035 () ListLongMap!8289)

(assert (=> b!815352 (= lt!365034 lt!365035)))

(declare-fun zeroValueBefore!34 () V!24067)

(declare-datatypes ((array!44786 0))(
  ( (array!44787 (arr!21447 (Array (_ BitVec 32) (_ BitVec 64))) (size!21868 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44786)

(declare-fun zeroValueAfter!34 () V!24067)

(declare-fun minValue!754 () V!24067)

(declare-datatypes ((ValueCell!6734 0))(
  ( (ValueCellFull!6734 (v!9620 V!24067)) (EmptyCell!6734) )
))
(declare-datatypes ((array!44788 0))(
  ( (array!44789 (arr!21448 (Array (_ BitVec 32) ValueCell!6734)) (size!21869 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44788)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27776 0))(
  ( (Unit!27777) )
))
(declare-fun lt!365033 () Unit!27776)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!325 (array!44786 array!44788 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24067 V!24067 V!24067 V!24067 (_ BitVec 32) Int) Unit!27776)

(assert (=> b!815352 (= lt!365033 (lemmaNoChangeToArrayThenSameMapNoExtras!325 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2209 (array!44786 array!44788 (_ BitVec 32) (_ BitVec 32) V!24067 V!24067 (_ BitVec 32) Int) ListLongMap!8289)

(assert (=> b!815352 (= lt!365035 (getCurrentListMapNoExtraKeys!2209 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815352 (= lt!365034 (getCurrentListMapNoExtraKeys!2209 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23035 () Bool)

(declare-fun tp!44487 () Bool)

(declare-fun e!452157 () Bool)

(assert (=> mapNonEmpty!23035 (= mapRes!23035 (and tp!44487 e!452157))))

(declare-fun mapRest!23035 () (Array (_ BitVec 32) ValueCell!6734))

(declare-fun mapKey!23035 () (_ BitVec 32))

(declare-fun mapValue!23035 () ValueCell!6734)

(assert (=> mapNonEmpty!23035 (= (arr!21448 _values!788) (store mapRest!23035 mapKey!23035 mapValue!23035))))

(declare-fun res!556869 () Bool)

(assert (=> start!70220 (=> (not res!556869) (not e!452154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70220 (= res!556869 (validMask!0 mask!1312))))

(assert (=> start!70220 e!452154))

(declare-fun tp_is_empty!14299 () Bool)

(assert (=> start!70220 tp_is_empty!14299))

(declare-fun array_inv!17139 (array!44786) Bool)

(assert (=> start!70220 (array_inv!17139 _keys!976)))

(assert (=> start!70220 true))

(declare-fun e!452156 () Bool)

(declare-fun array_inv!17140 (array!44788) Bool)

(assert (=> start!70220 (and (array_inv!17140 _values!788) e!452156)))

(assert (=> start!70220 tp!44488))

(declare-fun b!815353 () Bool)

(declare-fun res!556867 () Bool)

(assert (=> b!815353 (=> (not res!556867) (not e!452154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44786 (_ BitVec 32)) Bool)

(assert (=> b!815353 (= res!556867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815354 () Bool)

(declare-fun e!452155 () Bool)

(assert (=> b!815354 (= e!452156 (and e!452155 mapRes!23035))))

(declare-fun condMapEmpty!23035 () Bool)

(declare-fun mapDefault!23035 () ValueCell!6734)

