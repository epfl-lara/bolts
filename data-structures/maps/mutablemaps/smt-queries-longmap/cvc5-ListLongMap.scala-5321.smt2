; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71190 () Bool)

(assert start!71190)

(declare-fun b_free!13333 () Bool)

(declare-fun b_next!13333 () Bool)

(assert (=> start!71190 (= b_free!13333 (not b_next!13333))))

(declare-fun tp!46759 () Bool)

(declare-fun b_and!22277 () Bool)

(assert (=> start!71190 (= tp!46759 b_and!22277)))

(declare-fun b!826505 () Bool)

(declare-fun e!460324 () Bool)

(declare-fun tp_is_empty!15043 () Bool)

(assert (=> b!826505 (= e!460324 tp_is_empty!15043)))

(declare-fun b!826506 () Bool)

(declare-fun e!460327 () Bool)

(assert (=> b!826506 (= e!460327 true)))

(declare-datatypes ((V!25059 0))(
  ( (V!25060 (val!7569 Int)) )
))
(declare-datatypes ((tuple2!10040 0))(
  ( (tuple2!10041 (_1!5030 (_ BitVec 64)) (_2!5030 V!25059)) )
))
(declare-fun lt!374230 () tuple2!10040)

(declare-datatypes ((List!15877 0))(
  ( (Nil!15874) (Cons!15873 (h!17002 tuple2!10040) (t!22232 List!15877)) )
))
(declare-datatypes ((ListLongMap!8877 0))(
  ( (ListLongMap!8878 (toList!4454 List!15877)) )
))
(declare-fun lt!374235 () ListLongMap!8877)

(declare-fun lt!374226 () tuple2!10040)

(declare-fun lt!374224 () ListLongMap!8877)

(declare-fun +!1915 (ListLongMap!8877 tuple2!10040) ListLongMap!8877)

(assert (=> b!826506 (= lt!374235 (+!1915 (+!1915 lt!374224 lt!374226) lt!374230))))

(declare-fun lt!374233 () ListLongMap!8877)

(declare-fun lt!374223 () ListLongMap!8877)

(declare-fun lt!374225 () ListLongMap!8877)

(assert (=> b!826506 (and (= lt!374233 lt!374223) (= lt!374225 lt!374223) (= lt!374225 lt!374233))))

(declare-fun lt!374231 () ListLongMap!8877)

(assert (=> b!826506 (= lt!374223 (+!1915 lt!374231 lt!374226))))

(declare-fun lt!374227 () ListLongMap!8877)

(assert (=> b!826506 (= lt!374233 (+!1915 lt!374227 lt!374226))))

(declare-datatypes ((Unit!28343 0))(
  ( (Unit!28344) )
))
(declare-fun lt!374228 () Unit!28343)

(declare-fun zeroValueBefore!34 () V!25059)

(declare-fun zeroValueAfter!34 () V!25059)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!237 (ListLongMap!8877 (_ BitVec 64) V!25059 V!25059) Unit!28343)

(assert (=> b!826506 (= lt!374228 (addSameAsAddTwiceSameKeyDiffValues!237 lt!374227 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460323 () Bool)

(assert (=> b!826506 e!460323))

(declare-fun res!563529 () Bool)

(assert (=> b!826506 (=> (not res!563529) (not e!460323))))

(declare-fun lt!374234 () ListLongMap!8877)

(assert (=> b!826506 (= res!563529 (= lt!374234 lt!374231))))

(declare-fun lt!374229 () tuple2!10040)

(assert (=> b!826506 (= lt!374231 (+!1915 lt!374227 lt!374229))))

(assert (=> b!826506 (= lt!374227 (+!1915 lt!374224 lt!374230))))

(assert (=> b!826506 (= lt!374226 (tuple2!10041 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460328 () Bool)

(assert (=> b!826506 e!460328))

(declare-fun res!563528 () Bool)

(assert (=> b!826506 (=> (not res!563528) (not e!460328))))

(assert (=> b!826506 (= res!563528 (= lt!374234 (+!1915 (+!1915 lt!374224 lt!374229) lt!374230)))))

(declare-fun minValue!754 () V!25059)

(assert (=> b!826506 (= lt!374230 (tuple2!10041 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826506 (= lt!374229 (tuple2!10041 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46226 0))(
  ( (array!46227 (arr!22154 (Array (_ BitVec 32) (_ BitVec 64))) (size!22575 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46226)

(declare-datatypes ((ValueCell!7106 0))(
  ( (ValueCellFull!7106 (v!9999 V!25059)) (EmptyCell!7106) )
))
(declare-datatypes ((array!46228 0))(
  ( (array!46229 (arr!22155 (Array (_ BitVec 32) ValueCell!7106)) (size!22576 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46228)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun getCurrentListMap!2559 (array!46226 array!46228 (_ BitVec 32) (_ BitVec 32) V!25059 V!25059 (_ BitVec 32) Int) ListLongMap!8877)

(assert (=> b!826506 (= lt!374225 (getCurrentListMap!2559 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826506 (= lt!374234 (getCurrentListMap!2559 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!563530 () Bool)

(declare-fun e!460322 () Bool)

(assert (=> start!71190 (=> (not res!563530) (not e!460322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71190 (= res!563530 (validMask!0 mask!1312))))

(assert (=> start!71190 e!460322))

(assert (=> start!71190 tp_is_empty!15043))

(declare-fun array_inv!17643 (array!46226) Bool)

(assert (=> start!71190 (array_inv!17643 _keys!976)))

(assert (=> start!71190 true))

(declare-fun e!460329 () Bool)

(declare-fun array_inv!17644 (array!46228) Bool)

(assert (=> start!71190 (and (array_inv!17644 _values!788) e!460329)))

(assert (=> start!71190 tp!46759))

(declare-fun b!826507 () Bool)

(declare-fun res!563527 () Bool)

(assert (=> b!826507 (=> (not res!563527) (not e!460322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46226 (_ BitVec 32)) Bool)

(assert (=> b!826507 (= res!563527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826508 () Bool)

(declare-fun lt!374232 () ListLongMap!8877)

(assert (=> b!826508 (= e!460323 (= lt!374225 (+!1915 (+!1915 lt!374232 lt!374230) lt!374226)))))

(declare-fun b!826509 () Bool)

(declare-fun res!563531 () Bool)

(assert (=> b!826509 (=> (not res!563531) (not e!460322))))

(declare-datatypes ((List!15878 0))(
  ( (Nil!15875) (Cons!15874 (h!17003 (_ BitVec 64)) (t!22233 List!15878)) )
))
(declare-fun arrayNoDuplicates!0 (array!46226 (_ BitVec 32) List!15878) Bool)

(assert (=> b!826509 (= res!563531 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15875))))

(declare-fun b!826510 () Bool)

(assert (=> b!826510 (= e!460328 (= lt!374225 (+!1915 (+!1915 lt!374232 (tuple2!10041 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374230)))))

(declare-fun b!826511 () Bool)

(declare-fun e!460326 () Bool)

(assert (=> b!826511 (= e!460326 tp_is_empty!15043)))

(declare-fun b!826512 () Bool)

(declare-fun mapRes!24190 () Bool)

(assert (=> b!826512 (= e!460329 (and e!460326 mapRes!24190))))

(declare-fun condMapEmpty!24190 () Bool)

(declare-fun mapDefault!24190 () ValueCell!7106)

