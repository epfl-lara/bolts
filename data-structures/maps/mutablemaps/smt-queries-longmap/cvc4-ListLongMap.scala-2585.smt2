; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39340 () Bool)

(assert start!39340)

(declare-fun b_free!9599 () Bool)

(declare-fun b_next!9599 () Bool)

(assert (=> start!39340 (= b_free!9599 (not b_next!9599))))

(declare-fun tp!34325 () Bool)

(declare-fun b_and!17091 () Bool)

(assert (=> start!39340 (= tp!34325 b_and!17091)))

(declare-fun b!416763 () Bool)

(declare-fun res!242718 () Bool)

(declare-fun e!248737 () Bool)

(assert (=> b!416763 (=> (not res!242718) (not e!248737))))

(declare-datatypes ((array!25337 0))(
  ( (array!25338 (arr!12115 (Array (_ BitVec 32) (_ BitVec 64))) (size!12467 (_ BitVec 32))) )
))
(declare-fun lt!190928 () array!25337)

(declare-datatypes ((List!7053 0))(
  ( (Nil!7050) (Cons!7049 (h!7905 (_ BitVec 64)) (t!12325 List!7053)) )
))
(declare-fun arrayNoDuplicates!0 (array!25337 (_ BitVec 32) List!7053) Bool)

(assert (=> b!416763 (= res!242718 (arrayNoDuplicates!0 lt!190928 #b00000000000000000000000000000000 Nil!7050))))

(declare-fun mapNonEmpty!17748 () Bool)

(declare-fun mapRes!17748 () Bool)

(declare-fun tp!34326 () Bool)

(declare-fun e!248733 () Bool)

(assert (=> mapNonEmpty!17748 (= mapRes!17748 (and tp!34326 e!248733))))

(declare-datatypes ((V!15439 0))(
  ( (V!15440 (val!5420 Int)) )
))
(declare-datatypes ((ValueCell!5032 0))(
  ( (ValueCellFull!5032 (v!7663 V!15439)) (EmptyCell!5032) )
))
(declare-fun mapRest!17748 () (Array (_ BitVec 32) ValueCell!5032))

(declare-fun mapKey!17748 () (_ BitVec 32))

(declare-datatypes ((array!25339 0))(
  ( (array!25340 (arr!12116 (Array (_ BitVec 32) ValueCell!5032)) (size!12468 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25339)

(declare-fun mapValue!17748 () ValueCell!5032)

(assert (=> mapNonEmpty!17748 (= (arr!12116 _values!549) (store mapRest!17748 mapKey!17748 mapValue!17748))))

(declare-fun b!416764 () Bool)

(declare-fun res!242721 () Bool)

(declare-fun e!248734 () Bool)

(assert (=> b!416764 (=> (not res!242721) (not e!248734))))

(declare-fun _keys!709 () array!25337)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25337 (_ BitVec 32)) Bool)

(assert (=> b!416764 (= res!242721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17748 () Bool)

(assert (=> mapIsEmpty!17748 mapRes!17748))

(declare-fun b!416765 () Bool)

(declare-fun res!242717 () Bool)

(assert (=> b!416765 (=> (not res!242717) (not e!248734))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416765 (= res!242717 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12467 _keys!709))))))

(declare-fun e!248736 () Bool)

(declare-datatypes ((tuple2!7000 0))(
  ( (tuple2!7001 (_1!3510 (_ BitVec 64)) (_2!3510 V!15439)) )
))
(declare-datatypes ((List!7054 0))(
  ( (Nil!7051) (Cons!7050 (h!7906 tuple2!7000) (t!12326 List!7054)) )
))
(declare-datatypes ((ListLongMap!5927 0))(
  ( (ListLongMap!5928 (toList!2979 List!7054)) )
))
(declare-fun call!28973 () ListLongMap!5927)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun b!416766 () Bool)

(declare-fun v!412 () V!15439)

(declare-fun call!28972 () ListLongMap!5927)

(declare-fun +!1190 (ListLongMap!5927 tuple2!7000) ListLongMap!5927)

(assert (=> b!416766 (= e!248736 (= call!28972 (+!1190 call!28973 (tuple2!7001 k!794 v!412))))))

(declare-fun b!416767 () Bool)

(declare-fun res!242727 () Bool)

(assert (=> b!416767 (=> (not res!242727) (not e!248734))))

(assert (=> b!416767 (= res!242727 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7050))))

(declare-fun b!416768 () Bool)

(declare-fun e!248730 () Bool)

(assert (=> b!416768 (= e!248730 true)))

(declare-fun lt!190927 () ListLongMap!5927)

(declare-fun lt!190922 () V!15439)

(declare-fun lt!190919 () tuple2!7000)

(assert (=> b!416768 (= (+!1190 lt!190927 lt!190919) (+!1190 (+!1190 lt!190927 (tuple2!7001 k!794 lt!190922)) lt!190919))))

(declare-fun lt!190921 () V!15439)

(assert (=> b!416768 (= lt!190919 (tuple2!7001 k!794 lt!190921))))

(declare-datatypes ((Unit!12281 0))(
  ( (Unit!12282) )
))
(declare-fun lt!190923 () Unit!12281)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!13 (ListLongMap!5927 (_ BitVec 64) V!15439 V!15439) Unit!12281)

(assert (=> b!416768 (= lt!190923 (addSameAsAddTwiceSameKeyDiffValues!13 lt!190927 k!794 lt!190922 lt!190921))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!190929 () V!15439)

(declare-fun get!5994 (ValueCell!5032 V!15439) V!15439)

(assert (=> b!416768 (= lt!190922 (get!5994 (select (arr!12116 _values!549) from!863) lt!190929))))

(declare-fun lt!190926 () ListLongMap!5927)

(assert (=> b!416768 (= lt!190926 (+!1190 lt!190927 (tuple2!7001 (select (arr!12115 lt!190928) from!863) lt!190921)))))

(assert (=> b!416768 (= lt!190921 (get!5994 (select (store (arr!12116 _values!549) i!563 (ValueCellFull!5032 v!412)) from!863) lt!190929))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!675 (Int (_ BitVec 64)) V!15439)

(assert (=> b!416768 (= lt!190929 (dynLambda!675 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15439)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!190920 () array!25339)

(declare-fun zeroValue!515 () V!15439)

(declare-fun getCurrentListMapNoExtraKeys!1182 (array!25337 array!25339 (_ BitVec 32) (_ BitVec 32) V!15439 V!15439 (_ BitVec 32) Int) ListLongMap!5927)

(assert (=> b!416768 (= lt!190927 (getCurrentListMapNoExtraKeys!1182 lt!190928 lt!190920 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416769 () Bool)

(declare-fun tp_is_empty!10751 () Bool)

(assert (=> b!416769 (= e!248733 tp_is_empty!10751)))

(declare-fun b!416770 () Bool)

(declare-fun e!248735 () Bool)

(assert (=> b!416770 (= e!248735 tp_is_empty!10751)))

(declare-fun bm!28969 () Bool)

(declare-fun c!55037 () Bool)

(assert (=> bm!28969 (= call!28973 (getCurrentListMapNoExtraKeys!1182 (ite c!55037 _keys!709 lt!190928) (ite c!55037 _values!549 lt!190920) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416771 () Bool)

(declare-fun res!242723 () Bool)

(assert (=> b!416771 (=> (not res!242723) (not e!248734))))

(assert (=> b!416771 (= res!242723 (or (= (select (arr!12115 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12115 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!416772 () Bool)

(assert (=> b!416772 (= e!248736 (= call!28973 call!28972))))

(declare-fun b!416773 () Bool)

(declare-fun res!242728 () Bool)

(assert (=> b!416773 (=> (not res!242728) (not e!248734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416773 (= res!242728 (validKeyInArray!0 k!794))))

(declare-fun bm!28970 () Bool)

(assert (=> bm!28970 (= call!28972 (getCurrentListMapNoExtraKeys!1182 (ite c!55037 lt!190928 _keys!709) (ite c!55037 lt!190920 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416774 () Bool)

(declare-fun res!242726 () Bool)

(assert (=> b!416774 (=> (not res!242726) (not e!248734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416774 (= res!242726 (validMask!0 mask!1025))))

(declare-fun res!242719 () Bool)

(assert (=> start!39340 (=> (not res!242719) (not e!248734))))

(assert (=> start!39340 (= res!242719 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12467 _keys!709))))))

(assert (=> start!39340 e!248734))

(assert (=> start!39340 tp_is_empty!10751))

(assert (=> start!39340 tp!34325))

(assert (=> start!39340 true))

(declare-fun e!248732 () Bool)

(declare-fun array_inv!8834 (array!25339) Bool)

(assert (=> start!39340 (and (array_inv!8834 _values!549) e!248732)))

(declare-fun array_inv!8835 (array!25337) Bool)

(assert (=> start!39340 (array_inv!8835 _keys!709)))

(declare-fun b!416775 () Bool)

(declare-fun e!248731 () Bool)

(assert (=> b!416775 (= e!248731 (not e!248730))))

(declare-fun res!242722 () Bool)

(assert (=> b!416775 (=> res!242722 e!248730)))

(assert (=> b!416775 (= res!242722 (validKeyInArray!0 (select (arr!12115 _keys!709) from!863)))))

(assert (=> b!416775 e!248736))

(assert (=> b!416775 (= c!55037 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!190924 () Unit!12281)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!402 (array!25337 array!25339 (_ BitVec 32) (_ BitVec 32) V!15439 V!15439 (_ BitVec 32) (_ BitVec 64) V!15439 (_ BitVec 32) Int) Unit!12281)

(assert (=> b!416775 (= lt!190924 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!402 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416776 () Bool)

(declare-fun res!242720 () Bool)

(assert (=> b!416776 (=> (not res!242720) (not e!248737))))

(assert (=> b!416776 (= res!242720 (bvsle from!863 i!563))))

(declare-fun b!416777 () Bool)

(assert (=> b!416777 (= e!248732 (and e!248735 mapRes!17748))))

(declare-fun condMapEmpty!17748 () Bool)

(declare-fun mapDefault!17748 () ValueCell!5032)

