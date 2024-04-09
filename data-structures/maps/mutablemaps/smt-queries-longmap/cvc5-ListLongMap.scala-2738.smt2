; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40254 () Bool)

(assert start!40254)

(declare-fun b_free!10513 () Bool)

(declare-fun b_next!10513 () Bool)

(assert (=> start!40254 (= b_free!10513 (not b_next!10513))))

(declare-fun tp!37067 () Bool)

(declare-fun b_and!18499 () Bool)

(assert (=> start!40254 (= tp!37067 b_and!18499)))

(declare-fun b!441473 () Bool)

(declare-fun e!259927 () Bool)

(declare-fun tp_is_empty!11665 () Bool)

(assert (=> b!441473 (= e!259927 tp_is_empty!11665)))

(declare-fun b!441474 () Bool)

(declare-fun e!259922 () Bool)

(declare-fun e!259921 () Bool)

(assert (=> b!441474 (= e!259922 e!259921)))

(declare-fun res!261462 () Bool)

(assert (=> b!441474 (=> (not res!261462) (not e!259921))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441474 (= res!261462 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16659 0))(
  ( (V!16660 (val!5877 Int)) )
))
(declare-fun minValue!515 () V!16659)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!27117 0))(
  ( (array!27118 (arr!13005 (Array (_ BitVec 32) (_ BitVec 64))) (size!13357 (_ BitVec 32))) )
))
(declare-fun lt!202928 () array!27117)

(declare-datatypes ((tuple2!7744 0))(
  ( (tuple2!7745 (_1!3882 (_ BitVec 64)) (_2!3882 V!16659)) )
))
(declare-datatypes ((List!7785 0))(
  ( (Nil!7782) (Cons!7781 (h!8637 tuple2!7744) (t!13549 List!7785)) )
))
(declare-datatypes ((ListLongMap!6671 0))(
  ( (ListLongMap!6672 (toList!3351 List!7785)) )
))
(declare-fun lt!202932 () ListLongMap!6671)

(declare-fun zeroValue!515 () V!16659)

(declare-datatypes ((ValueCell!5489 0))(
  ( (ValueCellFull!5489 (v!8120 V!16659)) (EmptyCell!5489) )
))
(declare-datatypes ((array!27119 0))(
  ( (array!27120 (arr!13006 (Array (_ BitVec 32) ValueCell!5489)) (size!13358 (_ BitVec 32))) )
))
(declare-fun lt!202930 () array!27119)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1533 (array!27117 array!27119 (_ BitVec 32) (_ BitVec 32) V!16659 V!16659 (_ BitVec 32) Int) ListLongMap!6671)

(assert (=> b!441474 (= lt!202932 (getCurrentListMapNoExtraKeys!1533 lt!202928 lt!202930 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!27119)

(declare-fun v!412 () V!16659)

(assert (=> b!441474 (= lt!202930 (array!27120 (store (arr!13006 _values!549) i!563 (ValueCellFull!5489 v!412)) (size!13358 _values!549)))))

(declare-fun lt!202931 () ListLongMap!6671)

(declare-fun _keys!709 () array!27117)

(assert (=> b!441474 (= lt!202931 (getCurrentListMapNoExtraKeys!1533 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19119 () Bool)

(declare-fun mapRes!19119 () Bool)

(declare-fun tp!37068 () Bool)

(declare-fun e!259926 () Bool)

(assert (=> mapNonEmpty!19119 (= mapRes!19119 (and tp!37068 e!259926))))

(declare-fun mapRest!19119 () (Array (_ BitVec 32) ValueCell!5489))

(declare-fun mapKey!19119 () (_ BitVec 32))

(declare-fun mapValue!19119 () ValueCell!5489)

(assert (=> mapNonEmpty!19119 (= (arr!13006 _values!549) (store mapRest!19119 mapKey!19119 mapValue!19119))))

(declare-fun b!441475 () Bool)

(declare-fun res!261456 () Bool)

(declare-fun e!259924 () Bool)

(assert (=> b!441475 (=> (not res!261456) (not e!259924))))

(assert (=> b!441475 (= res!261456 (and (= (size!13358 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13357 _keys!709) (size!13358 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19119 () Bool)

(assert (=> mapIsEmpty!19119 mapRes!19119))

(declare-fun b!441476 () Bool)

(assert (=> b!441476 (= e!259921 (not true))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun +!1484 (ListLongMap!6671 tuple2!7744) ListLongMap!6671)

(assert (=> b!441476 (= (getCurrentListMapNoExtraKeys!1533 lt!202928 lt!202930 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1484 (getCurrentListMapNoExtraKeys!1533 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7745 k!794 v!412)))))

(declare-datatypes ((Unit!13083 0))(
  ( (Unit!13084) )
))
(declare-fun lt!202929 () Unit!13083)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!662 (array!27117 array!27119 (_ BitVec 32) (_ BitVec 32) V!16659 V!16659 (_ BitVec 32) (_ BitVec 64) V!16659 (_ BitVec 32) Int) Unit!13083)

(assert (=> b!441476 (= lt!202929 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!662 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441477 () Bool)

(declare-fun res!261459 () Bool)

(assert (=> b!441477 (=> (not res!261459) (not e!259922))))

(assert (=> b!441477 (= res!261459 (bvsle from!863 i!563))))

(declare-fun b!441478 () Bool)

(declare-fun res!261450 () Bool)

(assert (=> b!441478 (=> (not res!261450) (not e!259924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441478 (= res!261450 (validKeyInArray!0 k!794))))

(declare-fun b!441479 () Bool)

(assert (=> b!441479 (= e!259926 tp_is_empty!11665)))

(declare-fun b!441480 () Bool)

(declare-fun e!259925 () Bool)

(assert (=> b!441480 (= e!259925 (and e!259927 mapRes!19119))))

(declare-fun condMapEmpty!19119 () Bool)

(declare-fun mapDefault!19119 () ValueCell!5489)

