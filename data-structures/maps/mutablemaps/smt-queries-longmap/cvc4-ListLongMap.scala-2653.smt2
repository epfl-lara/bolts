; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39748 () Bool)

(assert start!39748)

(declare-fun b_free!10007 () Bool)

(declare-fun b_next!10007 () Bool)

(assert (=> start!39748 (= b_free!10007 (not b_next!10007))))

(declare-fun tp!35549 () Bool)

(declare-fun b_and!17691 () Bool)

(assert (=> start!39748 (= tp!35549 b_and!17691)))

(declare-fun b!427424 () Bool)

(declare-fun res!250815 () Bool)

(declare-fun e!253419 () Bool)

(assert (=> b!427424 (=> (not res!250815) (not e!253419))))

(declare-datatypes ((array!26137 0))(
  ( (array!26138 (arr!12515 (Array (_ BitVec 32) (_ BitVec 64))) (size!12867 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26137)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15983 0))(
  ( (V!15984 (val!5624 Int)) )
))
(declare-datatypes ((ValueCell!5236 0))(
  ( (ValueCellFull!5236 (v!7867 V!15983)) (EmptyCell!5236) )
))
(declare-datatypes ((array!26139 0))(
  ( (array!26140 (arr!12516 (Array (_ BitVec 32) ValueCell!5236)) (size!12868 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26139)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!427424 (= res!250815 (and (= (size!12868 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12867 _keys!709) (size!12868 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427425 () Bool)

(declare-fun e!253422 () Bool)

(declare-fun tp_is_empty!11159 () Bool)

(assert (=> b!427425 (= e!253422 tp_is_empty!11159)))

(declare-fun b!427426 () Bool)

(declare-fun e!253424 () Bool)

(declare-fun e!253426 () Bool)

(assert (=> b!427426 (= e!253424 (not e!253426))))

(declare-fun res!250810 () Bool)

(assert (=> b!427426 (=> res!250810 e!253426)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427426 (= res!250810 (not (validKeyInArray!0 (select (arr!12515 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7332 0))(
  ( (tuple2!7333 (_1!3676 (_ BitVec 64)) (_2!3676 V!15983)) )
))
(declare-datatypes ((List!7381 0))(
  ( (Nil!7378) (Cons!7377 (h!8233 tuple2!7332) (t!12845 List!7381)) )
))
(declare-datatypes ((ListLongMap!6259 0))(
  ( (ListLongMap!6260 (toList!3145 List!7381)) )
))
(declare-fun lt!195333 () ListLongMap!6259)

(declare-fun lt!195337 () ListLongMap!6259)

(assert (=> b!427426 (= lt!195333 lt!195337)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15983)

(declare-fun lt!195334 () ListLongMap!6259)

(declare-fun +!1298 (ListLongMap!6259 tuple2!7332) ListLongMap!6259)

(assert (=> b!427426 (= lt!195337 (+!1298 lt!195334 (tuple2!7333 k!794 v!412)))))

(declare-fun minValue!515 () V!15983)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!195336 () array!26139)

(declare-fun lt!195332 () array!26137)

(declare-fun zeroValue!515 () V!15983)

(declare-fun getCurrentListMapNoExtraKeys!1346 (array!26137 array!26139 (_ BitVec 32) (_ BitVec 32) V!15983 V!15983 (_ BitVec 32) Int) ListLongMap!6259)

(assert (=> b!427426 (= lt!195333 (getCurrentListMapNoExtraKeys!1346 lt!195332 lt!195336 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427426 (= lt!195334 (getCurrentListMapNoExtraKeys!1346 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12499 0))(
  ( (Unit!12500) )
))
(declare-fun lt!195335 () Unit!12499)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!500 (array!26137 array!26139 (_ BitVec 32) (_ BitVec 32) V!15983 V!15983 (_ BitVec 32) (_ BitVec 64) V!15983 (_ BitVec 32) Int) Unit!12499)

(assert (=> b!427426 (= lt!195335 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!500 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18360 () Bool)

(declare-fun mapRes!18360 () Bool)

(assert (=> mapIsEmpty!18360 mapRes!18360))

(declare-fun b!427428 () Bool)

(declare-fun res!250818 () Bool)

(assert (=> b!427428 (=> (not res!250818) (not e!253419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427428 (= res!250818 (validMask!0 mask!1025))))

(declare-fun b!427429 () Bool)

(declare-fun res!250812 () Bool)

(declare-fun e!253423 () Bool)

(assert (=> b!427429 (=> (not res!250812) (not e!253423))))

(declare-datatypes ((List!7382 0))(
  ( (Nil!7379) (Cons!7378 (h!8234 (_ BitVec 64)) (t!12846 List!7382)) )
))
(declare-fun arrayNoDuplicates!0 (array!26137 (_ BitVec 32) List!7382) Bool)

(assert (=> b!427429 (= res!250812 (arrayNoDuplicates!0 lt!195332 #b00000000000000000000000000000000 Nil!7379))))

(declare-fun b!427430 () Bool)

(declare-fun res!250809 () Bool)

(assert (=> b!427430 (=> (not res!250809) (not e!253419))))

(declare-fun arrayContainsKey!0 (array!26137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427430 (= res!250809 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18360 () Bool)

(declare-fun tp!35550 () Bool)

(declare-fun e!253425 () Bool)

(assert (=> mapNonEmpty!18360 (= mapRes!18360 (and tp!35550 e!253425))))

(declare-fun mapValue!18360 () ValueCell!5236)

(declare-fun mapKey!18360 () (_ BitVec 32))

(declare-fun mapRest!18360 () (Array (_ BitVec 32) ValueCell!5236))

(assert (=> mapNonEmpty!18360 (= (arr!12516 _values!549) (store mapRest!18360 mapKey!18360 mapValue!18360))))

(declare-fun b!427431 () Bool)

(declare-fun res!250820 () Bool)

(assert (=> b!427431 (=> (not res!250820) (not e!253419))))

(assert (=> b!427431 (= res!250820 (validKeyInArray!0 k!794))))

(declare-fun b!427432 () Bool)

(declare-fun res!250814 () Bool)

(assert (=> b!427432 (=> (not res!250814) (not e!253423))))

(assert (=> b!427432 (= res!250814 (bvsle from!863 i!563))))

(declare-fun b!427433 () Bool)

(assert (=> b!427433 (= e!253426 true)))

(declare-fun lt!195339 () ListLongMap!6259)

(declare-fun get!6201 (ValueCell!5236 V!15983) V!15983)

(declare-fun dynLambda!746 (Int (_ BitVec 64)) V!15983)

(assert (=> b!427433 (= lt!195339 (+!1298 lt!195337 (tuple2!7333 (select (arr!12515 _keys!709) from!863) (get!6201 (select (arr!12516 _values!549) from!863) (dynLambda!746 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427434 () Bool)

(declare-fun e!253421 () Bool)

(assert (=> b!427434 (= e!253421 (and e!253422 mapRes!18360))))

(declare-fun condMapEmpty!18360 () Bool)

(declare-fun mapDefault!18360 () ValueCell!5236)

