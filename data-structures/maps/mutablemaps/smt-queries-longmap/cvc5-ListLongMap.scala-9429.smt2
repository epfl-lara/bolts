; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112218 () Bool)

(assert start!112218)

(declare-fun b_free!30577 () Bool)

(declare-fun b_next!30577 () Bool)

(assert (=> start!112218 (= b_free!30577 (not b_next!30577))))

(declare-fun tp!107368 () Bool)

(declare-fun b_and!49237 () Bool)

(assert (=> start!112218 (= tp!107368 b_and!49237)))

(declare-fun b!1328515 () Bool)

(declare-fun res!881540 () Bool)

(declare-fun e!757501 () Bool)

(assert (=> b!1328515 (=> (not res!881540) (not e!757501))))

(declare-datatypes ((array!89833 0))(
  ( (array!89834 (arr!43378 (Array (_ BitVec 32) (_ BitVec 64))) (size!43929 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89833)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89833 (_ BitVec 32)) Bool)

(assert (=> b!1328515 (= res!881540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56404 () Bool)

(declare-fun mapRes!56404 () Bool)

(assert (=> mapIsEmpty!56404 mapRes!56404))

(declare-fun b!1328516 () Bool)

(declare-fun res!881541 () Bool)

(assert (=> b!1328516 (=> (not res!881541) (not e!757501))))

(declare-datatypes ((V!53753 0))(
  ( (V!53754 (val!18318 Int)) )
))
(declare-datatypes ((ValueCell!17345 0))(
  ( (ValueCellFull!17345 (v!20953 V!53753)) (EmptyCell!17345) )
))
(declare-datatypes ((array!89835 0))(
  ( (array!89836 (arr!43379 (Array (_ BitVec 32) ValueCell!17345)) (size!43930 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89835)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1328516 (= res!881541 (and (= (size!43930 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43929 _keys!1590) (size!43930 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328517 () Bool)

(declare-fun res!881539 () Bool)

(assert (=> b!1328517 (=> (not res!881539) (not e!757501))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1328517 (= res!881539 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43929 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328518 () Bool)

(declare-fun e!757500 () Bool)

(declare-fun tp_is_empty!36487 () Bool)

(assert (=> b!1328518 (= e!757500 tp_is_empty!36487)))

(declare-fun b!1328519 () Bool)

(declare-fun e!757503 () Bool)

(declare-fun e!757504 () Bool)

(assert (=> b!1328519 (= e!757503 (and e!757504 mapRes!56404))))

(declare-fun condMapEmpty!56404 () Bool)

(declare-fun mapDefault!56404 () ValueCell!17345)

