; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39076 () Bool)

(assert start!39076)

(declare-fun b_free!9335 () Bool)

(declare-fun b_next!9335 () Bool)

(assert (=> start!39076 (= b_free!9335 (not b_next!9335))))

(declare-fun tp!33533 () Bool)

(declare-fun b_and!16739 () Bool)

(assert (=> start!39076 (= tp!33533 b_and!16739)))

(declare-fun res!237617 () Bool)

(declare-fun e!245784 () Bool)

(assert (=> start!39076 (=> (not res!237617) (not e!245784))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24825 0))(
  ( (array!24826 (arr!11859 (Array (_ BitVec 32) (_ BitVec 64))) (size!12211 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24825)

(assert (=> start!39076 (= res!237617 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12211 _keys!709))))))

(assert (=> start!39076 e!245784))

(declare-fun tp_is_empty!10487 () Bool)

(assert (=> start!39076 tp_is_empty!10487))

(assert (=> start!39076 tp!33533))

(assert (=> start!39076 true))

(declare-datatypes ((V!15087 0))(
  ( (V!15088 (val!5288 Int)) )
))
(declare-datatypes ((ValueCell!4900 0))(
  ( (ValueCellFull!4900 (v!7531 V!15087)) (EmptyCell!4900) )
))
(declare-datatypes ((array!24827 0))(
  ( (array!24828 (arr!11860 (Array (_ BitVec 32) ValueCell!4900)) (size!12212 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24827)

(declare-fun e!245785 () Bool)

(declare-fun array_inv!8658 (array!24827) Bool)

(assert (=> start!39076 (and (array_inv!8658 _values!549) e!245785)))

(declare-fun array_inv!8659 (array!24825) Bool)

(assert (=> start!39076 (array_inv!8659 _keys!709)))

(declare-fun b!409947 () Bool)

(declare-fun res!237615 () Bool)

(assert (=> b!409947 (=> (not res!237615) (not e!245784))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409947 (= res!237615 (validMask!0 mask!1025))))

(declare-fun b!409948 () Bool)

(declare-fun e!245781 () Bool)

(assert (=> b!409948 (= e!245781 tp_is_empty!10487)))

(declare-fun b!409949 () Bool)

(declare-fun res!237609 () Bool)

(assert (=> b!409949 (=> (not res!237609) (not e!245784))))

(declare-datatypes ((List!6848 0))(
  ( (Nil!6845) (Cons!6844 (h!7700 (_ BitVec 64)) (t!12030 List!6848)) )
))
(declare-fun arrayNoDuplicates!0 (array!24825 (_ BitVec 32) List!6848) Bool)

(assert (=> b!409949 (= res!237609 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6845))))

(declare-fun b!409950 () Bool)

(declare-fun res!237614 () Bool)

(declare-fun e!245783 () Bool)

(assert (=> b!409950 (=> (not res!237614) (not e!245783))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409950 (= res!237614 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!17352 () Bool)

(declare-fun mapRes!17352 () Bool)

(assert (=> mapIsEmpty!17352 mapRes!17352))

(declare-fun b!409951 () Bool)

(declare-fun res!237608 () Bool)

(assert (=> b!409951 (=> (not res!237608) (not e!245784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24825 (_ BitVec 32)) Bool)

(assert (=> b!409951 (= res!237608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409952 () Bool)

(declare-fun res!237610 () Bool)

(assert (=> b!409952 (=> (not res!237610) (not e!245783))))

(declare-fun lt!189003 () array!24825)

(assert (=> b!409952 (= res!237610 (arrayNoDuplicates!0 lt!189003 #b00000000000000000000000000000000 Nil!6845))))

(declare-fun b!409953 () Bool)

(declare-fun res!237613 () Bool)

(assert (=> b!409953 (=> (not res!237613) (not e!245784))))

(assert (=> b!409953 (= res!237613 (or (= (select (arr!11859 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11859 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409954 () Bool)

(assert (=> b!409954 (= e!245783 false)))

(declare-fun minValue!515 () V!15087)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6796 0))(
  ( (tuple2!6797 (_1!3408 (_ BitVec 64)) (_2!3408 V!15087)) )
))
(declare-datatypes ((List!6849 0))(
  ( (Nil!6846) (Cons!6845 (h!7701 tuple2!6796) (t!12031 List!6849)) )
))
(declare-datatypes ((ListLongMap!5723 0))(
  ( (ListLongMap!5724 (toList!2877 List!6849)) )
))
(declare-fun lt!189002 () ListLongMap!5723)

(declare-fun zeroValue!515 () V!15087)

(declare-fun getCurrentListMapNoExtraKeys!1087 (array!24825 array!24827 (_ BitVec 32) (_ BitVec 32) V!15087 V!15087 (_ BitVec 32) Int) ListLongMap!5723)

(assert (=> b!409954 (= lt!189002 (getCurrentListMapNoExtraKeys!1087 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409955 () Bool)

(declare-fun res!237612 () Bool)

(assert (=> b!409955 (=> (not res!237612) (not e!245784))))

(assert (=> b!409955 (= res!237612 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12211 _keys!709))))))

(declare-fun b!409956 () Bool)

(assert (=> b!409956 (= e!245784 e!245783)))

(declare-fun res!237618 () Bool)

(assert (=> b!409956 (=> (not res!237618) (not e!245783))))

(assert (=> b!409956 (= res!237618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189003 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!409956 (= lt!189003 (array!24826 (store (arr!11859 _keys!709) i!563 k!794) (size!12211 _keys!709)))))

(declare-fun b!409957 () Bool)

(declare-fun e!245782 () Bool)

(assert (=> b!409957 (= e!245782 tp_is_empty!10487)))

(declare-fun mapNonEmpty!17352 () Bool)

(declare-fun tp!33534 () Bool)

(assert (=> mapNonEmpty!17352 (= mapRes!17352 (and tp!33534 e!245782))))

(declare-fun mapValue!17352 () ValueCell!4900)

(declare-fun mapRest!17352 () (Array (_ BitVec 32) ValueCell!4900))

(declare-fun mapKey!17352 () (_ BitVec 32))

(assert (=> mapNonEmpty!17352 (= (arr!11860 _values!549) (store mapRest!17352 mapKey!17352 mapValue!17352))))

(declare-fun b!409958 () Bool)

(declare-fun res!237611 () Bool)

(assert (=> b!409958 (=> (not res!237611) (not e!245784))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409958 (= res!237611 (validKeyInArray!0 k!794))))

(declare-fun b!409959 () Bool)

(declare-fun res!237616 () Bool)

(assert (=> b!409959 (=> (not res!237616) (not e!245784))))

(declare-fun arrayContainsKey!0 (array!24825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409959 (= res!237616 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!409960 () Bool)

(declare-fun res!237607 () Bool)

(assert (=> b!409960 (=> (not res!237607) (not e!245784))))

(assert (=> b!409960 (= res!237607 (and (= (size!12212 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12211 _keys!709) (size!12212 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409961 () Bool)

(assert (=> b!409961 (= e!245785 (and e!245781 mapRes!17352))))

(declare-fun condMapEmpty!17352 () Bool)

(declare-fun mapDefault!17352 () ValueCell!4900)

