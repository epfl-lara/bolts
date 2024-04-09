; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70004 () Bool)

(assert start!70004)

(declare-fun b_free!12413 () Bool)

(declare-fun b_next!12413 () Bool)

(assert (=> start!70004 (= b_free!12413 (not b_next!12413))))

(declare-fun tp!43951 () Bool)

(declare-fun b_and!21199 () Bool)

(assert (=> start!70004 (= tp!43951 b_and!21199)))

(declare-fun b!813259 () Bool)

(declare-fun e!450676 () Bool)

(declare-datatypes ((array!44434 0))(
  ( (array!44435 (arr!21274 (Array (_ BitVec 32) (_ BitVec 64))) (size!21695 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44434)

(assert (=> b!813259 (= e!450676 (bvsgt #b00000000000000000000000000000000 (size!21695 _keys!976)))))

(declare-datatypes ((V!23831 0))(
  ( (V!23832 (val!7109 Int)) )
))
(declare-fun zeroValueBefore!34 () V!23831)

(declare-datatypes ((tuple2!9316 0))(
  ( (tuple2!9317 (_1!4668 (_ BitVec 64)) (_2!4668 V!23831)) )
))
(declare-datatypes ((List!15188 0))(
  ( (Nil!15185) (Cons!15184 (h!16313 tuple2!9316) (t!21511 List!15188)) )
))
(declare-datatypes ((ListLongMap!8153 0))(
  ( (ListLongMap!8154 (toList!4092 List!15188)) )
))
(declare-fun lt!364226 () ListLongMap!8153)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23831)

(declare-datatypes ((ValueCell!6646 0))(
  ( (ValueCellFull!6646 (v!9532 V!23831)) (EmptyCell!6646) )
))
(declare-datatypes ((array!44436 0))(
  ( (array!44437 (arr!21275 (Array (_ BitVec 32) ValueCell!6646)) (size!21696 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44436)

(declare-fun defaultEntry!796 () Int)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2141 (array!44434 array!44436 (_ BitVec 32) (_ BitVec 32) V!23831 V!23831 (_ BitVec 32) Int) ListLongMap!8153)

(assert (=> b!813259 (= lt!364226 (getCurrentListMapNoExtraKeys!2141 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!555720 () Bool)

(assert (=> start!70004 (=> (not res!555720) (not e!450676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70004 (= res!555720 (validMask!0 mask!1312))))

(assert (=> start!70004 e!450676))

(declare-fun tp_is_empty!14123 () Bool)

(assert (=> start!70004 tp_is_empty!14123))

(declare-fun array_inv!17015 (array!44434) Bool)

(assert (=> start!70004 (array_inv!17015 _keys!976)))

(assert (=> start!70004 true))

(declare-fun e!450674 () Bool)

(declare-fun array_inv!17016 (array!44436) Bool)

(assert (=> start!70004 (and (array_inv!17016 _values!788) e!450674)))

(assert (=> start!70004 tp!43951))

(declare-fun mapNonEmpty!22762 () Bool)

(declare-fun mapRes!22762 () Bool)

(declare-fun tp!43950 () Bool)

(declare-fun e!450673 () Bool)

(assert (=> mapNonEmpty!22762 (= mapRes!22762 (and tp!43950 e!450673))))

(declare-fun mapValue!22762 () ValueCell!6646)

(declare-fun mapKey!22762 () (_ BitVec 32))

(declare-fun mapRest!22762 () (Array (_ BitVec 32) ValueCell!6646))

(assert (=> mapNonEmpty!22762 (= (arr!21275 _values!788) (store mapRest!22762 mapKey!22762 mapValue!22762))))

(declare-fun mapIsEmpty!22762 () Bool)

(assert (=> mapIsEmpty!22762 mapRes!22762))

(declare-fun b!813260 () Bool)

(declare-fun res!555721 () Bool)

(assert (=> b!813260 (=> (not res!555721) (not e!450676))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813260 (= res!555721 (and (= (size!21696 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21695 _keys!976) (size!21696 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813261 () Bool)

(declare-fun res!555722 () Bool)

(assert (=> b!813261 (=> (not res!555722) (not e!450676))))

(declare-datatypes ((List!15189 0))(
  ( (Nil!15186) (Cons!15185 (h!16314 (_ BitVec 64)) (t!21512 List!15189)) )
))
(declare-fun arrayNoDuplicates!0 (array!44434 (_ BitVec 32) List!15189) Bool)

(assert (=> b!813261 (= res!555722 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15186))))

(declare-fun b!813262 () Bool)

(declare-fun e!450677 () Bool)

(assert (=> b!813262 (= e!450674 (and e!450677 mapRes!22762))))

(declare-fun condMapEmpty!22762 () Bool)

(declare-fun mapDefault!22762 () ValueCell!6646)

