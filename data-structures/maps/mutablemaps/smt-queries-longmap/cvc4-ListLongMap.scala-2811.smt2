; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40788 () Bool)

(assert start!40788)

(declare-fun b_free!10769 () Bool)

(declare-fun b_next!10769 () Bool)

(assert (=> start!40788 (= b_free!10769 (not b_next!10769))))

(declare-fun tp!38130 () Bool)

(declare-fun b_and!18843 () Bool)

(assert (=> start!40788 (= tp!38130 b_and!18843)))

(declare-datatypes ((V!17247 0))(
  ( (V!17248 (val!6098 Int)) )
))
(declare-fun minValue!515 () V!17247)

(declare-fun defaultEntry!557 () Int)

(declare-fun bm!29914 () Bool)

(declare-datatypes ((ValueCell!5710 0))(
  ( (ValueCellFull!5710 (v!8353 V!17247)) (EmptyCell!5710) )
))
(declare-datatypes ((array!27983 0))(
  ( (array!27984 (arr!13433 (Array (_ BitVec 32) ValueCell!5710)) (size!13785 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27983)

(declare-fun zeroValue!515 () V!17247)

(declare-datatypes ((array!27985 0))(
  ( (array!27986 (arr!13434 (Array (_ BitVec 32) (_ BitVec 64))) (size!13786 (_ BitVec 32))) )
))
(declare-fun lt!205046 () array!27985)

(declare-datatypes ((tuple2!7968 0))(
  ( (tuple2!7969 (_1!3994 (_ BitVec 64)) (_2!3994 V!17247)) )
))
(declare-datatypes ((List!8073 0))(
  ( (Nil!8070) (Cons!8069 (h!8925 tuple2!7968) (t!13873 List!8073)) )
))
(declare-datatypes ((ListLongMap!6895 0))(
  ( (ListLongMap!6896 (toList!3463 List!8073)) )
))
(declare-fun call!29917 () ListLongMap!6895)

(declare-fun lt!205048 () array!27983)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!27985)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!56027 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1640 (array!27985 array!27983 (_ BitVec 32) (_ BitVec 32) V!17247 V!17247 (_ BitVec 32) Int) ListLongMap!6895)

(assert (=> bm!29914 (= call!29917 (getCurrentListMapNoExtraKeys!1640 (ite c!56027 _keys!709 lt!205046) (ite c!56027 _values!549 lt!205048) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451863 () Bool)

(declare-fun res!269180 () Bool)

(declare-fun e!264634 () Bool)

(assert (=> b!451863 (=> (not res!269180) (not e!264634))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451863 (= res!269180 (or (= (select (arr!13434 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13434 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19797 () Bool)

(declare-fun mapRes!19797 () Bool)

(declare-fun tp!38129 () Bool)

(declare-fun e!264631 () Bool)

(assert (=> mapNonEmpty!19797 (= mapRes!19797 (and tp!38129 e!264631))))

(declare-fun mapKey!19797 () (_ BitVec 32))

(declare-fun mapRest!19797 () (Array (_ BitVec 32) ValueCell!5710))

(declare-fun mapValue!19797 () ValueCell!5710)

(assert (=> mapNonEmpty!19797 (= (arr!13433 _values!549) (store mapRest!19797 mapKey!19797 mapValue!19797))))

(declare-fun b!451865 () Bool)

(declare-fun e!264632 () Bool)

(declare-fun tp_is_empty!12107 () Bool)

(assert (=> b!451865 (= e!264632 tp_is_empty!12107)))

(declare-fun call!29918 () ListLongMap!6895)

(declare-fun bm!29915 () Bool)

(assert (=> bm!29915 (= call!29918 (getCurrentListMapNoExtraKeys!1640 (ite c!56027 lt!205046 _keys!709) (ite c!56027 lt!205048 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451866 () Bool)

(declare-fun e!264629 () Bool)

(assert (=> b!451866 (= e!264629 (and e!264632 mapRes!19797))))

(declare-fun condMapEmpty!19797 () Bool)

(declare-fun mapDefault!19797 () ValueCell!5710)

