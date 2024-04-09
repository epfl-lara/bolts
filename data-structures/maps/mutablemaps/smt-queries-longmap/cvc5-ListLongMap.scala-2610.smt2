; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39486 () Bool)

(assert start!39486)

(declare-fun b_free!9745 () Bool)

(declare-fun b_next!9745 () Bool)

(assert (=> start!39486 (= b_free!9745 (not b_next!9745))))

(declare-fun tp!34764 () Bool)

(declare-fun b_and!17383 () Bool)

(assert (=> start!39486 (= tp!34764 b_and!17383)))

(declare-fun res!245791 () Bool)

(declare-fun e!250706 () Bool)

(assert (=> start!39486 (=> (not res!245791) (not e!250706))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25621 0))(
  ( (array!25622 (arr!12257 (Array (_ BitVec 32) (_ BitVec 64))) (size!12609 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25621)

(assert (=> start!39486 (= res!245791 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12609 _keys!709))))))

(assert (=> start!39486 e!250706))

(declare-fun tp_is_empty!10897 () Bool)

(assert (=> start!39486 tp_is_empty!10897))

(assert (=> start!39486 tp!34764))

(assert (=> start!39486 true))

(declare-datatypes ((V!15635 0))(
  ( (V!15636 (val!5493 Int)) )
))
(declare-datatypes ((ValueCell!5105 0))(
  ( (ValueCellFull!5105 (v!7736 V!15635)) (EmptyCell!5105) )
))
(declare-datatypes ((array!25623 0))(
  ( (array!25624 (arr!12258 (Array (_ BitVec 32) ValueCell!5105)) (size!12610 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25623)

(declare-fun e!250703 () Bool)

(declare-fun array_inv!8930 (array!25623) Bool)

(assert (=> start!39486 (and (array_inv!8930 _values!549) e!250703)))

(declare-fun array_inv!8931 (array!25621) Bool)

(assert (=> start!39486 (array_inv!8931 _keys!709)))

(declare-datatypes ((tuple2!7128 0))(
  ( (tuple2!7129 (_1!3574 (_ BitVec 64)) (_2!3574 V!15635)) )
))
(declare-datatypes ((List!7172 0))(
  ( (Nil!7169) (Cons!7168 (h!8024 tuple2!7128) (t!12590 List!7172)) )
))
(declare-datatypes ((ListLongMap!6055 0))(
  ( (ListLongMap!6056 (toList!3043 List!7172)) )
))
(declare-fun call!29410 () ListLongMap!6055)

(declare-fun e!250700 () Bool)

(declare-fun call!29411 () ListLongMap!6055)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun b!421070 () Bool)

(declare-fun v!412 () V!15635)

(declare-fun +!1246 (ListLongMap!6055 tuple2!7128) ListLongMap!6055)

(assert (=> b!421070 (= e!250700 (= call!29410 (+!1246 call!29411 (tuple2!7129 k!794 v!412))))))

(declare-fun b!421071 () Bool)

(declare-fun res!245789 () Bool)

(assert (=> b!421071 (=> (not res!245789) (not e!250706))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421071 (= res!245789 (or (= (select (arr!12257 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12257 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!421072 () Bool)

(declare-fun e!250708 () Bool)

(declare-fun e!250707 () Bool)

(assert (=> b!421072 (= e!250708 (not e!250707))))

(declare-fun res!245795 () Bool)

(assert (=> b!421072 (=> res!245795 e!250707)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421072 (= res!245795 (validKeyInArray!0 (select (arr!12257 _keys!709) from!863)))))

(assert (=> b!421072 e!250700))

(declare-fun c!55256 () Bool)

(assert (=> b!421072 (= c!55256 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15635)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15635)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12393 0))(
  ( (Unit!12394) )
))
(declare-fun lt!193334 () Unit!12393)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!451 (array!25621 array!25623 (_ BitVec 32) (_ BitVec 32) V!15635 V!15635 (_ BitVec 32) (_ BitVec 64) V!15635 (_ BitVec 32) Int) Unit!12393)

(assert (=> b!421072 (= lt!193334 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!451 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421073 () Bool)

(declare-fun res!245787 () Bool)

(assert (=> b!421073 (=> (not res!245787) (not e!250706))))

(assert (=> b!421073 (= res!245787 (validKeyInArray!0 k!794))))

(declare-fun b!421074 () Bool)

(declare-fun e!250705 () Bool)

(assert (=> b!421074 (= e!250705 tp_is_empty!10897)))

(declare-fun b!421075 () Bool)

(declare-fun res!245793 () Bool)

(assert (=> b!421075 (=> (not res!245793) (not e!250706))))

(declare-fun arrayContainsKey!0 (array!25621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421075 (= res!245793 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!421076 () Bool)

(assert (=> b!421076 (= e!250700 (= call!29411 call!29410))))

(declare-fun mapNonEmpty!17967 () Bool)

(declare-fun mapRes!17967 () Bool)

(declare-fun tp!34763 () Bool)

(declare-fun e!250702 () Bool)

(assert (=> mapNonEmpty!17967 (= mapRes!17967 (and tp!34763 e!250702))))

(declare-fun mapKey!17967 () (_ BitVec 32))

(declare-fun mapValue!17967 () ValueCell!5105)

(declare-fun mapRest!17967 () (Array (_ BitVec 32) ValueCell!5105))

(assert (=> mapNonEmpty!17967 (= (arr!12258 _values!549) (store mapRest!17967 mapKey!17967 mapValue!17967))))

(declare-fun bm!29407 () Bool)

(declare-fun lt!193330 () array!25623)

(declare-fun lt!193329 () array!25621)

(declare-fun getCurrentListMapNoExtraKeys!1244 (array!25621 array!25623 (_ BitVec 32) (_ BitVec 32) V!15635 V!15635 (_ BitVec 32) Int) ListLongMap!6055)

(assert (=> bm!29407 (= call!29410 (getCurrentListMapNoExtraKeys!1244 (ite c!55256 lt!193329 _keys!709) (ite c!55256 lt!193330 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421077 () Bool)

(assert (=> b!421077 (= e!250703 (and e!250705 mapRes!17967))))

(declare-fun condMapEmpty!17967 () Bool)

(declare-fun mapDefault!17967 () ValueCell!5105)

