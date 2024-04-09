; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39290 () Bool)

(assert start!39290)

(declare-fun b_free!9549 () Bool)

(declare-fun b_next!9549 () Bool)

(assert (=> start!39290 (= b_free!9549 (not b_next!9549))))

(declare-fun tp!34176 () Bool)

(declare-fun b_and!16991 () Bool)

(assert (=> start!39290 (= tp!34176 b_and!16991)))

(declare-fun mapNonEmpty!17673 () Bool)

(declare-fun mapRes!17673 () Bool)

(declare-fun tp!34175 () Bool)

(declare-fun e!248059 () Bool)

(assert (=> mapNonEmpty!17673 (= mapRes!17673 (and tp!34175 e!248059))))

(declare-datatypes ((V!15373 0))(
  ( (V!15374 (val!5395 Int)) )
))
(declare-datatypes ((ValueCell!5007 0))(
  ( (ValueCellFull!5007 (v!7638 V!15373)) (EmptyCell!5007) )
))
(declare-fun mapRest!17673 () (Array (_ BitVec 32) ValueCell!5007))

(declare-datatypes ((array!25239 0))(
  ( (array!25240 (arr!12066 (Array (_ BitVec 32) ValueCell!5007)) (size!12418 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25239)

(declare-fun mapKey!17673 () (_ BitVec 32))

(declare-fun mapValue!17673 () ValueCell!5007)

(assert (=> mapNonEmpty!17673 (= (arr!12066 _values!549) (store mapRest!17673 mapKey!17673 mapValue!17673))))

(declare-fun b!415288 () Bool)

(declare-fun res!241674 () Bool)

(declare-fun e!248058 () Bool)

(assert (=> b!415288 (=> (not res!241674) (not e!248058))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25241 0))(
  ( (array!25242 (arr!12067 (Array (_ BitVec 32) (_ BitVec 64))) (size!12419 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25241)

(assert (=> b!415288 (= res!241674 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12419 _keys!709))))))

(declare-fun e!248057 () Bool)

(declare-datatypes ((tuple2!6952 0))(
  ( (tuple2!6953 (_1!3486 (_ BitVec 64)) (_2!3486 V!15373)) )
))
(declare-datatypes ((List!7007 0))(
  ( (Nil!7004) (Cons!7003 (h!7859 tuple2!6952) (t!12229 List!7007)) )
))
(declare-datatypes ((ListLongMap!5879 0))(
  ( (ListLongMap!5880 (toList!2955 List!7007)) )
))
(declare-fun call!28822 () ListLongMap!5879)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun call!28823 () ListLongMap!5879)

(declare-fun b!415289 () Bool)

(declare-fun v!412 () V!15373)

(declare-fun +!1168 (ListLongMap!5879 tuple2!6952) ListLongMap!5879)

(assert (=> b!415289 (= e!248057 (= call!28823 (+!1168 call!28822 (tuple2!6953 k0!794 v!412))))))

(declare-fun b!415290 () Bool)

(declare-fun res!241671 () Bool)

(assert (=> b!415290 (=> (not res!241671) (not e!248058))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!415290 (= res!241671 (and (= (size!12418 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12419 _keys!709) (size!12418 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!190226 () array!25239)

(declare-fun zeroValue!515 () V!15373)

(declare-fun lt!190230 () array!25241)

(declare-fun bm!28819 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15373)

(declare-fun c!54962 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1159 (array!25241 array!25239 (_ BitVec 32) (_ BitVec 32) V!15373 V!15373 (_ BitVec 32) Int) ListLongMap!5879)

(assert (=> bm!28819 (= call!28823 (getCurrentListMapNoExtraKeys!1159 (ite c!54962 lt!190230 _keys!709) (ite c!54962 lt!190226 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415291 () Bool)

(declare-fun res!241672 () Bool)

(assert (=> b!415291 (=> (not res!241672) (not e!248058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415291 (= res!241672 (validKeyInArray!0 k0!794))))

(declare-fun b!415292 () Bool)

(declare-fun res!241679 () Bool)

(declare-fun e!248062 () Bool)

(assert (=> b!415292 (=> (not res!241679) (not e!248062))))

(declare-datatypes ((List!7008 0))(
  ( (Nil!7005) (Cons!7004 (h!7860 (_ BitVec 64)) (t!12230 List!7008)) )
))
(declare-fun arrayNoDuplicates!0 (array!25241 (_ BitVec 32) List!7008) Bool)

(assert (=> b!415292 (= res!241679 (arrayNoDuplicates!0 lt!190230 #b00000000000000000000000000000000 Nil!7005))))

(declare-fun mapIsEmpty!17673 () Bool)

(assert (=> mapIsEmpty!17673 mapRes!17673))

(declare-fun b!415294 () Bool)

(declare-fun e!248060 () Bool)

(assert (=> b!415294 (= e!248060 true)))

(declare-fun lt!190229 () ListLongMap!5879)

(declare-fun get!5960 (ValueCell!5007 V!15373) V!15373)

(declare-fun dynLambda!657 (Int (_ BitVec 64)) V!15373)

(assert (=> b!415294 (= lt!190229 (+!1168 (getCurrentListMapNoExtraKeys!1159 lt!190230 lt!190226 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6953 (select (arr!12067 lt!190230) from!863) (get!5960 (select (arr!12066 lt!190226) from!863) (dynLambda!657 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!28820 () Bool)

(assert (=> bm!28820 (= call!28822 (getCurrentListMapNoExtraKeys!1159 (ite c!54962 _keys!709 lt!190230) (ite c!54962 _values!549 lt!190226) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415295 () Bool)

(declare-fun res!241669 () Bool)

(assert (=> b!415295 (=> (not res!241669) (not e!248058))))

(declare-fun arrayContainsKey!0 (array!25241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415295 (= res!241669 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!415296 () Bool)

(assert (=> b!415296 (= e!248058 e!248062)))

(declare-fun res!241676 () Bool)

(assert (=> b!415296 (=> (not res!241676) (not e!248062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25241 (_ BitVec 32)) Bool)

(assert (=> b!415296 (= res!241676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190230 mask!1025))))

(assert (=> b!415296 (= lt!190230 (array!25242 (store (arr!12067 _keys!709) i!563 k0!794) (size!12419 _keys!709)))))

(declare-fun b!415297 () Bool)

(declare-fun e!248056 () Bool)

(declare-fun tp_is_empty!10701 () Bool)

(assert (=> b!415297 (= e!248056 tp_is_empty!10701)))

(declare-fun b!415298 () Bool)

(declare-fun res!241677 () Bool)

(assert (=> b!415298 (=> (not res!241677) (not e!248058))))

(assert (=> b!415298 (= res!241677 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7005))))

(declare-fun b!415299 () Bool)

(declare-fun res!241675 () Bool)

(assert (=> b!415299 (=> (not res!241675) (not e!248058))))

(assert (=> b!415299 (= res!241675 (or (= (select (arr!12067 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12067 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!415300 () Bool)

(declare-fun res!241667 () Bool)

(assert (=> b!415300 (=> (not res!241667) (not e!248058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415300 (= res!241667 (validMask!0 mask!1025))))

(declare-fun b!415301 () Bool)

(declare-fun e!248055 () Bool)

(assert (=> b!415301 (= e!248062 e!248055)))

(declare-fun res!241680 () Bool)

(assert (=> b!415301 (=> (not res!241680) (not e!248055))))

(assert (=> b!415301 (= res!241680 (= from!863 i!563))))

(assert (=> b!415301 (= lt!190229 (getCurrentListMapNoExtraKeys!1159 lt!190230 lt!190226 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!415301 (= lt!190226 (array!25240 (store (arr!12066 _values!549) i!563 (ValueCellFull!5007 v!412)) (size!12418 _values!549)))))

(declare-fun lt!190228 () ListLongMap!5879)

(assert (=> b!415301 (= lt!190228 (getCurrentListMapNoExtraKeys!1159 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!415302 () Bool)

(assert (=> b!415302 (= e!248059 tp_is_empty!10701)))

(declare-fun b!415303 () Bool)

(declare-fun res!241673 () Bool)

(assert (=> b!415303 (=> (not res!241673) (not e!248058))))

(assert (=> b!415303 (= res!241673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!415304 () Bool)

(declare-fun e!248061 () Bool)

(assert (=> b!415304 (= e!248061 (and e!248056 mapRes!17673))))

(declare-fun condMapEmpty!17673 () Bool)

(declare-fun mapDefault!17673 () ValueCell!5007)

(assert (=> b!415304 (= condMapEmpty!17673 (= (arr!12066 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5007)) mapDefault!17673)))))

(declare-fun b!415293 () Bool)

(assert (=> b!415293 (= e!248057 (= call!28822 call!28823))))

(declare-fun res!241670 () Bool)

(assert (=> start!39290 (=> (not res!241670) (not e!248058))))

(assert (=> start!39290 (= res!241670 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12419 _keys!709))))))

(assert (=> start!39290 e!248058))

(assert (=> start!39290 tp_is_empty!10701))

(assert (=> start!39290 tp!34176))

(assert (=> start!39290 true))

(declare-fun array_inv!8800 (array!25239) Bool)

(assert (=> start!39290 (and (array_inv!8800 _values!549) e!248061)))

(declare-fun array_inv!8801 (array!25241) Bool)

(assert (=> start!39290 (array_inv!8801 _keys!709)))

(declare-fun b!415305 () Bool)

(declare-fun res!241678 () Bool)

(assert (=> b!415305 (=> (not res!241678) (not e!248062))))

(assert (=> b!415305 (= res!241678 (bvsle from!863 i!563))))

(declare-fun b!415306 () Bool)

(assert (=> b!415306 (= e!248055 (not e!248060))))

(declare-fun res!241668 () Bool)

(assert (=> b!415306 (=> res!241668 e!248060)))

(assert (=> b!415306 (= res!241668 (validKeyInArray!0 (select (arr!12067 _keys!709) from!863)))))

(assert (=> b!415306 e!248057))

(assert (=> b!415306 (= c!54962 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12237 0))(
  ( (Unit!12238) )
))
(declare-fun lt!190227 () Unit!12237)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!381 (array!25241 array!25239 (_ BitVec 32) (_ BitVec 32) V!15373 V!15373 (_ BitVec 32) (_ BitVec 64) V!15373 (_ BitVec 32) Int) Unit!12237)

(assert (=> b!415306 (= lt!190227 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!381 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!39290 res!241670) b!415300))

(assert (= (and b!415300 res!241667) b!415290))

(assert (= (and b!415290 res!241671) b!415303))

(assert (= (and b!415303 res!241673) b!415298))

(assert (= (and b!415298 res!241677) b!415288))

(assert (= (and b!415288 res!241674) b!415291))

(assert (= (and b!415291 res!241672) b!415299))

(assert (= (and b!415299 res!241675) b!415295))

(assert (= (and b!415295 res!241669) b!415296))

(assert (= (and b!415296 res!241676) b!415292))

(assert (= (and b!415292 res!241679) b!415305))

(assert (= (and b!415305 res!241678) b!415301))

(assert (= (and b!415301 res!241680) b!415306))

(assert (= (and b!415306 c!54962) b!415289))

(assert (= (and b!415306 (not c!54962)) b!415293))

(assert (= (or b!415289 b!415293) bm!28819))

(assert (= (or b!415289 b!415293) bm!28820))

(assert (= (and b!415306 (not res!241668)) b!415294))

(assert (= (and b!415304 condMapEmpty!17673) mapIsEmpty!17673))

(assert (= (and b!415304 (not condMapEmpty!17673)) mapNonEmpty!17673))

(get-info :version)

(assert (= (and mapNonEmpty!17673 ((_ is ValueCellFull!5007) mapValue!17673)) b!415302))

(assert (= (and b!415304 ((_ is ValueCellFull!5007) mapDefault!17673)) b!415297))

(assert (= start!39290 b!415304))

(declare-fun b_lambda!8883 () Bool)

(assert (=> (not b_lambda!8883) (not b!415294)))

(declare-fun t!12228 () Bool)

(declare-fun tb!3179 () Bool)

(assert (=> (and start!39290 (= defaultEntry!557 defaultEntry!557) t!12228) tb!3179))

(declare-fun result!5877 () Bool)

(assert (=> tb!3179 (= result!5877 tp_is_empty!10701)))

(assert (=> b!415294 t!12228))

(declare-fun b_and!16993 () Bool)

(assert (= b_and!16991 (and (=> t!12228 result!5877) b_and!16993)))

(declare-fun m!404463 () Bool)

(assert (=> b!415295 m!404463))

(declare-fun m!404465 () Bool)

(assert (=> b!415301 m!404465))

(declare-fun m!404467 () Bool)

(assert (=> b!415301 m!404467))

(declare-fun m!404469 () Bool)

(assert (=> b!415301 m!404469))

(declare-fun m!404471 () Bool)

(assert (=> b!415298 m!404471))

(declare-fun m!404473 () Bool)

(assert (=> b!415306 m!404473))

(assert (=> b!415306 m!404473))

(declare-fun m!404475 () Bool)

(assert (=> b!415306 m!404475))

(declare-fun m!404477 () Bool)

(assert (=> b!415306 m!404477))

(declare-fun m!404479 () Bool)

(assert (=> b!415289 m!404479))

(declare-fun m!404481 () Bool)

(assert (=> b!415300 m!404481))

(declare-fun m!404483 () Bool)

(assert (=> b!415299 m!404483))

(declare-fun m!404485 () Bool)

(assert (=> start!39290 m!404485))

(declare-fun m!404487 () Bool)

(assert (=> start!39290 m!404487))

(declare-fun m!404489 () Bool)

(assert (=> bm!28820 m!404489))

(declare-fun m!404491 () Bool)

(assert (=> b!415292 m!404491))

(declare-fun m!404493 () Bool)

(assert (=> mapNonEmpty!17673 m!404493))

(declare-fun m!404495 () Bool)

(assert (=> b!415296 m!404495))

(declare-fun m!404497 () Bool)

(assert (=> b!415296 m!404497))

(declare-fun m!404499 () Bool)

(assert (=> b!415291 m!404499))

(declare-fun m!404501 () Bool)

(assert (=> b!415294 m!404501))

(declare-fun m!404503 () Bool)

(assert (=> b!415294 m!404503))

(declare-fun m!404505 () Bool)

(assert (=> b!415294 m!404505))

(declare-fun m!404507 () Bool)

(assert (=> b!415294 m!404507))

(assert (=> b!415294 m!404501))

(declare-fun m!404509 () Bool)

(assert (=> b!415294 m!404509))

(assert (=> b!415294 m!404503))

(declare-fun m!404511 () Bool)

(assert (=> b!415294 m!404511))

(assert (=> b!415294 m!404507))

(declare-fun m!404513 () Bool)

(assert (=> bm!28819 m!404513))

(declare-fun m!404515 () Bool)

(assert (=> b!415303 m!404515))

(check-sat (not start!39290) (not b!415300) (not bm!28819) (not b!415291) (not b_lambda!8883) (not b!415296) (not b!415301) (not b_next!9549) (not b!415294) (not b!415306) tp_is_empty!10701 b_and!16993 (not b!415295) (not b!415303) (not bm!28820) (not mapNonEmpty!17673) (not b!415289) (not b!415298) (not b!415292))
(check-sat b_and!16993 (not b_next!9549))
