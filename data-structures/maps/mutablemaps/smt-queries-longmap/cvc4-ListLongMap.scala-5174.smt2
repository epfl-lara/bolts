; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70058 () Bool)

(assert start!70058)

(declare-fun b_free!12455 () Bool)

(declare-fun b_next!12455 () Bool)

(assert (=> start!70058 (= b_free!12455 (not b_next!12455))))

(declare-fun tp!44080 () Bool)

(declare-fun b_and!21245 () Bool)

(assert (=> start!70058 (= tp!44080 b_and!21245)))

(declare-fun b!813773 () Bool)

(declare-fun res!555998 () Bool)

(declare-fun e!451040 () Bool)

(assert (=> b!813773 (=> (not res!555998) (not e!451040))))

(declare-datatypes ((array!44520 0))(
  ( (array!44521 (arr!21316 (Array (_ BitVec 32) (_ BitVec 64))) (size!21737 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44520)

(declare-datatypes ((List!15223 0))(
  ( (Nil!15220) (Cons!15219 (h!16348 (_ BitVec 64)) (t!21548 List!15223)) )
))
(declare-fun arrayNoDuplicates!0 (array!44520 (_ BitVec 32) List!15223) Bool)

(assert (=> b!813773 (= res!555998 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15220))))

(declare-fun b!813774 () Bool)

(assert (=> b!813774 (= e!451040 false)))

(declare-datatypes ((V!23887 0))(
  ( (V!23888 (val!7130 Int)) )
))
(declare-datatypes ((tuple2!9346 0))(
  ( (tuple2!9347 (_1!4683 (_ BitVec 64)) (_2!4683 V!23887)) )
))
(declare-datatypes ((List!15224 0))(
  ( (Nil!15221) (Cons!15220 (h!16349 tuple2!9346) (t!21549 List!15224)) )
))
(declare-datatypes ((ListLongMap!8183 0))(
  ( (ListLongMap!8184 (toList!4107 List!15224)) )
))
(declare-fun lt!364382 () ListLongMap!8183)

(declare-fun zeroValueAfter!34 () V!23887)

(declare-fun minValue!754 () V!23887)

(declare-datatypes ((ValueCell!6667 0))(
  ( (ValueCellFull!6667 (v!9553 V!23887)) (EmptyCell!6667) )
))
(declare-datatypes ((array!44522 0))(
  ( (array!44523 (arr!21317 (Array (_ BitVec 32) ValueCell!6667)) (size!21738 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44522)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2156 (array!44520 array!44522 (_ BitVec 32) (_ BitVec 32) V!23887 V!23887 (_ BitVec 32) Int) ListLongMap!8183)

(assert (=> b!813774 (= lt!364382 (getCurrentListMapNoExtraKeys!2156 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23887)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364381 () ListLongMap!8183)

(assert (=> b!813774 (= lt!364381 (getCurrentListMapNoExtraKeys!2156 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813775 () Bool)

(declare-fun e!451038 () Bool)

(declare-fun tp_is_empty!14165 () Bool)

(assert (=> b!813775 (= e!451038 tp_is_empty!14165)))

(declare-fun b!813776 () Bool)

(declare-fun res!556000 () Bool)

(assert (=> b!813776 (=> (not res!556000) (not e!451040))))

(assert (=> b!813776 (= res!556000 (and (= (size!21738 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21737 _keys!976) (size!21738 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22828 () Bool)

(declare-fun mapRes!22828 () Bool)

(declare-fun tp!44079 () Bool)

(declare-fun e!451036 () Bool)

(assert (=> mapNonEmpty!22828 (= mapRes!22828 (and tp!44079 e!451036))))

(declare-fun mapValue!22828 () ValueCell!6667)

(declare-fun mapKey!22828 () (_ BitVec 32))

(declare-fun mapRest!22828 () (Array (_ BitVec 32) ValueCell!6667))

(assert (=> mapNonEmpty!22828 (= (arr!21317 _values!788) (store mapRest!22828 mapKey!22828 mapValue!22828))))

(declare-fun b!813777 () Bool)

(assert (=> b!813777 (= e!451036 tp_is_empty!14165)))

(declare-fun mapIsEmpty!22828 () Bool)

(assert (=> mapIsEmpty!22828 mapRes!22828))

(declare-fun res!556001 () Bool)

(assert (=> start!70058 (=> (not res!556001) (not e!451040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70058 (= res!556001 (validMask!0 mask!1312))))

(assert (=> start!70058 e!451040))

(assert (=> start!70058 tp_is_empty!14165))

(declare-fun array_inv!17049 (array!44520) Bool)

(assert (=> start!70058 (array_inv!17049 _keys!976)))

(assert (=> start!70058 true))

(declare-fun e!451039 () Bool)

(declare-fun array_inv!17050 (array!44522) Bool)

(assert (=> start!70058 (and (array_inv!17050 _values!788) e!451039)))

(assert (=> start!70058 tp!44080))

(declare-fun b!813778 () Bool)

(declare-fun res!555999 () Bool)

(assert (=> b!813778 (=> (not res!555999) (not e!451040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44520 (_ BitVec 32)) Bool)

(assert (=> b!813778 (= res!555999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813779 () Bool)

(assert (=> b!813779 (= e!451039 (and e!451038 mapRes!22828))))

(declare-fun condMapEmpty!22828 () Bool)

(declare-fun mapDefault!22828 () ValueCell!6667)

