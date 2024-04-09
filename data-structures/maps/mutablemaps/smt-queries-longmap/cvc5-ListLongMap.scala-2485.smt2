; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38736 () Bool)

(assert start!38736)

(declare-fun b_free!9265 () Bool)

(declare-fun b_next!9265 () Bool)

(assert (=> start!38736 (= b_free!9265 (not b_next!9265))))

(declare-fun tp!32918 () Bool)

(declare-fun b_and!16669 () Bool)

(assert (=> start!38736 (= tp!32918 b_and!16669)))

(declare-fun b!403021 () Bool)

(declare-fun res!232303 () Bool)

(declare-fun e!242681 () Bool)

(assert (=> b!403021 (=> (not res!232303) (not e!242681))))

(declare-datatypes ((array!24165 0))(
  ( (array!24166 (arr!11529 (Array (_ BitVec 32) (_ BitVec 64))) (size!11881 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24165)

(declare-datatypes ((List!6688 0))(
  ( (Nil!6685) (Cons!6684 (h!7540 (_ BitVec 64)) (t!11870 List!6688)) )
))
(declare-fun arrayNoDuplicates!0 (array!24165 (_ BitVec 32) List!6688) Bool)

(assert (=> b!403021 (= res!232303 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6685))))

(declare-fun b!403022 () Bool)

(declare-fun e!242683 () Bool)

(assert (=> b!403022 (= e!242683 (not true))))

(declare-fun e!242680 () Bool)

(assert (=> b!403022 e!242680))

(declare-fun c!54779 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!403022 (= c!54779 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!12153 0))(
  ( (Unit!12154) )
))
(declare-fun lt!187983 () Unit!12153)

(declare-datatypes ((V!14635 0))(
  ( (V!14636 (val!5118 Int)) )
))
(declare-datatypes ((ValueCell!4730 0))(
  ( (ValueCellFull!4730 (v!7361 V!14635)) (EmptyCell!4730) )
))
(declare-datatypes ((array!24167 0))(
  ( (array!24168 (arr!11530 (Array (_ BitVec 32) ValueCell!4730)) (size!11882 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24167)

(declare-fun zeroValue!515 () V!14635)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14635)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!14635)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!339 (array!24165 array!24167 (_ BitVec 32) (_ BitVec 32) V!14635 V!14635 (_ BitVec 32) (_ BitVec 64) V!14635 (_ BitVec 32) Int) Unit!12153)

(assert (=> b!403022 (= lt!187983 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!339 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!232306 () Bool)

(assert (=> start!38736 (=> (not res!232306) (not e!242681))))

(assert (=> start!38736 (= res!232306 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11881 _keys!709))))))

(assert (=> start!38736 e!242681))

(declare-fun tp_is_empty!10147 () Bool)

(assert (=> start!38736 tp_is_empty!10147))

(assert (=> start!38736 tp!32918))

(assert (=> start!38736 true))

(declare-fun e!242677 () Bool)

(declare-fun array_inv!8426 (array!24167) Bool)

(assert (=> start!38736 (and (array_inv!8426 _values!549) e!242677)))

(declare-fun array_inv!8427 (array!24165) Bool)

(assert (=> start!38736 (array_inv!8427 _keys!709)))

(declare-fun mapNonEmpty!16842 () Bool)

(declare-fun mapRes!16842 () Bool)

(declare-fun tp!32919 () Bool)

(declare-fun e!242679 () Bool)

(assert (=> mapNonEmpty!16842 (= mapRes!16842 (and tp!32919 e!242679))))

(declare-fun mapRest!16842 () (Array (_ BitVec 32) ValueCell!4730))

(declare-fun mapKey!16842 () (_ BitVec 32))

(declare-fun mapValue!16842 () ValueCell!4730)

(assert (=> mapNonEmpty!16842 (= (arr!11530 _values!549) (store mapRest!16842 mapKey!16842 mapValue!16842))))

(declare-fun b!403023 () Bool)

(declare-fun res!232304 () Bool)

(assert (=> b!403023 (=> (not res!232304) (not e!242681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403023 (= res!232304 (validMask!0 mask!1025))))

(declare-fun b!403024 () Bool)

(declare-datatypes ((tuple2!6746 0))(
  ( (tuple2!6747 (_1!3383 (_ BitVec 64)) (_2!3383 V!14635)) )
))
(declare-datatypes ((List!6689 0))(
  ( (Nil!6686) (Cons!6685 (h!7541 tuple2!6746) (t!11871 List!6689)) )
))
(declare-datatypes ((ListLongMap!5673 0))(
  ( (ListLongMap!5674 (toList!2852 List!6689)) )
))
(declare-fun call!28456 () ListLongMap!5673)

(declare-fun call!28457 () ListLongMap!5673)

(assert (=> b!403024 (= e!242680 (= call!28456 call!28457))))

(declare-fun b!403025 () Bool)

(declare-fun res!232298 () Bool)

(assert (=> b!403025 (=> (not res!232298) (not e!242681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403025 (= res!232298 (validKeyInArray!0 k!794))))

(declare-fun lt!187982 () array!24165)

(declare-fun bm!28453 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1063 (array!24165 array!24167 (_ BitVec 32) (_ BitVec 32) V!14635 V!14635 (_ BitVec 32) Int) ListLongMap!5673)

(assert (=> bm!28453 (= call!28456 (getCurrentListMapNoExtraKeys!1063 (ite c!54779 _keys!709 lt!187982) (ite c!54779 _values!549 (array!24168 (store (arr!11530 _values!549) i!563 (ValueCellFull!4730 v!412)) (size!11882 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403026 () Bool)

(assert (=> b!403026 (= e!242679 tp_is_empty!10147)))

(declare-fun mapIsEmpty!16842 () Bool)

(assert (=> mapIsEmpty!16842 mapRes!16842))

(declare-fun b!403027 () Bool)

(declare-fun res!232297 () Bool)

(assert (=> b!403027 (=> (not res!232297) (not e!242683))))

(assert (=> b!403027 (= res!232297 (arrayNoDuplicates!0 lt!187982 #b00000000000000000000000000000000 Nil!6685))))

(declare-fun b!403028 () Bool)

(assert (=> b!403028 (= e!242681 e!242683)))

(declare-fun res!232308 () Bool)

(assert (=> b!403028 (=> (not res!232308) (not e!242683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24165 (_ BitVec 32)) Bool)

(assert (=> b!403028 (= res!232308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187982 mask!1025))))

(assert (=> b!403028 (= lt!187982 (array!24166 (store (arr!11529 _keys!709) i!563 k!794) (size!11881 _keys!709)))))

(declare-fun b!403029 () Bool)

(declare-fun res!232302 () Bool)

(assert (=> b!403029 (=> (not res!232302) (not e!242681))))

(assert (=> b!403029 (= res!232302 (and (= (size!11882 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11881 _keys!709) (size!11882 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403030 () Bool)

(declare-fun res!232300 () Bool)

(assert (=> b!403030 (=> (not res!232300) (not e!242681))))

(declare-fun arrayContainsKey!0 (array!24165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403030 (= res!232300 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!403031 () Bool)

(declare-fun res!232307 () Bool)

(assert (=> b!403031 (=> (not res!232307) (not e!242683))))

(assert (=> b!403031 (= res!232307 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11881 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!403032 () Bool)

(declare-fun e!242678 () Bool)

(assert (=> b!403032 (= e!242678 tp_is_empty!10147)))

(declare-fun bm!28454 () Bool)

(assert (=> bm!28454 (= call!28457 (getCurrentListMapNoExtraKeys!1063 (ite c!54779 lt!187982 _keys!709) (ite c!54779 (array!24168 (store (arr!11530 _values!549) i!563 (ValueCellFull!4730 v!412)) (size!11882 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403033 () Bool)

(declare-fun res!232301 () Bool)

(assert (=> b!403033 (=> (not res!232301) (not e!242681))))

(assert (=> b!403033 (= res!232301 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11881 _keys!709))))))

(declare-fun b!403034 () Bool)

(declare-fun res!232305 () Bool)

(assert (=> b!403034 (=> (not res!232305) (not e!242681))))

(assert (=> b!403034 (= res!232305 (or (= (select (arr!11529 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11529 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!403035 () Bool)

(declare-fun res!232299 () Bool)

(assert (=> b!403035 (=> (not res!232299) (not e!242681))))

(assert (=> b!403035 (= res!232299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403036 () Bool)

(declare-fun +!1128 (ListLongMap!5673 tuple2!6746) ListLongMap!5673)

(assert (=> b!403036 (= e!242680 (= call!28457 (+!1128 call!28456 (tuple2!6747 k!794 v!412))))))

(declare-fun b!403037 () Bool)

(assert (=> b!403037 (= e!242677 (and e!242678 mapRes!16842))))

(declare-fun condMapEmpty!16842 () Bool)

(declare-fun mapDefault!16842 () ValueCell!4730)

