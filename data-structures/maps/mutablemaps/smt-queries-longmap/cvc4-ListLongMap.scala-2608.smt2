; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39478 () Bool)

(assert start!39478)

(declare-fun b_free!9737 () Bool)

(declare-fun b_next!9737 () Bool)

(assert (=> start!39478 (= b_free!9737 (not b_next!9737))))

(declare-fun tp!34740 () Bool)

(declare-fun b_and!17367 () Bool)

(assert (=> start!39478 (= tp!34740 b_and!17367)))

(declare-fun b!420834 () Bool)

(declare-fun res!245621 () Bool)

(declare-fun e!250592 () Bool)

(assert (=> b!420834 (=> (not res!245621) (not e!250592))))

(declare-datatypes ((array!25605 0))(
  ( (array!25606 (arr!12249 (Array (_ BitVec 32) (_ BitVec 64))) (size!12601 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25605)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420834 (= res!245621 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!420835 () Bool)

(declare-fun res!245616 () Bool)

(assert (=> b!420835 (=> (not res!245616) (not e!250592))))

(declare-datatypes ((List!7168 0))(
  ( (Nil!7165) (Cons!7164 (h!8020 (_ BitVec 64)) (t!12578 List!7168)) )
))
(declare-fun arrayNoDuplicates!0 (array!25605 (_ BitVec 32) List!7168) Bool)

(assert (=> b!420835 (= res!245616 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7165))))

(declare-fun b!420836 () Bool)

(declare-fun e!250597 () Bool)

(declare-fun e!250594 () Bool)

(assert (=> b!420836 (= e!250597 e!250594)))

(declare-fun res!245625 () Bool)

(assert (=> b!420836 (=> (not res!245625) (not e!250594))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420836 (= res!245625 (= from!863 i!563))))

(declare-datatypes ((V!15623 0))(
  ( (V!15624 (val!5489 Int)) )
))
(declare-fun minValue!515 () V!15623)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5101 0))(
  ( (ValueCellFull!5101 (v!7732 V!15623)) (EmptyCell!5101) )
))
(declare-datatypes ((array!25607 0))(
  ( (array!25608 (arr!12250 (Array (_ BitVec 32) ValueCell!5101)) (size!12602 (_ BitVec 32))) )
))
(declare-fun lt!193200 () array!25607)

(declare-fun zeroValue!515 () V!15623)

(declare-datatypes ((tuple2!7124 0))(
  ( (tuple2!7125 (_1!3572 (_ BitVec 64)) (_2!3572 V!15623)) )
))
(declare-datatypes ((List!7169 0))(
  ( (Nil!7166) (Cons!7165 (h!8021 tuple2!7124) (t!12579 List!7169)) )
))
(declare-datatypes ((ListLongMap!6051 0))(
  ( (ListLongMap!6052 (toList!3041 List!7169)) )
))
(declare-fun lt!193205 () ListLongMap!6051)

(declare-fun lt!193197 () array!25605)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1242 (array!25605 array!25607 (_ BitVec 32) (_ BitVec 32) V!15623 V!15623 (_ BitVec 32) Int) ListLongMap!6051)

(assert (=> b!420836 (= lt!193205 (getCurrentListMapNoExtraKeys!1242 lt!193197 lt!193200 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25607)

(declare-fun v!412 () V!15623)

(assert (=> b!420836 (= lt!193200 (array!25608 (store (arr!12250 _values!549) i!563 (ValueCellFull!5101 v!412)) (size!12602 _values!549)))))

(declare-fun lt!193196 () ListLongMap!6051)

(assert (=> b!420836 (= lt!193196 (getCurrentListMapNoExtraKeys!1242 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!420837 () Bool)

(declare-fun res!245618 () Bool)

(assert (=> b!420837 (=> (not res!245618) (not e!250597))))

(assert (=> b!420837 (= res!245618 (bvsle from!863 i!563))))

(declare-fun b!420838 () Bool)

(declare-fun res!245620 () Bool)

(assert (=> b!420838 (=> (not res!245620) (not e!250597))))

(assert (=> b!420838 (= res!245620 (arrayNoDuplicates!0 lt!193197 #b00000000000000000000000000000000 Nil!7165))))

(declare-fun b!420839 () Bool)

(declare-fun e!250599 () Bool)

(assert (=> b!420839 (= e!250594 (not e!250599))))

(declare-fun res!245628 () Bool)

(assert (=> b!420839 (=> res!245628 e!250599)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420839 (= res!245628 (validKeyInArray!0 (select (arr!12249 _keys!709) from!863)))))

(declare-fun e!250598 () Bool)

(assert (=> b!420839 e!250598))

(declare-fun c!55244 () Bool)

(assert (=> b!420839 (= c!55244 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12389 0))(
  ( (Unit!12390) )
))
(declare-fun lt!193202 () Unit!12389)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!449 (array!25605 array!25607 (_ BitVec 32) (_ BitVec 32) V!15623 V!15623 (_ BitVec 32) (_ BitVec 64) V!15623 (_ BitVec 32) Int) Unit!12389)

(assert (=> b!420839 (= lt!193202 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!449 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!245622 () Bool)

(assert (=> start!39478 (=> (not res!245622) (not e!250592))))

(assert (=> start!39478 (= res!245622 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12601 _keys!709))))))

(assert (=> start!39478 e!250592))

(declare-fun tp_is_empty!10889 () Bool)

(assert (=> start!39478 tp_is_empty!10889))

(assert (=> start!39478 tp!34740))

(assert (=> start!39478 true))

(declare-fun e!250596 () Bool)

(declare-fun array_inv!8924 (array!25607) Bool)

(assert (=> start!39478 (and (array_inv!8924 _values!549) e!250596)))

(declare-fun array_inv!8925 (array!25605) Bool)

(assert (=> start!39478 (array_inv!8925 _keys!709)))

(declare-fun b!420840 () Bool)

(declare-fun res!245623 () Bool)

(assert (=> b!420840 (=> (not res!245623) (not e!250592))))

(assert (=> b!420840 (= res!245623 (or (= (select (arr!12249 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12249 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17955 () Bool)

(declare-fun mapRes!17955 () Bool)

(assert (=> mapIsEmpty!17955 mapRes!17955))

(declare-fun b!420841 () Bool)

(declare-fun e!250600 () Bool)

(assert (=> b!420841 (= e!250600 tp_is_empty!10889)))

(declare-fun call!29386 () ListLongMap!6051)

(declare-fun bm!29383 () Bool)

(assert (=> bm!29383 (= call!29386 (getCurrentListMapNoExtraKeys!1242 (ite c!55244 _keys!709 lt!193197) (ite c!55244 _values!549 lt!193200) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420842 () Bool)

(declare-fun res!245615 () Bool)

(assert (=> b!420842 (=> (not res!245615) (not e!250592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25605 (_ BitVec 32)) Bool)

(assert (=> b!420842 (= res!245615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420843 () Bool)

(declare-fun e!250595 () Bool)

(assert (=> b!420843 (= e!250596 (and e!250595 mapRes!17955))))

(declare-fun condMapEmpty!17955 () Bool)

(declare-fun mapDefault!17955 () ValueCell!5101)

