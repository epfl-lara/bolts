; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71182 () Bool)

(assert start!71182)

(declare-fun b_free!13325 () Bool)

(declare-fun b_next!13325 () Bool)

(assert (=> start!71182 (= b_free!13325 (not b_next!13325))))

(declare-fun tp!46735 () Bool)

(declare-fun b_and!22269 () Bool)

(assert (=> start!71182 (= tp!46735 b_and!22269)))

(declare-fun b!826385 () Bool)

(declare-fun res!563446 () Bool)

(declare-fun e!460230 () Bool)

(assert (=> b!826385 (=> (not res!563446) (not e!460230))))

(declare-datatypes ((array!46210 0))(
  ( (array!46211 (arr!22146 (Array (_ BitVec 32) (_ BitVec 64))) (size!22567 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46210)

(declare-datatypes ((List!15870 0))(
  ( (Nil!15867) (Cons!15866 (h!16995 (_ BitVec 64)) (t!22225 List!15870)) )
))
(declare-fun arrayNoDuplicates!0 (array!46210 (_ BitVec 32) List!15870) Bool)

(assert (=> b!826385 (= res!563446 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15867))))

(declare-fun b!826386 () Bool)

(declare-fun e!460228 () Bool)

(assert (=> b!826386 (= e!460228 true)))

(declare-datatypes ((V!25047 0))(
  ( (V!25048 (val!7565 Int)) )
))
(declare-datatypes ((tuple2!10032 0))(
  ( (tuple2!10033 (_1!5026 (_ BitVec 64)) (_2!5026 V!25047)) )
))
(declare-fun lt!374060 () tuple2!10032)

(declare-datatypes ((List!15871 0))(
  ( (Nil!15868) (Cons!15867 (h!16996 tuple2!10032) (t!22226 List!15871)) )
))
(declare-datatypes ((ListLongMap!8869 0))(
  ( (ListLongMap!8870 (toList!4450 List!15871)) )
))
(declare-fun lt!374063 () ListLongMap!8869)

(declare-fun lt!374066 () tuple2!10032)

(declare-fun lt!374062 () ListLongMap!8869)

(declare-fun +!1911 (ListLongMap!8869 tuple2!10032) ListLongMap!8869)

(assert (=> b!826386 (= lt!374063 (+!1911 (+!1911 lt!374062 lt!374066) lt!374060))))

(declare-fun lt!374065 () ListLongMap!8869)

(declare-fun lt!374059 () ListLongMap!8869)

(declare-fun lt!374061 () ListLongMap!8869)

(assert (=> b!826386 (and (= lt!374065 lt!374059) (= lt!374061 lt!374059) (= lt!374061 lt!374065))))

(declare-fun lt!374067 () ListLongMap!8869)

(assert (=> b!826386 (= lt!374059 (+!1911 lt!374067 lt!374066))))

(declare-fun lt!374054 () ListLongMap!8869)

(assert (=> b!826386 (= lt!374065 (+!1911 lt!374054 lt!374066))))

(declare-datatypes ((Unit!28335 0))(
  ( (Unit!28336) )
))
(declare-fun lt!374055 () Unit!28335)

(declare-fun zeroValueAfter!34 () V!25047)

(declare-fun zeroValueBefore!34 () V!25047)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!233 (ListLongMap!8869 (_ BitVec 64) V!25047 V!25047) Unit!28335)

(assert (=> b!826386 (= lt!374055 (addSameAsAddTwiceSameKeyDiffValues!233 lt!374054 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460233 () Bool)

(assert (=> b!826386 e!460233))

(declare-fun res!563441 () Bool)

(assert (=> b!826386 (=> (not res!563441) (not e!460233))))

(declare-fun lt!374056 () ListLongMap!8869)

(assert (=> b!826386 (= res!563441 (= lt!374056 lt!374067))))

(declare-fun lt!374064 () tuple2!10032)

(assert (=> b!826386 (= lt!374067 (+!1911 lt!374054 lt!374064))))

(assert (=> b!826386 (= lt!374054 (+!1911 lt!374062 lt!374060))))

(assert (=> b!826386 (= lt!374066 (tuple2!10033 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460227 () Bool)

(assert (=> b!826386 e!460227))

(declare-fun res!563443 () Bool)

(assert (=> b!826386 (=> (not res!563443) (not e!460227))))

(assert (=> b!826386 (= res!563443 (= lt!374056 (+!1911 (+!1911 lt!374062 lt!374064) lt!374060)))))

(declare-fun minValue!754 () V!25047)

(assert (=> b!826386 (= lt!374060 (tuple2!10033 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826386 (= lt!374064 (tuple2!10033 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((ValueCell!7102 0))(
  ( (ValueCellFull!7102 (v!9995 V!25047)) (EmptyCell!7102) )
))
(declare-datatypes ((array!46212 0))(
  ( (array!46213 (arr!22147 (Array (_ BitVec 32) ValueCell!7102)) (size!22568 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46212)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2555 (array!46210 array!46212 (_ BitVec 32) (_ BitVec 32) V!25047 V!25047 (_ BitVec 32) Int) ListLongMap!8869)

(assert (=> b!826386 (= lt!374061 (getCurrentListMap!2555 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826386 (= lt!374056 (getCurrentListMap!2555 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826387 () Bool)

(declare-fun res!563444 () Bool)

(assert (=> b!826387 (=> (not res!563444) (not e!460230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46210 (_ BitVec 32)) Bool)

(assert (=> b!826387 (= res!563444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826388 () Bool)

(assert (=> b!826388 (= e!460230 (not e!460228))))

(declare-fun res!563445 () Bool)

(assert (=> b!826388 (=> res!563445 e!460228)))

(assert (=> b!826388 (= res!563445 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!374057 () ListLongMap!8869)

(assert (=> b!826388 (= lt!374062 lt!374057)))

(declare-fun lt!374058 () Unit!28335)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!575 (array!46210 array!46212 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25047 V!25047 V!25047 V!25047 (_ BitVec 32) Int) Unit!28335)

(assert (=> b!826388 (= lt!374058 (lemmaNoChangeToArrayThenSameMapNoExtras!575 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2459 (array!46210 array!46212 (_ BitVec 32) (_ BitVec 32) V!25047 V!25047 (_ BitVec 32) Int) ListLongMap!8869)

(assert (=> b!826388 (= lt!374057 (getCurrentListMapNoExtraKeys!2459 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826388 (= lt!374062 (getCurrentListMapNoExtraKeys!2459 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826389 () Bool)

(assert (=> b!826389 (= e!460227 (= lt!374061 (+!1911 (+!1911 lt!374057 (tuple2!10033 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374060)))))

(declare-fun b!826390 () Bool)

(declare-fun e!460232 () Bool)

(declare-fun e!460229 () Bool)

(declare-fun mapRes!24178 () Bool)

(assert (=> b!826390 (= e!460232 (and e!460229 mapRes!24178))))

(declare-fun condMapEmpty!24178 () Bool)

(declare-fun mapDefault!24178 () ValueCell!7102)

