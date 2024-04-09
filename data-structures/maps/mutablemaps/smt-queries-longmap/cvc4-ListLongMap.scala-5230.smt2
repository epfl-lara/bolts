; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70472 () Bool)

(assert start!70472)

(declare-fun b_free!12791 () Bool)

(declare-fun b_next!12791 () Bool)

(assert (=> start!70472 (= b_free!12791 (not b_next!12791))))

(declare-fun tp!45102 () Bool)

(declare-fun b_and!21629 () Bool)

(assert (=> start!70472 (= tp!45102 b_and!21629)))

(declare-fun b!818148 () Bool)

(declare-fun e!454167 () Bool)

(assert (=> b!818148 (= e!454167 true)))

(declare-datatypes ((V!24335 0))(
  ( (V!24336 (val!7298 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24335)

(declare-datatypes ((array!45176 0))(
  ( (array!45177 (arr!21639 (Array (_ BitVec 32) (_ BitVec 64))) (size!22060 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45176)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24335)

(declare-datatypes ((ValueCell!6835 0))(
  ( (ValueCellFull!6835 (v!9723 V!24335)) (EmptyCell!6835) )
))
(declare-datatypes ((array!45178 0))(
  ( (array!45179 (arr!21640 (Array (_ BitVec 32) ValueCell!6835)) (size!22061 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45178)

(declare-datatypes ((tuple2!9608 0))(
  ( (tuple2!9609 (_1!4814 (_ BitVec 64)) (_2!4814 V!24335)) )
))
(declare-datatypes ((List!15472 0))(
  ( (Nil!15469) (Cons!15468 (h!16597 tuple2!9608) (t!21807 List!15472)) )
))
(declare-datatypes ((ListLongMap!8445 0))(
  ( (ListLongMap!8446 (toList!4238 List!15472)) )
))
(declare-fun lt!366606 () ListLongMap!8445)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2398 (array!45176 array!45178 (_ BitVec 32) (_ BitVec 32) V!24335 V!24335 (_ BitVec 32) Int) ListLongMap!8445)

(assert (=> b!818148 (= lt!366606 (getCurrentListMap!2398 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!558496 () Bool)

(declare-fun e!454169 () Bool)

(assert (=> start!70472 (=> (not res!558496) (not e!454169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70472 (= res!558496 (validMask!0 mask!1312))))

(assert (=> start!70472 e!454169))

(declare-fun tp_is_empty!14501 () Bool)

(assert (=> start!70472 tp_is_empty!14501))

(declare-fun array_inv!17277 (array!45176) Bool)

(assert (=> start!70472 (array_inv!17277 _keys!976)))

(assert (=> start!70472 true))

(declare-fun e!454170 () Bool)

(declare-fun array_inv!17278 (array!45178) Bool)

(assert (=> start!70472 (and (array_inv!17278 _values!788) e!454170)))

(assert (=> start!70472 tp!45102))

(declare-fun b!818149 () Bool)

(declare-fun res!558498 () Bool)

(assert (=> b!818149 (=> (not res!558498) (not e!454169))))

(declare-datatypes ((List!15473 0))(
  ( (Nil!15470) (Cons!15469 (h!16598 (_ BitVec 64)) (t!21808 List!15473)) )
))
(declare-fun arrayNoDuplicates!0 (array!45176 (_ BitVec 32) List!15473) Bool)

(assert (=> b!818149 (= res!558498 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15470))))

(declare-fun b!818150 () Bool)

(declare-fun res!558497 () Bool)

(assert (=> b!818150 (=> (not res!558497) (not e!454169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45176 (_ BitVec 32)) Bool)

(assert (=> b!818150 (= res!558497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818151 () Bool)

(declare-fun e!454168 () Bool)

(assert (=> b!818151 (= e!454168 tp_is_empty!14501)))

(declare-fun mapIsEmpty!23347 () Bool)

(declare-fun mapRes!23347 () Bool)

(assert (=> mapIsEmpty!23347 mapRes!23347))

(declare-fun b!818152 () Bool)

(declare-fun e!454165 () Bool)

(assert (=> b!818152 (= e!454165 tp_is_empty!14501)))

(declare-fun b!818153 () Bool)

(declare-fun res!558499 () Bool)

(assert (=> b!818153 (=> (not res!558499) (not e!454169))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818153 (= res!558499 (and (= (size!22061 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22060 _keys!976) (size!22061 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23347 () Bool)

(declare-fun tp!45103 () Bool)

(assert (=> mapNonEmpty!23347 (= mapRes!23347 (and tp!45103 e!454165))))

(declare-fun mapRest!23347 () (Array (_ BitVec 32) ValueCell!6835))

(declare-fun mapKey!23347 () (_ BitVec 32))

(declare-fun mapValue!23347 () ValueCell!6835)

(assert (=> mapNonEmpty!23347 (= (arr!21640 _values!788) (store mapRest!23347 mapKey!23347 mapValue!23347))))

(declare-fun b!818154 () Bool)

(assert (=> b!818154 (= e!454170 (and e!454168 mapRes!23347))))

(declare-fun condMapEmpty!23347 () Bool)

(declare-fun mapDefault!23347 () ValueCell!6835)

