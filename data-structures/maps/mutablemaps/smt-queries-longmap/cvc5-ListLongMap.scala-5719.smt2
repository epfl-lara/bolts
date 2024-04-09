; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74126 () Bool)

(assert start!74126)

(declare-fun mapIsEmpty!27323 () Bool)

(declare-fun mapRes!27323 () Bool)

(assert (=> mapIsEmpty!27323 mapRes!27323))

(declare-fun b!871646 () Bool)

(declare-fun e!485342 () Bool)

(assert (=> b!871646 (= e!485342 false)))

(declare-fun lt!395484 () Bool)

(declare-datatypes ((array!50426 0))(
  ( (array!50427 (arr!24240 (Array (_ BitVec 32) (_ BitVec 64))) (size!24681 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50426)

(declare-datatypes ((List!17307 0))(
  ( (Nil!17304) (Cons!17303 (h!18434 (_ BitVec 64)) (t!24352 List!17307)) )
))
(declare-fun arrayNoDuplicates!0 (array!50426 (_ BitVec 32) List!17307) Bool)

(assert (=> b!871646 (= lt!395484 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17304))))

(declare-fun res!592595 () Bool)

(assert (=> start!74126 (=> (not res!592595) (not e!485342))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74126 (= res!592595 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24681 _keys!868))))))

(assert (=> start!74126 e!485342))

(assert (=> start!74126 true))

(declare-fun array_inv!19112 (array!50426) Bool)

(assert (=> start!74126 (array_inv!19112 _keys!868)))

(declare-datatypes ((V!27913 0))(
  ( (V!27914 (val!8622 Int)) )
))
(declare-datatypes ((ValueCell!8135 0))(
  ( (ValueCellFull!8135 (v!11043 V!27913)) (EmptyCell!8135) )
))
(declare-datatypes ((array!50428 0))(
  ( (array!50429 (arr!24241 (Array (_ BitVec 32) ValueCell!8135)) (size!24682 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50428)

(declare-fun e!485344 () Bool)

(declare-fun array_inv!19113 (array!50428) Bool)

(assert (=> start!74126 (and (array_inv!19113 _values!688) e!485344)))

(declare-fun b!871647 () Bool)

(declare-fun res!592593 () Bool)

(assert (=> b!871647 (=> (not res!592593) (not e!485342))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!871647 (= res!592593 (and (= (size!24682 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24681 _keys!868) (size!24682 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27323 () Bool)

(declare-fun tp!52523 () Bool)

(declare-fun e!485345 () Bool)

(assert (=> mapNonEmpty!27323 (= mapRes!27323 (and tp!52523 e!485345))))

(declare-fun mapValue!27323 () ValueCell!8135)

(declare-fun mapRest!27323 () (Array (_ BitVec 32) ValueCell!8135))

(declare-fun mapKey!27323 () (_ BitVec 32))

(assert (=> mapNonEmpty!27323 (= (arr!24241 _values!688) (store mapRest!27323 mapKey!27323 mapValue!27323))))

(declare-fun b!871648 () Bool)

(declare-fun res!592594 () Bool)

(assert (=> b!871648 (=> (not res!592594) (not e!485342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50426 (_ BitVec 32)) Bool)

(assert (=> b!871648 (= res!592594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871649 () Bool)

(declare-fun e!485346 () Bool)

(assert (=> b!871649 (= e!485344 (and e!485346 mapRes!27323))))

(declare-fun condMapEmpty!27323 () Bool)

(declare-fun mapDefault!27323 () ValueCell!8135)

