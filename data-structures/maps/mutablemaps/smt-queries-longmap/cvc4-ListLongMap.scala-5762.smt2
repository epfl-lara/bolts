; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74452 () Bool)

(assert start!74452)

(declare-fun b_free!15167 () Bool)

(declare-fun b_next!15167 () Bool)

(assert (=> start!74452 (= b_free!15167 (not b_next!15167))))

(declare-fun tp!53179 () Bool)

(declare-fun b_and!25005 () Bool)

(assert (=> start!74452 (= tp!53179 b_and!25005)))

(declare-fun b!876285 () Bool)

(declare-fun res!595571 () Bool)

(declare-fun e!487836 () Bool)

(assert (=> b!876285 (=> (not res!595571) (not e!487836))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876285 (= res!595571 (validKeyInArray!0 k!854))))

(declare-fun res!595565 () Bool)

(assert (=> start!74452 (=> (not res!595565) (not e!487836))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50930 0))(
  ( (array!50931 (arr!24488 (Array (_ BitVec 32) (_ BitVec 64))) (size!24929 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50930)

(assert (=> start!74452 (= res!595565 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24929 _keys!868))))))

(assert (=> start!74452 e!487836))

(declare-fun tp_is_empty!17411 () Bool)

(assert (=> start!74452 tp_is_empty!17411))

(assert (=> start!74452 true))

(assert (=> start!74452 tp!53179))

(declare-fun array_inv!19288 (array!50930) Bool)

(assert (=> start!74452 (array_inv!19288 _keys!868)))

(declare-datatypes ((V!28261 0))(
  ( (V!28262 (val!8753 Int)) )
))
(declare-datatypes ((ValueCell!8266 0))(
  ( (ValueCellFull!8266 (v!11182 V!28261)) (EmptyCell!8266) )
))
(declare-datatypes ((array!50932 0))(
  ( (array!50933 (arr!24489 (Array (_ BitVec 32) ValueCell!8266)) (size!24930 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50932)

(declare-fun e!487839 () Bool)

(declare-fun array_inv!19289 (array!50932) Bool)

(assert (=> start!74452 (and (array_inv!19289 _values!688) e!487839)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!38741 () Bool)

(declare-fun minValue!654 () V!28261)

(declare-fun zeroValue!654 () V!28261)

(declare-datatypes ((tuple2!11580 0))(
  ( (tuple2!11581 (_1!5800 (_ BitVec 64)) (_2!5800 V!28261)) )
))
(declare-datatypes ((List!17463 0))(
  ( (Nil!17460) (Cons!17459 (h!18590 tuple2!11580) (t!24542 List!17463)) )
))
(declare-datatypes ((ListLongMap!10363 0))(
  ( (ListLongMap!10364 (toList!5197 List!17463)) )
))
(declare-fun call!38745 () ListLongMap!10363)

(declare-fun getCurrentListMapNoExtraKeys!3159 (array!50930 array!50932 (_ BitVec 32) (_ BitVec 32) V!28261 V!28261 (_ BitVec 32) Int) ListLongMap!10363)

(assert (=> bm!38741 (= call!38745 (getCurrentListMapNoExtraKeys!3159 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27728 () Bool)

(declare-fun mapRes!27728 () Bool)

(declare-fun tp!53180 () Bool)

(declare-fun e!487838 () Bool)

(assert (=> mapNonEmpty!27728 (= mapRes!27728 (and tp!53180 e!487838))))

(declare-fun mapKey!27728 () (_ BitVec 32))

(declare-fun mapValue!27728 () ValueCell!8266)

(declare-fun mapRest!27728 () (Array (_ BitVec 32) ValueCell!8266))

(assert (=> mapNonEmpty!27728 (= (arr!24489 _values!688) (store mapRest!27728 mapKey!27728 mapValue!27728))))

(declare-fun b!876286 () Bool)

(declare-fun res!595563 () Bool)

(assert (=> b!876286 (=> (not res!595563) (not e!487836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50930 (_ BitVec 32)) Bool)

(assert (=> b!876286 (= res!595563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun e!487841 () Bool)

(declare-fun v!557 () V!28261)

(declare-fun b!876287 () Bool)

(declare-fun call!38744 () ListLongMap!10363)

(declare-fun +!2434 (ListLongMap!10363 tuple2!11580) ListLongMap!10363)

(assert (=> b!876287 (= e!487841 (= call!38744 (+!2434 call!38745 (tuple2!11581 k!854 v!557))))))

(declare-fun b!876288 () Bool)

(declare-fun res!595572 () Bool)

(assert (=> b!876288 (=> (not res!595572) (not e!487836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876288 (= res!595572 (validMask!0 mask!1196))))

(declare-fun b!876289 () Bool)

(declare-fun res!595564 () Bool)

(assert (=> b!876289 (=> (not res!595564) (not e!487836))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876289 (= res!595564 (and (= (select (arr!24488 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!876290 () Bool)

(declare-fun e!487834 () Bool)

(assert (=> b!876290 (= e!487839 (and e!487834 mapRes!27728))))

(declare-fun condMapEmpty!27728 () Bool)

(declare-fun mapDefault!27728 () ValueCell!8266)

