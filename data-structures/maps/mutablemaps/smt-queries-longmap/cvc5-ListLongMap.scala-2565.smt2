; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39216 () Bool)

(assert start!39216)

(declare-fun b_free!9475 () Bool)

(declare-fun b_next!9475 () Bool)

(assert (=> start!39216 (= b_free!9475 (not b_next!9475))))

(declare-fun tp!33954 () Bool)

(declare-fun b_and!16879 () Bool)

(assert (=> start!39216 (= tp!33954 b_and!16879)))

(declare-datatypes ((V!15275 0))(
  ( (V!15276 (val!5358 Int)) )
))
(declare-datatypes ((tuple2!6884 0))(
  ( (tuple2!6885 (_1!3452 (_ BitVec 64)) (_2!3452 V!15275)) )
))
(declare-datatypes ((List!6945 0))(
  ( (Nil!6942) (Cons!6941 (h!7797 tuple2!6884) (t!12127 List!6945)) )
))
(declare-datatypes ((ListLongMap!5811 0))(
  ( (ListLongMap!5812 (toList!2921 List!6945)) )
))
(declare-fun call!28600 () ListLongMap!5811)

(declare-fun minValue!515 () V!15275)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4970 0))(
  ( (ValueCellFull!4970 (v!7601 V!15275)) (EmptyCell!4970) )
))
(declare-datatypes ((array!25093 0))(
  ( (array!25094 (arr!11993 (Array (_ BitVec 32) ValueCell!4970)) (size!12345 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25093)

(declare-fun zeroValue!515 () V!15275)

(declare-datatypes ((array!25095 0))(
  ( (array!25096 (arr!11994 (Array (_ BitVec 32) (_ BitVec 64))) (size!12346 (_ BitVec 32))) )
))
(declare-fun lt!189671 () array!25095)

(declare-fun bm!28597 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25095)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!54851 () Bool)

(declare-fun lt!189675 () array!25093)

(declare-fun getCurrentListMapNoExtraKeys!1130 (array!25095 array!25093 (_ BitVec 32) (_ BitVec 32) V!15275 V!15275 (_ BitVec 32) Int) ListLongMap!5811)

(assert (=> bm!28597 (= call!28600 (getCurrentListMapNoExtraKeys!1130 (ite c!54851 _keys!709 lt!189671) (ite c!54851 _values!549 lt!189675) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!240161 () Bool)

(declare-fun e!247103 () Bool)

(assert (=> start!39216 (=> (not res!240161) (not e!247103))))

(assert (=> start!39216 (= res!240161 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12346 _keys!709))))))

(assert (=> start!39216 e!247103))

(declare-fun tp_is_empty!10627 () Bool)

(assert (=> start!39216 tp_is_empty!10627))

(assert (=> start!39216 tp!33954))

(assert (=> start!39216 true))

(declare-fun e!247098 () Bool)

(declare-fun array_inv!8746 (array!25093) Bool)

(assert (=> start!39216 (and (array_inv!8746 _values!549) e!247098)))

(declare-fun array_inv!8747 (array!25095) Bool)

(assert (=> start!39216 (array_inv!8747 _keys!709)))

(declare-fun b!413184 () Bool)

(declare-fun e!247101 () Bool)

(assert (=> b!413184 (= e!247103 e!247101)))

(declare-fun res!240168 () Bool)

(assert (=> b!413184 (=> (not res!240168) (not e!247101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25095 (_ BitVec 32)) Bool)

(assert (=> b!413184 (= res!240168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189671 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413184 (= lt!189671 (array!25096 (store (arr!11994 _keys!709) i!563 k!794) (size!12346 _keys!709)))))

(declare-fun b!413185 () Bool)

(declare-fun res!240157 () Bool)

(assert (=> b!413185 (=> (not res!240157) (not e!247103))))

(assert (=> b!413185 (= res!240157 (and (= (size!12345 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12346 _keys!709) (size!12345 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!413186 () Bool)

(declare-fun e!247105 () Bool)

(declare-fun v!412 () V!15275)

(declare-fun call!28601 () ListLongMap!5811)

(declare-fun +!1144 (ListLongMap!5811 tuple2!6884) ListLongMap!5811)

(assert (=> b!413186 (= e!247105 (= call!28601 (+!1144 call!28600 (tuple2!6885 k!794 v!412))))))

(declare-fun b!413187 () Bool)

(declare-fun res!240158 () Bool)

(assert (=> b!413187 (=> (not res!240158) (not e!247103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413187 (= res!240158 (validMask!0 mask!1025))))

(declare-fun b!413188 () Bool)

(declare-fun e!247102 () Bool)

(assert (=> b!413188 (= e!247102 (not true))))

(assert (=> b!413188 e!247105))

(assert (=> b!413188 (= c!54851 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12185 0))(
  ( (Unit!12186) )
))
(declare-fun lt!189672 () Unit!12185)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!355 (array!25095 array!25093 (_ BitVec 32) (_ BitVec 32) V!15275 V!15275 (_ BitVec 32) (_ BitVec 64) V!15275 (_ BitVec 32) Int) Unit!12185)

(assert (=> b!413188 (= lt!189672 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!355 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413189 () Bool)

(assert (=> b!413189 (= e!247105 (= call!28600 call!28601))))

(declare-fun b!413190 () Bool)

(declare-fun res!240163 () Bool)

(assert (=> b!413190 (=> (not res!240163) (not e!247103))))

(declare-fun arrayContainsKey!0 (array!25095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413190 (= res!240163 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!413191 () Bool)

(assert (=> b!413191 (= e!247101 e!247102)))

(declare-fun res!240160 () Bool)

(assert (=> b!413191 (=> (not res!240160) (not e!247102))))

(assert (=> b!413191 (= res!240160 (= from!863 i!563))))

(declare-fun lt!189674 () ListLongMap!5811)

(assert (=> b!413191 (= lt!189674 (getCurrentListMapNoExtraKeys!1130 lt!189671 lt!189675 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!413191 (= lt!189675 (array!25094 (store (arr!11993 _values!549) i!563 (ValueCellFull!4970 v!412)) (size!12345 _values!549)))))

(declare-fun lt!189673 () ListLongMap!5811)

(assert (=> b!413191 (= lt!189673 (getCurrentListMapNoExtraKeys!1130 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17562 () Bool)

(declare-fun mapRes!17562 () Bool)

(declare-fun tp!33953 () Bool)

(declare-fun e!247100 () Bool)

(assert (=> mapNonEmpty!17562 (= mapRes!17562 (and tp!33953 e!247100))))

(declare-fun mapValue!17562 () ValueCell!4970)

(declare-fun mapRest!17562 () (Array (_ BitVec 32) ValueCell!4970))

(declare-fun mapKey!17562 () (_ BitVec 32))

(assert (=> mapNonEmpty!17562 (= (arr!11993 _values!549) (store mapRest!17562 mapKey!17562 mapValue!17562))))

(declare-fun b!413192 () Bool)

(declare-fun res!240166 () Bool)

(assert (=> b!413192 (=> (not res!240166) (not e!247103))))

(declare-datatypes ((List!6946 0))(
  ( (Nil!6943) (Cons!6942 (h!7798 (_ BitVec 64)) (t!12128 List!6946)) )
))
(declare-fun arrayNoDuplicates!0 (array!25095 (_ BitVec 32) List!6946) Bool)

(assert (=> b!413192 (= res!240166 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6943))))

(declare-fun bm!28598 () Bool)

(assert (=> bm!28598 (= call!28601 (getCurrentListMapNoExtraKeys!1130 (ite c!54851 lt!189671 _keys!709) (ite c!54851 lt!189675 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413193 () Bool)

(declare-fun res!240156 () Bool)

(assert (=> b!413193 (=> (not res!240156) (not e!247103))))

(assert (=> b!413193 (= res!240156 (or (= (select (arr!11994 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11994 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413194 () Bool)

(declare-fun res!240162 () Bool)

(assert (=> b!413194 (=> (not res!240162) (not e!247103))))

(assert (=> b!413194 (= res!240162 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12346 _keys!709))))))

(declare-fun b!413195 () Bool)

(declare-fun res!240159 () Bool)

(assert (=> b!413195 (=> (not res!240159) (not e!247103))))

(assert (=> b!413195 (= res!240159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17562 () Bool)

(assert (=> mapIsEmpty!17562 mapRes!17562))

(declare-fun b!413196 () Bool)

(declare-fun e!247104 () Bool)

(assert (=> b!413196 (= e!247104 tp_is_empty!10627)))

(declare-fun b!413197 () Bool)

(declare-fun res!240167 () Bool)

(assert (=> b!413197 (=> (not res!240167) (not e!247101))))

(assert (=> b!413197 (= res!240167 (bvsle from!863 i!563))))

(declare-fun b!413198 () Bool)

(assert (=> b!413198 (= e!247100 tp_is_empty!10627)))

(declare-fun b!413199 () Bool)

(declare-fun res!240165 () Bool)

(assert (=> b!413199 (=> (not res!240165) (not e!247103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413199 (= res!240165 (validKeyInArray!0 k!794))))

(declare-fun b!413200 () Bool)

(assert (=> b!413200 (= e!247098 (and e!247104 mapRes!17562))))

(declare-fun condMapEmpty!17562 () Bool)

(declare-fun mapDefault!17562 () ValueCell!4970)

