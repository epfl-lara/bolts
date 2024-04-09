; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78044 () Bool)

(assert start!78044)

(declare-fun b_free!16543 () Bool)

(declare-fun b_next!16543 () Bool)

(assert (=> start!78044 (= b_free!16543 (not b_next!16543))))

(declare-fun tp!57901 () Bool)

(declare-fun b_and!27133 () Bool)

(assert (=> start!78044 (= tp!57901 b_and!27133)))

(declare-fun b!910566 () Bool)

(declare-fun res!614534 () Bool)

(declare-fun e!510604 () Bool)

(assert (=> b!910566 (=> (not res!614534) (not e!510604))))

(declare-datatypes ((array!53934 0))(
  ( (array!53935 (arr!25919 (Array (_ BitVec 32) (_ BitVec 64))) (size!26379 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53934)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53934 (_ BitVec 32)) Bool)

(assert (=> b!910566 (= res!614534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30163 () Bool)

(declare-fun mapRes!30163 () Bool)

(declare-fun tp!57900 () Bool)

(declare-fun e!510607 () Bool)

(assert (=> mapNonEmpty!30163 (= mapRes!30163 (and tp!57900 e!510607))))

(declare-datatypes ((V!30247 0))(
  ( (V!30248 (val!9531 Int)) )
))
(declare-datatypes ((ValueCell!8999 0))(
  ( (ValueCellFull!8999 (v!12040 V!30247)) (EmptyCell!8999) )
))
(declare-fun mapRest!30163 () (Array (_ BitVec 32) ValueCell!8999))

(declare-fun mapValue!30163 () ValueCell!8999)

(declare-fun mapKey!30163 () (_ BitVec 32))

(declare-datatypes ((array!53936 0))(
  ( (array!53937 (arr!25920 (Array (_ BitVec 32) ValueCell!8999)) (size!26380 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53936)

(assert (=> mapNonEmpty!30163 (= (arr!25920 _values!1152) (store mapRest!30163 mapKey!30163 mapValue!30163))))

(declare-fun b!910567 () Bool)

(declare-fun res!614536 () Bool)

(assert (=> b!910567 (=> (not res!614536) (not e!510604))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!910567 (= res!614536 (and (= (size!26380 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26379 _keys!1386) (size!26380 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!614533 () Bool)

(assert (=> start!78044 (=> (not res!614533) (not e!510604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78044 (= res!614533 (validMask!0 mask!1756))))

(assert (=> start!78044 e!510604))

(declare-fun e!510605 () Bool)

(declare-fun array_inv!20248 (array!53936) Bool)

(assert (=> start!78044 (and (array_inv!20248 _values!1152) e!510605)))

(assert (=> start!78044 tp!57901))

(assert (=> start!78044 true))

(declare-fun tp_is_empty!18961 () Bool)

(assert (=> start!78044 tp_is_empty!18961))

(declare-fun array_inv!20249 (array!53934) Bool)

(assert (=> start!78044 (array_inv!20249 _keys!1386)))

(declare-fun b!910568 () Bool)

(declare-fun e!510606 () Bool)

(assert (=> b!910568 (= e!510606 tp_is_empty!18961)))

(declare-fun mapIsEmpty!30163 () Bool)

(assert (=> mapIsEmpty!30163 mapRes!30163))

(declare-fun b!910569 () Bool)

(assert (=> b!910569 (= e!510604 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30247)

(declare-fun minValue!1094 () V!30247)

(declare-fun lt!410242 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12460 0))(
  ( (tuple2!12461 (_1!6240 (_ BitVec 64)) (_2!6240 V!30247)) )
))
(declare-datatypes ((List!18311 0))(
  ( (Nil!18308) (Cons!18307 (h!19453 tuple2!12460) (t!25904 List!18311)) )
))
(declare-datatypes ((ListLongMap!11171 0))(
  ( (ListLongMap!11172 (toList!5601 List!18311)) )
))
(declare-fun contains!4610 (ListLongMap!11171 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2831 (array!53934 array!53936 (_ BitVec 32) (_ BitVec 32) V!30247 V!30247 (_ BitVec 32) Int) ListLongMap!11171)

(assert (=> b!910569 (= lt!410242 (contains!4610 (getCurrentListMap!2831 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!910570 () Bool)

(assert (=> b!910570 (= e!510605 (and e!510606 mapRes!30163))))

(declare-fun condMapEmpty!30163 () Bool)

(declare-fun mapDefault!30163 () ValueCell!8999)

