; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39292 () Bool)

(assert start!39292)

(declare-fun b_free!9551 () Bool)

(declare-fun b_next!9551 () Bool)

(assert (=> start!39292 (= b_free!9551 (not b_next!9551))))

(declare-fun tp!34182 () Bool)

(declare-fun b_and!16995 () Bool)

(assert (=> start!39292 (= tp!34182 b_and!16995)))

(declare-fun b!415347 () Bool)

(declare-fun res!241709 () Bool)

(declare-fun e!248087 () Bool)

(assert (=> b!415347 (=> (not res!241709) (not e!248087))))

(declare-datatypes ((array!25243 0))(
  ( (array!25244 (arr!12068 (Array (_ BitVec 32) (_ BitVec 64))) (size!12420 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25243)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415347 (= res!241709 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!415348 () Bool)

(declare-fun res!241715 () Bool)

(assert (=> b!415348 (=> (not res!241715) (not e!248087))))

(declare-datatypes ((List!7009 0))(
  ( (Nil!7006) (Cons!7005 (h!7861 (_ BitVec 64)) (t!12233 List!7009)) )
))
(declare-fun arrayNoDuplicates!0 (array!25243 (_ BitVec 32) List!7009) Bool)

(assert (=> b!415348 (= res!241715 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7006))))

(declare-fun b!415350 () Bool)

(declare-fun e!248083 () Bool)

(declare-fun tp_is_empty!10703 () Bool)

(assert (=> b!415350 (= e!248083 tp_is_empty!10703)))

(declare-fun b!415351 () Bool)

(declare-fun res!241719 () Bool)

(declare-fun e!248082 () Bool)

(assert (=> b!415351 (=> (not res!241719) (not e!248082))))

(declare-fun lt!190244 () array!25243)

(assert (=> b!415351 (= res!241719 (arrayNoDuplicates!0 lt!190244 #b00000000000000000000000000000000 Nil!7006))))

(declare-fun b!415352 () Bool)

(declare-fun res!241712 () Bool)

(assert (=> b!415352 (=> (not res!241712) (not e!248082))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415352 (= res!241712 (bvsle from!863 i!563))))

(declare-fun b!415353 () Bool)

(declare-fun e!248089 () Bool)

(assert (=> b!415353 (= e!248089 true)))

(declare-datatypes ((V!15375 0))(
  ( (V!15376 (val!5396 Int)) )
))
(declare-fun minValue!515 () V!15375)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6954 0))(
  ( (tuple2!6955 (_1!3487 (_ BitVec 64)) (_2!3487 V!15375)) )
))
(declare-datatypes ((List!7010 0))(
  ( (Nil!7007) (Cons!7006 (h!7862 tuple2!6954) (t!12234 List!7010)) )
))
(declare-datatypes ((ListLongMap!5881 0))(
  ( (ListLongMap!5882 (toList!2956 List!7010)) )
))
(declare-fun lt!190241 () ListLongMap!5881)

(declare-fun zeroValue!515 () V!15375)

(declare-datatypes ((ValueCell!5008 0))(
  ( (ValueCellFull!5008 (v!7639 V!15375)) (EmptyCell!5008) )
))
(declare-datatypes ((array!25245 0))(
  ( (array!25246 (arr!12069 (Array (_ BitVec 32) ValueCell!5008)) (size!12421 (_ BitVec 32))) )
))
(declare-fun lt!190242 () array!25245)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun +!1169 (ListLongMap!5881 tuple2!6954) ListLongMap!5881)

(declare-fun getCurrentListMapNoExtraKeys!1160 (array!25243 array!25245 (_ BitVec 32) (_ BitVec 32) V!15375 V!15375 (_ BitVec 32) Int) ListLongMap!5881)

(declare-fun get!5961 (ValueCell!5008 V!15375) V!15375)

(declare-fun dynLambda!658 (Int (_ BitVec 64)) V!15375)

(assert (=> b!415353 (= lt!190241 (+!1169 (getCurrentListMapNoExtraKeys!1160 lt!190244 lt!190242 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6955 (select (arr!12068 lt!190244) from!863) (get!5961 (select (arr!12069 lt!190242) from!863) (dynLambda!658 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!248084 () Bool)

(declare-fun b!415354 () Bool)

(declare-fun v!412 () V!15375)

(declare-fun call!28829 () ListLongMap!5881)

(declare-fun call!28828 () ListLongMap!5881)

(assert (=> b!415354 (= e!248084 (= call!28829 (+!1169 call!28828 (tuple2!6955 k!794 v!412))))))

(declare-fun mapNonEmpty!17676 () Bool)

(declare-fun mapRes!17676 () Bool)

(declare-fun tp!34181 () Bool)

(declare-fun e!248081 () Bool)

(assert (=> mapNonEmpty!17676 (= mapRes!17676 (and tp!34181 e!248081))))

(declare-fun mapValue!17676 () ValueCell!5008)

(declare-fun mapKey!17676 () (_ BitVec 32))

(declare-fun mapRest!17676 () (Array (_ BitVec 32) ValueCell!5008))

(declare-fun _values!549 () array!25245)

(assert (=> mapNonEmpty!17676 (= (arr!12069 _values!549) (store mapRest!17676 mapKey!17676 mapValue!17676))))

(declare-fun b!415355 () Bool)

(assert (=> b!415355 (= e!248084 (= call!28828 call!28829))))

(declare-fun b!415356 () Bool)

(declare-fun e!248085 () Bool)

(assert (=> b!415356 (= e!248082 e!248085)))

(declare-fun res!241713 () Bool)

(assert (=> b!415356 (=> (not res!241713) (not e!248085))))

(assert (=> b!415356 (= res!241713 (= from!863 i!563))))

(assert (=> b!415356 (= lt!190241 (getCurrentListMapNoExtraKeys!1160 lt!190244 lt!190242 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!415356 (= lt!190242 (array!25246 (store (arr!12069 _values!549) i!563 (ValueCellFull!5008 v!412)) (size!12421 _values!549)))))

(declare-fun lt!190245 () ListLongMap!5881)

(assert (=> b!415356 (= lt!190245 (getCurrentListMapNoExtraKeys!1160 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!415357 () Bool)

(declare-fun res!241722 () Bool)

(assert (=> b!415357 (=> (not res!241722) (not e!248087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415357 (= res!241722 (validMask!0 mask!1025))))

(declare-fun b!415358 () Bool)

(assert (=> b!415358 (= e!248085 (not e!248089))))

(declare-fun res!241721 () Bool)

(assert (=> b!415358 (=> res!241721 e!248089)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415358 (= res!241721 (validKeyInArray!0 (select (arr!12068 _keys!709) from!863)))))

(assert (=> b!415358 e!248084))

(declare-fun c!54965 () Bool)

(assert (=> b!415358 (= c!54965 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12239 0))(
  ( (Unit!12240) )
))
(declare-fun lt!190243 () Unit!12239)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!382 (array!25243 array!25245 (_ BitVec 32) (_ BitVec 32) V!15375 V!15375 (_ BitVec 32) (_ BitVec 64) V!15375 (_ BitVec 32) Int) Unit!12239)

(assert (=> b!415358 (= lt!190243 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!382 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415359 () Bool)

(declare-fun res!241714 () Bool)

(assert (=> b!415359 (=> (not res!241714) (not e!248087))))

(assert (=> b!415359 (= res!241714 (or (= (select (arr!12068 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12068 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!415360 () Bool)

(declare-fun res!241710 () Bool)

(assert (=> b!415360 (=> (not res!241710) (not e!248087))))

(assert (=> b!415360 (= res!241710 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12420 _keys!709))))))

(declare-fun bm!28825 () Bool)

(assert (=> bm!28825 (= call!28828 (getCurrentListMapNoExtraKeys!1160 (ite c!54965 _keys!709 lt!190244) (ite c!54965 _values!549 lt!190242) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415361 () Bool)

(declare-fun res!241711 () Bool)

(assert (=> b!415361 (=> (not res!241711) (not e!248087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25243 (_ BitVec 32)) Bool)

(assert (=> b!415361 (= res!241711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!415362 () Bool)

(declare-fun res!241720 () Bool)

(assert (=> b!415362 (=> (not res!241720) (not e!248087))))

(assert (=> b!415362 (= res!241720 (and (= (size!12421 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12420 _keys!709) (size!12421 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!28826 () Bool)

(assert (=> bm!28826 (= call!28829 (getCurrentListMapNoExtraKeys!1160 (ite c!54965 lt!190244 _keys!709) (ite c!54965 lt!190242 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!241718 () Bool)

(assert (=> start!39292 (=> (not res!241718) (not e!248087))))

(assert (=> start!39292 (= res!241718 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12420 _keys!709))))))

(assert (=> start!39292 e!248087))

(assert (=> start!39292 tp_is_empty!10703))

(assert (=> start!39292 tp!34182))

(assert (=> start!39292 true))

(declare-fun e!248088 () Bool)

(declare-fun array_inv!8802 (array!25245) Bool)

(assert (=> start!39292 (and (array_inv!8802 _values!549) e!248088)))

(declare-fun array_inv!8803 (array!25243) Bool)

(assert (=> start!39292 (array_inv!8803 _keys!709)))

(declare-fun b!415349 () Bool)

(assert (=> b!415349 (= e!248081 tp_is_empty!10703)))

(declare-fun b!415363 () Bool)

(declare-fun res!241717 () Bool)

(assert (=> b!415363 (=> (not res!241717) (not e!248087))))

(assert (=> b!415363 (= res!241717 (validKeyInArray!0 k!794))))

(declare-fun b!415364 () Bool)

(assert (=> b!415364 (= e!248087 e!248082)))

(declare-fun res!241716 () Bool)

(assert (=> b!415364 (=> (not res!241716) (not e!248082))))

(assert (=> b!415364 (= res!241716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190244 mask!1025))))

(assert (=> b!415364 (= lt!190244 (array!25244 (store (arr!12068 _keys!709) i!563 k!794) (size!12420 _keys!709)))))

(declare-fun mapIsEmpty!17676 () Bool)

(assert (=> mapIsEmpty!17676 mapRes!17676))

(declare-fun b!415365 () Bool)

(assert (=> b!415365 (= e!248088 (and e!248083 mapRes!17676))))

(declare-fun condMapEmpty!17676 () Bool)

(declare-fun mapDefault!17676 () ValueCell!5008)

