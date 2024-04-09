; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40684 () Bool)

(assert start!40684)

(declare-fun b_free!10687 () Bool)

(declare-fun b_next!10687 () Bool)

(assert (=> start!40684 (= b_free!10687 (not b_next!10687))))

(declare-fun tp!37881 () Bool)

(declare-fun b_and!18713 () Bool)

(assert (=> start!40684 (= tp!37881 b_and!18713)))

(declare-fun b!449432 () Bool)

(declare-fun e!263495 () Bool)

(declare-fun tp_is_empty!12025 () Bool)

(assert (=> b!449432 (= e!263495 tp_is_empty!12025)))

(declare-fun mapNonEmpty!19671 () Bool)

(declare-fun mapRes!19671 () Bool)

(declare-fun tp!37880 () Bool)

(declare-fun e!263496 () Bool)

(assert (=> mapNonEmpty!19671 (= mapRes!19671 (and tp!37880 e!263496))))

(declare-datatypes ((V!17139 0))(
  ( (V!17140 (val!6057 Int)) )
))
(declare-datatypes ((ValueCell!5669 0))(
  ( (ValueCellFull!5669 (v!8308 V!17139)) (EmptyCell!5669) )
))
(declare-fun mapValue!19671 () ValueCell!5669)

(declare-datatypes ((array!27817 0))(
  ( (array!27818 (arr!13351 (Array (_ BitVec 32) ValueCell!5669)) (size!13703 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27817)

(declare-fun mapKey!19671 () (_ BitVec 32))

(declare-fun mapRest!19671 () (Array (_ BitVec 32) ValueCell!5669))

(assert (=> mapNonEmpty!19671 (= (arr!13351 _values!549) (store mapRest!19671 mapKey!19671 mapValue!19671))))

(declare-fun b!449433 () Bool)

(declare-fun res!267441 () Bool)

(declare-fun e!263499 () Bool)

(assert (=> b!449433 (=> (not res!267441) (not e!263499))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449433 (= res!267441 (bvsle from!863 i!563))))

(declare-fun b!449434 () Bool)

(assert (=> b!449434 (= e!263499 false)))

(declare-fun minValue!515 () V!17139)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!27819 0))(
  ( (array!27820 (arr!13352 (Array (_ BitVec 32) (_ BitVec 64))) (size!13704 (_ BitVec 32))) )
))
(declare-fun lt!204366 () array!27819)

(declare-datatypes ((tuple2!7890 0))(
  ( (tuple2!7891 (_1!3955 (_ BitVec 64)) (_2!3955 V!17139)) )
))
(declare-datatypes ((List!8001 0))(
  ( (Nil!7998) (Cons!7997 (h!8853 tuple2!7890) (t!13771 List!8001)) )
))
(declare-datatypes ((ListLongMap!6817 0))(
  ( (ListLongMap!6818 (toList!3424 List!8001)) )
))
(declare-fun lt!204367 () ListLongMap!6817)

(declare-fun zeroValue!515 () V!17139)

(declare-fun v!412 () V!17139)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1604 (array!27819 array!27817 (_ BitVec 32) (_ BitVec 32) V!17139 V!17139 (_ BitVec 32) Int) ListLongMap!6817)

(assert (=> b!449434 (= lt!204367 (getCurrentListMapNoExtraKeys!1604 lt!204366 (array!27818 (store (arr!13351 _values!549) i!563 (ValueCellFull!5669 v!412)) (size!13703 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _keys!709 () array!27819)

(declare-fun lt!204365 () ListLongMap!6817)

(assert (=> b!449434 (= lt!204365 (getCurrentListMapNoExtraKeys!1604 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!267443 () Bool)

(declare-fun e!263498 () Bool)

(assert (=> start!40684 (=> (not res!267443) (not e!263498))))

(assert (=> start!40684 (= res!267443 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13704 _keys!709))))))

(assert (=> start!40684 e!263498))

(assert (=> start!40684 tp_is_empty!12025))

(assert (=> start!40684 tp!37881))

(assert (=> start!40684 true))

(declare-fun e!263497 () Bool)

(declare-fun array_inv!9660 (array!27817) Bool)

(assert (=> start!40684 (and (array_inv!9660 _values!549) e!263497)))

(declare-fun array_inv!9661 (array!27819) Bool)

(assert (=> start!40684 (array_inv!9661 _keys!709)))

(declare-fun b!449435 () Bool)

(assert (=> b!449435 (= e!263497 (and e!263495 mapRes!19671))))

(declare-fun condMapEmpty!19671 () Bool)

(declare-fun mapDefault!19671 () ValueCell!5669)

