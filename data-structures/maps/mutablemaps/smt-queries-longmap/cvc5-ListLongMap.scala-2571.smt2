; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39252 () Bool)

(assert start!39252)

(declare-fun b_free!9511 () Bool)

(declare-fun b_next!9511 () Bool)

(assert (=> start!39252 (= b_free!9511 (not b_next!9511))))

(declare-fun tp!34061 () Bool)

(declare-fun b_and!16915 () Bool)

(assert (=> start!39252 (= tp!34061 b_and!16915)))

(declare-datatypes ((V!15323 0))(
  ( (V!15324 (val!5376 Int)) )
))
(declare-fun minValue!515 () V!15323)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4988 0))(
  ( (ValueCellFull!4988 (v!7619 V!15323)) (EmptyCell!4988) )
))
(declare-datatypes ((array!25165 0))(
  ( (array!25166 (arr!12029 (Array (_ BitVec 32) ValueCell!4988)) (size!12381 (_ BitVec 32))) )
))
(declare-fun lt!189942 () array!25165)

(declare-fun _values!549 () array!25165)

(declare-fun zeroValue!515 () V!15323)

(declare-fun bm!28705 () Bool)

(declare-datatypes ((array!25167 0))(
  ( (array!25168 (arr!12030 (Array (_ BitVec 32) (_ BitVec 64))) (size!12382 (_ BitVec 32))) )
))
(declare-fun lt!189944 () array!25167)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25167)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!6920 0))(
  ( (tuple2!6921 (_1!3470 (_ BitVec 64)) (_2!3470 V!15323)) )
))
(declare-datatypes ((List!6977 0))(
  ( (Nil!6974) (Cons!6973 (h!7829 tuple2!6920) (t!12161 List!6977)) )
))
(declare-datatypes ((ListLongMap!5847 0))(
  ( (ListLongMap!5848 (toList!2939 List!6977)) )
))
(declare-fun call!28708 () ListLongMap!5847)

(declare-fun c!54905 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1146 (array!25167 array!25165 (_ BitVec 32) (_ BitVec 32) V!15323 V!15323 (_ BitVec 32) Int) ListLongMap!5847)

(assert (=> bm!28705 (= call!28708 (getCurrentListMapNoExtraKeys!1146 (ite c!54905 _keys!709 lt!189944) (ite c!54905 _values!549 lt!189942) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414167 () Bool)

(declare-fun e!247545 () Bool)

(declare-fun tp_is_empty!10663 () Bool)

(assert (=> b!414167 (= e!247545 tp_is_empty!10663)))

(declare-fun mapNonEmpty!17616 () Bool)

(declare-fun mapRes!17616 () Bool)

(declare-fun tp!34062 () Bool)

(declare-fun e!247549 () Bool)

(assert (=> mapNonEmpty!17616 (= mapRes!17616 (and tp!34062 e!247549))))

(declare-fun mapValue!17616 () ValueCell!4988)

(declare-fun mapKey!17616 () (_ BitVec 32))

(declare-fun mapRest!17616 () (Array (_ BitVec 32) ValueCell!4988))

(assert (=> mapNonEmpty!17616 (= (arr!12029 _values!549) (store mapRest!17616 mapKey!17616 mapValue!17616))))

(declare-fun mapIsEmpty!17616 () Bool)

(assert (=> mapIsEmpty!17616 mapRes!17616))

(declare-fun b!414168 () Bool)

(declare-fun res!240871 () Bool)

(declare-fun e!247548 () Bool)

(assert (=> b!414168 (=> (not res!240871) (not e!247548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25167 (_ BitVec 32)) Bool)

(assert (=> b!414168 (= res!240871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!414169 () Bool)

(declare-fun res!240882 () Bool)

(assert (=> b!414169 (=> (not res!240882) (not e!247548))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414169 (= res!240882 (or (= (select (arr!12030 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12030 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!414170 () Bool)

(declare-fun res!240879 () Bool)

(assert (=> b!414170 (=> (not res!240879) (not e!247548))))

(declare-datatypes ((List!6978 0))(
  ( (Nil!6975) (Cons!6974 (h!7830 (_ BitVec 64)) (t!12162 List!6978)) )
))
(declare-fun arrayNoDuplicates!0 (array!25167 (_ BitVec 32) List!6978) Bool)

(assert (=> b!414170 (= res!240879 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6975))))

(declare-fun b!414172 () Bool)

(declare-fun e!247547 () Bool)

(assert (=> b!414172 (= e!247547 (and e!247545 mapRes!17616))))

(declare-fun condMapEmpty!17616 () Bool)

(declare-fun mapDefault!17616 () ValueCell!4988)

