; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38618 () Bool)

(assert start!38618)

(declare-fun b_free!9147 () Bool)

(declare-fun b_next!9147 () Bool)

(assert (=> start!38618 (= b_free!9147 (not b_next!9147))))

(declare-fun tp!32564 () Bool)

(declare-fun b_and!16551 () Bool)

(assert (=> start!38618 (= tp!32564 b_and!16551)))

(declare-fun b!400012 () Bool)

(declare-fun res!230183 () Bool)

(declare-fun e!241443 () Bool)

(assert (=> b!400012 (=> (not res!230183) (not e!241443))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23935 0))(
  ( (array!23936 (arr!11414 (Array (_ BitVec 32) (_ BitVec 64))) (size!11766 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23935)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!400012 (= res!230183 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11766 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!400013 () Bool)

(declare-fun e!241441 () Bool)

(declare-datatypes ((V!14477 0))(
  ( (V!14478 (val!5059 Int)) )
))
(declare-datatypes ((tuple2!6638 0))(
  ( (tuple2!6639 (_1!3329 (_ BitVec 64)) (_2!3329 V!14477)) )
))
(declare-datatypes ((List!6592 0))(
  ( (Nil!6589) (Cons!6588 (h!7444 tuple2!6638) (t!11774 List!6592)) )
))
(declare-datatypes ((ListLongMap!5565 0))(
  ( (ListLongMap!5566 (toList!2798 List!6592)) )
))
(declare-fun call!28103 () ListLongMap!5565)

(declare-fun call!28102 () ListLongMap!5565)

(assert (=> b!400013 (= e!241441 (= call!28103 call!28102))))

(declare-fun b!400014 () Bool)

(declare-fun res!230182 () Bool)

(declare-fun e!241442 () Bool)

(assert (=> b!400014 (=> (not res!230182) (not e!241442))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23935 (_ BitVec 32)) Bool)

(assert (=> b!400014 (= res!230182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400015 () Bool)

(declare-fun res!230181 () Bool)

(assert (=> b!400015 (=> (not res!230181) (not e!241442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400015 (= res!230181 (validMask!0 mask!1025))))

(declare-fun b!400016 () Bool)

(declare-fun res!230184 () Bool)

(assert (=> b!400016 (=> (not res!230184) (not e!241442))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400016 (= res!230184 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!400017 () Bool)

(declare-fun res!230173 () Bool)

(assert (=> b!400017 (=> (not res!230173) (not e!241442))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4671 0))(
  ( (ValueCellFull!4671 (v!7302 V!14477)) (EmptyCell!4671) )
))
(declare-datatypes ((array!23937 0))(
  ( (array!23938 (arr!11415 (Array (_ BitVec 32) ValueCell!4671)) (size!11767 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23937)

(assert (=> b!400017 (= res!230173 (and (= (size!11767 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11766 _keys!709) (size!11767 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400018 () Bool)

(declare-fun e!241439 () Bool)

(declare-fun tp_is_empty!10029 () Bool)

(assert (=> b!400018 (= e!241439 tp_is_empty!10029)))

(declare-fun res!230174 () Bool)

(assert (=> start!38618 (=> (not res!230174) (not e!241442))))

(assert (=> start!38618 (= res!230174 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11766 _keys!709))))))

(assert (=> start!38618 e!241442))

(assert (=> start!38618 tp_is_empty!10029))

(assert (=> start!38618 tp!32564))

(assert (=> start!38618 true))

(declare-fun e!241440 () Bool)

(declare-fun array_inv!8354 (array!23937) Bool)

(assert (=> start!38618 (and (array_inv!8354 _values!549) e!241440)))

(declare-fun array_inv!8355 (array!23935) Bool)

(assert (=> start!38618 (array_inv!8355 _keys!709)))

(declare-fun b!400019 () Bool)

(declare-fun e!241444 () Bool)

(assert (=> b!400019 (= e!241444 tp_is_empty!10029)))

(declare-fun b!400020 () Bool)

(declare-fun res!230179 () Bool)

(assert (=> b!400020 (=> (not res!230179) (not e!241442))))

(assert (=> b!400020 (= res!230179 (or (= (select (arr!11414 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11414 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400021 () Bool)

(assert (=> b!400021 (= e!241442 e!241443)))

(declare-fun res!230175 () Bool)

(assert (=> b!400021 (=> (not res!230175) (not e!241443))))

(declare-fun lt!187629 () array!23935)

(assert (=> b!400021 (= res!230175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187629 mask!1025))))

(assert (=> b!400021 (= lt!187629 (array!23936 (store (arr!11414 _keys!709) i!563 k0!794) (size!11766 _keys!709)))))

(declare-fun bm!28099 () Bool)

(declare-fun minValue!515 () V!14477)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!14477)

(declare-fun c!54602 () Bool)

(declare-fun v!412 () V!14477)

(declare-fun getCurrentListMapNoExtraKeys!1014 (array!23935 array!23937 (_ BitVec 32) (_ BitVec 32) V!14477 V!14477 (_ BitVec 32) Int) ListLongMap!5565)

(assert (=> bm!28099 (= call!28102 (getCurrentListMapNoExtraKeys!1014 (ite c!54602 lt!187629 _keys!709) (ite c!54602 (array!23938 (store (arr!11415 _values!549) i!563 (ValueCellFull!4671 v!412)) (size!11767 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400022 () Bool)

(declare-fun +!1087 (ListLongMap!5565 tuple2!6638) ListLongMap!5565)

(assert (=> b!400022 (= e!241441 (= call!28102 (+!1087 call!28103 (tuple2!6639 k0!794 v!412))))))

(declare-fun b!400023 () Bool)

(declare-fun res!230176 () Bool)

(assert (=> b!400023 (=> (not res!230176) (not e!241442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400023 (= res!230176 (validKeyInArray!0 k0!794))))

(declare-fun b!400024 () Bool)

(assert (=> b!400024 (= e!241443 (not true))))

(assert (=> b!400024 e!241441))

(assert (=> b!400024 (= c!54602 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12077 0))(
  ( (Unit!12078) )
))
(declare-fun lt!187628 () Unit!12077)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!301 (array!23935 array!23937 (_ BitVec 32) (_ BitVec 32) V!14477 V!14477 (_ BitVec 32) (_ BitVec 64) V!14477 (_ BitVec 32) Int) Unit!12077)

(assert (=> b!400024 (= lt!187628 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!301 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400025 () Bool)

(declare-fun res!230180 () Bool)

(assert (=> b!400025 (=> (not res!230180) (not e!241442))))

(assert (=> b!400025 (= res!230180 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11766 _keys!709))))))

(declare-fun b!400026 () Bool)

(declare-fun res!230177 () Bool)

(assert (=> b!400026 (=> (not res!230177) (not e!241442))))

(declare-datatypes ((List!6593 0))(
  ( (Nil!6590) (Cons!6589 (h!7445 (_ BitVec 64)) (t!11775 List!6593)) )
))
(declare-fun arrayNoDuplicates!0 (array!23935 (_ BitVec 32) List!6593) Bool)

(assert (=> b!400026 (= res!230177 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6590))))

(declare-fun mapIsEmpty!16665 () Bool)

(declare-fun mapRes!16665 () Bool)

(assert (=> mapIsEmpty!16665 mapRes!16665))

(declare-fun b!400027 () Bool)

(assert (=> b!400027 (= e!241440 (and e!241439 mapRes!16665))))

(declare-fun condMapEmpty!16665 () Bool)

(declare-fun mapDefault!16665 () ValueCell!4671)

(assert (=> b!400027 (= condMapEmpty!16665 (= (arr!11415 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4671)) mapDefault!16665)))))

(declare-fun mapNonEmpty!16665 () Bool)

(declare-fun tp!32565 () Bool)

(assert (=> mapNonEmpty!16665 (= mapRes!16665 (and tp!32565 e!241444))))

(declare-fun mapKey!16665 () (_ BitVec 32))

(declare-fun mapValue!16665 () ValueCell!4671)

(declare-fun mapRest!16665 () (Array (_ BitVec 32) ValueCell!4671))

(assert (=> mapNonEmpty!16665 (= (arr!11415 _values!549) (store mapRest!16665 mapKey!16665 mapValue!16665))))

(declare-fun b!400028 () Bool)

(declare-fun res!230178 () Bool)

(assert (=> b!400028 (=> (not res!230178) (not e!241443))))

(assert (=> b!400028 (= res!230178 (arrayNoDuplicates!0 lt!187629 #b00000000000000000000000000000000 Nil!6590))))

(declare-fun bm!28100 () Bool)

(assert (=> bm!28100 (= call!28103 (getCurrentListMapNoExtraKeys!1014 (ite c!54602 _keys!709 lt!187629) (ite c!54602 _values!549 (array!23938 (store (arr!11415 _values!549) i!563 (ValueCellFull!4671 v!412)) (size!11767 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!38618 res!230174) b!400015))

(assert (= (and b!400015 res!230181) b!400017))

(assert (= (and b!400017 res!230173) b!400014))

(assert (= (and b!400014 res!230182) b!400026))

(assert (= (and b!400026 res!230177) b!400025))

(assert (= (and b!400025 res!230180) b!400023))

(assert (= (and b!400023 res!230176) b!400020))

(assert (= (and b!400020 res!230179) b!400016))

(assert (= (and b!400016 res!230184) b!400021))

(assert (= (and b!400021 res!230175) b!400028))

(assert (= (and b!400028 res!230178) b!400012))

(assert (= (and b!400012 res!230183) b!400024))

(assert (= (and b!400024 c!54602) b!400022))

(assert (= (and b!400024 (not c!54602)) b!400013))

(assert (= (or b!400022 b!400013) bm!28099))

(assert (= (or b!400022 b!400013) bm!28100))

(assert (= (and b!400027 condMapEmpty!16665) mapIsEmpty!16665))

(assert (= (and b!400027 (not condMapEmpty!16665)) mapNonEmpty!16665))

(get-info :version)

(assert (= (and mapNonEmpty!16665 ((_ is ValueCellFull!4671) mapValue!16665)) b!400019))

(assert (= (and b!400027 ((_ is ValueCellFull!4671) mapDefault!16665)) b!400018))

(assert (= start!38618 b!400027))

(declare-fun m!394321 () Bool)

(assert (=> mapNonEmpty!16665 m!394321))

(declare-fun m!394323 () Bool)

(assert (=> b!400023 m!394323))

(declare-fun m!394325 () Bool)

(assert (=> start!38618 m!394325))

(declare-fun m!394327 () Bool)

(assert (=> start!38618 m!394327))

(declare-fun m!394329 () Bool)

(assert (=> b!400016 m!394329))

(declare-fun m!394331 () Bool)

(assert (=> b!400022 m!394331))

(declare-fun m!394333 () Bool)

(assert (=> bm!28100 m!394333))

(declare-fun m!394335 () Bool)

(assert (=> bm!28100 m!394335))

(declare-fun m!394337 () Bool)

(assert (=> b!400028 m!394337))

(declare-fun m!394339 () Bool)

(assert (=> b!400014 m!394339))

(declare-fun m!394341 () Bool)

(assert (=> b!400024 m!394341))

(declare-fun m!394343 () Bool)

(assert (=> b!400026 m!394343))

(declare-fun m!394345 () Bool)

(assert (=> b!400021 m!394345))

(declare-fun m!394347 () Bool)

(assert (=> b!400021 m!394347))

(declare-fun m!394349 () Bool)

(assert (=> b!400015 m!394349))

(assert (=> bm!28099 m!394333))

(declare-fun m!394351 () Bool)

(assert (=> bm!28099 m!394351))

(declare-fun m!394353 () Bool)

(assert (=> b!400020 m!394353))

(check-sat (not b_next!9147) (not b!400016) (not bm!28100) (not b!400014) (not b!400023) (not b!400022) (not b!400015) b_and!16551 (not b!400028) (not b!400021) (not start!38618) (not bm!28099) (not b!400026) tp_is_empty!10029 (not b!400024) (not mapNonEmpty!16665))
(check-sat b_and!16551 (not b_next!9147))
