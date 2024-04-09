; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74584 () Bool)

(assert start!74584)

(declare-fun b_free!15245 () Bool)

(declare-fun b_next!15245 () Bool)

(assert (=> start!74584 (= b_free!15245 (not b_next!15245))))

(declare-fun tp!53417 () Bool)

(declare-fun b_and!25139 () Bool)

(assert (=> start!74584 (= tp!53417 b_and!25139)))

(declare-fun b!878228 () Bool)

(declare-fun res!596753 () Bool)

(declare-fun e!488823 () Bool)

(assert (=> b!878228 (=> (not res!596753) (not e!488823))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878228 (= res!596753 (validMask!0 mask!1196))))

(declare-fun b!878229 () Bool)

(declare-fun res!596756 () Bool)

(assert (=> b!878229 (=> (not res!596756) (not e!488823))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!51084 0))(
  ( (array!51085 (arr!24564 (Array (_ BitVec 32) (_ BitVec 64))) (size!25005 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51084)

(declare-datatypes ((V!28365 0))(
  ( (V!28366 (val!8792 Int)) )
))
(declare-datatypes ((ValueCell!8305 0))(
  ( (ValueCellFull!8305 (v!11228 V!28365)) (EmptyCell!8305) )
))
(declare-datatypes ((array!51086 0))(
  ( (array!51087 (arr!24565 (Array (_ BitVec 32) ValueCell!8305)) (size!25006 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51086)

(assert (=> b!878229 (= res!596756 (and (= (size!25006 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25005 _keys!868) (size!25006 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878230 () Bool)

(declare-fun e!488821 () Bool)

(declare-fun tp_is_empty!17489 () Bool)

(assert (=> b!878230 (= e!488821 tp_is_empty!17489)))

(declare-fun b!878231 () Bool)

(declare-fun res!596750 () Bool)

(assert (=> b!878231 (=> (not res!596750) (not e!488823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51084 (_ BitVec 32)) Bool)

(assert (=> b!878231 (= res!596750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27849 () Bool)

(declare-fun mapRes!27849 () Bool)

(declare-fun tp!53418 () Bool)

(assert (=> mapNonEmpty!27849 (= mapRes!27849 (and tp!53418 e!488821))))

(declare-fun mapValue!27849 () ValueCell!8305)

(declare-fun mapKey!27849 () (_ BitVec 32))

(declare-fun mapRest!27849 () (Array (_ BitVec 32) ValueCell!8305))

(assert (=> mapNonEmpty!27849 (= (arr!24565 _values!688) (store mapRest!27849 mapKey!27849 mapValue!27849))))

(declare-fun b!878232 () Bool)

(declare-fun res!596755 () Bool)

(assert (=> b!878232 (=> (not res!596755) (not e!488823))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878232 (= res!596755 (and (= (select (arr!24564 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878233 () Bool)

(declare-fun res!596754 () Bool)

(assert (=> b!878233 (=> (not res!596754) (not e!488823))))

(assert (=> b!878233 (= res!596754 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25005 _keys!868))))))

(declare-fun res!596751 () Bool)

(assert (=> start!74584 (=> (not res!596751) (not e!488823))))

(assert (=> start!74584 (= res!596751 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25005 _keys!868))))))

(assert (=> start!74584 e!488823))

(assert (=> start!74584 tp_is_empty!17489))

(assert (=> start!74584 true))

(assert (=> start!74584 tp!53417))

(declare-fun array_inv!19338 (array!51084) Bool)

(assert (=> start!74584 (array_inv!19338 _keys!868)))

(declare-fun e!488820 () Bool)

(declare-fun array_inv!19339 (array!51086) Bool)

(assert (=> start!74584 (and (array_inv!19339 _values!688) e!488820)))

(declare-fun b!878234 () Bool)

(assert (=> b!878234 (= e!488823 false)))

(declare-fun v!557 () V!28365)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11642 0))(
  ( (tuple2!11643 (_1!5831 (_ BitVec 64)) (_2!5831 V!28365)) )
))
(declare-datatypes ((List!17525 0))(
  ( (Nil!17522) (Cons!17521 (h!18652 tuple2!11642) (t!24622 List!17525)) )
))
(declare-datatypes ((ListLongMap!10425 0))(
  ( (ListLongMap!10426 (toList!5228 List!17525)) )
))
(declare-fun lt!397189 () ListLongMap!10425)

(declare-fun minValue!654 () V!28365)

(declare-fun zeroValue!654 () V!28365)

(declare-fun getCurrentListMapNoExtraKeys!3190 (array!51084 array!51086 (_ BitVec 32) (_ BitVec 32) V!28365 V!28365 (_ BitVec 32) Int) ListLongMap!10425)

(assert (=> b!878234 (= lt!397189 (getCurrentListMapNoExtraKeys!3190 _keys!868 (array!51087 (store (arr!24565 _values!688) i!612 (ValueCellFull!8305 v!557)) (size!25006 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397190 () ListLongMap!10425)

(assert (=> b!878234 (= lt!397190 (getCurrentListMapNoExtraKeys!3190 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27849 () Bool)

(assert (=> mapIsEmpty!27849 mapRes!27849))

(declare-fun b!878235 () Bool)

(declare-fun e!488822 () Bool)

(assert (=> b!878235 (= e!488822 tp_is_empty!17489)))

(declare-fun b!878236 () Bool)

(declare-fun res!596752 () Bool)

(assert (=> b!878236 (=> (not res!596752) (not e!488823))))

(declare-datatypes ((List!17526 0))(
  ( (Nil!17523) (Cons!17522 (h!18653 (_ BitVec 64)) (t!24623 List!17526)) )
))
(declare-fun arrayNoDuplicates!0 (array!51084 (_ BitVec 32) List!17526) Bool)

(assert (=> b!878236 (= res!596752 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17523))))

(declare-fun b!878237 () Bool)

(declare-fun res!596757 () Bool)

(assert (=> b!878237 (=> (not res!596757) (not e!488823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878237 (= res!596757 (validKeyInArray!0 k!854))))

(declare-fun b!878238 () Bool)

(assert (=> b!878238 (= e!488820 (and e!488822 mapRes!27849))))

(declare-fun condMapEmpty!27849 () Bool)

(declare-fun mapDefault!27849 () ValueCell!8305)

