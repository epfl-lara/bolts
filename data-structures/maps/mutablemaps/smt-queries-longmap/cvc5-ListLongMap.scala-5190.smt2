; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70164 () Bool)

(assert start!70164)

(declare-fun b_free!12547 () Bool)

(declare-fun b_next!12547 () Bool)

(assert (=> start!70164 (= b_free!12547 (not b_next!12547))))

(declare-fun tp!44359 () Bool)

(declare-fun b_and!21345 () Bool)

(assert (=> start!70164 (= tp!44359 b_and!21345)))

(declare-fun b!814824 () Bool)

(declare-fun e!451785 () Bool)

(assert (=> b!814824 (= e!451785 (not true))))

(declare-datatypes ((V!24011 0))(
  ( (V!24012 (val!7176 Int)) )
))
(declare-datatypes ((tuple2!9416 0))(
  ( (tuple2!9417 (_1!4718 (_ BitVec 64)) (_2!4718 V!24011)) )
))
(declare-datatypes ((List!15289 0))(
  ( (Nil!15286) (Cons!15285 (h!16414 tuple2!9416) (t!21616 List!15289)) )
))
(declare-datatypes ((ListLongMap!8253 0))(
  ( (ListLongMap!8254 (toList!4142 List!15289)) )
))
(declare-fun lt!364800 () ListLongMap!8253)

(declare-fun lt!364799 () ListLongMap!8253)

(assert (=> b!814824 (= lt!364800 lt!364799)))

(declare-fun zeroValueBefore!34 () V!24011)

(declare-datatypes ((Unit!27740 0))(
  ( (Unit!27741) )
))
(declare-fun lt!364798 () Unit!27740)

(declare-datatypes ((array!44702 0))(
  ( (array!44703 (arr!21406 (Array (_ BitVec 32) (_ BitVec 64))) (size!21827 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44702)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24011)

(declare-fun minValue!754 () V!24011)

(declare-datatypes ((ValueCell!6713 0))(
  ( (ValueCellFull!6713 (v!9599 V!24011)) (EmptyCell!6713) )
))
(declare-datatypes ((array!44704 0))(
  ( (array!44705 (arr!21407 (Array (_ BitVec 32) ValueCell!6713)) (size!21828 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44704)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!307 (array!44702 array!44704 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24011 V!24011 V!24011 V!24011 (_ BitVec 32) Int) Unit!27740)

(assert (=> b!814824 (= lt!364798 (lemmaNoChangeToArrayThenSameMapNoExtras!307 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2191 (array!44702 array!44704 (_ BitVec 32) (_ BitVec 32) V!24011 V!24011 (_ BitVec 32) Int) ListLongMap!8253)

(assert (=> b!814824 (= lt!364799 (getCurrentListMapNoExtraKeys!2191 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814824 (= lt!364800 (getCurrentListMapNoExtraKeys!2191 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!22969 () Bool)

(declare-fun mapRes!22969 () Bool)

(declare-fun tp!44358 () Bool)

(declare-fun e!451783 () Bool)

(assert (=> mapNonEmpty!22969 (= mapRes!22969 (and tp!44358 e!451783))))

(declare-fun mapKey!22969 () (_ BitVec 32))

(declare-fun mapRest!22969 () (Array (_ BitVec 32) ValueCell!6713))

(declare-fun mapValue!22969 () ValueCell!6713)

(assert (=> mapNonEmpty!22969 (= (arr!21407 _values!788) (store mapRest!22969 mapKey!22969 mapValue!22969))))

(declare-fun b!814825 () Bool)

(declare-fun tp_is_empty!14257 () Bool)

(assert (=> b!814825 (= e!451783 tp_is_empty!14257)))

(declare-fun res!556581 () Bool)

(assert (=> start!70164 (=> (not res!556581) (not e!451785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70164 (= res!556581 (validMask!0 mask!1312))))

(assert (=> start!70164 e!451785))

(assert (=> start!70164 tp_is_empty!14257))

(declare-fun array_inv!17107 (array!44702) Bool)

(assert (=> start!70164 (array_inv!17107 _keys!976)))

(assert (=> start!70164 true))

(declare-fun e!451784 () Bool)

(declare-fun array_inv!17108 (array!44704) Bool)

(assert (=> start!70164 (and (array_inv!17108 _values!788) e!451784)))

(assert (=> start!70164 tp!44359))

(declare-fun b!814826 () Bool)

(declare-fun res!556584 () Bool)

(assert (=> b!814826 (=> (not res!556584) (not e!451785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44702 (_ BitVec 32)) Bool)

(assert (=> b!814826 (= res!556584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814827 () Bool)

(declare-fun res!556583 () Bool)

(assert (=> b!814827 (=> (not res!556583) (not e!451785))))

(declare-datatypes ((List!15290 0))(
  ( (Nil!15287) (Cons!15286 (h!16415 (_ BitVec 64)) (t!21617 List!15290)) )
))
(declare-fun arrayNoDuplicates!0 (array!44702 (_ BitVec 32) List!15290) Bool)

(assert (=> b!814827 (= res!556583 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15287))))

(declare-fun b!814828 () Bool)

(declare-fun e!451781 () Bool)

(assert (=> b!814828 (= e!451781 tp_is_empty!14257)))

(declare-fun b!814829 () Bool)

(assert (=> b!814829 (= e!451784 (and e!451781 mapRes!22969))))

(declare-fun condMapEmpty!22969 () Bool)

(declare-fun mapDefault!22969 () ValueCell!6713)

