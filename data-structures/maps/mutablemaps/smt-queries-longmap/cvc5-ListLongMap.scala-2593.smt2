; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39384 () Bool)

(assert start!39384)

(declare-fun b_free!9643 () Bool)

(declare-fun b_next!9643 () Bool)

(assert (=> start!39384 (= b_free!9643 (not b_next!9643))))

(declare-fun tp!34457 () Bool)

(declare-fun b_and!17179 () Bool)

(assert (=> start!39384 (= tp!34457 b_and!17179)))

(declare-fun b!418061 () Bool)

(declare-fun res!243650 () Bool)

(declare-fun e!249327 () Bool)

(assert (=> b!418061 (=> (not res!243650) (not e!249327))))

(declare-datatypes ((array!25425 0))(
  ( (array!25426 (arr!12159 (Array (_ BitVec 32) (_ BitVec 64))) (size!12511 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25425)

(declare-datatypes ((List!7093 0))(
  ( (Nil!7090) (Cons!7089 (h!7945 (_ BitVec 64)) (t!12409 List!7093)) )
))
(declare-fun arrayNoDuplicates!0 (array!25425 (_ BitVec 32) List!7093) Bool)

(assert (=> b!418061 (= res!243650 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7090))))

(declare-fun b!418062 () Bool)

(declare-fun e!249331 () Bool)

(declare-fun tp_is_empty!10795 () Bool)

(assert (=> b!418062 (= e!249331 tp_is_empty!10795)))

(declare-fun b!418063 () Bool)

(declare-fun e!249329 () Bool)

(assert (=> b!418063 (= e!249329 tp_is_empty!10795)))

(declare-fun b!418064 () Bool)

(declare-fun res!243644 () Bool)

(assert (=> b!418064 (=> (not res!243644) (not e!249327))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418064 (= res!243644 (or (= (select (arr!12159 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12159 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!418065 () Bool)

(declare-fun e!249324 () Bool)

(declare-datatypes ((V!15499 0))(
  ( (V!15500 (val!5442 Int)) )
))
(declare-datatypes ((tuple2!7042 0))(
  ( (tuple2!7043 (_1!3531 (_ BitVec 64)) (_2!3531 V!15499)) )
))
(declare-datatypes ((List!7094 0))(
  ( (Nil!7091) (Cons!7090 (h!7946 tuple2!7042) (t!12410 List!7094)) )
))
(declare-datatypes ((ListLongMap!5969 0))(
  ( (ListLongMap!5970 (toList!3000 List!7094)) )
))
(declare-fun call!29104 () ListLongMap!5969)

(declare-fun call!29105 () ListLongMap!5969)

(assert (=> b!418065 (= e!249324 (= call!29104 call!29105))))

(declare-fun b!418066 () Bool)

(declare-fun e!249330 () Bool)

(assert (=> b!418066 (= e!249330 true)))

(declare-fun lt!191646 () tuple2!7042)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!191645 () V!15499)

(declare-fun lt!191653 () ListLongMap!5969)

(declare-fun +!1209 (ListLongMap!5969 tuple2!7042) ListLongMap!5969)

(assert (=> b!418066 (= (+!1209 lt!191653 lt!191646) (+!1209 (+!1209 lt!191653 (tuple2!7043 k!794 lt!191645)) lt!191646))))

(declare-fun lt!191647 () V!15499)

(assert (=> b!418066 (= lt!191646 (tuple2!7043 k!794 lt!191647))))

(declare-datatypes ((Unit!12319 0))(
  ( (Unit!12320) )
))
(declare-fun lt!191652 () Unit!12319)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!32 (ListLongMap!5969 (_ BitVec 64) V!15499 V!15499) Unit!12319)

(assert (=> b!418066 (= lt!191652 (addSameAsAddTwiceSameKeyDiffValues!32 lt!191653 k!794 lt!191645 lt!191647))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5054 0))(
  ( (ValueCellFull!5054 (v!7685 V!15499)) (EmptyCell!5054) )
))
(declare-datatypes ((array!25427 0))(
  ( (array!25428 (arr!12160 (Array (_ BitVec 32) ValueCell!5054)) (size!12512 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25427)

(declare-fun lt!191648 () V!15499)

(declare-fun get!6029 (ValueCell!5054 V!15499) V!15499)

(assert (=> b!418066 (= lt!191645 (get!6029 (select (arr!12160 _values!549) from!863) lt!191648))))

(declare-fun lt!191655 () array!25425)

(declare-fun lt!191651 () ListLongMap!5969)

(assert (=> b!418066 (= lt!191651 (+!1209 lt!191653 (tuple2!7043 (select (arr!12159 lt!191655) from!863) lt!191647)))))

(declare-fun v!412 () V!15499)

(assert (=> b!418066 (= lt!191647 (get!6029 (select (store (arr!12160 _values!549) i!563 (ValueCellFull!5054 v!412)) from!863) lt!191648))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!694 (Int (_ BitVec 64)) V!15499)

(assert (=> b!418066 (= lt!191648 (dynLambda!694 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15499)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15499)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!191650 () array!25427)

(declare-fun getCurrentListMapNoExtraKeys!1203 (array!25425 array!25427 (_ BitVec 32) (_ BitVec 32) V!15499 V!15499 (_ BitVec 32) Int) ListLongMap!5969)

(assert (=> b!418066 (= lt!191653 (getCurrentListMapNoExtraKeys!1203 lt!191655 lt!191650 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418067 () Bool)

(declare-fun res!243653 () Bool)

(assert (=> b!418067 (=> (not res!243653) (not e!249327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25425 (_ BitVec 32)) Bool)

(assert (=> b!418067 (= res!243653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!418068 () Bool)

(declare-fun res!243654 () Bool)

(declare-fun e!249326 () Bool)

(assert (=> b!418068 (=> (not res!243654) (not e!249326))))

(assert (=> b!418068 (= res!243654 (arrayNoDuplicates!0 lt!191655 #b00000000000000000000000000000000 Nil!7090))))

(declare-fun b!418069 () Bool)

(assert (=> b!418069 (= e!249324 (= call!29105 (+!1209 call!29104 (tuple2!7043 k!794 v!412))))))

(declare-fun b!418070 () Bool)

(declare-fun res!243646 () Bool)

(assert (=> b!418070 (=> (not res!243646) (not e!249327))))

(assert (=> b!418070 (= res!243646 (and (= (size!12512 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12511 _keys!709) (size!12512 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!418071 () Bool)

(assert (=> b!418071 (= e!249327 e!249326)))

(declare-fun res!243651 () Bool)

(assert (=> b!418071 (=> (not res!243651) (not e!249326))))

(assert (=> b!418071 (= res!243651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191655 mask!1025))))

(assert (=> b!418071 (= lt!191655 (array!25426 (store (arr!12159 _keys!709) i!563 k!794) (size!12511 _keys!709)))))

(declare-fun res!243652 () Bool)

(assert (=> start!39384 (=> (not res!243652) (not e!249327))))

(assert (=> start!39384 (= res!243652 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12511 _keys!709))))))

(assert (=> start!39384 e!249327))

(assert (=> start!39384 tp_is_empty!10795))

(assert (=> start!39384 tp!34457))

(assert (=> start!39384 true))

(declare-fun e!249328 () Bool)

(declare-fun array_inv!8868 (array!25427) Bool)

(assert (=> start!39384 (and (array_inv!8868 _values!549) e!249328)))

(declare-fun array_inv!8869 (array!25425) Bool)

(assert (=> start!39384 (array_inv!8869 _keys!709)))

(declare-fun b!418072 () Bool)

(declare-fun res!243642 () Bool)

(assert (=> b!418072 (=> (not res!243642) (not e!249327))))

(assert (=> b!418072 (= res!243642 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12511 _keys!709))))))

(declare-fun bm!29101 () Bool)

(declare-fun c!55103 () Bool)

(assert (=> bm!29101 (= call!29104 (getCurrentListMapNoExtraKeys!1203 (ite c!55103 _keys!709 lt!191655) (ite c!55103 _values!549 lt!191650) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418073 () Bool)

(declare-fun e!249325 () Bool)

(assert (=> b!418073 (= e!249326 e!249325)))

(declare-fun res!243643 () Bool)

(assert (=> b!418073 (=> (not res!243643) (not e!249325))))

(assert (=> b!418073 (= res!243643 (= from!863 i!563))))

(assert (=> b!418073 (= lt!191651 (getCurrentListMapNoExtraKeys!1203 lt!191655 lt!191650 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!418073 (= lt!191650 (array!25428 (store (arr!12160 _values!549) i!563 (ValueCellFull!5054 v!412)) (size!12512 _values!549)))))

(declare-fun lt!191654 () ListLongMap!5969)

(assert (=> b!418073 (= lt!191654 (getCurrentListMapNoExtraKeys!1203 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418074 () Bool)

(declare-fun res!243647 () Bool)

(assert (=> b!418074 (=> (not res!243647) (not e!249327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!418074 (= res!243647 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17814 () Bool)

(declare-fun mapRes!17814 () Bool)

(declare-fun tp!34458 () Bool)

(assert (=> mapNonEmpty!17814 (= mapRes!17814 (and tp!34458 e!249329))))

(declare-fun mapKey!17814 () (_ BitVec 32))

(declare-fun mapRest!17814 () (Array (_ BitVec 32) ValueCell!5054))

(declare-fun mapValue!17814 () ValueCell!5054)

(assert (=> mapNonEmpty!17814 (= (arr!12160 _values!549) (store mapRest!17814 mapKey!17814 mapValue!17814))))

(declare-fun mapIsEmpty!17814 () Bool)

(assert (=> mapIsEmpty!17814 mapRes!17814))

(declare-fun b!418075 () Bool)

(declare-fun res!243649 () Bool)

(assert (=> b!418075 (=> (not res!243649) (not e!249327))))

(declare-fun arrayContainsKey!0 (array!25425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418075 (= res!243649 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!418076 () Bool)

(declare-fun res!243645 () Bool)

(assert (=> b!418076 (=> (not res!243645) (not e!249326))))

(assert (=> b!418076 (= res!243645 (bvsle from!863 i!563))))

(declare-fun b!418077 () Bool)

(assert (=> b!418077 (= e!249325 (not e!249330))))

(declare-fun res!243641 () Bool)

(assert (=> b!418077 (=> res!243641 e!249330)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418077 (= res!243641 (validKeyInArray!0 (select (arr!12159 _keys!709) from!863)))))

(assert (=> b!418077 e!249324))

(assert (=> b!418077 (= c!55103 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191649 () Unit!12319)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!417 (array!25425 array!25427 (_ BitVec 32) (_ BitVec 32) V!15499 V!15499 (_ BitVec 32) (_ BitVec 64) V!15499 (_ BitVec 32) Int) Unit!12319)

(assert (=> b!418077 (= lt!191649 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!417 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418078 () Bool)

(declare-fun res!243648 () Bool)

(assert (=> b!418078 (=> (not res!243648) (not e!249327))))

(assert (=> b!418078 (= res!243648 (validKeyInArray!0 k!794))))

(declare-fun bm!29102 () Bool)

(assert (=> bm!29102 (= call!29105 (getCurrentListMapNoExtraKeys!1203 (ite c!55103 lt!191655 _keys!709) (ite c!55103 lt!191650 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418079 () Bool)

(assert (=> b!418079 (= e!249328 (and e!249331 mapRes!17814))))

(declare-fun condMapEmpty!17814 () Bool)

(declare-fun mapDefault!17814 () ValueCell!5054)

