; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74526 () Bool)

(assert start!74526)

(declare-fun b_free!15187 () Bool)

(declare-fun b_next!15187 () Bool)

(assert (=> start!74526 (= b_free!15187 (not b_next!15187))))

(declare-fun tp!53244 () Bool)

(declare-fun b_and!25081 () Bool)

(assert (=> start!74526 (= tp!53244 b_and!25081)))

(declare-fun mapIsEmpty!27762 () Bool)

(declare-fun mapRes!27762 () Bool)

(assert (=> mapIsEmpty!27762 mapRes!27762))

(declare-fun b!877271 () Bool)

(declare-fun res!596058 () Bool)

(declare-fun e!488385 () Bool)

(assert (=> b!877271 (=> (not res!596058) (not e!488385))))

(declare-datatypes ((array!50972 0))(
  ( (array!50973 (arr!24508 (Array (_ BitVec 32) (_ BitVec 64))) (size!24949 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50972)

(declare-datatypes ((List!17481 0))(
  ( (Nil!17478) (Cons!17477 (h!18608 (_ BitVec 64)) (t!24578 List!17481)) )
))
(declare-fun arrayNoDuplicates!0 (array!50972 (_ BitVec 32) List!17481) Bool)

(assert (=> b!877271 (= res!596058 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17478))))

(declare-fun b!877272 () Bool)

(declare-fun res!596055 () Bool)

(assert (=> b!877272 (=> (not res!596055) (not e!488385))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877272 (= res!596055 (validMask!0 mask!1196))))

(declare-fun b!877273 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877273 (= e!488385 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612) (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!1053) (size!24949 _keys!868)))))))

(declare-datatypes ((V!28289 0))(
  ( (V!28290 (val!8763 Int)) )
))
(declare-fun v!557 () V!28289)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11600 0))(
  ( (tuple2!11601 (_1!5810 (_ BitVec 64)) (_2!5810 V!28289)) )
))
(declare-datatypes ((List!17482 0))(
  ( (Nil!17479) (Cons!17478 (h!18609 tuple2!11600) (t!24579 List!17482)) )
))
(declare-datatypes ((ListLongMap!10383 0))(
  ( (ListLongMap!10384 (toList!5207 List!17482)) )
))
(declare-fun lt!397016 () ListLongMap!10383)

(declare-datatypes ((ValueCell!8276 0))(
  ( (ValueCellFull!8276 (v!11199 V!28289)) (EmptyCell!8276) )
))
(declare-datatypes ((array!50974 0))(
  ( (array!50975 (arr!24509 (Array (_ BitVec 32) ValueCell!8276)) (size!24950 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50974)

(declare-fun minValue!654 () V!28289)

(declare-fun zeroValue!654 () V!28289)

(declare-fun getCurrentListMapNoExtraKeys!3169 (array!50972 array!50974 (_ BitVec 32) (_ BitVec 32) V!28289 V!28289 (_ BitVec 32) Int) ListLongMap!10383)

(assert (=> b!877273 (= lt!397016 (getCurrentListMapNoExtraKeys!3169 _keys!868 (array!50975 (store (arr!24509 _values!688) i!612 (ValueCellFull!8276 v!557)) (size!24950 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397015 () ListLongMap!10383)

(assert (=> b!877273 (= lt!397015 (getCurrentListMapNoExtraKeys!3169 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!596059 () Bool)

(assert (=> start!74526 (=> (not res!596059) (not e!488385))))

(assert (=> start!74526 (= res!596059 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24949 _keys!868))))))

(assert (=> start!74526 e!488385))

(declare-fun tp_is_empty!17431 () Bool)

(assert (=> start!74526 tp_is_empty!17431))

(assert (=> start!74526 true))

(assert (=> start!74526 tp!53244))

(declare-fun array_inv!19304 (array!50972) Bool)

(assert (=> start!74526 (array_inv!19304 _keys!868)))

(declare-fun e!488388 () Bool)

(declare-fun array_inv!19305 (array!50974) Bool)

(assert (=> start!74526 (and (array_inv!19305 _values!688) e!488388)))

(declare-fun b!877274 () Bool)

(declare-fun e!488386 () Bool)

(assert (=> b!877274 (= e!488386 tp_is_empty!17431)))

(declare-fun b!877275 () Bool)

(declare-fun res!596060 () Bool)

(assert (=> b!877275 (=> (not res!596060) (not e!488385))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!877275 (= res!596060 (and (= (select (arr!24508 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!877276 () Bool)

(declare-fun e!488387 () Bool)

(assert (=> b!877276 (= e!488387 tp_is_empty!17431)))

(declare-fun b!877277 () Bool)

(declare-fun res!596057 () Bool)

(assert (=> b!877277 (=> (not res!596057) (not e!488385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50972 (_ BitVec 32)) Bool)

(assert (=> b!877277 (= res!596057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!877278 () Bool)

(declare-fun res!596054 () Bool)

(assert (=> b!877278 (=> (not res!596054) (not e!488385))))

(assert (=> b!877278 (= res!596054 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24949 _keys!868))))))

(declare-fun b!877279 () Bool)

(assert (=> b!877279 (= e!488388 (and e!488387 mapRes!27762))))

(declare-fun condMapEmpty!27762 () Bool)

(declare-fun mapDefault!27762 () ValueCell!8276)

