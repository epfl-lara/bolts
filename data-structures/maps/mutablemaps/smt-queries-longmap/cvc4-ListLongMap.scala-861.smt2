; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20278 () Bool)

(assert start!20278)

(declare-fun b_free!4925 () Bool)

(declare-fun b_next!4925 () Bool)

(assert (=> start!20278 (= b_free!4925 (not b_next!4925))))

(declare-fun tp!17807 () Bool)

(declare-fun b_and!11689 () Bool)

(assert (=> start!20278 (= tp!17807 b_and!11689)))

(declare-fun b!199380 () Bool)

(declare-fun e!130898 () Bool)

(declare-fun tp_is_empty!4781 () Bool)

(assert (=> b!199380 (= e!130898 tp_is_empty!4781)))

(declare-fun b!199381 () Bool)

(declare-fun res!94771 () Bool)

(declare-fun e!130899 () Bool)

(assert (=> b!199381 (=> (not res!94771) (not e!130899))))

(declare-datatypes ((array!8802 0))(
  ( (array!8803 (arr!4151 (Array (_ BitVec 32) (_ BitVec 64))) (size!4476 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8802)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8802 (_ BitVec 32)) Bool)

(assert (=> b!199381 (= res!94771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199382 () Bool)

(assert (=> b!199382 (= e!130899 (not true))))

(declare-datatypes ((V!6021 0))(
  ( (V!6022 (val!2435 Int)) )
))
(declare-datatypes ((ValueCell!2047 0))(
  ( (ValueCellFull!2047 (v!4401 V!6021)) (EmptyCell!2047) )
))
(declare-datatypes ((array!8804 0))(
  ( (array!8805 (arr!4152 (Array (_ BitVec 32) ValueCell!2047)) (size!4477 (_ BitVec 32))) )
))
(declare-fun lt!98331 () array!8804)

(declare-fun zeroValue!615 () V!6021)

(declare-datatypes ((tuple2!3680 0))(
  ( (tuple2!3681 (_1!1850 (_ BitVec 64)) (_2!1850 V!6021)) )
))
(declare-datatypes ((List!2622 0))(
  ( (Nil!2619) (Cons!2618 (h!3260 tuple2!3680) (t!7561 List!2622)) )
))
(declare-datatypes ((ListLongMap!2607 0))(
  ( (ListLongMap!2608 (toList!1319 List!2622)) )
))
(declare-fun lt!98335 () ListLongMap!2607)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6021)

(declare-fun getCurrentListMap!905 (array!8802 array!8804 (_ BitVec 32) (_ BitVec 32) V!6021 V!6021 (_ BitVec 32) Int) ListLongMap!2607)

(assert (=> b!199382 (= lt!98335 (getCurrentListMap!905 _keys!825 lt!98331 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98333 () ListLongMap!2607)

(declare-fun lt!98334 () ListLongMap!2607)

(assert (=> b!199382 (and (= lt!98333 lt!98334) (= lt!98334 lt!98333))))

(declare-fun lt!98330 () ListLongMap!2607)

(declare-fun v!520 () V!6021)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!336 (ListLongMap!2607 tuple2!3680) ListLongMap!2607)

(assert (=> b!199382 (= lt!98334 (+!336 lt!98330 (tuple2!3681 k!843 v!520)))))

(declare-datatypes ((Unit!5981 0))(
  ( (Unit!5982) )
))
(declare-fun lt!98332 () Unit!5981)

(declare-fun _values!649 () array!8804)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!18 (array!8802 array!8804 (_ BitVec 32) (_ BitVec 32) V!6021 V!6021 (_ BitVec 32) (_ BitVec 64) V!6021 (_ BitVec 32) Int) Unit!5981)

(assert (=> b!199382 (= lt!98332 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!18 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!276 (array!8802 array!8804 (_ BitVec 32) (_ BitVec 32) V!6021 V!6021 (_ BitVec 32) Int) ListLongMap!2607)

(assert (=> b!199382 (= lt!98333 (getCurrentListMapNoExtraKeys!276 _keys!825 lt!98331 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199382 (= lt!98331 (array!8805 (store (arr!4152 _values!649) i!601 (ValueCellFull!2047 v!520)) (size!4477 _values!649)))))

(assert (=> b!199382 (= lt!98330 (getCurrentListMapNoExtraKeys!276 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199383 () Bool)

(declare-fun res!94777 () Bool)

(assert (=> b!199383 (=> (not res!94777) (not e!130899))))

(assert (=> b!199383 (= res!94777 (and (= (size!4477 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4476 _keys!825) (size!4477 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!94772 () Bool)

(assert (=> start!20278 (=> (not res!94772) (not e!130899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20278 (= res!94772 (validMask!0 mask!1149))))

(assert (=> start!20278 e!130899))

(declare-fun e!130900 () Bool)

(declare-fun array_inv!2715 (array!8804) Bool)

(assert (=> start!20278 (and (array_inv!2715 _values!649) e!130900)))

(assert (=> start!20278 true))

(assert (=> start!20278 tp_is_empty!4781))

(declare-fun array_inv!2716 (array!8802) Bool)

(assert (=> start!20278 (array_inv!2716 _keys!825)))

(assert (=> start!20278 tp!17807))

(declare-fun b!199384 () Bool)

(declare-fun res!94776 () Bool)

(assert (=> b!199384 (=> (not res!94776) (not e!130899))))

(assert (=> b!199384 (= res!94776 (= (select (arr!4151 _keys!825) i!601) k!843))))

(declare-fun b!199385 () Bool)

(declare-fun e!130897 () Bool)

(declare-fun mapRes!8240 () Bool)

(assert (=> b!199385 (= e!130900 (and e!130897 mapRes!8240))))

(declare-fun condMapEmpty!8240 () Bool)

(declare-fun mapDefault!8240 () ValueCell!2047)

