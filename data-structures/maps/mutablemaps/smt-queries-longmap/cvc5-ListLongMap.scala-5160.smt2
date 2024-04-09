; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69958 () Bool)

(assert start!69958)

(declare-fun b_free!12367 () Bool)

(declare-fun b_next!12367 () Bool)

(assert (=> start!69958 (= b_free!12367 (not b_next!12367))))

(declare-fun tp!43813 () Bool)

(declare-fun b_and!21153 () Bool)

(assert (=> start!69958 (= tp!43813 b_and!21153)))

(declare-fun res!555443 () Bool)

(declare-fun e!450328 () Bool)

(assert (=> start!69958 (=> (not res!555443) (not e!450328))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69958 (= res!555443 (validMask!0 mask!1312))))

(assert (=> start!69958 e!450328))

(declare-fun tp_is_empty!14077 () Bool)

(assert (=> start!69958 tp_is_empty!14077))

(declare-datatypes ((array!44346 0))(
  ( (array!44347 (arr!21230 (Array (_ BitVec 32) (_ BitVec 64))) (size!21651 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44346)

(declare-fun array_inv!16981 (array!44346) Bool)

(assert (=> start!69958 (array_inv!16981 _keys!976)))

(assert (=> start!69958 true))

(declare-datatypes ((V!23771 0))(
  ( (V!23772 (val!7086 Int)) )
))
(declare-datatypes ((ValueCell!6623 0))(
  ( (ValueCellFull!6623 (v!9509 V!23771)) (EmptyCell!6623) )
))
(declare-datatypes ((array!44348 0))(
  ( (array!44349 (arr!21231 (Array (_ BitVec 32) ValueCell!6623)) (size!21652 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44348)

(declare-fun e!450332 () Bool)

(declare-fun array_inv!16982 (array!44348) Bool)

(assert (=> start!69958 (and (array_inv!16982 _values!788) e!450332)))

(assert (=> start!69958 tp!43813))

(declare-fun b!812776 () Bool)

(assert (=> b!812776 (= e!450328 false)))

(declare-fun zeroValueBefore!34 () V!23771)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23771)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9280 0))(
  ( (tuple2!9281 (_1!4650 (_ BitVec 64)) (_2!4650 V!23771)) )
))
(declare-datatypes ((List!15154 0))(
  ( (Nil!15151) (Cons!15150 (h!16279 tuple2!9280) (t!21477 List!15154)) )
))
(declare-datatypes ((ListLongMap!8117 0))(
  ( (ListLongMap!8118 (toList!4074 List!15154)) )
))
(declare-fun lt!364157 () ListLongMap!8117)

(declare-fun getCurrentListMapNoExtraKeys!2123 (array!44346 array!44348 (_ BitVec 32) (_ BitVec 32) V!23771 V!23771 (_ BitVec 32) Int) ListLongMap!8117)

(assert (=> b!812776 (= lt!364157 (getCurrentListMapNoExtraKeys!2123 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812777 () Bool)

(declare-fun res!555444 () Bool)

(assert (=> b!812777 (=> (not res!555444) (not e!450328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44346 (_ BitVec 32)) Bool)

(assert (=> b!812777 (= res!555444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812778 () Bool)

(declare-fun res!555445 () Bool)

(assert (=> b!812778 (=> (not res!555445) (not e!450328))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812778 (= res!555445 (and (= (size!21652 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21651 _keys!976) (size!21652 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22693 () Bool)

(declare-fun mapRes!22693 () Bool)

(assert (=> mapIsEmpty!22693 mapRes!22693))

(declare-fun b!812779 () Bool)

(declare-fun e!450330 () Bool)

(assert (=> b!812779 (= e!450332 (and e!450330 mapRes!22693))))

(declare-fun condMapEmpty!22693 () Bool)

(declare-fun mapDefault!22693 () ValueCell!6623)

