; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70444 () Bool)

(assert start!70444)

(declare-fun b_free!12763 () Bool)

(declare-fun b_next!12763 () Bool)

(assert (=> start!70444 (= b_free!12763 (not b_next!12763))))

(declare-fun tp!45019 () Bool)

(declare-fun b_and!21601 () Bool)

(assert (=> start!70444 (= tp!45019 b_and!21601)))

(declare-fun b!817812 () Bool)

(declare-fun res!558287 () Bool)

(declare-fun e!453918 () Bool)

(assert (=> b!817812 (=> (not res!558287) (not e!453918))))

(declare-datatypes ((array!45122 0))(
  ( (array!45123 (arr!21612 (Array (_ BitVec 32) (_ BitVec 64))) (size!22033 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45122)

(declare-datatypes ((List!15451 0))(
  ( (Nil!15448) (Cons!15447 (h!16576 (_ BitVec 64)) (t!21786 List!15451)) )
))
(declare-fun arrayNoDuplicates!0 (array!45122 (_ BitVec 32) List!15451) Bool)

(assert (=> b!817812 (= res!558287 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15448))))

(declare-fun b!817813 () Bool)

(declare-fun e!453916 () Bool)

(assert (=> b!817813 (= e!453918 (not e!453916))))

(declare-fun res!558285 () Bool)

(assert (=> b!817813 (=> res!558285 e!453916)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!817813 (= res!558285 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24299 0))(
  ( (V!24300 (val!7284 Int)) )
))
(declare-datatypes ((tuple2!9584 0))(
  ( (tuple2!9585 (_1!4802 (_ BitVec 64)) (_2!4802 V!24299)) )
))
(declare-datatypes ((List!15452 0))(
  ( (Nil!15449) (Cons!15448 (h!16577 tuple2!9584) (t!21787 List!15452)) )
))
(declare-datatypes ((ListLongMap!8421 0))(
  ( (ListLongMap!8422 (toList!4226 List!15452)) )
))
(declare-fun lt!366439 () ListLongMap!8421)

(declare-fun lt!366438 () ListLongMap!8421)

(assert (=> b!817813 (= lt!366439 lt!366438)))

(declare-datatypes ((Unit!27904 0))(
  ( (Unit!27905) )
))
(declare-fun lt!366441 () Unit!27904)

(declare-fun zeroValueBefore!34 () V!24299)

(declare-fun zeroValueAfter!34 () V!24299)

(declare-fun minValue!754 () V!24299)

(declare-datatypes ((ValueCell!6821 0))(
  ( (ValueCellFull!6821 (v!9709 V!24299)) (EmptyCell!6821) )
))
(declare-datatypes ((array!45124 0))(
  ( (array!45125 (arr!21613 (Array (_ BitVec 32) ValueCell!6821)) (size!22034 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45124)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!387 (array!45122 array!45124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24299 V!24299 V!24299 V!24299 (_ BitVec 32) Int) Unit!27904)

(assert (=> b!817813 (= lt!366441 (lemmaNoChangeToArrayThenSameMapNoExtras!387 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2271 (array!45122 array!45124 (_ BitVec 32) (_ BitVec 32) V!24299 V!24299 (_ BitVec 32) Int) ListLongMap!8421)

(assert (=> b!817813 (= lt!366438 (getCurrentListMapNoExtraKeys!2271 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817813 (= lt!366439 (getCurrentListMapNoExtraKeys!2271 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!558288 () Bool)

(assert (=> start!70444 (=> (not res!558288) (not e!453918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70444 (= res!558288 (validMask!0 mask!1312))))

(assert (=> start!70444 e!453918))

(declare-fun tp_is_empty!14473 () Bool)

(assert (=> start!70444 tp_is_empty!14473))

(declare-fun array_inv!17261 (array!45122) Bool)

(assert (=> start!70444 (array_inv!17261 _keys!976)))

(assert (=> start!70444 true))

(declare-fun e!453913 () Bool)

(declare-fun array_inv!17262 (array!45124) Bool)

(assert (=> start!70444 (and (array_inv!17262 _values!788) e!453913)))

(assert (=> start!70444 tp!45019))

(declare-fun mapIsEmpty!23305 () Bool)

(declare-fun mapRes!23305 () Bool)

(assert (=> mapIsEmpty!23305 mapRes!23305))

(declare-fun mapNonEmpty!23305 () Bool)

(declare-fun tp!45018 () Bool)

(declare-fun e!453915 () Bool)

(assert (=> mapNonEmpty!23305 (= mapRes!23305 (and tp!45018 e!453915))))

(declare-fun mapValue!23305 () ValueCell!6821)

(declare-fun mapRest!23305 () (Array (_ BitVec 32) ValueCell!6821))

(declare-fun mapKey!23305 () (_ BitVec 32))

(assert (=> mapNonEmpty!23305 (= (arr!21613 _values!788) (store mapRest!23305 mapKey!23305 mapValue!23305))))

(declare-fun b!817814 () Bool)

(declare-fun res!558286 () Bool)

(assert (=> b!817814 (=> (not res!558286) (not e!453918))))

(assert (=> b!817814 (= res!558286 (and (= (size!22034 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22033 _keys!976) (size!22034 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817815 () Bool)

(declare-fun res!558289 () Bool)

(assert (=> b!817815 (=> (not res!558289) (not e!453918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45122 (_ BitVec 32)) Bool)

(assert (=> b!817815 (= res!558289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817816 () Bool)

(assert (=> b!817816 (= e!453915 tp_is_empty!14473)))

(declare-fun b!817817 () Bool)

(declare-fun e!453917 () Bool)

(assert (=> b!817817 (= e!453913 (and e!453917 mapRes!23305))))

(declare-fun condMapEmpty!23305 () Bool)

(declare-fun mapDefault!23305 () ValueCell!6821)

