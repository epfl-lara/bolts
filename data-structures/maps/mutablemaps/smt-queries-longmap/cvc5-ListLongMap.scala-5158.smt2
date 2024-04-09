; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69936 () Bool)

(assert start!69936)

(declare-fun mapIsEmpty!22672 () Bool)

(declare-fun mapRes!22672 () Bool)

(assert (=> mapIsEmpty!22672 mapRes!22672))

(declare-fun res!555358 () Bool)

(declare-fun e!450214 () Bool)

(assert (=> start!69936 (=> (not res!555358) (not e!450214))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69936 (= res!555358 (validMask!0 mask!1312))))

(assert (=> start!69936 e!450214))

(declare-datatypes ((array!44320 0))(
  ( (array!44321 (arr!21218 (Array (_ BitVec 32) (_ BitVec 64))) (size!21639 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44320)

(declare-fun array_inv!16971 (array!44320) Bool)

(assert (=> start!69936 (array_inv!16971 _keys!976)))

(assert (=> start!69936 true))

(declare-datatypes ((V!23755 0))(
  ( (V!23756 (val!7080 Int)) )
))
(declare-datatypes ((ValueCell!6617 0))(
  ( (ValueCellFull!6617 (v!9503 V!23755)) (EmptyCell!6617) )
))
(declare-datatypes ((array!44322 0))(
  ( (array!44323 (arr!21219 (Array (_ BitVec 32) ValueCell!6617)) (size!21640 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44322)

(declare-fun e!450212 () Bool)

(declare-fun array_inv!16972 (array!44322) Bool)

(assert (=> start!69936 (and (array_inv!16972 _values!788) e!450212)))

(declare-fun mapNonEmpty!22672 () Bool)

(declare-fun tp!43780 () Bool)

(declare-fun e!450213 () Bool)

(assert (=> mapNonEmpty!22672 (= mapRes!22672 (and tp!43780 e!450213))))

(declare-fun mapKey!22672 () (_ BitVec 32))

(declare-fun mapRest!22672 () (Array (_ BitVec 32) ValueCell!6617))

(declare-fun mapValue!22672 () ValueCell!6617)

(assert (=> mapNonEmpty!22672 (= (arr!21219 _values!788) (store mapRest!22672 mapKey!22672 mapValue!22672))))

(declare-fun b!812615 () Bool)

(assert (=> b!812615 (= e!450214 (bvsgt #b00000000000000000000000000000000 (size!21639 _keys!976)))))

(declare-fun b!812616 () Bool)

(declare-fun tp_is_empty!14065 () Bool)

(assert (=> b!812616 (= e!450213 tp_is_empty!14065)))

(declare-fun b!812617 () Bool)

(declare-fun res!555359 () Bool)

(assert (=> b!812617 (=> (not res!555359) (not e!450214))))

(declare-datatypes ((List!15145 0))(
  ( (Nil!15142) (Cons!15141 (h!16270 (_ BitVec 64)) (t!21468 List!15145)) )
))
(declare-fun arrayNoDuplicates!0 (array!44320 (_ BitVec 32) List!15145) Bool)

(assert (=> b!812617 (= res!555359 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15142))))

(declare-fun b!812618 () Bool)

(declare-fun res!555357 () Bool)

(assert (=> b!812618 (=> (not res!555357) (not e!450214))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812618 (= res!555357 (and (= (size!21640 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21639 _keys!976) (size!21640 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812619 () Bool)

(declare-fun res!555356 () Bool)

(assert (=> b!812619 (=> (not res!555356) (not e!450214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44320 (_ BitVec 32)) Bool)

(assert (=> b!812619 (= res!555356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812620 () Bool)

(declare-fun e!450211 () Bool)

(assert (=> b!812620 (= e!450212 (and e!450211 mapRes!22672))))

(declare-fun condMapEmpty!22672 () Bool)

(declare-fun mapDefault!22672 () ValueCell!6617)

