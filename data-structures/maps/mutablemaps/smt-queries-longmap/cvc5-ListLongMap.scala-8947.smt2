; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108444 () Bool)

(assert start!108444)

(declare-fun b_free!27955 () Bool)

(declare-fun b_next!27955 () Bool)

(assert (=> start!108444 (= b_free!27955 (not b_next!27955))))

(declare-fun tp!98975 () Bool)

(declare-fun b_and!46025 () Bool)

(assert (=> start!108444 (= tp!98975 b_and!46025)))

(declare-fun b!1279366 () Bool)

(declare-fun e!731004 () Bool)

(assert (=> b!1279366 (= e!731004 false)))

(declare-datatypes ((V!49897 0))(
  ( (V!49898 (val!16872 Int)) )
))
(declare-fun minValue!1387 () V!49897)

(declare-fun zeroValue!1387 () V!49897)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15899 0))(
  ( (ValueCellFull!15899 (v!19470 V!49897)) (EmptyCell!15899) )
))
(declare-datatypes ((array!84225 0))(
  ( (array!84226 (arr!40612 (Array (_ BitVec 32) ValueCell!15899)) (size!41163 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84225)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun lt!575950 () Bool)

(declare-datatypes ((array!84227 0))(
  ( (array!84228 (arr!40613 (Array (_ BitVec 32) (_ BitVec 64))) (size!41164 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84227)

(declare-datatypes ((tuple2!21736 0))(
  ( (tuple2!21737 (_1!10878 (_ BitVec 64)) (_2!10878 V!49897)) )
))
(declare-datatypes ((List!28946 0))(
  ( (Nil!28943) (Cons!28942 (h!30151 tuple2!21736) (t!42493 List!28946)) )
))
(declare-datatypes ((ListLongMap!19405 0))(
  ( (ListLongMap!19406 (toList!9718 List!28946)) )
))
(declare-fun contains!7771 (ListLongMap!19405 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4738 (array!84227 array!84225 (_ BitVec 32) (_ BitVec 32) V!49897 V!49897 (_ BitVec 32) Int) ListLongMap!19405)

(assert (=> b!1279366 (= lt!575950 (contains!7771 (getCurrentListMap!4738 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279367 () Bool)

(declare-fun res!849946 () Bool)

(assert (=> b!1279367 (=> (not res!849946) (not e!731004))))

(declare-datatypes ((List!28947 0))(
  ( (Nil!28944) (Cons!28943 (h!30152 (_ BitVec 64)) (t!42494 List!28947)) )
))
(declare-fun arrayNoDuplicates!0 (array!84227 (_ BitVec 32) List!28947) Bool)

(assert (=> b!1279367 (= res!849946 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28944))))

(declare-fun b!1279368 () Bool)

(declare-fun res!849945 () Bool)

(assert (=> b!1279368 (=> (not res!849945) (not e!731004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84227 (_ BitVec 32)) Bool)

(assert (=> b!1279368 (= res!849945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279369 () Bool)

(declare-fun e!731003 () Bool)

(declare-fun e!731005 () Bool)

(declare-fun mapRes!51944 () Bool)

(assert (=> b!1279369 (= e!731003 (and e!731005 mapRes!51944))))

(declare-fun condMapEmpty!51944 () Bool)

(declare-fun mapDefault!51944 () ValueCell!15899)

