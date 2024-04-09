; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38722 () Bool)

(assert start!38722)

(declare-fun b_free!9251 () Bool)

(declare-fun b_next!9251 () Bool)

(assert (=> start!38722 (= b_free!9251 (not b_next!9251))))

(declare-fun tp!32876 () Bool)

(declare-fun b_and!16655 () Bool)

(assert (=> start!38722 (= tp!32876 b_and!16655)))

(declare-datatypes ((V!14615 0))(
  ( (V!14616 (val!5111 Int)) )
))
(declare-datatypes ((tuple2!6732 0))(
  ( (tuple2!6733 (_1!3376 (_ BitVec 64)) (_2!3376 V!14615)) )
))
(declare-datatypes ((List!6675 0))(
  ( (Nil!6672) (Cons!6671 (h!7527 tuple2!6732) (t!11857 List!6675)) )
))
(declare-datatypes ((ListLongMap!5659 0))(
  ( (ListLongMap!5660 (toList!2845 List!6675)) )
))
(declare-fun call!28414 () ListLongMap!5659)

(declare-fun b!402664 () Bool)

(declare-fun e!242536 () Bool)

(declare-fun call!28415 () ListLongMap!5659)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14615)

(declare-fun +!1122 (ListLongMap!5659 tuple2!6732) ListLongMap!5659)

(assert (=> b!402664 (= e!242536 (= call!28415 (+!1122 call!28414 (tuple2!6733 k!794 v!412))))))

(declare-fun b!402665 () Bool)

(declare-fun e!242530 () Bool)

(assert (=> b!402665 (= e!242530 (not true))))

(assert (=> b!402665 e!242536))

(declare-fun c!54758 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402665 (= c!54758 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14615)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4723 0))(
  ( (ValueCellFull!4723 (v!7354 V!14615)) (EmptyCell!4723) )
))
(declare-datatypes ((array!24137 0))(
  ( (array!24138 (arr!11515 (Array (_ BitVec 32) ValueCell!4723)) (size!11867 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24137)

(declare-fun zeroValue!515 () V!14615)

(declare-datatypes ((Unit!12139 0))(
  ( (Unit!12140) )
))
(declare-fun lt!187941 () Unit!12139)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24139 0))(
  ( (array!24140 (arr!11516 (Array (_ BitVec 32) (_ BitVec 64))) (size!11868 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24139)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!332 (array!24139 array!24137 (_ BitVec 32) (_ BitVec 32) V!14615 V!14615 (_ BitVec 32) (_ BitVec 64) V!14615 (_ BitVec 32) Int) Unit!12139)

(assert (=> b!402665 (= lt!187941 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!332 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!232053 () Bool)

(declare-fun e!242534 () Bool)

(assert (=> start!38722 (=> (not res!232053) (not e!242534))))

(assert (=> start!38722 (= res!232053 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11868 _keys!709))))))

(assert (=> start!38722 e!242534))

(declare-fun tp_is_empty!10133 () Bool)

(assert (=> start!38722 tp_is_empty!10133))

(assert (=> start!38722 tp!32876))

(assert (=> start!38722 true))

(declare-fun e!242535 () Bool)

(declare-fun array_inv!8416 (array!24137) Bool)

(assert (=> start!38722 (and (array_inv!8416 _values!549) e!242535)))

(declare-fun array_inv!8417 (array!24139) Bool)

(assert (=> start!38722 (array_inv!8417 _keys!709)))

(declare-fun b!402666 () Bool)

(declare-fun res!232056 () Bool)

(assert (=> b!402666 (=> (not res!232056) (not e!242534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402666 (= res!232056 (validKeyInArray!0 k!794))))

(declare-fun b!402667 () Bool)

(declare-fun res!232048 () Bool)

(assert (=> b!402667 (=> (not res!232048) (not e!242534))))

(assert (=> b!402667 (= res!232048 (and (= (size!11867 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11868 _keys!709) (size!11867 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402668 () Bool)

(assert (=> b!402668 (= e!242534 e!242530)))

(declare-fun res!232055 () Bool)

(assert (=> b!402668 (=> (not res!232055) (not e!242530))))

(declare-fun lt!187940 () array!24139)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24139 (_ BitVec 32)) Bool)

(assert (=> b!402668 (= res!232055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187940 mask!1025))))

(assert (=> b!402668 (= lt!187940 (array!24140 (store (arr!11516 _keys!709) i!563 k!794) (size!11868 _keys!709)))))

(declare-fun b!402669 () Bool)

(declare-fun res!232045 () Bool)

(assert (=> b!402669 (=> (not res!232045) (not e!242534))))

(assert (=> b!402669 (= res!232045 (or (= (select (arr!11516 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11516 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402670 () Bool)

(declare-fun e!242531 () Bool)

(assert (=> b!402670 (= e!242531 tp_is_empty!10133)))

(declare-fun bm!28411 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1056 (array!24139 array!24137 (_ BitVec 32) (_ BitVec 32) V!14615 V!14615 (_ BitVec 32) Int) ListLongMap!5659)

(assert (=> bm!28411 (= call!28415 (getCurrentListMapNoExtraKeys!1056 (ite c!54758 lt!187940 _keys!709) (ite c!54758 (array!24138 (store (arr!11515 _values!549) i!563 (ValueCellFull!4723 v!412)) (size!11867 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402671 () Bool)

(declare-fun res!232047 () Bool)

(assert (=> b!402671 (=> (not res!232047) (not e!242530))))

(assert (=> b!402671 (= res!232047 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11868 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!402672 () Bool)

(declare-fun res!232049 () Bool)

(assert (=> b!402672 (=> (not res!232049) (not e!242534))))

(assert (=> b!402672 (= res!232049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402673 () Bool)

(declare-fun res!232050 () Bool)

(assert (=> b!402673 (=> (not res!232050) (not e!242534))))

(declare-fun arrayContainsKey!0 (array!24139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402673 (= res!232050 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!402674 () Bool)

(declare-fun res!232046 () Bool)

(assert (=> b!402674 (=> (not res!232046) (not e!242530))))

(declare-datatypes ((List!6676 0))(
  ( (Nil!6673) (Cons!6672 (h!7528 (_ BitVec 64)) (t!11858 List!6676)) )
))
(declare-fun arrayNoDuplicates!0 (array!24139 (_ BitVec 32) List!6676) Bool)

(assert (=> b!402674 (= res!232046 (arrayNoDuplicates!0 lt!187940 #b00000000000000000000000000000000 Nil!6673))))

(declare-fun b!402675 () Bool)

(declare-fun res!232052 () Bool)

(assert (=> b!402675 (=> (not res!232052) (not e!242534))))

(assert (=> b!402675 (= res!232052 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11868 _keys!709))))))

(declare-fun b!402676 () Bool)

(declare-fun res!232054 () Bool)

(assert (=> b!402676 (=> (not res!232054) (not e!242534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402676 (= res!232054 (validMask!0 mask!1025))))

(declare-fun b!402677 () Bool)

(declare-fun e!242532 () Bool)

(assert (=> b!402677 (= e!242532 tp_is_empty!10133)))

(declare-fun mapNonEmpty!16821 () Bool)

(declare-fun mapRes!16821 () Bool)

(declare-fun tp!32877 () Bool)

(assert (=> mapNonEmpty!16821 (= mapRes!16821 (and tp!32877 e!242532))))

(declare-fun mapRest!16821 () (Array (_ BitVec 32) ValueCell!4723))

(declare-fun mapValue!16821 () ValueCell!4723)

(declare-fun mapKey!16821 () (_ BitVec 32))

(assert (=> mapNonEmpty!16821 (= (arr!11515 _values!549) (store mapRest!16821 mapKey!16821 mapValue!16821))))

(declare-fun b!402678 () Bool)

(assert (=> b!402678 (= e!242535 (and e!242531 mapRes!16821))))

(declare-fun condMapEmpty!16821 () Bool)

(declare-fun mapDefault!16821 () ValueCell!4723)

