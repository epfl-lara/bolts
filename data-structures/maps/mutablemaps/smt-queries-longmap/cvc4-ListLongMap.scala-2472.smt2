; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38662 () Bool)

(assert start!38662)

(declare-fun b_free!9191 () Bool)

(declare-fun b_next!9191 () Bool)

(assert (=> start!38662 (= b_free!9191 (not b_next!9191))))

(declare-fun tp!32697 () Bool)

(declare-fun b_and!16595 () Bool)

(assert (=> start!38662 (= tp!32697 b_and!16595)))

(declare-fun b!401135 () Bool)

(declare-fun res!230975 () Bool)

(declare-fun e!241900 () Bool)

(assert (=> b!401135 (=> (not res!230975) (not e!241900))))

(declare-datatypes ((array!24021 0))(
  ( (array!24022 (arr!11457 (Array (_ BitVec 32) (_ BitVec 64))) (size!11809 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24021)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401135 (= res!230975 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!401136 () Bool)

(declare-fun res!230973 () Bool)

(assert (=> b!401136 (=> (not res!230973) (not e!241900))))

(declare-datatypes ((List!6627 0))(
  ( (Nil!6624) (Cons!6623 (h!7479 (_ BitVec 64)) (t!11809 List!6627)) )
))
(declare-fun arrayNoDuplicates!0 (array!24021 (_ BitVec 32) List!6627) Bool)

(assert (=> b!401136 (= res!230973 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6624))))

(declare-fun b!401137 () Bool)

(declare-fun e!241903 () Bool)

(declare-fun tp_is_empty!10073 () Bool)

(assert (=> b!401137 (= e!241903 tp_is_empty!10073)))

(declare-fun b!401138 () Bool)

(declare-fun res!230972 () Bool)

(assert (=> b!401138 (=> (not res!230972) (not e!241900))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24021 (_ BitVec 32)) Bool)

(assert (=> b!401138 (= res!230972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-datatypes ((V!14535 0))(
  ( (V!14536 (val!5081 Int)) )
))
(declare-fun minValue!515 () V!14535)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4693 0))(
  ( (ValueCellFull!4693 (v!7324 V!14535)) (EmptyCell!4693) )
))
(declare-datatypes ((array!24023 0))(
  ( (array!24024 (arr!11458 (Array (_ BitVec 32) ValueCell!4693)) (size!11810 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24023)

(declare-fun zeroValue!515 () V!14535)

(declare-fun c!54668 () Bool)

(declare-fun v!412 () V!14535)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!28231 () Bool)

(declare-fun lt!187761 () array!24021)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6676 0))(
  ( (tuple2!6677 (_1!3348 (_ BitVec 64)) (_2!3348 V!14535)) )
))
(declare-datatypes ((List!6628 0))(
  ( (Nil!6625) (Cons!6624 (h!7480 tuple2!6676) (t!11810 List!6628)) )
))
(declare-datatypes ((ListLongMap!5603 0))(
  ( (ListLongMap!5604 (toList!2817 List!6628)) )
))
(declare-fun call!28235 () ListLongMap!5603)

(declare-fun getCurrentListMapNoExtraKeys!1031 (array!24021 array!24023 (_ BitVec 32) (_ BitVec 32) V!14535 V!14535 (_ BitVec 32) Int) ListLongMap!5603)

(assert (=> bm!28231 (= call!28235 (getCurrentListMapNoExtraKeys!1031 (ite c!54668 _keys!709 lt!187761) (ite c!54668 _values!549 (array!24024 (store (arr!11458 _values!549) i!563 (ValueCellFull!4693 v!412)) (size!11810 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401139 () Bool)

(declare-fun res!230966 () Bool)

(assert (=> b!401139 (=> (not res!230966) (not e!241900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401139 (= res!230966 (validKeyInArray!0 k!794))))

(declare-fun b!401140 () Bool)

(declare-fun e!241902 () Bool)

(assert (=> b!401140 (= e!241902 (not true))))

(declare-fun e!241901 () Bool)

(assert (=> b!401140 e!241901))

(assert (=> b!401140 (= c!54668 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12103 0))(
  ( (Unit!12104) )
))
(declare-fun lt!187760 () Unit!12103)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!314 (array!24021 array!24023 (_ BitVec 32) (_ BitVec 32) V!14535 V!14535 (_ BitVec 32) (_ BitVec 64) V!14535 (_ BitVec 32) Int) Unit!12103)

(assert (=> b!401140 (= lt!187760 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!314 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401134 () Bool)

(declare-fun res!230976 () Bool)

(assert (=> b!401134 (=> (not res!230976) (not e!241900))))

(assert (=> b!401134 (= res!230976 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11809 _keys!709))))))

(declare-fun res!230969 () Bool)

(assert (=> start!38662 (=> (not res!230969) (not e!241900))))

(assert (=> start!38662 (= res!230969 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11809 _keys!709))))))

(assert (=> start!38662 e!241900))

(assert (=> start!38662 tp_is_empty!10073))

(assert (=> start!38662 tp!32697))

(assert (=> start!38662 true))

(declare-fun e!241906 () Bool)

(declare-fun array_inv!8382 (array!24023) Bool)

(assert (=> start!38662 (and (array_inv!8382 _values!549) e!241906)))

(declare-fun array_inv!8383 (array!24021) Bool)

(assert (=> start!38662 (array_inv!8383 _keys!709)))

(declare-fun mapNonEmpty!16731 () Bool)

(declare-fun mapRes!16731 () Bool)

(declare-fun tp!32696 () Bool)

(declare-fun e!241905 () Bool)

(assert (=> mapNonEmpty!16731 (= mapRes!16731 (and tp!32696 e!241905))))

(declare-fun mapRest!16731 () (Array (_ BitVec 32) ValueCell!4693))

(declare-fun mapValue!16731 () ValueCell!4693)

(declare-fun mapKey!16731 () (_ BitVec 32))

(assert (=> mapNonEmpty!16731 (= (arr!11458 _values!549) (store mapRest!16731 mapKey!16731 mapValue!16731))))

(declare-fun b!401141 () Bool)

(declare-fun call!28234 () ListLongMap!5603)

(assert (=> b!401141 (= e!241901 (= call!28235 call!28234))))

(declare-fun b!401142 () Bool)

(assert (=> b!401142 (= e!241905 tp_is_empty!10073)))

(declare-fun b!401143 () Bool)

(declare-fun res!230974 () Bool)

(assert (=> b!401143 (=> (not res!230974) (not e!241902))))

(assert (=> b!401143 (= res!230974 (arrayNoDuplicates!0 lt!187761 #b00000000000000000000000000000000 Nil!6624))))

(declare-fun b!401144 () Bool)

(declare-fun res!230970 () Bool)

(assert (=> b!401144 (=> (not res!230970) (not e!241900))))

(assert (=> b!401144 (= res!230970 (or (= (select (arr!11457 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11457 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!401145 () Bool)

(declare-fun res!230968 () Bool)

(assert (=> b!401145 (=> (not res!230968) (not e!241900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401145 (= res!230968 (validMask!0 mask!1025))))

(declare-fun b!401146 () Bool)

(assert (=> b!401146 (= e!241900 e!241902)))

(declare-fun res!230965 () Bool)

(assert (=> b!401146 (=> (not res!230965) (not e!241902))))

(assert (=> b!401146 (= res!230965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187761 mask!1025))))

(assert (=> b!401146 (= lt!187761 (array!24022 (store (arr!11457 _keys!709) i!563 k!794) (size!11809 _keys!709)))))

(declare-fun b!401147 () Bool)

(declare-fun res!230967 () Bool)

(assert (=> b!401147 (=> (not res!230967) (not e!241900))))

(assert (=> b!401147 (= res!230967 (and (= (size!11810 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11809 _keys!709) (size!11810 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!401148 () Bool)

(assert (=> b!401148 (= e!241906 (and e!241903 mapRes!16731))))

(declare-fun condMapEmpty!16731 () Bool)

(declare-fun mapDefault!16731 () ValueCell!4693)

