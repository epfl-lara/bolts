; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84264 () Bool)

(assert start!84264)

(declare-fun b_free!19937 () Bool)

(declare-fun b_next!19937 () Bool)

(assert (=> start!84264 (= b_free!19937 (not b_next!19937))))

(declare-fun tp!69416 () Bool)

(declare-fun b_and!31969 () Bool)

(assert (=> start!84264 (= tp!69416 b_and!31969)))

(declare-fun b!985287 () Bool)

(declare-fun res!659433 () Bool)

(declare-fun e!555423 () Bool)

(assert (=> b!985287 (=> (not res!659433) (not e!555423))))

(declare-datatypes ((array!62043 0))(
  ( (array!62044 (arr!29875 (Array (_ BitVec 32) (_ BitVec 64))) (size!30355 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62043)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62043 (_ BitVec 32)) Bool)

(assert (=> b!985287 (= res!659433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985288 () Bool)

(declare-fun res!659434 () Bool)

(assert (=> b!985288 (=> (not res!659434) (not e!555423))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985288 (= res!659434 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!659431 () Bool)

(assert (=> start!84264 (=> (not res!659431) (not e!555423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84264 (= res!659431 (validMask!0 mask!1948))))

(assert (=> start!84264 e!555423))

(assert (=> start!84264 true))

(declare-fun tp_is_empty!23039 () Bool)

(assert (=> start!84264 tp_is_empty!23039))

(declare-datatypes ((V!35701 0))(
  ( (V!35702 (val!11570 Int)) )
))
(declare-datatypes ((ValueCell!11038 0))(
  ( (ValueCellFull!11038 (v!14132 V!35701)) (EmptyCell!11038) )
))
(declare-datatypes ((array!62045 0))(
  ( (array!62046 (arr!29876 (Array (_ BitVec 32) ValueCell!11038)) (size!30356 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62045)

(declare-fun e!555425 () Bool)

(declare-fun array_inv!22957 (array!62045) Bool)

(assert (=> start!84264 (and (array_inv!22957 _values!1278) e!555425)))

(assert (=> start!84264 tp!69416))

(declare-fun array_inv!22958 (array!62043) Bool)

(assert (=> start!84264 (array_inv!22958 _keys!1544)))

(declare-fun mapIsEmpty!36587 () Bool)

(declare-fun mapRes!36587 () Bool)

(assert (=> mapIsEmpty!36587 mapRes!36587))

(declare-fun b!985289 () Bool)

(declare-fun res!659436 () Bool)

(assert (=> b!985289 (=> (not res!659436) (not e!555423))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!985289 (= res!659436 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30355 _keys!1544))))))

(declare-fun mapNonEmpty!36587 () Bool)

(declare-fun tp!69415 () Bool)

(declare-fun e!555424 () Bool)

(assert (=> mapNonEmpty!36587 (= mapRes!36587 (and tp!69415 e!555424))))

(declare-fun mapValue!36587 () ValueCell!11038)

(declare-fun mapKey!36587 () (_ BitVec 32))

(declare-fun mapRest!36587 () (Array (_ BitVec 32) ValueCell!11038))

(assert (=> mapNonEmpty!36587 (= (arr!29876 _values!1278) (store mapRest!36587 mapKey!36587 mapValue!36587))))

(declare-fun b!985290 () Bool)

(declare-fun e!555426 () Bool)

(assert (=> b!985290 (= e!555425 (and e!555426 mapRes!36587))))

(declare-fun condMapEmpty!36587 () Bool)

(declare-fun mapDefault!36587 () ValueCell!11038)

