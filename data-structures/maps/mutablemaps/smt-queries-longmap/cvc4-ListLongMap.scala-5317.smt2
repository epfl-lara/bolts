; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71170 () Bool)

(assert start!71170)

(declare-fun b_free!13313 () Bool)

(declare-fun b_next!13313 () Bool)

(assert (=> start!71170 (= b_free!13313 (not b_next!13313))))

(declare-fun tp!46698 () Bool)

(declare-fun b_and!22257 () Bool)

(assert (=> start!71170 (= tp!46698 b_and!22257)))

(declare-fun b!826205 () Bool)

(declare-fun res!563316 () Bool)

(declare-fun e!460082 () Bool)

(assert (=> b!826205 (=> (not res!563316) (not e!460082))))

(declare-datatypes ((array!46188 0))(
  ( (array!46189 (arr!22135 (Array (_ BitVec 32) (_ BitVec 64))) (size!22556 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46188)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46188 (_ BitVec 32)) Bool)

(assert (=> b!826205 (= res!563316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826206 () Bool)

(declare-fun res!563317 () Bool)

(assert (=> b!826206 (=> (not res!563317) (not e!460082))))

(declare-datatypes ((List!15860 0))(
  ( (Nil!15857) (Cons!15856 (h!16985 (_ BitVec 64)) (t!22215 List!15860)) )
))
(declare-fun arrayNoDuplicates!0 (array!46188 (_ BitVec 32) List!15860) Bool)

(assert (=> b!826206 (= res!563317 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15857))))

(declare-fun b!826207 () Bool)

(declare-fun e!460088 () Bool)

(assert (=> b!826207 (= e!460088 true)))

(declare-datatypes ((V!25031 0))(
  ( (V!25032 (val!7559 Int)) )
))
(declare-datatypes ((tuple2!10020 0))(
  ( (tuple2!10021 (_1!5020 (_ BitVec 64)) (_2!5020 V!25031)) )
))
(declare-fun lt!373805 () tuple2!10020)

(declare-datatypes ((List!15861 0))(
  ( (Nil!15858) (Cons!15857 (h!16986 tuple2!10020) (t!22216 List!15861)) )
))
(declare-datatypes ((ListLongMap!8857 0))(
  ( (ListLongMap!8858 (toList!4444 List!15861)) )
))
(declare-fun lt!373804 () ListLongMap!8857)

(declare-fun lt!373810 () tuple2!10020)

(declare-fun lt!373815 () ListLongMap!8857)

(declare-fun +!1905 (ListLongMap!8857 tuple2!10020) ListLongMap!8857)

(assert (=> b!826207 (= lt!373815 (+!1905 (+!1905 lt!373804 lt!373810) lt!373805))))

(declare-fun lt!373812 () ListLongMap!8857)

(declare-fun lt!373806 () ListLongMap!8857)

(declare-fun lt!373809 () ListLongMap!8857)

(assert (=> b!826207 (and (= lt!373812 lt!373806) (= lt!373809 lt!373806) (= lt!373809 lt!373812))))

(declare-fun lt!373802 () ListLongMap!8857)

(assert (=> b!826207 (= lt!373806 (+!1905 lt!373802 lt!373810))))

(declare-fun lt!373808 () ListLongMap!8857)

(assert (=> b!826207 (= lt!373812 (+!1905 lt!373808 lt!373810))))

(declare-fun zeroValueBefore!34 () V!25031)

(declare-fun zeroValueAfter!34 () V!25031)

(declare-datatypes ((Unit!28325 0))(
  ( (Unit!28326) )
))
(declare-fun lt!373813 () Unit!28325)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!229 (ListLongMap!8857 (_ BitVec 64) V!25031 V!25031) Unit!28325)

(assert (=> b!826207 (= lt!373813 (addSameAsAddTwiceSameKeyDiffValues!229 lt!373808 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460089 () Bool)

(assert (=> b!826207 e!460089))

(declare-fun res!563321 () Bool)

(assert (=> b!826207 (=> (not res!563321) (not e!460089))))

(declare-fun lt!373803 () ListLongMap!8857)

(assert (=> b!826207 (= res!563321 (= lt!373803 lt!373802))))

(declare-fun lt!373811 () tuple2!10020)

(assert (=> b!826207 (= lt!373802 (+!1905 lt!373808 lt!373811))))

(assert (=> b!826207 (= lt!373808 (+!1905 lt!373804 lt!373805))))

(assert (=> b!826207 (= lt!373810 (tuple2!10021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460086 () Bool)

(assert (=> b!826207 e!460086))

(declare-fun res!563315 () Bool)

(assert (=> b!826207 (=> (not res!563315) (not e!460086))))

(assert (=> b!826207 (= res!563315 (= lt!373803 (+!1905 (+!1905 lt!373804 lt!373811) lt!373805)))))

(declare-fun minValue!754 () V!25031)

(assert (=> b!826207 (= lt!373805 (tuple2!10021 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826207 (= lt!373811 (tuple2!10021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((ValueCell!7096 0))(
  ( (ValueCellFull!7096 (v!9989 V!25031)) (EmptyCell!7096) )
))
(declare-datatypes ((array!46190 0))(
  ( (array!46191 (arr!22136 (Array (_ BitVec 32) ValueCell!7096)) (size!22557 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46190)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2551 (array!46188 array!46190 (_ BitVec 32) (_ BitVec 32) V!25031 V!25031 (_ BitVec 32) Int) ListLongMap!8857)

(assert (=> b!826207 (= lt!373809 (getCurrentListMap!2551 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826207 (= lt!373803 (getCurrentListMap!2551 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24160 () Bool)

(declare-fun mapRes!24160 () Bool)

(assert (=> mapIsEmpty!24160 mapRes!24160))

(declare-fun b!826208 () Bool)

(declare-fun e!460084 () Bool)

(declare-fun e!460083 () Bool)

(assert (=> b!826208 (= e!460084 (and e!460083 mapRes!24160))))

(declare-fun condMapEmpty!24160 () Bool)

(declare-fun mapDefault!24160 () ValueCell!7096)

