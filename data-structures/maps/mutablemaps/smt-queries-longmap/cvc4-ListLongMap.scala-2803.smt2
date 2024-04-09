; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40718 () Bool)

(assert start!40718)

(declare-fun b_free!10721 () Bool)

(declare-fun b_next!10721 () Bool)

(assert (=> start!40718 (= b_free!10721 (not b_next!10721))))

(declare-fun tp!37982 () Bool)

(declare-fun b_and!18747 () Bool)

(assert (=> start!40718 (= tp!37982 b_and!18747)))

(declare-fun b!450311 () Bool)

(declare-fun res!268095 () Bool)

(declare-fun e!263882 () Bool)

(assert (=> b!450311 (=> (not res!268095) (not e!263882))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450311 (= res!268095 (validMask!0 mask!1025))))

(declare-fun b!450312 () Bool)

(declare-fun e!263886 () Bool)

(declare-fun tp_is_empty!12059 () Bool)

(assert (=> b!450312 (= e!263886 tp_is_empty!12059)))

(declare-datatypes ((V!17183 0))(
  ( (V!17184 (val!6074 Int)) )
))
(declare-datatypes ((tuple2!7922 0))(
  ( (tuple2!7923 (_1!3971 (_ BitVec 64)) (_2!3971 V!17183)) )
))
(declare-datatypes ((List!8032 0))(
  ( (Nil!8029) (Cons!8028 (h!8884 tuple2!7922) (t!13802 List!8032)) )
))
(declare-datatypes ((ListLongMap!6849 0))(
  ( (ListLongMap!6850 (toList!3440 List!8032)) )
))
(declare-fun call!29753 () ListLongMap!6849)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!55913 () Bool)

(declare-fun bm!29749 () Bool)

(declare-datatypes ((ValueCell!5686 0))(
  ( (ValueCellFull!5686 (v!8325 V!17183)) (EmptyCell!5686) )
))
(declare-datatypes ((array!27885 0))(
  ( (array!27886 (arr!13385 (Array (_ BitVec 32) ValueCell!5686)) (size!13737 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27885)

(declare-fun zeroValue!515 () V!17183)

(declare-datatypes ((array!27887 0))(
  ( (array!27888 (arr!13386 (Array (_ BitVec 32) (_ BitVec 64))) (size!13738 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27887)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!204592 () array!27885)

(declare-fun minValue!515 () V!17183)

(declare-fun lt!204591 () array!27887)

(declare-fun getCurrentListMapNoExtraKeys!1618 (array!27887 array!27885 (_ BitVec 32) (_ BitVec 32) V!17183 V!17183 (_ BitVec 32) Int) ListLongMap!6849)

(assert (=> bm!29749 (= call!29753 (getCurrentListMapNoExtraKeys!1618 (ite c!55913 _keys!709 lt!204591) (ite c!55913 _values!549 lt!204592) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!19722 () Bool)

(declare-fun mapRes!19722 () Bool)

(declare-fun tp!37983 () Bool)

(assert (=> mapNonEmpty!19722 (= mapRes!19722 (and tp!37983 e!263886))))

(declare-fun mapValue!19722 () ValueCell!5686)

(declare-fun mapRest!19722 () (Array (_ BitVec 32) ValueCell!5686))

(declare-fun mapKey!19722 () (_ BitVec 32))

(assert (=> mapNonEmpty!19722 (= (arr!13385 _values!549) (store mapRest!19722 mapKey!19722 mapValue!19722))))

(declare-fun b!450313 () Bool)

(declare-fun res!268100 () Bool)

(assert (=> b!450313 (=> (not res!268100) (not e!263882))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450313 (= res!268100 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13738 _keys!709))))))

(declare-fun b!450314 () Bool)

(declare-fun e!263883 () Bool)

(assert (=> b!450314 (= e!263883 (not true))))

(declare-fun e!263881 () Bool)

(assert (=> b!450314 e!263881))

(assert (=> b!450314 (= c!55913 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13127 0))(
  ( (Unit!13128) )
))
(declare-fun lt!204589 () Unit!13127)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!17183)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!682 (array!27887 array!27885 (_ BitVec 32) (_ BitVec 32) V!17183 V!17183 (_ BitVec 32) (_ BitVec 64) V!17183 (_ BitVec 32) Int) Unit!13127)

(assert (=> b!450314 (= lt!204589 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!682 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450315 () Bool)

(declare-fun e!263885 () Bool)

(declare-fun e!263879 () Bool)

(assert (=> b!450315 (= e!263885 (and e!263879 mapRes!19722))))

(declare-fun condMapEmpty!19722 () Bool)

(declare-fun mapDefault!19722 () ValueCell!5686)

