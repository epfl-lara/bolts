; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40690 () Bool)

(assert start!40690)

(declare-fun b_free!10693 () Bool)

(declare-fun b_next!10693 () Bool)

(assert (=> start!40690 (= b_free!10693 (not b_next!10693))))

(declare-fun tp!37899 () Bool)

(declare-fun b_and!18719 () Bool)

(assert (=> start!40690 (= tp!37899 b_and!18719)))

(declare-fun mapNonEmpty!19680 () Bool)

(declare-fun mapRes!19680 () Bool)

(declare-fun tp!37898 () Bool)

(declare-fun e!263550 () Bool)

(assert (=> mapNonEmpty!19680 (= mapRes!19680 (and tp!37898 e!263550))))

(declare-fun mapKey!19680 () (_ BitVec 32))

(declare-datatypes ((V!17147 0))(
  ( (V!17148 (val!6060 Int)) )
))
(declare-datatypes ((ValueCell!5672 0))(
  ( (ValueCellFull!5672 (v!8311 V!17147)) (EmptyCell!5672) )
))
(declare-fun mapRest!19680 () (Array (_ BitVec 32) ValueCell!5672))

(declare-datatypes ((array!27829 0))(
  ( (array!27830 (arr!13357 (Array (_ BitVec 32) ValueCell!5672)) (size!13709 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27829)

(declare-fun mapValue!19680 () ValueCell!5672)

(assert (=> mapNonEmpty!19680 (= (arr!13357 _values!549) (store mapRest!19680 mapKey!19680 mapValue!19680))))

(declare-fun b!449567 () Bool)

(declare-fun e!263551 () Bool)

(declare-fun e!263552 () Bool)

(assert (=> b!449567 (= e!263551 e!263552)))

(declare-fun res!267555 () Bool)

(assert (=> b!449567 (=> (not res!267555) (not e!263552))))

(declare-datatypes ((array!27831 0))(
  ( (array!27832 (arr!13358 (Array (_ BitVec 32) (_ BitVec 64))) (size!13710 (_ BitVec 32))) )
))
(declare-fun lt!204394 () array!27831)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27831 (_ BitVec 32)) Bool)

(assert (=> b!449567 (= res!267555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204394 mask!1025))))

(declare-fun _keys!709 () array!27831)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449567 (= lt!204394 (array!27832 (store (arr!13358 _keys!709) i!563 k!794) (size!13710 _keys!709)))))

(declare-fun b!449568 () Bool)

(declare-fun res!267550 () Bool)

(assert (=> b!449568 (=> (not res!267550) (not e!263551))))

(declare-fun arrayContainsKey!0 (array!27831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449568 (= res!267550 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!449569 () Bool)

(declare-fun res!267553 () Bool)

(assert (=> b!449569 (=> (not res!267553) (not e!263551))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!449569 (= res!267553 (and (= (size!13709 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13710 _keys!709) (size!13709 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!267554 () Bool)

(assert (=> start!40690 (=> (not res!267554) (not e!263551))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40690 (= res!267554 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13710 _keys!709))))))

(assert (=> start!40690 e!263551))

(declare-fun tp_is_empty!12031 () Bool)

(assert (=> start!40690 tp_is_empty!12031))

(assert (=> start!40690 tp!37899))

(assert (=> start!40690 true))

(declare-fun e!263548 () Bool)

(declare-fun array_inv!9666 (array!27829) Bool)

(assert (=> start!40690 (and (array_inv!9666 _values!549) e!263548)))

(declare-fun array_inv!9667 (array!27831) Bool)

(assert (=> start!40690 (array_inv!9667 _keys!709)))

(declare-fun b!449570 () Bool)

(declare-fun e!263549 () Bool)

(assert (=> b!449570 (= e!263549 tp_is_empty!12031)))

(declare-fun b!449571 () Bool)

(assert (=> b!449571 (= e!263550 tp_is_empty!12031)))

(declare-fun b!449572 () Bool)

(declare-fun res!267552 () Bool)

(assert (=> b!449572 (=> (not res!267552) (not e!263551))))

(assert (=> b!449572 (= res!267552 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13710 _keys!709))))))

(declare-fun b!449573 () Bool)

(assert (=> b!449573 (= e!263552 (and (= from!863 i!563) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13710 _keys!709)) (bvsge (bvsub (size!13710 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (bvsub (size!13710 _keys!709) from!863))))))

(declare-fun minValue!515 () V!17147)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17147)

(declare-fun v!412 () V!17147)

(declare-datatypes ((tuple2!7896 0))(
  ( (tuple2!7897 (_1!3958 (_ BitVec 64)) (_2!3958 V!17147)) )
))
(declare-datatypes ((List!8006 0))(
  ( (Nil!8003) (Cons!8002 (h!8858 tuple2!7896) (t!13776 List!8006)) )
))
(declare-datatypes ((ListLongMap!6823 0))(
  ( (ListLongMap!6824 (toList!3427 List!8006)) )
))
(declare-fun lt!204393 () ListLongMap!6823)

(declare-fun getCurrentListMapNoExtraKeys!1607 (array!27831 array!27829 (_ BitVec 32) (_ BitVec 32) V!17147 V!17147 (_ BitVec 32) Int) ListLongMap!6823)

(assert (=> b!449573 (= lt!204393 (getCurrentListMapNoExtraKeys!1607 lt!204394 (array!27830 (store (arr!13357 _values!549) i!563 (ValueCellFull!5672 v!412)) (size!13709 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204392 () ListLongMap!6823)

(assert (=> b!449573 (= lt!204392 (getCurrentListMapNoExtraKeys!1607 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449574 () Bool)

(declare-fun res!267558 () Bool)

(assert (=> b!449574 (=> (not res!267558) (not e!263551))))

(declare-datatypes ((List!8007 0))(
  ( (Nil!8004) (Cons!8003 (h!8859 (_ BitVec 64)) (t!13777 List!8007)) )
))
(declare-fun arrayNoDuplicates!0 (array!27831 (_ BitVec 32) List!8007) Bool)

(assert (=> b!449574 (= res!267558 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8004))))

(declare-fun b!449575 () Bool)

(declare-fun res!267551 () Bool)

(assert (=> b!449575 (=> (not res!267551) (not e!263551))))

(assert (=> b!449575 (= res!267551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449576 () Bool)

(declare-fun res!267557 () Bool)

(assert (=> b!449576 (=> (not res!267557) (not e!263551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449576 (= res!267557 (validKeyInArray!0 k!794))))

(declare-fun b!449577 () Bool)

(declare-fun res!267548 () Bool)

(assert (=> b!449577 (=> (not res!267548) (not e!263552))))

(assert (=> b!449577 (= res!267548 (bvsle from!863 i!563))))

(declare-fun b!449578 () Bool)

(declare-fun res!267547 () Bool)

(assert (=> b!449578 (=> (not res!267547) (not e!263552))))

(assert (=> b!449578 (= res!267547 (arrayNoDuplicates!0 lt!204394 #b00000000000000000000000000000000 Nil!8004))))

(declare-fun b!449579 () Bool)

(declare-fun res!267549 () Bool)

(assert (=> b!449579 (=> (not res!267549) (not e!263551))))

(assert (=> b!449579 (= res!267549 (or (= (select (arr!13358 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13358 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!449580 () Bool)

(assert (=> b!449580 (= e!263548 (and e!263549 mapRes!19680))))

(declare-fun condMapEmpty!19680 () Bool)

(declare-fun mapDefault!19680 () ValueCell!5672)

