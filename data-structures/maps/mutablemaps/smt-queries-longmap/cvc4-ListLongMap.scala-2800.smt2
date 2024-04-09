; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40700 () Bool)

(assert start!40700)

(declare-fun b_free!10703 () Bool)

(declare-fun b_next!10703 () Bool)

(assert (=> start!40700 (= b_free!10703 (not b_next!10703))))

(declare-fun tp!37928 () Bool)

(declare-fun b_and!18729 () Bool)

(assert (=> start!40700 (= tp!37928 b_and!18729)))

(declare-fun b!449816 () Bool)

(declare-fun res!267735 () Bool)

(declare-fun e!263656 () Bool)

(assert (=> b!449816 (=> (not res!267735) (not e!263656))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449816 (= res!267735 (validKeyInArray!0 k!794))))

(declare-fun b!449817 () Bool)

(declare-fun e!263655 () Bool)

(declare-fun tp_is_empty!12041 () Bool)

(assert (=> b!449817 (= e!263655 tp_is_empty!12041)))

(declare-fun b!449818 () Bool)

(declare-fun res!267744 () Bool)

(declare-fun e!263661 () Bool)

(assert (=> b!449818 (=> (not res!267744) (not e!263661))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449818 (= res!267744 (bvsle from!863 i!563))))

(declare-fun b!449819 () Bool)

(declare-fun res!267742 () Bool)

(assert (=> b!449819 (=> (not res!267742) (not e!263656))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449819 (= res!267742 (validMask!0 mask!1025))))

(declare-fun res!267747 () Bool)

(assert (=> start!40700 (=> (not res!267747) (not e!263656))))

(declare-datatypes ((array!27849 0))(
  ( (array!27850 (arr!13367 (Array (_ BitVec 32) (_ BitVec 64))) (size!13719 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27849)

(assert (=> start!40700 (= res!267747 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13719 _keys!709))))))

(assert (=> start!40700 e!263656))

(assert (=> start!40700 tp_is_empty!12041))

(assert (=> start!40700 tp!37928))

(assert (=> start!40700 true))

(declare-datatypes ((V!17159 0))(
  ( (V!17160 (val!6065 Int)) )
))
(declare-datatypes ((ValueCell!5677 0))(
  ( (ValueCellFull!5677 (v!8316 V!17159)) (EmptyCell!5677) )
))
(declare-datatypes ((array!27851 0))(
  ( (array!27852 (arr!13368 (Array (_ BitVec 32) ValueCell!5677)) (size!13720 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27851)

(declare-fun e!263660 () Bool)

(declare-fun array_inv!9676 (array!27851) Bool)

(assert (=> start!40700 (and (array_inv!9676 _values!549) e!263660)))

(declare-fun array_inv!9677 (array!27849) Bool)

(assert (=> start!40700 (array_inv!9677 _keys!709)))

(declare-fun b!449820 () Bool)

(declare-fun e!263657 () Bool)

(assert (=> b!449820 (= e!263657 tp_is_empty!12041)))

(declare-fun b!449821 () Bool)

(declare-fun e!263658 () Bool)

(declare-datatypes ((tuple2!7904 0))(
  ( (tuple2!7905 (_1!3962 (_ BitVec 64)) (_2!3962 V!17159)) )
))
(declare-datatypes ((List!8015 0))(
  ( (Nil!8012) (Cons!8011 (h!8867 tuple2!7904) (t!13785 List!8015)) )
))
(declare-datatypes ((ListLongMap!6831 0))(
  ( (ListLongMap!6832 (toList!3431 List!8015)) )
))
(declare-fun call!29699 () ListLongMap!6831)

(declare-fun call!29698 () ListLongMap!6831)

(assert (=> b!449821 (= e!263658 (= call!29699 call!29698))))

(declare-fun v!412 () V!17159)

(declare-fun b!449822 () Bool)

(declare-fun +!1504 (ListLongMap!6831 tuple2!7904) ListLongMap!6831)

(assert (=> b!449822 (= e!263658 (= call!29698 (+!1504 call!29699 (tuple2!7905 k!794 v!412))))))

(declare-fun minValue!515 () V!17159)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17159)

(declare-fun lt!204455 () array!27851)

(declare-fun c!55886 () Bool)

(declare-fun lt!204454 () array!27849)

(declare-fun bm!29695 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1611 (array!27849 array!27851 (_ BitVec 32) (_ BitVec 32) V!17159 V!17159 (_ BitVec 32) Int) ListLongMap!6831)

(assert (=> bm!29695 (= call!29699 (getCurrentListMapNoExtraKeys!1611 (ite c!55886 _keys!709 lt!204454) (ite c!55886 _values!549 lt!204455) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!19695 () Bool)

(declare-fun mapRes!19695 () Bool)

(declare-fun tp!37929 () Bool)

(assert (=> mapNonEmpty!19695 (= mapRes!19695 (and tp!37929 e!263655))))

(declare-fun mapRest!19695 () (Array (_ BitVec 32) ValueCell!5677))

(declare-fun mapValue!19695 () ValueCell!5677)

(declare-fun mapKey!19695 () (_ BitVec 32))

(assert (=> mapNonEmpty!19695 (= (arr!13368 _values!549) (store mapRest!19695 mapKey!19695 mapValue!19695))))

(declare-fun b!449823 () Bool)

(declare-fun e!263654 () Bool)

(assert (=> b!449823 (= e!263661 e!263654)))

(declare-fun res!267743 () Bool)

(assert (=> b!449823 (=> (not res!267743) (not e!263654))))

(assert (=> b!449823 (= res!267743 (= from!863 i!563))))

(declare-fun lt!204453 () ListLongMap!6831)

(assert (=> b!449823 (= lt!204453 (getCurrentListMapNoExtraKeys!1611 lt!204454 lt!204455 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!449823 (= lt!204455 (array!27852 (store (arr!13368 _values!549) i!563 (ValueCellFull!5677 v!412)) (size!13720 _values!549)))))

(declare-fun lt!204456 () ListLongMap!6831)

(assert (=> b!449823 (= lt!204456 (getCurrentListMapNoExtraKeys!1611 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449824 () Bool)

(assert (=> b!449824 (= e!263660 (and e!263657 mapRes!19695))))

(declare-fun condMapEmpty!19695 () Bool)

(declare-fun mapDefault!19695 () ValueCell!5677)

