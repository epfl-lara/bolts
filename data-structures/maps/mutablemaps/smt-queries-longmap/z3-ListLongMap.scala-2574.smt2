; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39272 () Bool)

(assert start!39272)

(declare-fun b_free!9531 () Bool)

(declare-fun b_next!9531 () Bool)

(assert (=> start!39272 (= b_free!9531 (not b_next!9531))))

(declare-fun tp!34122 () Bool)

(declare-fun b_and!16955 () Bool)

(assert (=> start!39272 (= tp!34122 b_and!16955)))

(declare-fun b!414757 () Bool)

(declare-fun res!241289 () Bool)

(declare-fun e!247814 () Bool)

(assert (=> b!414757 (=> (not res!241289) (not e!247814))))

(declare-datatypes ((array!25203 0))(
  ( (array!25204 (arr!12048 (Array (_ BitVec 32) (_ BitVec 64))) (size!12400 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25203)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15349 0))(
  ( (V!15350 (val!5386 Int)) )
))
(declare-datatypes ((ValueCell!4998 0))(
  ( (ValueCellFull!4998 (v!7629 V!15349)) (EmptyCell!4998) )
))
(declare-datatypes ((array!25205 0))(
  ( (array!25206 (arr!12049 (Array (_ BitVec 32) ValueCell!4998)) (size!12401 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25205)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!414757 (= res!241289 (and (= (size!12401 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12400 _keys!709) (size!12401 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!414758 () Bool)

(declare-fun res!241302 () Bool)

(declare-fun e!247818 () Bool)

(assert (=> b!414758 (=> (not res!241302) (not e!247818))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414758 (= res!241302 (bvsle from!863 i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6936 0))(
  ( (tuple2!6937 (_1!3478 (_ BitVec 64)) (_2!3478 V!15349)) )
))
(declare-datatypes ((List!6993 0))(
  ( (Nil!6990) (Cons!6989 (h!7845 tuple2!6936) (t!12197 List!6993)) )
))
(declare-datatypes ((ListLongMap!5863 0))(
  ( (ListLongMap!5864 (toList!2947 List!6993)) )
))
(declare-fun call!28769 () ListLongMap!5863)

(declare-fun zeroValue!515 () V!15349)

(declare-fun lt!190094 () array!25205)

(declare-fun minValue!515 () V!15349)

(declare-fun lt!190092 () array!25203)

(declare-fun c!54935 () Bool)

(declare-fun bm!28765 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1153 (array!25203 array!25205 (_ BitVec 32) (_ BitVec 32) V!15349 V!15349 (_ BitVec 32) Int) ListLongMap!5863)

(assert (=> bm!28765 (= call!28769 (getCurrentListMapNoExtraKeys!1153 (ite c!54935 _keys!709 lt!190092) (ite c!54935 _values!549 lt!190094) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414759 () Bool)

(declare-fun res!241299 () Bool)

(assert (=> b!414759 (=> (not res!241299) (not e!247814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25203 (_ BitVec 32)) Bool)

(assert (=> b!414759 (= res!241299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!414760 () Bool)

(assert (=> b!414760 (= e!247814 e!247818)))

(declare-fun res!241298 () Bool)

(assert (=> b!414760 (=> (not res!241298) (not e!247818))))

(assert (=> b!414760 (= res!241298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190092 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!414760 (= lt!190092 (array!25204 (store (arr!12048 _keys!709) i!563 k0!794) (size!12400 _keys!709)))))

(declare-fun b!414761 () Bool)

(declare-fun res!241300 () Bool)

(assert (=> b!414761 (=> (not res!241300) (not e!247814))))

(declare-fun arrayContainsKey!0 (array!25203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414761 (= res!241300 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17646 () Bool)

(declare-fun mapRes!17646 () Bool)

(declare-fun tp!34121 () Bool)

(declare-fun e!247815 () Bool)

(assert (=> mapNonEmpty!17646 (= mapRes!17646 (and tp!34121 e!247815))))

(declare-fun mapKey!17646 () (_ BitVec 32))

(declare-fun mapRest!17646 () (Array (_ BitVec 32) ValueCell!4998))

(declare-fun mapValue!17646 () ValueCell!4998)

(assert (=> mapNonEmpty!17646 (= (arr!12049 _values!549) (store mapRest!17646 mapKey!17646 mapValue!17646))))

(declare-fun mapIsEmpty!17646 () Bool)

(assert (=> mapIsEmpty!17646 mapRes!17646))

(declare-fun b!414762 () Bool)

(declare-fun res!241292 () Bool)

(assert (=> b!414762 (=> (not res!241292) (not e!247814))))

(declare-datatypes ((List!6994 0))(
  ( (Nil!6991) (Cons!6990 (h!7846 (_ BitVec 64)) (t!12198 List!6994)) )
))
(declare-fun arrayNoDuplicates!0 (array!25203 (_ BitVec 32) List!6994) Bool)

(assert (=> b!414762 (= res!241292 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6991))))

(declare-fun call!28768 () ListLongMap!5863)

(declare-fun v!412 () V!15349)

(declare-fun b!414763 () Bool)

(declare-fun e!247816 () Bool)

(declare-fun +!1162 (ListLongMap!5863 tuple2!6936) ListLongMap!5863)

(assert (=> b!414763 (= e!247816 (= call!28768 (+!1162 call!28769 (tuple2!6937 k0!794 v!412))))))

(declare-fun b!414764 () Bool)

(declare-fun res!241301 () Bool)

(assert (=> b!414764 (=> (not res!241301) (not e!247818))))

(assert (=> b!414764 (= res!241301 (arrayNoDuplicates!0 lt!190092 #b00000000000000000000000000000000 Nil!6991))))

(declare-fun b!414765 () Bool)

(declare-fun e!247812 () Bool)

(declare-fun e!247813 () Bool)

(assert (=> b!414765 (= e!247812 (not e!247813))))

(declare-fun res!241297 () Bool)

(assert (=> b!414765 (=> res!241297 e!247813)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414765 (= res!241297 (validKeyInArray!0 (select (arr!12048 _keys!709) from!863)))))

(assert (=> b!414765 e!247816))

(assert (=> b!414765 (= c!54935 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12225 0))(
  ( (Unit!12226) )
))
(declare-fun lt!190091 () Unit!12225)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!375 (array!25203 array!25205 (_ BitVec 32) (_ BitVec 32) V!15349 V!15349 (_ BitVec 32) (_ BitVec 64) V!15349 (_ BitVec 32) Int) Unit!12225)

(assert (=> b!414765 (= lt!190091 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!375 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!241295 () Bool)

(assert (=> start!39272 (=> (not res!241295) (not e!247814))))

(assert (=> start!39272 (= res!241295 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12400 _keys!709))))))

(assert (=> start!39272 e!247814))

(declare-fun tp_is_empty!10683 () Bool)

(assert (=> start!39272 tp_is_empty!10683))

(assert (=> start!39272 tp!34122))

(assert (=> start!39272 true))

(declare-fun e!247811 () Bool)

(declare-fun array_inv!8786 (array!25205) Bool)

(assert (=> start!39272 (and (array_inv!8786 _values!549) e!247811)))

(declare-fun array_inv!8787 (array!25203) Bool)

(assert (=> start!39272 (array_inv!8787 _keys!709)))

(declare-fun b!414766 () Bool)

(assert (=> b!414766 (= e!247816 (= call!28769 call!28768))))

(declare-fun b!414767 () Bool)

(assert (=> b!414767 (= e!247815 tp_is_empty!10683)))

(declare-fun bm!28766 () Bool)

(assert (=> bm!28766 (= call!28768 (getCurrentListMapNoExtraKeys!1153 (ite c!54935 lt!190092 _keys!709) (ite c!54935 lt!190094 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414768 () Bool)

(assert (=> b!414768 (= e!247813 true)))

(declare-fun lt!190093 () ListLongMap!5863)

(declare-fun get!5949 (ValueCell!4998 V!15349) V!15349)

(declare-fun dynLambda!652 (Int (_ BitVec 64)) V!15349)

(assert (=> b!414768 (= lt!190093 (+!1162 (getCurrentListMapNoExtraKeys!1153 lt!190092 lt!190094 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6937 (select (arr!12048 lt!190092) from!863) (get!5949 (select (arr!12049 lt!190094) from!863) (dynLambda!652 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!414769 () Bool)

(declare-fun e!247817 () Bool)

(assert (=> b!414769 (= e!247817 tp_is_empty!10683)))

(declare-fun b!414770 () Bool)

(declare-fun res!241293 () Bool)

(assert (=> b!414770 (=> (not res!241293) (not e!247814))))

(assert (=> b!414770 (= res!241293 (validKeyInArray!0 k0!794))))

(declare-fun b!414771 () Bool)

(declare-fun res!241294 () Bool)

(assert (=> b!414771 (=> (not res!241294) (not e!247814))))

(assert (=> b!414771 (= res!241294 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12400 _keys!709))))))

(declare-fun b!414772 () Bool)

(assert (=> b!414772 (= e!247818 e!247812)))

(declare-fun res!241296 () Bool)

(assert (=> b!414772 (=> (not res!241296) (not e!247812))))

(assert (=> b!414772 (= res!241296 (= from!863 i!563))))

(assert (=> b!414772 (= lt!190093 (getCurrentListMapNoExtraKeys!1153 lt!190092 lt!190094 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!414772 (= lt!190094 (array!25206 (store (arr!12049 _values!549) i!563 (ValueCellFull!4998 v!412)) (size!12401 _values!549)))))

(declare-fun lt!190095 () ListLongMap!5863)

(assert (=> b!414772 (= lt!190095 (getCurrentListMapNoExtraKeys!1153 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!414773 () Bool)

(assert (=> b!414773 (= e!247811 (and e!247817 mapRes!17646))))

(declare-fun condMapEmpty!17646 () Bool)

(declare-fun mapDefault!17646 () ValueCell!4998)

(assert (=> b!414773 (= condMapEmpty!17646 (= (arr!12049 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4998)) mapDefault!17646)))))

(declare-fun b!414774 () Bool)

(declare-fun res!241291 () Bool)

(assert (=> b!414774 (=> (not res!241291) (not e!247814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414774 (= res!241291 (validMask!0 mask!1025))))

(declare-fun b!414775 () Bool)

(declare-fun res!241290 () Bool)

(assert (=> b!414775 (=> (not res!241290) (not e!247814))))

(assert (=> b!414775 (= res!241290 (or (= (select (arr!12048 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12048 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39272 res!241295) b!414774))

(assert (= (and b!414774 res!241291) b!414757))

(assert (= (and b!414757 res!241289) b!414759))

(assert (= (and b!414759 res!241299) b!414762))

(assert (= (and b!414762 res!241292) b!414771))

(assert (= (and b!414771 res!241294) b!414770))

(assert (= (and b!414770 res!241293) b!414775))

(assert (= (and b!414775 res!241290) b!414761))

(assert (= (and b!414761 res!241300) b!414760))

(assert (= (and b!414760 res!241298) b!414764))

(assert (= (and b!414764 res!241301) b!414758))

(assert (= (and b!414758 res!241302) b!414772))

(assert (= (and b!414772 res!241296) b!414765))

(assert (= (and b!414765 c!54935) b!414763))

(assert (= (and b!414765 (not c!54935)) b!414766))

(assert (= (or b!414763 b!414766) bm!28766))

(assert (= (or b!414763 b!414766) bm!28765))

(assert (= (and b!414765 (not res!241297)) b!414768))

(assert (= (and b!414773 condMapEmpty!17646) mapIsEmpty!17646))

(assert (= (and b!414773 (not condMapEmpty!17646)) mapNonEmpty!17646))

(get-info :version)

(assert (= (and mapNonEmpty!17646 ((_ is ValueCellFull!4998) mapValue!17646)) b!414767))

(assert (= (and b!414773 ((_ is ValueCellFull!4998) mapDefault!17646)) b!414769))

(assert (= start!39272 b!414773))

(declare-fun b_lambda!8865 () Bool)

(assert (=> (not b_lambda!8865) (not b!414768)))

(declare-fun t!12196 () Bool)

(declare-fun tb!3161 () Bool)

(assert (=> (and start!39272 (= defaultEntry!557 defaultEntry!557) t!12196) tb!3161))

(declare-fun result!5841 () Bool)

(assert (=> tb!3161 (= result!5841 tp_is_empty!10683)))

(assert (=> b!414768 t!12196))

(declare-fun b_and!16957 () Bool)

(assert (= b_and!16955 (and (=> t!12196 result!5841) b_and!16957)))

(declare-fun m!403977 () Bool)

(assert (=> b!414770 m!403977))

(declare-fun m!403979 () Bool)

(assert (=> b!414774 m!403979))

(declare-fun m!403981 () Bool)

(assert (=> start!39272 m!403981))

(declare-fun m!403983 () Bool)

(assert (=> start!39272 m!403983))

(declare-fun m!403985 () Bool)

(assert (=> b!414768 m!403985))

(declare-fun m!403987 () Bool)

(assert (=> b!414768 m!403987))

(assert (=> b!414768 m!403985))

(declare-fun m!403989 () Bool)

(assert (=> b!414768 m!403989))

(declare-fun m!403991 () Bool)

(assert (=> b!414768 m!403991))

(declare-fun m!403993 () Bool)

(assert (=> b!414768 m!403993))

(assert (=> b!414768 m!403987))

(declare-fun m!403995 () Bool)

(assert (=> b!414768 m!403995))

(assert (=> b!414768 m!403991))

(declare-fun m!403997 () Bool)

(assert (=> b!414760 m!403997))

(declare-fun m!403999 () Bool)

(assert (=> b!414760 m!403999))

(declare-fun m!404001 () Bool)

(assert (=> b!414759 m!404001))

(declare-fun m!404003 () Bool)

(assert (=> bm!28766 m!404003))

(declare-fun m!404005 () Bool)

(assert (=> b!414764 m!404005))

(declare-fun m!404007 () Bool)

(assert (=> b!414761 m!404007))

(declare-fun m!404009 () Bool)

(assert (=> b!414763 m!404009))

(declare-fun m!404011 () Bool)

(assert (=> b!414765 m!404011))

(assert (=> b!414765 m!404011))

(declare-fun m!404013 () Bool)

(assert (=> b!414765 m!404013))

(declare-fun m!404015 () Bool)

(assert (=> b!414765 m!404015))

(declare-fun m!404017 () Bool)

(assert (=> bm!28765 m!404017))

(declare-fun m!404019 () Bool)

(assert (=> b!414762 m!404019))

(declare-fun m!404021 () Bool)

(assert (=> b!414775 m!404021))

(declare-fun m!404023 () Bool)

(assert (=> mapNonEmpty!17646 m!404023))

(declare-fun m!404025 () Bool)

(assert (=> b!414772 m!404025))

(declare-fun m!404027 () Bool)

(assert (=> b!414772 m!404027))

(declare-fun m!404029 () Bool)

(assert (=> b!414772 m!404029))

(check-sat (not mapNonEmpty!17646) (not b!414760) (not b!414770) (not b!414764) (not b!414772) (not b!414759) (not b!414774) (not bm!28765) b_and!16957 (not b_lambda!8865) (not b!414761) (not b!414768) (not bm!28766) (not start!39272) (not b!414762) (not b!414763) (not b!414765) (not b_next!9531) tp_is_empty!10683)
(check-sat b_and!16957 (not b_next!9531))
